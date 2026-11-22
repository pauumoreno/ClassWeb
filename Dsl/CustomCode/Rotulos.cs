using System;
using Microsoft.VisualStudio.Modeling;

namespace UPM_IPS.RAMPACRPCMRProyectoIPS
{
    /// <summary>
    /// Textos que se dibujan sobre los conectores:
    ///   - cardinalidades de asociacion / agregacion / composicion ("Uno..Muchos", ...)
    ///   - restriccion de la herencia ("{Total, Disjunta}", ...)
    /// Se guardan en propiedades de texto del modelo (TextoCardOrigen, TextoCardDestino, TextoRestriccion)
    /// que se mantienen sincronizadas automaticamente.
    /// </summary>
    public static class RotulosHelper
    {
        public static string TextoCard(Cardinalidad c)
        {
            switch (c)
            {
                case Cardinalidad.Card_0_1: return "Cero..Uno";
                case Cardinalidad.Card_1_1: return "Uno..Uno";
                case Cardinalidad.Card_0_n: return "Cero..Muchos";
                case Cardinalidad.Card_1_n: return "Uno..Muchos";
                case Cardinalidad.Card_m_n: return "Muchos..Muchos";
                default: return c.ToString();
            }
        }

        public static string TextoRestriccion(bool total, bool disjunta)
        {
            return "{" + (total ? "Total" : "Parcial") + ", " + (disjunta ? "Disjunta" : "Solapada") + "}";
        }

        public static void Actualizar(ClaseReferencesClase l)
        {
            if (l == null || l.IsDeleted) { return; }
            string o = TextoCard(l.CardOrigen);
            string d = TextoCard(l.CardDestino);
            if (l.TextoCardOrigen != o) { l.TextoCardOrigen = o; }
            if (l.TextoCardDestino != d) { l.TextoCardDestino = d; }
        }

        public static void Actualizar(AgregacionDebilReferences l)
        {
            if (l == null || l.IsDeleted) { return; }
            string o = TextoCard(l.CardOrigen);
            string d = TextoCard(l.CardDestino);
            if (l.TextoCardOrigen != o) { l.TextoCardOrigen = o; }
            if (l.TextoCardDestino != d) { l.TextoCardDestino = d; }
        }

        public static void Actualizar(AgregacionFuerteEmbedding1 l)
        {
            if (l == null || l.IsDeleted) { return; }
            string o = TextoCard(l.CardOrigen);
            string d = TextoCard(l.CardDestino);
            if (l.TextoCardOrigen != o) { l.TextoCardOrigen = o; }
            if (l.TextoCardDestino != d) { l.TextoCardDestino = d; }
        }

        public static void Actualizar(ClaseHeredaDeClase l)
        {
            if (l == null || l.IsDeleted) { return; }
            string r = TextoRestriccion(l.Total, l.Disjunta);
            if (l.TextoRestriccion != r) { l.TextoRestriccion = r; }
        }

        private static void ActualizarElemento(ModelElement e)
        {
            ClaseReferencesClase a = e as ClaseReferencesClase;
            if (a != null) { Actualizar(a); return; }
            AgregacionDebilReferences b = e as AgregacionDebilReferences;
            if (b != null) { Actualizar(b); return; }
            AgregacionFuerteEmbedding1 c = e as AgregacionFuerteEmbedding1;
            if (c != null) { Actualizar(c); return; }
            ClaseHeredaDeClase d = e as ClaseHeredaDeClase;
            if (d != null) { Actualizar(d); }
        }

        /// <summary>Recalcula los textos de todos los enlaces (se usa al abrir un modelo).</summary>
        public static void SincronizarTodos(Store store)
        {
            if (store == null)
            {
                return;
            }
            try
            {
                using (Transaction t = store.TransactionManager.BeginTransaction("Actualizar rotulos"))
                {
                    Guid[] clases = new Guid[]
                    {
                        ClaseReferencesClase.DomainClassId,
                        AgregacionDebilReferences.DomainClassId,
                        AgregacionFuerteEmbedding1.DomainClassId,
                        ClaseHeredaDeClase.DomainClassId
                    };
                    foreach (Guid id in clases)
                    {
                        foreach (ModelElement me in store.ElementDirectory.FindElements(id))
                        {
                            ActualizarElemento(me);
                        }
                    }
                    if (t.HasPendingChanges)
                    {
                        t.Commit();
                    }
                }
            }
            catch (Exception)
            {
                // Es solo cosmetico: si falla, el modelo se abre igualmente.
            }
        }

        internal static void ActualizarDesdeRegla(ModelElement e)
        {
            ActualizarElemento(e);
        }
    }

    /// <summary>Cambia una propiedad de ClaseReferencesClase: se actualiza el texto del conector.</summary>
    [RuleOn(typeof(ClaseReferencesClase), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class ClaseReferencesClaseRotulosChangeRule : ChangeRule
    {
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {
            RotulosHelper.ActualizarDesdeRegla(e.ModelElement);
        }
    }

    /// <summary>Se crea un ClaseReferencesClase: se escribe su texto inicial.</summary>
    [RuleOn(typeof(ClaseReferencesClase), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class ClaseReferencesClaseRotulosAddRule : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            RotulosHelper.ActualizarDesdeRegla(e.ModelElement);
        }
    }

    /// <summary>Cambia una propiedad de AgregacionDebilReferences: se actualiza el texto del conector.</summary>
    [RuleOn(typeof(AgregacionDebilReferences), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class AgregacionDebilReferencesRotulosChangeRule : ChangeRule
    {
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {
            RotulosHelper.ActualizarDesdeRegla(e.ModelElement);
        }
    }

    /// <summary>Se crea un AgregacionDebilReferences: se escribe su texto inicial.</summary>
    [RuleOn(typeof(AgregacionDebilReferences), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class AgregacionDebilReferencesRotulosAddRule : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            RotulosHelper.ActualizarDesdeRegla(e.ModelElement);
        }
    }

    /// <summary>Cambia una propiedad de AgregacionFuerteEmbedding1: se actualiza el texto del conector.</summary>
    [RuleOn(typeof(AgregacionFuerteEmbedding1), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class AgregacionFuerteEmbedding1RotulosChangeRule : ChangeRule
    {
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {
            RotulosHelper.ActualizarDesdeRegla(e.ModelElement);
        }
    }

    /// <summary>Se crea un AgregacionFuerteEmbedding1: se escribe su texto inicial.</summary>
    [RuleOn(typeof(AgregacionFuerteEmbedding1), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class AgregacionFuerteEmbedding1RotulosAddRule : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            RotulosHelper.ActualizarDesdeRegla(e.ModelElement);
        }
    }

    /// <summary>Cambia una propiedad de ClaseHeredaDeClase: se actualiza el texto del conector.</summary>
    [RuleOn(typeof(ClaseHeredaDeClase), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class ClaseHeredaDeClaseRotulosChangeRule : ChangeRule
    {
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {
            RotulosHelper.ActualizarDesdeRegla(e.ModelElement);
        }
    }

    /// <summary>Se crea un ClaseHeredaDeClase: se escribe su texto inicial.</summary>
    [RuleOn(typeof(ClaseHeredaDeClase), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class ClaseHeredaDeClaseRotulosAddRule : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            RotulosHelper.ActualizarDesdeRegla(e.ModelElement);
        }
    }
}
