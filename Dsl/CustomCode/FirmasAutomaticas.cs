using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.VisualStudio.Modeling;

namespace UPM_IPS.RAMPACRPCMRProyectoIPS
{
    /// <summary>
    /// Construye el texto que se muestra en los compartimentos:
    ///   Atributo : "nombre : Tipo"  (+ " {id}" si EsId)
    ///   Operacion: "nombre(param1, param2) : TipoRetorno"
    /// El texto se guarda en la propiedad Nombre, igual que en los ejemplos existentes.
    /// </summary>
    public static class FirmaHelper
    {
        [ThreadStatic]
        private static bool sincronizando;

        /// <summary>True mientras se crean/borran parametros a partir del texto de la operacion.</summary>
        public static bool Sincronizando
        {
            get { return sincronizando; }
        }

        private sealed class ParametroTexto
        {
            public string Nombre;
            public bool TieneTipo;
            public Tipo1Dato Tipo;
        }

        private static readonly Dictionary<string, Tipo1Dato> Alias = new Dictionary<string, Tipo1Dato>
        {
            { "int", Tipo1Dato.Int32 }, { "integer", Tipo1Dato.Int32 },
            { "long", Tipo1Dato.Int64 }, { "short", Tipo1Dato.Int16 },
            { "bool", Tipo1Dato.Boolean }, { "float", Tipo1Dato.Double },
            { "decimal", Tipo1Dato.Double }, { "date", Tipo1Dato.DateTime },
            { "string", Tipo1Dato.String }, { "void", Tipo1Dato.Void }
        };

        /// <summary>Parte del nombre sin parametros, tipo ni marca {id}.</summary>
        public static string NombreBase(string nombre, bool esOperacion)
        {
            string s = (nombre ?? "").Replace("{id}", "");
            int corte = -1;
            if (esOperacion)
            {
                corte = s.IndexOf('(');
            }
            if (corte < 0)
            {
                corte = s.IndexOf(':');
            }
            if (corte >= 0)
            {
                s = s.Substring(0, corte);
            }
            return s.Trim();
        }

        private static bool ParsearTipo(string texto, out Tipo1Dato tipo)
        {
            tipo = Tipo1Dato.String;
            if (string.IsNullOrEmpty(texto))
            {
                return false;
            }
            if (Alias.TryGetValue(texto.ToLowerInvariant(), out tipo))
            {
                return true;
            }
            if (Enum.TryParse<Tipo1Dato>(texto, true, out tipo))
            {
                return Enum.IsDefined(typeof(Tipo1Dato), tipo);
            }
            return false;
        }

        /// <summary>Lee el tipo que el usuario ha escrito despues de ':' (si lo hay).</summary>
        public static bool TryLeerTipo(string nombre, bool esOperacion, out Tipo1Dato tipo)
        {
            tipo = Tipo1Dato.String;
            string s = (nombre ?? "").Replace("{id}", "");
            string cola = s;
            if (esOperacion)
            {
                int cierre = s.LastIndexOf(')');
                if (cierre >= 0)
                {
                    cola = s.Substring(cierre + 1);
                }
            }
            int dos = cola.IndexOf(':');
            if (dos < 0)
            {
                return false;
            }
            return ParsearTipo(cola.Substring(dos + 1).Trim(), out tipo);
        }

        /// <summary>
        /// Lee los parametros escritos entre parentesis: "op(a, b : Int32)".
        /// Devuelve null si el texto no tiene parentesis bien formados (entonces no se toca nada).
        /// </summary>
        private static List<ParametroTexto> LeerParametros(string nombre)
        {
            string s = nombre ?? "";
            int abre = s.IndexOf('(');
            int cierre = s.LastIndexOf(')');
            if (abre < 0 || cierre < abre)
            {
                return null;
            }
            string interior = s.Substring(abre + 1, cierre - abre - 1);
            List<ParametroTexto> resultado = new List<ParametroTexto>();
            foreach (string trozo in interior.Split(','))
            {
                string txt = trozo.Trim();
                if (txt.Length == 0)
                {
                    continue;
                }
                ParametroTexto p = new ParametroTexto();
                int dos = txt.IndexOf(':');
                if (dos >= 0)
                {
                    p.Nombre = txt.Substring(0, dos).Trim();
                    Tipo1Dato tipo;
                    if (ParsearTipo(txt.Substring(dos + 1).Trim(), out tipo))
                    {
                        p.TieneTipo = true;
                        p.Tipo = tipo;
                    }
                }
                else
                {
                    p.Nombre = txt;
                }
                if (p.Nombre.Length > 0)
                {
                    resultado.Add(p);
                }
            }
            return resultado;
        }

        /// <summary>Si el nombre coincide con un atributo de la clase, el parametro toma su tipo.</summary>
        private static Tipo1Dato TipoDeAtributo(Operacion o, string nombre)
        {
            Clase c = o.Clase;
            if (c != null)
            {
                foreach (Atributo a in c.Atributo)
                {
                    if (string.Equals(NombreBase(a.Nombre, false), nombre, StringComparison.OrdinalIgnoreCase))
                    {
                        return a.TipoDato;
                    }
                }
            }
            return Tipo1Dato.String;
        }

        /// <summary>
        /// Crea los parametros que aparecen escritos en el texto de la operacion y borra los que ya no aparecen.
        /// </summary>
        public static void SincronizarParametros(Operacion o)
        {
            List<ParametroTexto> deseados = LeerParametros(o.Nombre);
            if (deseados == null)
            {
                return;
            }
            sincronizando = true;
            try
            {
                List<Parametro> existentes = new List<Parametro>(o.Parametros);
                List<Parametro> usados = new List<Parametro>();
                foreach (ParametroTexto d in deseados)
                {
                    Parametro encontrado = null;
                    foreach (Parametro p in existentes)
                    {
                        if (!usados.Contains(p) && string.Equals((p.Nombre ?? "").Trim(), d.Nombre, StringComparison.Ordinal))
                        {
                            encontrado = p;
                            break;
                        }
                    }
                    if (encontrado != null)
                    {
                        usados.Add(encontrado);
                        if (d.TieneTipo && encontrado.Tipo != d.Tipo)
                        {
                            encontrado.Tipo = d.Tipo;
                        }
                    }
                    else
                    {
                        Tipo1Dato tipo = d.TieneTipo ? d.Tipo : TipoDeAtributo(o, d.Nombre);
                        Parametro nuevo = new Parametro(
                            o.Store,
                            new PropertyAssignment(Parametro.NombreDomainPropertyId, d.Nombre),
                            new PropertyAssignment(Parametro.TipoDomainPropertyId, tipo));
                        o.Parametros.Add(nuevo);
                        usados.Add(nuevo);
                    }
                }
                foreach (Parametro p in existentes)
                {
                    if (!usados.Contains(p))
                    {
                        p.Delete();
                    }
                }
            }
            finally
            {
                sincronizando = false;
            }
        }

        public static string FirmaAtributo(Atributo a)
        {
            string b = NombreBase(a.Nombre, false);
            if (b.Length == 0)
            {
                return a.Nombre;
            }
            string r = b + " : " + a.TipoDato.ToString();
            if (a.EsId)
            {
                r += " {id}";
            }
            return r;
        }

        public static string FirmaOperacion(Operacion o, Parametro excluir)
        {
            string b = NombreBase(o.Nombre, true);
            if (b.Length == 0)
            {
                return o.Nombre;
            }
            List<string> nombres = new List<string>();
            foreach (Parametro p in o.Parametros)
            {
                if (p == null || p == excluir || p.IsDeleted)
                {
                    continue;
                }
                string n = (p.Nombre ?? "").Trim();
                if (n.Length > 0)
                {
                    nombres.Add(n);
                }
            }
            return b + "(" + string.Join(", ", nombres.ToArray()) + ") : " + o.TipoRetorno.ToString();
        }

        public static void Actualizar(Atributo a)
        {
            if (a == null || a.IsDeleted || a.IsDeleting)
            {
                return;
            }
            string f = FirmaAtributo(a);
            if (f != null && f != a.Nombre)
            {
                a.Nombre = f;
            }
        }

        public static void Actualizar(Operacion o, Parametro excluir)
        {
            if (o == null || o.IsDeleted || o.IsDeleting)
            {
                return;
            }
            string f = FirmaOperacion(o, excluir);
            if (f != null && f != o.Nombre)
            {
                o.Nombre = f;
            }
        }
    }
}
