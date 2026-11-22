using System;
using Microsoft.VisualStudio.Modeling;

namespace UPM_IPS.RAMPACRPCMRProyectoIPS
{
    /// <summary>Atributo: si cambia el nombre, el tipo o EsId, se reconstruye "nombre : Tipo {id}".</summary>
    [RuleOn(typeof(Atributo), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class AtributoFirmaChangeRule : ChangeRule
    {
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {
            Atributo a = e.ModelElement as Atributo;
            if (a == null || a.IsDeleted || a.IsDeleting)
            {
                return;
            }
            Guid id = e.DomainProperty.Id;
            if (id == Atributo.NombreDomainPropertyId)
            {
                // Si el usuario escribe "edad : Int32" o "{id}", se respeta.
                Tipo1Dato t;
                if (FirmaHelper.TryLeerTipo(a.Nombre, false, out t) && t != a.TipoDato)
                {
                    a.TipoDato = t;
                }
                if (a.Nombre != null && a.Nombre.Contains("{id}") && !a.EsId)
                {
                    a.EsId = true;
                }
                FirmaHelper.Actualizar(a);
            }
            else if (id == Atributo.TipoDatoDomainPropertyId || id == Atributo.EsIdDomainPropertyId)
            {
                FirmaHelper.Actualizar(a);
            }
        }
    }

    /// <summary>Un atributo creado con la herramienta "Atributo Identificador" nace con EsId = true.</summary>
    [RuleOn(typeof(AtributoIdentificador), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class AtributoIdentificadorAddRule : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            AtributoIdentificador a = e.ModelElement as AtributoIdentificador;
            if (a == null || a.IsDeleted || a.IsDeleting)
            {
                return;
            }
            if (!a.EsId)
            {
                a.EsId = true;
            }
        }
    }

    /// <summary>Operacion: si cambia el nombre o el tipo de retorno se reconstruye "nombre(params) : Tipo".</summary>
    [RuleOn(typeof(Operacion), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class OperacionFirmaChangeRule : ChangeRule
    {
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {
            Operacion o = e.ModelElement as Operacion;
            if (o == null || o.IsDeleted || o.IsDeleting)
            {
                return;
            }
            Guid id = e.DomainProperty.Id;
            if (id == Operacion.NombreDomainPropertyId)
            {
                Tipo1Dato t;
                if (FirmaHelper.TryLeerTipo(o.Nombre, true, out t) && t != o.TipoRetorno)
                {
                    o.TipoRetorno = t;
                }
                // Parametros escritos entre parentesis: se crean/borran como elementos Parametro.
                FirmaHelper.SincronizarParametros(o);
                FirmaHelper.Actualizar(o, null);
            }
            else if (id == Operacion.TipoRetornoDomainPropertyId)
            {
                FirmaHelper.Actualizar(o, null);
            }
        }
    }

    /// <summary>Parametro: si cambia cualquier propiedad se actualiza la firma de su operacion.</summary>
    [RuleOn(typeof(Parametro), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class ParametroFirmaChangeRule : ChangeRule
    {
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {
            Parametro p = e.ModelElement as Parametro;
            if (p == null || p.IsDeleted || p.IsDeleting)
            {
                return;
            }
            if (FirmaHelper.Sincronizando)
            {
                return;
            }
            FirmaHelper.Actualizar(p.Operacion, null);
        }
    }

    /// <summary>Se anade un parametro a una operacion.</summary>
    [RuleOn(typeof(OperacionHasParametros), FireTime = TimeToFire.TopLevelCommit)]
    internal sealed class ParametroAnadidoAddRule : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            OperacionHasParametros link = e.ModelElement as OperacionHasParametros;
            if (link == null || link.IsDeleted)
            {
                return;
            }
            FirmaHelper.Actualizar(link.Operacion, null);
        }
    }

    /// <summary>Se borra un parametro de una operacion (se excluye de la firma).</summary>
    [RuleOn(typeof(OperacionHasParametros))]
    internal sealed class ParametroBorradoDeletingRule : DeletingRule
    {
        public override void ElementDeleting(ElementDeletingEventArgs e)
        {
            OperacionHasParametros link = e.ModelElement as OperacionHasParametros;
            if (link == null || FirmaHelper.Sincronizando)
            {
                return;
            }
            FirmaHelper.Actualizar(link.Operacion, link.Parametro);
        }
    }
}
