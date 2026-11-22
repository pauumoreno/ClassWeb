using System;
using Microsoft.VisualStudio.Modeling;

namespace UPM_IPS.RAMPACRPCMRProyectoIPS
{
    public static class HerenciaHelper
    {
        /// <summary>Devuelve el motivo por el que padre -> hija no es valida, o null si lo es.</summary>
        public static string Validar(Clase padre, Clase hija)
        {
            if (padre == null || hija == null)
            {
                return "Faltan clases para crear la herencia.";
            }
            if (padre == hija)
            {
                return "Una clase no puede heredar de si misma.";
            }
            int limite = 1000;
            for (Clase c = padre; c != null && limite > 0; c = c.ClasePadre, limite--)
            {
                if (c == hija)
                {
                    return "Esa herencia crearia un ciclo: la clase '" + padre.Nombre + "' ya desciende de '" + hija.Nombre + "'.";
                }
            }
            return null;
        }

        /// <summary>Crea la herencia padre -> hija (la hija solo puede tener un padre).</summary>
        public static bool CrearHerencia(Clase padre, Clase hija)
        {
            string error = Validar(padre, hija);
            if (error == null && hija.ClasePadre != null)
            {
                error = "La clase '" + hija.Nombre + "' ya tiene una clase padre ('" + hija.ClasePadre.Nombre + "').";
            }
            if (error != null)
            {
                System.Windows.Forms.MessageBox.Show(error, "Herencia");
                return false;
            }
            new ClaseHeredaDeClase(padre, hija);
            return true;
        }
    }

    /// <summary>
    /// "Herencia -> Padre": se dibuja de la hija al padre. El enlace temporal HerenciaInversa
    /// se sustituye por el ClaseHeredaDeClase normal (padre -> hija).
    /// </summary>
    [RuleOn(typeof(HerenciaInversa), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class HerenciaInversaAddRule : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            HerenciaInversa link = e.ModelElement as HerenciaInversa;
            if (link == null || link.IsDeleted)
            {
                return;
            }
            Clase hija = link.SourceHija;
            Clase padre = link.TargetPadre;
            link.Delete();
            HerenciaHelper.CrearHerencia(padre, hija);
        }
    }

    /// <summary>Herencia dibujada de padre a hija: se impide que una clase herede de si misma o se creen ciclos.</summary>
    [RuleOn(typeof(ClaseHeredaDeClase), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class HerenciaCicloAddRule : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            ClaseHeredaDeClase link = e.ModelElement as ClaseHeredaDeClase;
            if (link == null || link.IsDeleted)
            {
                return;
            }
            string error = HerenciaHelper.Validar(link.SourceClase, link.TargetClase);
            if (error != null)
            {
                link.Delete();
                System.Windows.Forms.MessageBox.Show(error, "Herencia");
            }
        }
    }
}
