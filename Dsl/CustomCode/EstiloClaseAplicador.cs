using System;
using System.Drawing;
using Microsoft.VisualStudio.Modeling;
using Microsoft.VisualStudio.Modeling.Diagrams;

namespace UPM_IPS.RAMPACRPCMRProyectoIPS
{
    /// <summary>
    /// Aplica a las formas de las clases enriquecidas los colores de su estilo:
    ///   - fondo de la clase                  : EstiloClase.ColorFondo
    ///   - letra del nombre de la clase       : EstiloClase.ColorLetra
    ///   - letra del compartimento Atributos  : EstiloAtributo.ColorLetra
    ///   - letra del compartimento Operaciones: EstiloOperacion.ColorLetra
    /// </summary>
    public static class EstiloClaseAplicador
    {
        // Colores por defecto de ClaseEnriquecidaCompartmentShape cuando no hay estilo.
        private static readonly Color FondoPorDefecto = Color.FromArgb(255, 227, 194);
        private static readonly Color LetraPorDefecto = Color.Black;

        public static Color Convertir(ColorWeb c)
        {
            switch (c)
            {
                case ColorWeb.Blanco: return Color.White;
                case ColorWeb.Negro: return Color.Black;
                case ColorWeb.Rojo: return Color.Red;
                case ColorWeb.Azul: return Color.Blue;
                case ColorWeb.Verde: return Color.Green;
                case ColorWeb.Amarillo: return Color.Yellow;
                case ColorWeb.Gris: return Color.Gray;
                default: return Color.White;
            }
        }

        public static void Aplicar(ClaseEnriquecida clase)
        {
            Aplicar(clase, null, null);
        }

        /// <summary>
        /// excluirAtributo / excluirOperacion: sub-estilo que se esta borrando y debe ignorarse.
        /// </summary>
        public static void Aplicar(ClaseEnriquecida clase, EstiloAtributo excluirAtributo, EstiloOperacion excluirOperacion)
        {
            if (clase == null || clase.IsDeleted || clase.IsDeleting)
            {
                return;
            }
            EstiloClase estilo = clase.EstiloClase;
            Color fondo = FondoPorDefecto;
            Color letraClase = LetraPorDefecto;
            Color letraAtributos = LetraPorDefecto;
            Color letraOperaciones = LetraPorDefecto;

            if (estilo != null)
            {
                fondo = Convertir(estilo.ColorFondo);
                letraClase = Convertir(estilo.ColorLetra);
                foreach (EstiloAtributo ea in estilo.EstiloAtributo)
                {
                    if (ea != excluirAtributo && !ea.IsDeleted)
                    {
                        letraAtributos = Convertir(ea.ColorLetra);
                        break;
                    }
                }
                foreach (EstiloOperacion eo in estilo.EstiloOperacion)
                {
                    if (eo != excluirOperacion && !eo.IsDeleted)
                    {
                        letraOperaciones = Convertir(eo.ColorLetra);
                        break;
                    }
                }
            }

            foreach (PresentationElement pe in PresentationViewsSubject.GetPresentation(clase))
            {
                ShapeElement forma = pe as ShapeElement;
                if (forma != null)
                {
                    AplicarForma(forma, fondo, letraClase, letraAtributos, letraOperaciones);
                }
            }
        }

        /// <summary>Devuelve la clase a los colores por defecto (sin estilo).</summary>
        public static void Restablecer(ClaseEnriquecida clase)
        {
            if (clase == null || clase.IsDeleted || clase.IsDeleting)
            {
                return;
            }
            foreach (PresentationElement pe in PresentationViewsSubject.GetPresentation(clase))
            {
                ShapeElement forma = pe as ShapeElement;
                if (forma != null)
                {
                    AplicarForma(forma, FondoPorDefecto, LetraPorDefecto, LetraPorDefecto, LetraPorDefecto);
                }
            }
        }

        public static void AplicarATodos(Store store)
        {
            if (store == null)
            {
                return;
            }
            foreach (ModelElement me in store.ElementDirectory.FindElements(ClaseEnriquecida.DomainClassId))
            {
                Aplicar(me as ClaseEnriquecida);
            }
        }

        private static void Pintar(ShapeElement forma, Color fondo, Color letra)
        {
            BrushSettings bg = new BrushSettings();
            bg.Color = fondo;
            BrushSettings tx = new BrushSettings();
            tx.Color = letra;
            forma.StyleSet.OverrideBrush(DiagramBrushes.ShapeBackground, bg);
            forma.StyleSet.OverrideBrush(DiagramBrushes.ShapeText, tx);
        }

        private static void AplicarForma(ShapeElement forma, Color fondo, Color letraClase, Color letraAtributos, Color letraOperaciones)
        {
            // La forma en si (nombre de la clase)
            Pintar(forma, fondo, letraClase);
            // Cada compartimento con su propio color de letra
            foreach (ShapeElement hijo in forma.NestedChildShapes)
            {
                Color letra = letraClase;
                ElementListCompartment compartimento = hijo as ElementListCompartment;
                if (compartimento != null && compartimento.Name != null)
                {
                    string n = compartimento.Name.ToLowerInvariant();
                    if (n.Contains("atributo"))
                    {
                        letra = letraAtributos;
                    }
                    else if (n.Contains("operacion"))
                    {
                        letra = letraOperaciones;
                    }
                }
                Pintar(hijo, fondo, letra);
                hijo.Invalidate();
            }
            forma.Invalidate();
        }
    }

    /// <summary>Cambia una propiedad del estilo de clase: se repinta todas las clases que lo usan.</summary>
    [RuleOn(typeof(EstiloClase), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class EstiloClaseChangeRule : ChangeRule
    {
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {
            EstiloClase estilo = e.ModelElement as EstiloClase;
            if (estilo == null || estilo.IsDeleted)
            {
                return;
            }
            foreach (ClaseEnriquecida c in estilo.ClasesEnriquecidas)
            {
                EstiloClaseAplicador.Aplicar(c);
            }
        }
    }

    /// <summary>Cambia una propiedad del estilo de atributo (p. ej. su color de letra).</summary>
    [RuleOn(typeof(EstiloAtributo), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class EstiloAtributoChangeRule : ChangeRule
    {
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {
            EstiloAtributo ea = e.ModelElement as EstiloAtributo;
            if (ea == null || ea.IsDeleted || ea.EstiloClase == null)
            {
                return;
            }
            foreach (ClaseEnriquecida c in ea.EstiloClase.ClasesEnriquecidas)
            {
                EstiloClaseAplicador.Aplicar(c);
            }
        }
    }

    /// <summary>Cambia una propiedad del estilo de operacion (p. ej. su color de letra).</summary>
    [RuleOn(typeof(EstiloOperacion), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class EstiloOperacionChangeRule : ChangeRule
    {
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {
            EstiloOperacion eo = e.ModelElement as EstiloOperacion;
            if (eo == null || eo.IsDeleted || eo.EstiloClase == null)
            {
                return;
            }
            foreach (ClaseEnriquecida c in eo.EstiloClase.ClasesEnriquecidas)
            {
                EstiloClaseAplicador.Aplicar(c);
            }
        }
    }

    /// <summary>Se enlaza un estilo de atributo con un estilo de clase.</summary>
    [RuleOn(typeof(EstiloClaseHasEstiloAtributo), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class EstiloAtributoAnadidoAddRule : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            EstiloClaseHasEstiloAtributo link = e.ModelElement as EstiloClaseHasEstiloAtributo;
            if (link == null || link.IsDeleted || link.EstiloClase == null)
            {
                return;
            }
            foreach (ClaseEnriquecida c in link.EstiloClase.ClasesEnriquecidas)
            {
                EstiloClaseAplicador.Aplicar(c);
            }
        }
    }

    /// <summary>Se enlaza un estilo de operacion con un estilo de clase.</summary>
    [RuleOn(typeof(EstiloClaseHasEstiloOperacion), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class EstiloOperacionAnadidoAddRule : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            EstiloClaseHasEstiloOperacion link = e.ModelElement as EstiloClaseHasEstiloOperacion;
            if (link == null || link.IsDeleted || link.EstiloClase == null)
            {
                return;
            }
            foreach (ClaseEnriquecida c in link.EstiloClase.ClasesEnriquecidas)
            {
                EstiloClaseAplicador.Aplicar(c);
            }
        }
    }

    /// <summary>Se borra un estilo de atributo: se ignora al repintar.</summary>
    [RuleOn(typeof(EstiloClaseHasEstiloAtributo))]
    internal sealed class EstiloAtributoBorradoDeletingRule : DeletingRule
    {
        public override void ElementDeleting(ElementDeletingEventArgs e)
        {
            EstiloClaseHasEstiloAtributo link = e.ModelElement as EstiloClaseHasEstiloAtributo;
            if (link == null || link.EstiloClase == null)
            {
                return;
            }
            foreach (ClaseEnriquecida c in link.EstiloClase.ClasesEnriquecidas)
            {
                EstiloClaseAplicador.Aplicar(c, link.EstiloAtributo, null);
            }
        }
    }

    /// <summary>Se borra un estilo de operacion: se ignora al repintar.</summary>
    [RuleOn(typeof(EstiloClaseHasEstiloOperacion))]
    internal sealed class EstiloOperacionBorradoDeletingRule : DeletingRule
    {
        public override void ElementDeleting(ElementDeletingEventArgs e)
        {
            EstiloClaseHasEstiloOperacion link = e.ModelElement as EstiloClaseHasEstiloOperacion;
            if (link == null || link.EstiloClase == null)
            {
                return;
            }
            foreach (ClaseEnriquecida c in link.EstiloClase.ClasesEnriquecidas)
            {
                EstiloClaseAplicador.Aplicar(c, null, link.EstiloOperacion);
            }
        }
    }

    /// <summary>Se enlaza una clase enriquecida con un estilo.</summary>
    [RuleOn(typeof(ClaseEnriquecidaReferencesEstiloCLase), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class UsaEstiloAddRule : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            ClaseEnriquecidaReferencesEstiloCLase link = e.ModelElement as ClaseEnriquecidaReferencesEstiloCLase;
            if (link == null || link.IsDeleted)
            {
                return;
            }
            EstiloClaseAplicador.Aplicar(link.ClaseEnriquecida);
        }
    }

    /// <summary>Se quita el enlace con el estilo: la clase vuelve a su color por defecto.</summary>
    [RuleOn(typeof(ClaseEnriquecidaReferencesEstiloCLase))]
    internal sealed class UsaEstiloDeletingRule : DeletingRule
    {
        public override void ElementDeleting(ElementDeletingEventArgs e)
        {
            ClaseEnriquecidaReferencesEstiloCLase link = e.ModelElement as ClaseEnriquecidaReferencesEstiloCLase;
            if (link == null)
            {
                return;
            }
            EstiloClaseAplicador.Restablecer(link.ClaseEnriquecida);
        }
    }
}
