using System;
using Microsoft.VisualStudio.Modeling;

namespace UPM_IPS.RAMPACRPCMRProyectoIPS
{
    public partial class RAMPACRPCMRProyectoIPSDomainModel
    {
        /// <summary>Registra las reglas personalizadas (firmas automaticas y estilos).</summary>
        protected override Type[] GetCustomDomainModelTypes()
        {
            return new Type[]
            {
                typeof(AtributoFirmaChangeRule),
                typeof(AtributoIdentificadorAddRule),
                typeof(OperacionFirmaChangeRule),
                typeof(ParametroFirmaChangeRule),
                typeof(ParametroAnadidoAddRule),
                typeof(ParametroBorradoDeletingRule),
                typeof(EstiloClaseChangeRule),
                typeof(EstiloAtributoChangeRule),
                typeof(EstiloOperacionChangeRule),
                typeof(EstiloAtributoAnadidoAddRule),
                typeof(EstiloOperacionAnadidoAddRule),
                typeof(EstiloAtributoBorradoDeletingRule),
                typeof(EstiloOperacionBorradoDeletingRule),
                typeof(UsaEstiloAddRule),
                typeof(UsaEstiloDeletingRule),
                typeof(ClaseReferencesClaseRotulosChangeRule),
                typeof(ClaseReferencesClaseRotulosAddRule),
                typeof(AgregacionDebilReferencesRotulosChangeRule),
                typeof(AgregacionDebilReferencesRotulosAddRule),
                typeof(AgregacionFuerteEmbedding1RotulosChangeRule),
                typeof(AgregacionFuerteEmbedding1RotulosAddRule),
                typeof(ClaseHeredaDeClaseRotulosChangeRule),
                typeof(ClaseHeredaDeClaseRotulosAddRule),
                typeof(HerenciaInversaAddRule),
                typeof(HerenciaCicloAddRule)
            };
        }
    }
}
