<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="4629521f-961f-4e68-a0b4-92c40b6d2ea7" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.RAMPACRPCMRProyectoIPS" Name="RAMPACRPCMRProyectoIPS" DisplayName="RAMPACRPCMRProyectoIPS" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" ProductName="RAMPACRPCMRProyectoIPS" CompanyName="UPM_IPS" PackageGuid="eadd3935-7efd-4f7e-b54a-f24f04ee7676" PackageNamespace="UPM_IPS.RAMPACRPCMRProyectoIPS" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="df4ecb1b-58c1-4076-8ce8-341e206ead8d" Description="The root in which all other elements are embedded. Appears as a diagram." Name="DiagramaClassWeb" DisplayName="Diagrama Class Web" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="0a94e0ff-c6b6-463c-991a-f05800fa4b8d" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.DiagramaClassWeb.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Clase" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>DiagramaClassWebHasClases.Clases</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="EstiloClase" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>DiagramaClassWebHasEstilos.Estilos</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="bfb1f0c0-326b-446f-b15c-a759b63f8b8f" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Clase" Name="Clase" DisplayName="Clase" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="8a3bb964-5a1e-4e7c-aac9-3c8269af54bf" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Clase.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f5be531e-e726-4fa5-b338-00b3d6ed344e" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Clase.Abstracta" Name="Abstracta" DisplayName="Abstracta">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Atributo" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ClaseHasAtributo.Atributo</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Operacion" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ClaseHasOperacioned.Operacioned</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="81ce1412-434c-4d22-800c-b57f84fd8b43" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Atributo" Name="Atributo" DisplayName="Atributo" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="1f564954-2c0a-498b-a423-30e1f946c28c" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Atributo.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="86636623-ca5a-4e95-81b4-2020c9a3c7e2" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Atributo.Tipo Dato" Name="TipoDato" DisplayName="Tipo Dato">
          <Type>
            <DomainEnumerationMoniker Name="Tipo1Dato" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b2e11272-cefe-4dee-93a9-cdaebc902334" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Atributo.Es Id" Name="EsId" DisplayName="Es Id">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="48824a46-05e9-41eb-885a-f7832b5371a4" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Operacion" Name="Operacion" DisplayName="Operacion" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="7ab492d7-4bcc-41c5-81b9-fafdc644a35d" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Operacion.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f5bcc3a5-5a5c-4b88-81b9-5d6ab0ba48cd" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Operacion.Tipo Retorno" Name="TipoRetorno" DisplayName="Tipo Retorno">
          <Type>
            <DomainEnumerationMoniker Name="Tipo1Dato" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Parametro" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>OperacionHasParametros.Parametros</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="e19e79ed-174f-4b11-9df8-6c66354eacae" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Parametro" Name="Parametro" DisplayName="Parametro" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="698c554b-7898-48c7-8e5c-7fb3095ddca1" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Parametro.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="51af8b0a-a6f6-4e59-b9de-b3f52bc12fcd" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Parametro.Tipo" Name="Tipo" DisplayName="Tipo">
          <Type>
            <DomainEnumerationMoniker Name="Tipo1Dato" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9c04ada7-a1b0-4e87-8ae3-4f87aa692245" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Parametro.Direccion" Name="Direccion" DisplayName="Direccion">
          <Type>
            <DomainEnumerationMoniker Name="Tipo1Direccion" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="4a3fe89d-2758-4c76-b3f4-353472322235" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseEnriquecida" Name="ClaseEnriquecida" DisplayName="Clase Enriquecida" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Clase" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="e20df86f-97cc-4b1f-801c-2a58a57455a2" Description="Atributo identificador: atributo que forma parte del identificador de la clase" Name="AtributoIdentificador" DisplayName="Atributo Identificador" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Atributo" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="448d1121-6e31-4c18-b4d9-32c062ec94e7" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClase" Name="EstiloClase" DisplayName="Estilo Clase" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="53d57884-fdf8-48b1-a90c-d180ecc21821" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClase.Nombre" Name="Nombre" DisplayName="Nombre" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="81a20d8e-af6d-4561-a21a-40a31624c873" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClase.Color Fondo" Name="ColorFondo" DisplayName="Color Fondo">
          <Type>
            <DomainEnumerationMoniker Name="ColorWeb" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2ea204e8-d6d2-421b-a8e6-d5f6c0f3ce4b" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClase.Tipo Letra" Name="TipoLetra" DisplayName="Tipo Letra">
          <Type>
            <DomainEnumerationMoniker Name="TipoLetraWeb" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="ce6b1493-d02e-4b8f-82bc-f5449498e4f5" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClase.Formato Letra" Name="FormatoLetra" DisplayName="Formato Letra">
          <Type>
            <DomainEnumerationMoniker Name="FormatoLetraWeb" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="429851f9-020f-400b-b7c8-4ca173077468" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClase.Tamano Letra" Name="TamanoLetra" DisplayName="Tamano Letra">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a79ee3a1-9156-4226-b58e-c34439ad1bfc" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClase.Color Letra" Name="ColorLetra" DisplayName="Color Letra">
          <Type>
            <DomainEnumerationMoniker Name="ColorWeb" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7789a26b-ce29-47f2-b91d-105dac234a66" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClase.Alineacion" Name="Alineacion" DisplayName="Alineacion">
          <Type>
            <DomainEnumerationMoniker Name="AlineacionWeb" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="EstiloAtributo" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>EstiloClaseHasEstiloAtributo.EstiloAtributo</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="EstiloOperacion" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>EstiloClaseHasEstiloOperacion.EstiloOperacion</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="c289db07-2bf4-47ba-b76b-cff81c5f4269" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloAtributo" Name="EstiloAtributo" DisplayName="Estilo Atributo" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="a22b496a-c039-4472-83e5-ee5eb61ea2c3" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloAtributo.Nombre" Name="Nombre" DisplayName="Nombre" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f0935ef2-6e6f-46e9-837d-52ca98e5cfc7" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloAtributo.Tipo Letra" Name="TipoLetra" DisplayName="Tipo Letra">
          <Type>
            <DomainEnumerationMoniker Name="TipoLetraWeb" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="943f286a-11ae-4ae9-8462-7f6a0d155a00" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloAtributo.Formato Letra" Name="FormatoLetra" DisplayName="Formato Letra">
          <Type>
            <DomainEnumerationMoniker Name="FormatoLetraWeb" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d4f55d42-67ad-4b3e-be01-2817a94581df" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloAtributo.Tamano Letra" Name="TamanoLetra" DisplayName="Tamano Letra">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0c571318-4bb9-427f-9f75-79ed991058c4" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloAtributo.Color Letra" Name="ColorLetra" DisplayName="Color Letra">
          <Type>
            <DomainEnumerationMoniker Name="ColorWeb" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c965ce8a-50dc-42a7-9412-ec8557ff3ceb" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloAtributo.Formato Booleano" Name="FormatoBooleano" DisplayName="Formato Booleano">
          <Type>
            <DomainEnumerationMoniker Name="FormatoBooleanoWeb" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="95f4ac71-5f69-4c97-834b-b048fb916c6d" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloOperacion" Name="EstiloOperacion" DisplayName="Estilo Operacion" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="6d4e91fd-5928-46cb-8715-06101edcc515" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloOperacion.Nombre" Name="Nombre" DisplayName="Nombre" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="eba6ff96-c2c2-4433-ace2-10a3102795d7" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloOperacion.Color Fondo" Name="ColorFondo" DisplayName="Color Fondo">
          <Type>
            <DomainEnumerationMoniker Name="ColorWeb" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="3fdc5a0d-0cea-4db9-a05d-49db9451f89b" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloOperacion.Tipo Letra" Name="TipoLetra" DisplayName="Tipo Letra">
          <Type>
            <DomainEnumerationMoniker Name="TipoLetraWeb" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="8c0de6cc-ce16-410b-811b-f26fe2823251" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloOperacion.Formato Letra" Name="FormatoLetra" DisplayName="Formato Letra">
          <Type>
            <DomainEnumerationMoniker Name="FormatoLetraWeb" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="799a0ba2-5579-4148-90d6-7f16f5982361" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloOperacion.Tamano Letra" Name="TamanoLetra" DisplayName="Tamano Letra">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2f843bb9-e10b-49bb-8dc9-d9ef8740ca73" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloOperacion.Color Letra" Name="ColorLetra" DisplayName="Color Letra">
          <Type>
            <DomainEnumerationMoniker Name="ColorWeb" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="51756d6b-426f-401b-9a61-e91cff333483" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.DiagramaClassWebHasClases" Name="DiagramaClassWebHasClases" DisplayName="Diagrama Class Web Has Clases" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="df036f37-6991-4fb0-ad8b-fd4a6a5b70b2" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.DiagramaClassWebHasClases.DiagramaClassWeb" Name="DiagramaClassWeb" DisplayName="Diagrama Class Web" PropertyName="Clases" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Clases">
          <RolePlayer>
            <DomainClassMoniker Name="DiagramaClassWeb" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="fa912f9d-dc25-401d-b72e-f63ebc2e96b5" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.DiagramaClassWebHasClases.Clase" Name="Clase" DisplayName="Clase" PropertyName="DiagramaClassWeb" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Diagrama Class Web">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="e8d45747-aeca-407e-a96f-9356cdd54eb0" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHasAtributo" Name="ClaseHasAtributo" DisplayName="Clase Has Atributo" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="2ed8e088-9be0-4625-96c7-26f8d422be7b" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHasAtributo.Clase" Name="Clase" DisplayName="Clase" PropertyName="Atributo" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Atributo">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="47c0aefc-d850-41ca-a58d-d5b8bb00b315" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHasAtributo.Atributo" Name="Atributo" DisplayName="Atributo" PropertyName="Clase" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Clase">
          <RolePlayer>
            <DomainClassMoniker Name="Atributo" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="9f4d245c-de7a-4f3e-85cf-cde366f444e5" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHasOperacioned" Name="ClaseHasOperacioned" DisplayName="Clase Has Operacioned" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="851428a9-2430-4c60-8509-65f7bceec700" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHasOperacioned.Clase" Name="Clase" DisplayName="Clase" PropertyName="Operacioned" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Operacioned">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="21eb140f-e546-4bd1-a982-c23729765868" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHasOperacioned.Operacion" Name="Operacion" DisplayName="Operacion" PropertyName="Clase" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Clase">
          <RolePlayer>
            <DomainClassMoniker Name="Operacion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f75e7415-620a-4505-98e8-c6a17fa058fc" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.OperacionHasParametros" Name="OperacionHasParametros" DisplayName="Operacion Has Parametros" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="fe8dc7a5-28b3-4480-acaf-eb035045d1ab" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.OperacionHasParametros.Operacion" Name="Operacion" DisplayName="Operacion" PropertyName="Parametros" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Parametros">
          <RolePlayer>
            <DomainClassMoniker Name="Operacion" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="e47f779d-89c4-47b8-855f-bc992f57c01b" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.OperacionHasParametros.Parametro" Name="Parametro" DisplayName="Parametro" PropertyName="Operacion" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Operacion">
          <RolePlayer>
            <DomainClassMoniker Name="Parametro" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0123688d-10a0-452e-ba7e-0b8afd1153fd" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionDebilReferences" Name="AgregacionDebilReferences" DisplayName="Agregacion Debil References" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="9d561396-6c9d-4e4f-8b31-0a452209d4a9" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionDebilReferences.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b5dbb111-a7c0-4b1d-86ad-a7ceab0d1bcc" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionDebilReferences.Card Origen" Name="CardOrigen" DisplayName="Card Origen">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidad" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c936ebff-6db7-4588-a86b-ab146280ce9d" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionDebilReferences.Card Destino" Name="CardDestino" DisplayName="Card Destino">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidad" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="71e0595f-261b-4e8c-a0bb-92404d36469f" Description="Texto mostrado en el diagrama (se calcula solo)" Name="TextoCardOrigen" DisplayName="Texto Card Origen" IsBrowsable="false">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="5ed448f5-d309-4107-b7b1-b6b7d6a65e38" Description="Texto mostrado en el diagrama (se calcula solo)" Name="TextoCardDestino" DisplayName="Texto Card Destino" IsBrowsable="false">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="5966c0a3-083a-4e6a-a5a4-8a6fd9da648e" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionDebilReferences.SourceClase" Name="SourceClase" DisplayName="Source Clase" PropertyName="DebilTarget" PropertyDisplayName="Debil Target">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="38b03722-a14a-4e17-a21a-c4877abbc33b" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionDebilReferences.TargetClase" Name="TargetClase" DisplayName="Target Clase" PropertyName="DebilSource" PropertyDisplayName="Debil Source">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0378cf7b-fcb2-43ce-9fd7-1180ae9d6671" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClaseHasEstiloAtributo" Name="EstiloClaseHasEstiloAtributo" DisplayName="Estilo Clase Has Estilo Atributo" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="bdbaba97-710d-44f4-a4a9-1de2df13333b" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClaseHasEstiloAtributo.EstiloClase" Name="EstiloClase" DisplayName="Estilo Clase" PropertyName="EstiloAtributo" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Estilo Atributo">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloClase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c4b1278b-4586-4e5a-a67f-9d9be6e7ec49" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClaseHasEstiloAtributo.EstiloAtributo" Name="EstiloAtributo" DisplayName="Estilo Atributo" PropertyName="EstiloClase" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Estilo Clase">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloAtributo" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="920c8f21-ce14-4999-93c0-91efb1dcf555" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClaseHasEstiloOperacion" Name="EstiloClaseHasEstiloOperacion" DisplayName="Estilo Clase Has Estilo Operacion" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="1a7d0642-b37e-46d0-a45c-3e36eebc76af" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClaseHasEstiloOperacion.EstiloClase" Name="EstiloClase" DisplayName="Estilo Clase" PropertyName="EstiloOperacion" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Estilo Operacion">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloClase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="ae4884d0-61ea-44c7-a62d-20dcd7c1a892" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.EstiloClaseHasEstiloOperacion.EstiloOperacion" Name="EstiloOperacion" DisplayName="Estilo Operacion" PropertyName="EstiloClase" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Estilo Clase">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloOperacion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="26e2e43a-bf9f-4641-aac4-ba1ffc0efd99" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseReferencesClase" Name="ClaseReferencesClase" DisplayName="Clase References Clase" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="7f419712-346c-44b3-affd-e2b99c957f96" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseReferencesClase.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b84b2a9b-d44a-4b0f-9ce6-a3f6eb9075bc" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseReferencesClase.Card Origen" Name="CardOrigen" DisplayName="Card Origen">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidad" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="4920dad7-d307-4ae5-8431-3eaf62fd1f14" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseReferencesClase.Card Destino" Name="CardDestino" DisplayName="Card Destino">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidad" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="8239f84c-3e7d-408b-9817-8459451e2eb5" Description="Texto mostrado en el diagrama (se calcula solo)" Name="TextoCardOrigen" DisplayName="Texto Card Origen" IsBrowsable="false">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="11816edb-1fcd-4779-b58c-93fbf58b31e8" Description="Texto mostrado en el diagrama (se calcula solo)" Name="TextoCardDestino" DisplayName="Texto Card Destino" IsBrowsable="false">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="cc814cf4-748e-416e-b722-e11ec4d8ee47" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseReferencesClase.SourceClase" Name="SourceClase" DisplayName="Source Clase" PropertyName="ReferenciaTarget" PropertyDisplayName="Referencia Target">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="e7f90eac-163e-45ac-b67a-6a9063035ad4" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseReferencesClase.TargetClase" Name="TargetClase" DisplayName="Target Clase" PropertyName="ReferenciaSource" PropertyDisplayName="Referencia Source">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="e243519a-c61c-4dd0-b684-159015eed3cc" Description="Cada clase enriquecida usa exactamente un estilo de clase; un estilo puede compartirse entre varias clases enriquecidas." Name="ClaseEnriquecidaReferencesEstiloCLase" DisplayName="Clase Enriquecida Usa Estilo" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Source>
        <DomainRole Id="96b242b3-98a8-46f4-a42d-be6f2e0cceff" Description="Clase enriquecida que usa el estilo" Name="ClaseEnriquecida" DisplayName="Clase Enriquecida" PropertyName="EstiloClase" Multiplicity="One" PropertyDisplayName="Estilo Clase">
          <RolePlayer>
            <DomainClassMoniker Name="ClaseEnriquecida" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="01c673e9-0d5e-456a-b4ed-1f19a983706f" Description="Estilo de clase compartido" Name="EstiloClase" DisplayName="Estilo Clase" PropertyName="ClasesEnriquecidas" PropertyDisplayName="Clases Enriquecidas">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloClase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="66bd7d2f-7154-4ca3-9c3d-8c166ba927a3" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionFuerteEmbedding1" Name="AgregacionFuerteEmbedding1" DisplayName="Agregacion Fuerte Embedding1" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="bab3569a-6be6-41b0-b235-ced8ddb13853" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionFuerteEmbedding1.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="18481c1d-035b-4702-bc65-21127887d986" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionFuerteEmbedding1.Card Origen" Name="CardOrigen" DisplayName="Card Origen">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidad" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0dd0689a-0364-422a-807c-023150de2b90" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionFuerteEmbedding1.Card Destino" Name="CardDestino" DisplayName="Card Destino">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidad" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="4c05bd15-0664-4dd3-ae2d-34d39b62db23" Description="Texto mostrado en el diagrama (se calcula solo)" Name="TextoCardOrigen" DisplayName="Texto Card Origen" IsBrowsable="false">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="89aee586-4cbf-41b4-aa59-14ac3bfcd259" Description="Texto mostrado en el diagrama (se calcula solo)" Name="TextoCardDestino" DisplayName="Texto Card Destino" IsBrowsable="false">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="a20ea8b0-94ac-4381-9158-345422b262f1" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionFuerteEmbedding1.SourceClase" Name="SourceClase" DisplayName="Source Clase" PropertyName="TargetClases" PropertyDisplayName="Target Clases">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="2aba1da9-e468-4830-813e-0343fa608be3" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionFuerteEmbedding1.TargetClase" Name="TargetClase" DisplayName="Target Clase" PropertyName="SourceClases" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Source Clases">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="b230c1e5-5ed4-4b00-b39a-10a022fb9ede" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHeredaDeClase" Name="ClaseHeredaDeClase" DisplayName="Clase Hereda De Clase" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Properties>
        <DomainProperty Id="2f5a7cab-ff55-43d9-838a-0b6fb5218db2" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHeredaDeClase.Disjunta" Name="Disjunta" DisplayName="Disjunta">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="277c1d00-270a-4e52-8205-011653b735d4" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHeredaDeClase.Total" Name="Total" DisplayName="Total">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d98b74c1-79a0-49b5-8638-59577169a4d5" Description="Texto mostrado en el diagrama (se calcula solo)" Name="TextoRestriccion" DisplayName="Texto Restriccion" IsBrowsable="false">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="ae8d8dff-3cb0-4ecf-a71f-d49283b0dab9" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHeredaDeClase.SourceClase" Name="SourceClase" DisplayName="Source Clase" PropertyName="ClaseHija" PropertyDisplayName="Clase Hija">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="ab686b62-73cc-42d5-a1ae-446f3c8b896a" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHeredaDeClase.TargetClase" Name="TargetClase" DisplayName="Target Clase" PropertyName="ClasePadre" Multiplicity="ZeroOne" PropertyDisplayName="Clase Padre">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="4664528b-55b4-4120-ae6a-ae46bb26b77b" Description="Relacion temporal: se dibuja de la clase hija a la clase padre y se convierte en ClaseHeredaDeClase" Name="HerenciaInversa" DisplayName="Herencia Inversa" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
      <Source>
        <DomainRole Id="84678154-c891-4023-ba5f-9d7cf821b7e0" Description="" Name="SourceHija" DisplayName="Source Hija" PropertyName="PadreTemporal" PropertyDisplayName="Padre Temporal">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4d21a9dc-491e-4dee-a1d9-bef46d0f3ce9" Description="" Name="TargetPadre" DisplayName="Target Padre" PropertyName="HijaTemporal" PropertyDisplayName="Hija Temporal">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="7dce6467-e470-4374-b7a7-abc8a9f9e4b9" Description="Embedding relationship between the diagram and the class styles" Name="DiagramaClassWebHasEstilos" DisplayName="Diagrama Class Web Has Estilos" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="0ce73cdf-4d66-45ad-a5d1-c7017c275044" Description="" Name="DiagramaClassWeb" DisplayName="Diagrama Class Web" PropertyName="Estilos" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Estilos">
          <RolePlayer>
            <DomainClassMoniker Name="DiagramaClassWeb" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="78ff2e63-f76e-466a-b267-5f68efe78d7b" Description="" Name="EstiloClase" DisplayName="Estilo Clase" PropertyName="DiagramaClassWeb" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Diagrama Class Web">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloClase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
    <DomainEnumeration Name="Cardinalidad" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Cardinalidad">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Cardinalidad.Card_0_1" Name="Card_0_1" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Cardinalidad.Card_1_1" Name="Card_1_1" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Cardinalidad.Card_0_n" Name="Card_0_n" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Cardinalidad.Card_1_n" Name="Card_1_n" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Cardinalidad.Card_m_n" Name="Card_m_n" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="TipoHerencia" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.TipoHerencia">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.TipoHerencia.Disjunta" Name="Disjunta" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.TipoHerencia.Solapada" Name="Solapada" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="CompletitudHerencia" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.CompletitudHerencia">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.CompletitudHerencia.Total" Name="Total" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.CompletitudHerencia.Parcial" Name="Parcial" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="Tipo1Direccion" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Direccion">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Direccion.Entrada" Name="Entrada" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Direccion.Salida" Name="Salida" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Direccion.EntradaSalida" Name="EntradaSalida" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="Tipo1Dato" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Dato">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Dato.Boolean" Name="Boolean" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Dato.Byte" Name="Byte" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Dato.Char" Name="Char" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Dato.DateTime" Name="DateTime" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Dato.Double" Name="Double" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Dato.Int16" Name="Int16" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Dato.Int32" Name="Int32" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Dato.Int64" Name="Int64" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Dato.String" Name="String" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.Tipo1Dato.Void" Name="Void" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="ColorWeb" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ColorWeb">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ColorWeb.Blanco" Name="Blanco" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ColorWeb.Negro" Name="Negro" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ColorWeb.Rojo" Name="Rojo" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ColorWeb.Azul" Name="Azul" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ColorWeb.Verde" Name="Verde" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ColorWeb.Amarillo" Name="Amarillo" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ColorWeb.Gris" Name="Gris" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="TipoLetraWeb" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.TipoLetraWeb">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.TipoLetraWeb.Arial" Name="Arial" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.TipoLetraWeb.TimesNewRoman" Name="TimesNewRoman" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.TipoLetraWeb.Verdana" Name="Verdana" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.TipoLetraWeb.CourierNew" Name="CourierNew" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="FormatoLetraWeb" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.FormatoLetraWeb">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.FormatoLetraWeb.Normal" Name="Normal" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.FormatoLetraWeb.Negrita" Name="Negrita" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.FormatoLetraWeb.Cursiva" Name="Cursiva" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.FormatoLetraWeb.Subrayada" Name="Subrayada" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="AlineacionWeb" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AlineacionWeb">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AlineacionWeb.Izquierda" Name="Izquierda" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AlineacionWeb.Centro" Name="Centro" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AlineacionWeb.Derecha" Name="Derecha" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="FormatoBooleanoWeb" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.FormatoBooleanoWeb">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.FormatoBooleanoWeb.TextoNormal" Name="TextoNormal" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.FormatoBooleanoWeb.Checkbox" Name="Checkbox" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.FormatoBooleanoWeb.Radiobutton" Name="Radiobutton" Value="" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <GeometryShape Id="4b08c373-5d0e-46b7-8776-0ea1a27d9de3" Description="Shape used to represent ExampleElements on a Diagram." Name="ExampleShape" DisplayName="Example Shape" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" FixedTooltipText="Example Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <CompartmentShape Id="35288a43-67f4-4640-99b8-a145f41d244b" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseShape" Name="ClaseShape" DisplayName="Clase Shape" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" FixedTooltipText="Clase Shape" FillColor="220, 235, 250" OutlineColor="31, 78, 140" InitialHeight="1" OutlineThickness="0.02" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreDecorator" DisplayName="Nombre" DefaultText="Nombre" />
      </ShapeHasDecorators>
      <Compartment Name="Atributos" />
      <Compartment Name="Operaciones" />
    </CompartmentShape>
    <CompartmentShape Id="0b04eb0b-f848-40e8-90e4-809bea5d2bc5" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseEnriquecidaCompartmentShape" Name="ClaseEnriquecidaCompartmentShape" DisplayName="Clase Enriquecida Compartment Shape" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" FixedTooltipText="Clase Enriquecida Compartment Shape" FillColor="255, 227, 194" OutlineColor="194, 94, 0" InitialHeight="1" OutlineThickness="0.02" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreClaseEnriquecidaDecorator" DisplayName="Nombre Clase Enriquecida Decorator" DefaultText="NombreClaseEnriquecidaDecorator" />
      </ShapeHasDecorators>
      <Compartment Name="AtributosCompartmentEnriquecida" Title="Atributos" />
      <Compartment Name="OperacionesCompartmentEnriquecida" Title="Operaciones" />
    </CompartmentShape>
    <CompartmentShape Id="77af40cc-11c4-4348-a578-c5bd9da3c483" Description="Estilo de clase con sus estilos opcionales de atributo y operacion" Name="EstiloClaseShape" DisplayName="Estilo Clase Shape" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" FixedTooltipText="Estilo Clase Shape" FillColor="223, 243, 225" OutlineColor="46, 125, 50" InitialHeight="1" OutlineThickness="0.02" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreEstiloDecorator" DisplayName="Nombre Estilo" DefaultText="Nombre" />
      </ShapeHasDecorators>
      <Compartment Name="EstiloAtributoCompartment" Title="Estilo de atributo" />
      <Compartment Name="EstiloOperacionCompartment" Title="Estilo de operacion" />
    </CompartmentShape>
  </Shapes>
  <Connectors>
    <Connector Id="e68cc880-4b34-489b-a61c-faef0dbe91d6" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ExampleConnector" DisplayName="Example Connector" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" FixedTooltipText="Example Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
    <Connector Id="5a6022a1-b48b-49d0-960c-8433232bbc3e" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseReferencesClaseConnector" Name="ClaseReferencesClaseConnector" DisplayName="Clase References Clase Connector" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" FixedTooltipText="Clase References Clase Connector" Color="90, 90, 90" Thickness="0.02">
      <ConnectorHasDecorators Position="SourceBottom" OffsetFromShape="0.15" OffsetFromLine="0">
        <TextDecorator Name="CardOrigenDecorator" DisplayName="Card Origen Decorator" DefaultText="CardOrigenDecorator" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="TargetBottom" OffsetFromShape="0.15" OffsetFromLine="0">
        <TextDecorator Name="CardDestinoDecorator" DisplayName="Card Destino Decorator" DefaultText="CardDestinoDecorator" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="NombreDecorator" DisplayName="Nombre Decorator" DefaultText="NombreDecorator" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="5de8df50-c62e-4f5a-97cf-25197696510e" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionDebilReferencesConnector" Name="AgregacionDebilReferencesConnector" DisplayName="Agregacion Debil References Connector" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" FixedTooltipText="Agregacion Debil References Connector" Color="0, 121, 121" SourceEndStyle="EmptyDiamond" Thickness="0.02">
      <ConnectorHasDecorators Position="SourceBottom" OffsetFromShape="0.15" OffsetFromLine="0">
        <TextDecorator Name="CardOrigenDecorator" DisplayName="Card Origen Decorator" DefaultText="CardOrigenDecorator" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="TargetBottom" OffsetFromShape="0.15" OffsetFromLine="0">
        <TextDecorator Name="CardDestinoDecorator" DisplayName="Card Destino Decorator" DefaultText="CardDestinoDecorator" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="NombreDecorator" DisplayName="Nombre Decorator" DefaultText="NombreDecorator" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="c4883770-2129-4c25-96d9-c25941eedaca" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.AgregacionFuerteEmbeddingConnector" Name="AgregacionFuerteEmbeddingConnector" DisplayName="Agregacion Fuerte Embedding Connector" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" FixedTooltipText="Agregacion Fuerte Embedding Connector" Color="183, 28, 28" SourceEndStyle="FilledDiamond" Thickness="0.02">
      <ConnectorHasDecorators Position="SourceBottom" OffsetFromShape="0.15" OffsetFromLine="0">
        <TextDecorator Name="CardOrigenDecorator" DisplayName="Card Origen Decorator" DefaultText="CardOrigenDecorator" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="TargetBottom" OffsetFromShape="0.15" OffsetFromLine="0">
        <TextDecorator Name="CardDestinoDecorator" DisplayName="Card Destino Decorator" DefaultText="CardDestinoDecorator" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="NombreDecorator" DisplayName="Nombre Decorator" DefaultText="NombreDecorator" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="3cdee722-5481-46e8-aaaf-01de5cb32b4f" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.ClaseHeredaDeClaseConnector" Name="ClaseHeredaDeClaseConnector" DisplayName="Clase Hereda De Clase Connector" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" FixedTooltipText="Clase Hereda De Clase Connector" Color="31, 78, 140" SourceEndStyle="HollowArrow" Thickness="0.02">
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0.35" OffsetFromLine="0">
        <TextDecorator Name="RestriccionDecorator" DisplayName="Restriccion Decorator" DefaultText="RestriccionDecorator" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="1abee2a1-2c58-4581-a847-e1732d6b7d91" Description="Conector temporal de HerenciaInversa" Name="HerenciaInversaConnector" DisplayName="Herencia Inversa Connector" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" FixedTooltipText="Herencia Inversa Connector" Color="31, 78, 140" SourceEndStyle="HollowArrow" Thickness="0.02" />
    <Connector Id="f06d4926-c863-4860-8fa9-3ccd954b8fe3" Description="Une una clase enriquecida con su estilo de clase" Name="ClaseEnriquecidaUsaEstiloConnector" DisplayName="Clase Enriquecida Usa Estilo Connector" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS" FixedTooltipText="Usa estilo" Color="46, 125, 50" Thickness="0.02" />
  </Connectors>
  <XmlSerializationBehavior Name="RAMPACRPCMRProyectoIPSSerializationBehavior" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
    <ClassData>
      <XmlClassData TypeName="DiagramaClassWeb" MonikerAttributeName="" SerializeId="true" MonikerElementName="diagramaClassWebMoniker" ElementName="diagramaClassWeb" MonikerTypeName="DiagramaClassWebMoniker">
        <DomainClassMoniker Name="DiagramaClassWeb" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="DiagramaClassWeb/Nombre" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="clases">
            <DomainRelationshipMoniker Name="DiagramaClassWebHasClases" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estilos">
            <DomainRelationshipMoniker Name="DiagramaClassWebHasEstilos" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleShapeMoniker" ElementName="exampleShape" MonikerTypeName="ExampleShapeMoniker">
        <GeometryShapeMoniker Name="ExampleShape" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleConnectorMoniker" ElementName="exampleConnector" MonikerTypeName="ExampleConnectorMoniker">
        <ConnectorMoniker Name="ExampleConnector" />
      </XmlClassData>
      <XmlClassData TypeName="RAMPACRPCMRProyectoIPSDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="rAMPACRPCMRProyectoIPSDiagramMoniker" ElementName="rAMPACRPCMRProyectoIPSDiagram" MonikerTypeName="RAMPACRPCMRProyectoIPSDiagramMoniker">
        <DiagramMoniker Name="RAMPACRPCMRProyectoIPSDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="Clase" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseMoniker" ElementName="clase" MonikerTypeName="ClaseMoniker">
        <DomainClassMoniker Name="Clase" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Clase/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="abstracta">
            <DomainPropertyMoniker Name="Clase/Abstracta" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="atributo">
            <DomainRelationshipMoniker Name="ClaseHasAtributo" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="operacioned">
            <DomainRelationshipMoniker Name="ClaseHasOperacioned" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="debilTarget">
            <DomainRelationshipMoniker Name="AgregacionDebilReferences" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="referenciaTarget">
            <DomainRelationshipMoniker Name="ClaseReferencesClase" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetClases">
            <DomainRelationshipMoniker Name="AgregacionFuerteEmbedding1" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="claseHija">
            <DomainRelationshipMoniker Name="ClaseHeredaDeClase" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="padreTemporal">
            <DomainRelationshipMoniker Name="HerenciaInversa" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="DiagramaClassWebHasClases" MonikerAttributeName="" SerializeId="true" MonikerElementName="diagramaClassWebHasClasesMoniker" ElementName="diagramaClassWebHasClases" MonikerTypeName="DiagramaClassWebHasClasesMoniker">
        <DomainRelationshipMoniker Name="DiagramaClassWebHasClases" />
      </XmlClassData>
      <XmlClassData TypeName="Atributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="atributoMoniker" ElementName="atributo" MonikerTypeName="AtributoMoniker">
        <DomainClassMoniker Name="Atributo" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Atributo/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipoDato">
            <DomainPropertyMoniker Name="Atributo/TipoDato" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="esId">
            <DomainPropertyMoniker Name="Atributo/EsId" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ClaseHasAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseHasAtributoMoniker" ElementName="claseHasAtributo" MonikerTypeName="ClaseHasAtributoMoniker">
        <DomainRelationshipMoniker Name="ClaseHasAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="Operacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="operacionMoniker" ElementName="operacion" MonikerTypeName="OperacionMoniker">
        <DomainClassMoniker Name="Operacion" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Operacion/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipoRetorno">
            <DomainPropertyMoniker Name="Operacion/TipoRetorno" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="parametros">
            <DomainRelationshipMoniker Name="OperacionHasParametros" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ClaseHasOperacioned" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseHasOperacionedMoniker" ElementName="claseHasOperacioned" MonikerTypeName="ClaseHasOperacionedMoniker">
        <DomainRelationshipMoniker Name="ClaseHasOperacioned" />
      </XmlClassData>
      <XmlClassData TypeName="Parametro" MonikerAttributeName="" SerializeId="true" MonikerElementName="parametroMoniker" ElementName="parametro" MonikerTypeName="ParametroMoniker">
        <DomainClassMoniker Name="Parametro" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Parametro/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipo">
            <DomainPropertyMoniker Name="Parametro/Tipo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="direccion">
            <DomainPropertyMoniker Name="Parametro/Direccion" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="OperacionHasParametros" MonikerAttributeName="" SerializeId="true" MonikerElementName="operacionHasParametrosMoniker" ElementName="operacionHasParametros" MonikerTypeName="OperacionHasParametrosMoniker">
        <DomainRelationshipMoniker Name="OperacionHasParametros" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseEnriquecida" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseEnriquecidaMoniker" ElementName="claseEnriquecida" MonikerTypeName="ClaseEnriquecidaMoniker">
        <DomainClassMoniker Name="ClaseEnriquecida" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estiloClase">
            <DomainRelationshipMoniker Name="ClaseEnriquecidaReferencesEstiloCLase" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AtributoIdentificador" MonikerAttributeName="" SerializeId="true" MonikerElementName="atributoIdentificadorMoniker" ElementName="atributoIdentificador" MonikerTypeName="AtributoIdentificadorMoniker">
        <DomainClassMoniker Name="AtributoIdentificador" />
      </XmlClassData>
      <XmlClassData TypeName="AgregacionDebilReferences" MonikerAttributeName="" SerializeId="true" MonikerElementName="agregacionDebilReferencesMoniker" ElementName="agregacionDebilReferences" MonikerTypeName="AgregacionDebilReferencesMoniker">
        <DomainRelationshipMoniker Name="AgregacionDebilReferences" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="AgregacionDebilReferences/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardOrigen">
            <DomainPropertyMoniker Name="AgregacionDebilReferences/CardOrigen" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardDestino">
            <DomainPropertyMoniker Name="AgregacionDebilReferences/CardDestino" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textoCardOrigen">
            <DomainPropertyMoniker Name="AgregacionDebilReferences/TextoCardOrigen" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textoCardDestino">
            <DomainPropertyMoniker Name="AgregacionDebilReferences/TextoCardDestino" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EstiloClase" MonikerAttributeName="" SerializeId="true" MonikerElementName="estiloClaseMoniker" ElementName="estiloClase" MonikerTypeName="EstiloClaseMoniker">
        <DomainClassMoniker Name="EstiloClase" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="EstiloClase/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorFondo">
            <DomainPropertyMoniker Name="EstiloClase/ColorFondo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipoLetra">
            <DomainPropertyMoniker Name="EstiloClase/TipoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="formatoLetra">
            <DomainPropertyMoniker Name="EstiloClase/FormatoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tamanoLetra">
            <DomainPropertyMoniker Name="EstiloClase/TamanoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorLetra">
            <DomainPropertyMoniker Name="EstiloClase/ColorLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="alineacion">
            <DomainPropertyMoniker Name="EstiloClase/Alineacion" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estiloAtributo">
            <DomainRelationshipMoniker Name="EstiloClaseHasEstiloAtributo" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estiloOperacion">
            <DomainRelationshipMoniker Name="EstiloClaseHasEstiloOperacion" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EstiloAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="estiloAtributoMoniker" ElementName="estiloAtributo" MonikerTypeName="EstiloAtributoMoniker">
        <DomainClassMoniker Name="EstiloAtributo" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="EstiloAtributo/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipoLetra">
            <DomainPropertyMoniker Name="EstiloAtributo/TipoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="formatoLetra">
            <DomainPropertyMoniker Name="EstiloAtributo/FormatoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tamanoLetra">
            <DomainPropertyMoniker Name="EstiloAtributo/TamanoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorLetra">
            <DomainPropertyMoniker Name="EstiloAtributo/ColorLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="formatoBooleano">
            <DomainPropertyMoniker Name="EstiloAtributo/FormatoBooleano" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EstiloClaseHasEstiloAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="estiloClaseHasEstiloAtributoMoniker" ElementName="estiloClaseHasEstiloAtributo" MonikerTypeName="EstiloClaseHasEstiloAtributoMoniker">
        <DomainRelationshipMoniker Name="EstiloClaseHasEstiloAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="EstiloOperacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="estiloOperacionMoniker" ElementName="estiloOperacion" MonikerTypeName="EstiloOperacionMoniker">
        <DomainClassMoniker Name="EstiloOperacion" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="EstiloOperacion/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorFondo">
            <DomainPropertyMoniker Name="EstiloOperacion/ColorFondo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipoLetra">
            <DomainPropertyMoniker Name="EstiloOperacion/TipoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="formatoLetra">
            <DomainPropertyMoniker Name="EstiloOperacion/FormatoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tamanoLetra">
            <DomainPropertyMoniker Name="EstiloOperacion/TamanoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorLetra">
            <DomainPropertyMoniker Name="EstiloOperacion/ColorLetra" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EstiloClaseHasEstiloOperacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="estiloClaseHasEstiloOperacionMoniker" ElementName="estiloClaseHasEstiloOperacion" MonikerTypeName="EstiloClaseHasEstiloOperacionMoniker">
        <DomainRelationshipMoniker Name="EstiloClaseHasEstiloOperacion" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseReferencesClase" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseReferencesClaseMoniker" ElementName="claseReferencesClase" MonikerTypeName="ClaseReferencesClaseMoniker">
        <DomainRelationshipMoniker Name="ClaseReferencesClase" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="ClaseReferencesClase/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardOrigen">
            <DomainPropertyMoniker Name="ClaseReferencesClase/CardOrigen" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardDestino">
            <DomainPropertyMoniker Name="ClaseReferencesClase/CardDestino" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textoCardOrigen">
            <DomainPropertyMoniker Name="ClaseReferencesClase/TextoCardOrigen" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textoCardDestino">
            <DomainPropertyMoniker Name="ClaseReferencesClase/TextoCardDestino" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ClaseShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseShapeMoniker" ElementName="claseShape" MonikerTypeName="ClaseShapeMoniker">
        <CompartmentShapeMoniker Name="ClaseShape" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseReferencesClaseConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseReferencesClaseConnectorMoniker" ElementName="claseReferencesClaseConnector" MonikerTypeName="ClaseReferencesClaseConnectorMoniker">
        <ConnectorMoniker Name="ClaseReferencesClaseConnector" />
      </XmlClassData>
      <XmlClassData TypeName="AgregacionDebilReferencesConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="agregacionDebilReferencesConnectorMoniker" ElementName="agregacionDebilReferencesConnector" MonikerTypeName="AgregacionDebilReferencesConnectorMoniker">
        <ConnectorMoniker Name="AgregacionDebilReferencesConnector" />
      </XmlClassData>
      <XmlClassData TypeName="AgregacionFuerteEmbeddingConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="agregacionFuerteEmbeddingConnectorMoniker" ElementName="agregacionFuerteEmbeddingConnector" MonikerTypeName="AgregacionFuerteEmbeddingConnectorMoniker">
        <ConnectorMoniker Name="AgregacionFuerteEmbeddingConnector" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseEnriquecidaReferencesEstiloCLase" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseEnriquecidaReferencesEstiloCLaseMoniker" ElementName="claseEnriquecidaReferencesEstiloCLase" MonikerTypeName="ClaseEnriquecidaReferencesEstiloCLaseMoniker">
        <DomainRelationshipMoniker Name="ClaseEnriquecidaReferencesEstiloCLase" />
      </XmlClassData>
      <XmlClassData TypeName="AgregacionFuerteEmbedding1" MonikerAttributeName="" SerializeId="true" MonikerElementName="agregacionFuerteEmbedding1Moniker" ElementName="agregacionFuerteEmbedding1" MonikerTypeName="AgregacionFuerteEmbedding1Moniker">
        <DomainRelationshipMoniker Name="AgregacionFuerteEmbedding1" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="AgregacionFuerteEmbedding1/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardOrigen">
            <DomainPropertyMoniker Name="AgregacionFuerteEmbedding1/CardOrigen" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardDestino">
            <DomainPropertyMoniker Name="AgregacionFuerteEmbedding1/CardDestino" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textoCardOrigen">
            <DomainPropertyMoniker Name="AgregacionFuerteEmbedding1/TextoCardOrigen" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textoCardDestino">
            <DomainPropertyMoniker Name="AgregacionFuerteEmbedding1/TextoCardDestino" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ClaseHeredaDeClase" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseHeredaDeClaseMoniker" ElementName="claseHeredaDeClase" MonikerTypeName="ClaseHeredaDeClaseMoniker">
        <DomainRelationshipMoniker Name="ClaseHeredaDeClase" />
        <ElementData>
          <XmlPropertyData XmlName="disjunta">
            <DomainPropertyMoniker Name="ClaseHeredaDeClase/Disjunta" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="total">
            <DomainPropertyMoniker Name="ClaseHeredaDeClase/Total" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textoRestriccion">
            <DomainPropertyMoniker Name="ClaseHeredaDeClase/TextoRestriccion" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="HerenciaInversa" MonikerAttributeName="" SerializeId="true" MonikerElementName="herenciaInversaMoniker" ElementName="herenciaInversa" MonikerTypeName="HerenciaInversaMoniker">
        <DomainRelationshipMoniker Name="HerenciaInversa" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseHeredaDeClaseConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseHeredaDeClaseConnectorMoniker" ElementName="claseHeredaDeClaseConnector" MonikerTypeName="ClaseHeredaDeClaseConnectorMoniker">
        <ConnectorMoniker Name="ClaseHeredaDeClaseConnector" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseEnriquecidaCompartmentShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseEnriquecidaCompartmentShapeMoniker" ElementName="claseEnriquecidaCompartmentShape" MonikerTypeName="ClaseEnriquecidaCompartmentShapeMoniker">
        <CompartmentShapeMoniker Name="ClaseEnriquecidaCompartmentShape" />
      </XmlClassData>
      <XmlClassData TypeName="DiagramaClassWebHasEstilos" MonikerAttributeName="" SerializeId="true" MonikerElementName="diagramaClassWebHasEstilosMoniker" ElementName="diagramaClassWebHasEstilos" MonikerTypeName="DiagramaClassWebHasEstilosMoniker">
        <DomainRelationshipMoniker Name="DiagramaClassWebHasEstilos" />
      </XmlClassData>
      <XmlClassData TypeName="EstiloClaseShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="estiloClaseShapeMoniker" ElementName="estiloClaseShape" MonikerTypeName="EstiloClaseShapeMoniker">
        <CompartmentShapeMoniker Name="EstiloClaseShape" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseEnriquecidaUsaEstiloConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseEnriquecidaUsaEstiloConnectorMoniker" ElementName="claseEnriquecidaUsaEstiloConnector" MonikerTypeName="ClaseEnriquecidaUsaEstiloConnectorMoniker">
        <ConnectorMoniker Name="ClaseEnriquecidaUsaEstiloConnector" />
      </XmlClassData>
      <XmlClassData TypeName="HerenciaInversaConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="herenciaInversaConnectorMoniker" ElementName="herenciaInversaConnector" MonikerTypeName="HerenciaInversaConnectorMoniker">
        <ConnectorMoniker Name="HerenciaInversaConnector" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="RAMPACRPCMRProyectoIPSExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="AgregacionDebilReferencesBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AgregacionDebilReferences" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ClaseReferencesClaseBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ClaseReferencesClase" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ClaseHeredaDeClaseBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ClaseHeredaDeClase" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="HerenciaInversaBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="HerenciaInversa" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="AgregacionFuerteBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AgregacionFuerteEmbedding1" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ClaseEnriquecidaUsaEstiloBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ClaseEnriquecidaReferencesEstiloCLase" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ClaseEnriquecida" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="EstiloClase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="a5ad2d8f-b6f5-4e75-863f-98d0fb82f229" Description="Description for UPM_IPS.RAMPACRPCMRProyectoIPS.RAMPACRPCMRProyectoIPSDiagram" Name="RAMPACRPCMRProyectoIPSDiagram" DisplayName="Minimal Language Diagram" Namespace="UPM_IPS.RAMPACRPCMRProyectoIPS">
    <Class>
      <DomainClassMoniker Name="DiagramaClassWeb" />
    </Class>
    <ShapeMaps>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="Clase" />
        <ParentElementPath>
          <DomainPath>DiagramaClassWebHasClases.DiagramaClassWeb/!DiagramaClassWeb</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ClaseShape/NombreDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Clase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="ClaseShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="ClaseShape/Atributos" />
          <ElementsDisplayed>
            <DomainPath>ClaseHasAtributo.Atributo/!Atributo</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Atributo/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
        <CompartmentMap>
          <CompartmentMoniker Name="ClaseShape/Operaciones" />
          <ElementsDisplayed>
            <DomainPath>ClaseHasOperacioned.Operacioned/!Operacion</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Operacion/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="ClaseEnriquecida" />
        <ParentElementPath>
          <DomainPath>DiagramaClassWebHasClases.DiagramaClassWeb/!DiagramaClassWeb</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ClaseEnriquecidaCompartmentShape/NombreClaseEnriquecidaDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Clase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="ClaseEnriquecidaCompartmentShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="ClaseEnriquecidaCompartmentShape/AtributosCompartmentEnriquecida" />
          <ElementsDisplayed>
            <DomainPath>ClaseHasAtributo.Atributo/!Atributo</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Atributo/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
        <CompartmentMap>
          <CompartmentMoniker Name="ClaseEnriquecidaCompartmentShape/OperacionesCompartmentEnriquecida" />
          <ElementsDisplayed>
            <DomainPath>ClaseHasOperacioned.Operacioned/!Operacion</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Operacion/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="EstiloClase" />
        <ParentElementPath>
          <DomainPath>DiagramaClassWebHasEstilos.DiagramaClassWeb/!DiagramaClassWeb</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="EstiloClaseShape/NombreEstiloDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloClase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="EstiloClaseShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="EstiloClaseShape/EstiloAtributoCompartment" />
          <ElementsDisplayed>
            <DomainPath>EstiloClaseHasEstiloAtributo.EstiloAtributo/!EstiloAtributo</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloAtributo/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
        <CompartmentMap>
          <CompartmentMoniker Name="EstiloClaseShape/EstiloOperacionCompartment" />
          <ElementsDisplayed>
            <DomainPath>EstiloClaseHasEstiloOperacion.EstiloOperacion/!EstiloOperacion</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloOperacion/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ClaseReferencesClaseConnector" />
        <DomainRelationshipMoniker Name="ClaseReferencesClase" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="ClaseReferencesClaseConnector/CardOrigenDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseReferencesClase/TextoCardOrigen" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ClaseReferencesClaseConnector/CardDestinoDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseReferencesClase/TextoCardDestino" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ClaseReferencesClaseConnector/NombreDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseReferencesClase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="AgregacionDebilReferencesConnector" />
        <DomainRelationshipMoniker Name="AgregacionDebilReferences" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="AgregacionDebilReferencesConnector/CardOrigenDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AgregacionDebilReferences/TextoCardOrigen" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AgregacionDebilReferencesConnector/CardDestinoDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AgregacionDebilReferences/TextoCardDestino" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AgregacionDebilReferencesConnector/NombreDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AgregacionDebilReferences/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="AgregacionFuerteEmbeddingConnector" />
        <DomainRelationshipMoniker Name="AgregacionFuerteEmbedding1" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="AgregacionFuerteEmbeddingConnector/CardOrigenDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AgregacionFuerteEmbedding1/TextoCardOrigen" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AgregacionFuerteEmbeddingConnector/CardDestinoDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AgregacionFuerteEmbedding1/TextoCardDestino" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AgregacionFuerteEmbeddingConnector/NombreDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AgregacionFuerteEmbedding1/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ClaseHeredaDeClaseConnector" />
        <DomainRelationshipMoniker Name="ClaseHeredaDeClase" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="ClaseHeredaDeClaseConnector/RestriccionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseHeredaDeClase/TextoRestriccion" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="HerenciaInversaConnector" />
        <DomainRelationshipMoniker Name="HerenciaInversa" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ClaseEnriquecidaUsaEstiloConnector" />
        <DomainRelationshipMoniker Name="ClaseEnriquecidaReferencesEstiloCLase" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="RAMPACRPCMR_DSLProyIPS" EditorGuid="9d4f3618-bacd-45d2-9630-1d07958952ee">
    <RootClass>
      <DomainClassMoniker Name="DiagramaClassWeb" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="RAMPACRPCMRProyectoIPSSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="Clases Web">
      <ElementTool Name="Clase" ToolboxIcon="Resources\Clase.bmp" Caption="Clase" Tooltip="Clase" HelpKeyword="Clase">
        <DomainClassMoniker Name="Clase" />
      </ElementTool>
      <ElementTool Name="Parametro" ToolboxIcon="Resources\Parametro.bmp" Caption="Parámetro" Tooltip="Parámetro (arrastrar sobre una operación)" HelpKeyword="Parametro">
        <DomainClassMoniker Name="Parametro" />
      </ElementTool>
      <ElementTool Name="Operacion" ToolboxIcon="Resources\Operacion.bmp" Caption="Método" Tooltip="Método (arrastrar sobre una clase)" HelpKeyword="Operacion">
        <DomainClassMoniker Name="Operacion" />
      </ElementTool>
      <ElementTool Name="Atributo" ToolboxIcon="Resources\Atributo.bmp" Caption="Atributo" Tooltip="Atributo (arrastrar sobre una clase)" HelpKeyword="Atributo">
        <DomainClassMoniker Name="Atributo" />
      </ElementTool>
      <ElementTool Name="AtributoIdentificador" ToolboxIcon="Resources\AtributoIdentificador.bmp" Caption="Atributo Identificador" Tooltip="Atributo identificador (arrastrar sobre una clase)" HelpKeyword="AtributoIdentificador">
        <DomainClassMoniker Name="AtributoIdentificador" />
      </ElementTool>
    </ToolboxTab>
    <ToolboxTab TabText="Conexiones">
      <ConnectionTool Name="ClaseReferencesClase" ToolboxIcon="Resources\ClaseReferencesClase.bmp" Caption="Asociación" Tooltip="Asociación entre clases" HelpKeyword="ClaseReferencesClase">
        <ConnectionBuilderMoniker Name="RAMPACRPCMRProyectoIPS/ClaseReferencesClaseBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="AgregacionDebilReferences" ToolboxIcon="Resources\AgregacionDebilReferences.bmp" Caption="Agregación" Tooltip="Agregación (débil)" HelpKeyword="AgregacionDebilReferences">
        <ConnectionBuilderMoniker Name="RAMPACRPCMRProyectoIPS/AgregacionDebilReferencesBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="AgregacionFuerte" ToolboxIcon="Resources\AgregacionFuerte.bmp" Caption="Composición" Tooltip="Composición (agregación fuerte): compuesta → componente" HelpKeyword="AgregacionFuerte">
        <ConnectionBuilderMoniker Name="RAMPACRPCMRProyectoIPS/AgregacionFuerteBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="IClaseHeredaDeClase" ToolboxIcon="Resources\ClaseHeredaDeClase_Toolbox_16x16.bmp" Caption="Herencia" Tooltip="Herencia: arrastra desde la clase padre hasta la clase hija" HelpKeyword="IClaseHeredaDeClase" SourceCursorIcon="Resources\ClaseHeredaDeClase_Source.cur" TargetCursorIcon="Resources\ClaseHeredaDeClase_Target.cur">
        <ConnectionBuilderMoniker Name="RAMPACRPCMRProyectoIPS/ClaseHeredaDeClaseBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="HerenciaPadre" ToolboxIcon="Resources\HerenciaPadre.bmp" Caption="Herencia → Padre" Tooltip="Herencia: arrastra desde la clase hija hasta la clase padre (la flecha apunta al padre)" HelpKeyword="HerenciaPadre" SourceCursorIcon="Resources\ClaseHeredaDeClase_Source.cur" TargetCursorIcon="Resources\ClaseHeredaDeClase_Target.cur">
        <ConnectionBuilderMoniker Name="RAMPACRPCMRProyectoIPS/HerenciaInversaBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="HerenciaHija" ToolboxIcon="Resources\HerenciaHija.bmp" Caption="Herencia → Hija" Tooltip="Herencia: arrastra desde la clase padre hasta la clase hija" HelpKeyword="HerenciaHija" SourceCursorIcon="Resources\ClaseHeredaDeClase_Source.cur" TargetCursorIcon="Resources\ClaseHeredaDeClase_Target.cur">
        <ConnectionBuilderMoniker Name="RAMPACRPCMRProyectoIPS/ClaseHeredaDeClaseBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <ToolboxTab TabText="Clases Web Enriquecidas">
      <ElementTool Name="ClaseEnriquecida" ToolboxIcon="Resources\ClaseEnriquecida.bmp" Caption="Clase Web Enriquecida" Tooltip="Clase enriquecida (con estilo web)" HelpKeyword="ClaseEnriquecida">
        <DomainClassMoniker Name="ClaseEnriquecida" />
      </ElementTool>
      <ElementTool Name="EstiloClase" ToolboxIcon="Resources\EstiloClase.bmp" Caption="Estilo de Clase" Tooltip="Estilo de clase (reutilizable)" HelpKeyword="EstiloClase">
        <DomainClassMoniker Name="EstiloClase" />
      </ElementTool>
      <ElementTool Name="EstiloAtributo" ToolboxIcon="Resources\EstiloAtributo.bmp" Caption="Estilo de los Atributos" Tooltip="Estilo de atributo (arrastrar sobre un estilo de clase)" HelpKeyword="EstiloAtributo">
        <DomainClassMoniker Name="EstiloAtributo" />
      </ElementTool>
      <ElementTool Name="EstiloOperacion" ToolboxIcon="Resources\EstiloOperacion.bmp" Caption="Estilo de las Operaciones" Tooltip="Estilo de operación (arrastrar sobre un estilo de clase)" HelpKeyword="EstiloOperacion">
        <DomainClassMoniker Name="EstiloOperacion" />
      </ElementTool>
      <ConnectionTool Name="ClaseEnriquecidaUsaEstilo" ToolboxIcon="Resources\UsaEstilo.bmp" Caption="Usa estilo" Tooltip="Vincula una clase enriquecida con su estilo de clase" HelpKeyword="ClaseEnriquecidaUsaEstilo">
        <ConnectionBuilderMoniker Name="RAMPACRPCMRProyectoIPS/ClaseEnriquecidaUsaEstiloBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="RAMPACRPCMRProyectoIPSDiagram" />
  </Designer>
  <Explorer ExplorerGuid="415cfb81-70fa-42f3-8f08-2d3a463be243" Title="RAMPACRPCMRProyectoIPS Explorer">
    <ExplorerBehaviorMoniker Name="RAMPACRPCMRProyectoIPS/RAMPACRPCMRProyectoIPSExplorer" />
  </Explorer>
</Dsl>