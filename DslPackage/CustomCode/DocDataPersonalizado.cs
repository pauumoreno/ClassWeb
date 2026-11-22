using System;

namespace UPM_IPS.RAMPACRPCMRProyectoIPS
{
    internal partial class RAMPACRPCMRProyectoIPSDocData
    {
        /// <summary>Al abrir un modelo, pinta las clases enriquecidas con el color de su estilo.</summary>
        protected override void OnDocumentLoaded()
        {
            base.OnDocumentLoaded();
            EstiloClaseAplicador.AplicarATodos(this.Store);
            RotulosHelper.SincronizarTodos(this.Store);
        }
    }
}
