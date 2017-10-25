<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="632997e7-902d-4f18-9eb8-09de18bf817e" Description="Description for Ufba.vShome.vShome" Name="vShome" DisplayName="Class Diagrams" Namespace="Ufba.vShome" ProductName="vShome" CompanyName="Ufba" PackageGuid="c52771ae-c860-4014-befb-d1c7766f19f9" PackageNamespace="Ufba.vShome" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="1d5f9f29-8fe8-41d7-824a-0be9dfd874ff" Description="" Name="ModelRoot" DisplayName="Model Root" Namespace="Ufba.vShome">
      <Properties>
        <DomainProperty Id="62cdbad2-11f3-425c-a53f-6d57a294af0b" Description="Description for Ufba.vShome.ModelRoot.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="5083d313-c1a5-48b9-9af9-e43b6bcd5671" Description="Description for Ufba.vShome.ModelRoot.Port" Name="Port" DisplayName="Port">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Comment" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ModelRootHasComments.Comments</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Feature" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ModelRootHasFeatures.Features</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Device" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ModelRootHasDevices.Devices</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="3cf5d643-fb66-4ec8-99f2-868528b4b104" Description="" Name="Feature" DisplayName="Feature" Namespace="Ufba.vShome">
      <Properties>
        <DomainProperty Id="39c1dc69-86e3-439f-960e-d7c0b1ea5805" Description="Description for Ufba.vShome.Feature.Feature Type" Name="FeatureType" DisplayName="Feature Type">
          <Type>
            <DomainEnumerationMoniker Name="FeatureType" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c42383dd-847a-4efa-8033-4264ff59b8da" Description="Description for Ufba.vShome.Feature.Serial" Name="Serial" DisplayName="Serial">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d3a66881-5b9a-4f6d-87d0-0c73aa00e542" Description="Description for Ufba.vShome.Feature.Feature Name" Name="FeatureName" DisplayName="Feature Name">
          <Type>
            <DomainEnumerationMoniker Name="FeatureName" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="2aa65212-fa5a-4104-8e30-706f532c2271" Description="" Name="Comment" DisplayName="Comment" Namespace="Ufba.vShome">
      <Properties>
        <DomainProperty Id="a083ae06-49a1-4f14-9c8e-784f0e67f6e4" Description="" Name="Text" DisplayName="Text" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="af1f2194-4417-4e7d-ba28-689526062b9c" Description="Description for Ufba.vShome.Device" Name="Device" DisplayName="Device" Namespace="Ufba.vShome">
      <Properties>
        <DomainProperty Id="bbaae1ce-eefb-4958-b5a4-4c56dce0b281" Description="Description for Ufba.vShome.Device.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b6dbb67f-467c-4a2a-89bf-66fc8ba598f3" Description="Description for Ufba.vShome.Device.Return Type" Name="ReturnType" DisplayName="Return Type">
          <Type>
            <DomainEnumerationMoniker Name="ReturnType" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="fcff1254-bac3-4ebf-a491-28934b934108" Description="Description for Ufba.vShome.Device.Device Type" Name="DeviceType" DisplayName="Device Type">
          <Type>
            <DomainEnumerationMoniker Name="DeviceType" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="959ab9b7-5660-4aad-8d2b-b73d7c4e6264" Description="" Name="ModelRootHasComments" DisplayName="Model Root Has Comments" Namespace="Ufba.vShome" IsEmbedding="true">
      <Source>
        <DomainRole Id="881e6257-c4e7-4f2f-a468-5c6bc6c28fb6" Description="" Name="ModelRoot" DisplayName="Model Root" PropertyName="Comments" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Comments">
          <RolePlayer>
            <DomainClassMoniker Name="ModelRoot" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c244d2a7-9c4e-4441-8bcc-a46b15d5bff8" Description="" Name="Comment" DisplayName="Comment" PropertyName="ModelRoot" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Model Root">
          <RolePlayer>
            <DomainClassMoniker Name="Comment" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="dfb7297c-d2e3-432b-b512-9aaa9da28427" Description="Description for Ufba.vShome.FeatureReferencesActuator" Name="FeatureReferencesActuator" DisplayName="Feature References Actuator" Namespace="Ufba.vShome">
      <Source>
        <DomainRole Id="bb42e52d-a5bb-4dcd-9754-1653804691c5" Description="Description for Ufba.vShome.FeatureReferencesActuator.Feature" Name="Feature" DisplayName="Feature" PropertyName="Actuator" Multiplicity="One" PropertyDisplayName="Actuator">
          <RolePlayer>
            <DomainClassMoniker Name="Feature" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="5607b205-4164-4271-a3d4-afabb8bf3f14" Description="Description for Ufba.vShome.FeatureReferencesActuator.Device" Name="Device" DisplayName="Device" PropertyName="hasActuator" PropertyDisplayName="Has Actuator">
          <RolePlayer>
            <DomainClassMoniker Name="Device" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="dcbd29f2-8276-4933-a867-20d63709fe2d" Description="Description for Ufba.vShome.FeatureReferencesFather" Name="FeatureReferencesFather" DisplayName="Feature References Father" Namespace="Ufba.vShome">
      <Source>
        <DomainRole Id="67617821-bdfb-4ec0-a548-7fdbe232566a" Description="Description for Ufba.vShome.FeatureReferencesFather.SourceFeature" Name="SourceFeature" DisplayName="Source Feature" PropertyName="Father" Multiplicity="One" PropertyDisplayName="Father">
          <RolePlayer>
            <DomainClassMoniker Name="Feature" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="5626c3e6-3f86-40a1-9a27-06eee0359475" Description="Description for Ufba.vShome.FeatureReferencesFather.TargetFeature" Name="TargetFeature" DisplayName="Target Feature" PropertyName="hasFather" PropertyDisplayName="Has Father">
          <RolePlayer>
            <DomainClassMoniker Name="Feature" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="a6b34994-962e-4bfc-9e18-0c82c81cb28e" Description="Description for Ufba.vShome.ModelRootHasFeatures" Name="ModelRootHasFeatures" DisplayName="Model Root Has Features" Namespace="Ufba.vShome" IsEmbedding="true">
      <Source>
        <DomainRole Id="b3f0b4aa-b58b-4921-b5c0-46e06407a435" Description="Description for Ufba.vShome.ModelRootHasFeatures.ModelRoot" Name="ModelRoot" DisplayName="Model Root" PropertyName="Features" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Features">
          <RolePlayer>
            <DomainClassMoniker Name="ModelRoot" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="203c8b11-a52d-4de2-965b-3c446b161509" Description="Description for Ufba.vShome.ModelRootHasFeatures.Feature" Name="Feature" DisplayName="Feature" PropertyName="ModelRoot" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Model Root">
          <RolePlayer>
            <DomainClassMoniker Name="Feature" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="51d10c02-9aff-46ed-b806-b4f79ce1cc41" Description="Description for Ufba.vShome.ModelRootHasDevices" Name="ModelRootHasDevices" DisplayName="Model Root Has Devices" Namespace="Ufba.vShome" IsEmbedding="true">
      <Source>
        <DomainRole Id="017d4f36-3848-4b38-8d77-ef85159ce5d0" Description="Description for Ufba.vShome.ModelRootHasDevices.ModelRoot" Name="ModelRoot" DisplayName="Model Root" PropertyName="Devices" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Devices">
          <RolePlayer>
            <DomainClassMoniker Name="ModelRoot" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="bab86b87-7341-4a7a-9757-d9b3dca0c3b3" Description="Description for Ufba.vShome.ModelRootHasDevices.Device" Name="Device" DisplayName="Device" PropertyName="ModelRoot" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Model Root">
          <RolePlayer>
            <DomainClassMoniker Name="Device" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0580a3cb-5fa1-49a7-9e7c-3cf1b64b1628" Description="Description for Ufba.vShome.FeatureReferencesSensor" Name="FeatureReferencesSensor" DisplayName="Feature References Sensor" Namespace="Ufba.vShome">
      <Source>
        <DomainRole Id="f72fdf3b-2f74-4a7a-a3d2-54eea73224a3" Description="Description for Ufba.vShome.FeatureReferencesSensor.Feature" Name="Feature" DisplayName="Feature" PropertyName="Sensor" Multiplicity="One" PropertyDisplayName="Sensor">
          <RolePlayer>
            <DomainClassMoniker Name="Feature" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f06d47a3-3da4-4b0c-a98e-36118de0264b" Description="Description for Ufba.vShome.FeatureReferencesSensor.Device" Name="Device" DisplayName="Device" PropertyName="hasSensor" PropertyDisplayName="Has Sensor">
          <RolePlayer>
            <DomainClassMoniker Name="Device" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="29f7432e-0b57-402d-99d8-bd274b334ba2" Description="Description for Ufba.vShome.FeatureReferencesBrother" Name="FeatureReferencesBrother" DisplayName="Feature References Brother" Namespace="Ufba.vShome">
      <Source>
        <DomainRole Id="2fff0350-3793-4d8e-858b-88ac27086f35" Description="Description for Ufba.vShome.FeatureReferencesBrother.SourceFeature" Name="SourceFeature" DisplayName="Source Feature" PropertyName="Brother" Multiplicity="One" PropertyDisplayName="Brother">
          <RolePlayer>
            <DomainClassMoniker Name="Feature" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="bc5d4f02-69c1-4845-90c5-d5acbb3f7668" Description="Description for Ufba.vShome.FeatureReferencesBrother.TargetFeature" Name="TargetFeature" DisplayName="Target Feature" PropertyName="hasBrother" PropertyDisplayName="Has Brother">
          <RolePlayer>
            <DomainClassMoniker Name="Feature" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="8596ea2b-e8b3-488a-a5e9-0d0d18db6275" Description="Description for Ufba.vShome.FeatureReferencesAlternatives" Name="FeatureReferencesAlternatives" DisplayName="Feature References Alternatives" Namespace="Ufba.vShome">
      <Source>
        <DomainRole Id="817301ad-ad67-4bec-98a7-91496965f437" Description="Description for Ufba.vShome.FeatureReferencesAlternatives.SourceFeature" Name="SourceFeature" DisplayName="Source Feature" PropertyName="Alternatives" PropertyDisplayName="Alternatives">
          <RolePlayer>
            <DomainClassMoniker Name="Feature" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="d5834026-3a69-4ad3-ac5a-c35b97cad416" Description="Description for Ufba.vShome.FeatureReferencesAlternatives.TargetFeature" Name="TargetFeature" DisplayName="Target Feature" PropertyName="SourceFeatures" PropertyDisplayName="Source Features">
          <RolePlayer>
            <DomainClassMoniker Name="Feature" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0c79162a-4a9e-4fc0-b610-4f9550565b44" Description="Description for Ufba.vShome.CommentReferencesFeatures" Name="CommentReferencesFeatures" DisplayName="Comment References Features" Namespace="Ufba.vShome">
      <Source>
        <DomainRole Id="c4ed8692-a3eb-4abd-8cba-aeab31899d3e" Description="Description for Ufba.vShome.CommentReferencesFeatures.Comment" Name="Comment" DisplayName="Comment" PropertyName="Features" PropertyDisplayName="Features">
          <RolePlayer>
            <DomainClassMoniker Name="Comment" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4aa8db9c-c2f9-4263-a8e8-524cfd5f4251" Description="Description for Ufba.vShome.CommentReferencesFeatures.Feature" Name="Feature" DisplayName="Feature" PropertyName="Comments" PropertyDisplayName="Comments">
          <RolePlayer>
            <DomainClassMoniker Name="Feature" />
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
    <DomainEnumeration Name="AccessModifier" Namespace="Ufba.vShome" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="Public" Value="0" />
        <EnumerationLiteral Description="" Name="Assembly" Value="1" />
        <EnumerationLiteral Description="" Name="Private" Value="2" />
        <EnumerationLiteral Description="" Name="Family" Value="3" />
        <EnumerationLiteral Description="" Name="FamilyOrAssembly" Value="4" />
        <EnumerationLiteral Description="" Name="FamilyAndAssembly" Value="5" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="TypeAccessModifier" Namespace="Ufba.vShome" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="Public" Value="0" />
        <EnumerationLiteral Description="" Name="Private" Value="1" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="InheritanceModifier" Namespace="Ufba.vShome" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="None" Value="0" />
        <EnumerationLiteral Description="" Name="Abstract" Value="1" />
        <EnumerationLiteral Description="" Name="Sealed" Value="2" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="Multiplicity" Namespace="Ufba.vShome" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="ZeroMany" Value="0" />
        <EnumerationLiteral Description="" Name="One" Value="1" />
        <EnumerationLiteral Description="" Name="ZeroOne" Value="2" />
        <EnumerationLiteral Description="" Name="OneMany" Value="3" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="OperationConcurrency" Namespace="Ufba.vShome" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="Sequential" Value="0" />
        <EnumerationLiteral Description="" Name="Guarded" Value="1" />
        <EnumerationLiteral Description="" Name="Concurrent" Value="2" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="ReturnType" Namespace="Ufba.vShome" Description="Description for Ufba.vShome.ReturnType">
      <Literals>
        <EnumerationLiteral Description="Description for Ufba.vShome.ReturnType.BOOL" Name="BOOL" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.ReturnType.INFO" Name="INFO" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.ReturnType.RANGE" Name="RANGE" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="FeatureName" Namespace="Ufba.vShome" Description="Description for Ufba.vShome.FeatureName">
      <Literals>
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureName.UserAirConditionerControl" Name="UserAirConditionerControl" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureName.UserIlumination" Name="UserIlumination" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureName.AutomatedIluminationByLuminosity" Name="AutomatedIluminationByLuminosity" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureName.AutomatedWindowControl" Name="AutomatedWindowControl" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureName.AutomatedIluminationByPresence" Name="AutomatedIluminationByPresence" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureName.PresenceIlusion" Name="PresenceIlusion" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureName.AutomatedAirConditionerControl" Name="AutomatedAirConditionerControl" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureName.UserWindowControl" Name="UserWindowControl" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureName.PanicMode" Name="PanicMode" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureName.AlarmAgainstRobbery" Name="AlarmAgainstRobbery" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureName.LockDoors" Name="LockDoors" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="DeviceType" Namespace="Ufba.vShome" Description="Description for Ufba.vShome.DeviceType">
      <Literals>
        <EnumerationLiteral Description="Description for Ufba.vShome.DeviceType.Actuator" Name="Actuator" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.DeviceType.Sensor" Name="Sensor" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="FeatureType" Namespace="Ufba.vShome" Description="Description for Ufba.vShome.FeatureType">
      <Literals>
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureType.OR" Name="OR" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureType.Mandatory" Name="Mandatory" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureType.Alternative" Name="Alternative" Value="" />
        <EnumerationLiteral Description="Description for Ufba.vShome.FeatureType.Optional" Name="Optional" Value="" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <GeometryShape Id="3c5ae777-0fc2-45f7-a3f0-fd4ce738f80a" Description="" Name="CommentBoxShape" DisplayName="Comment Box Shape" Namespace="Ufba.vShome" FixedTooltipText="Comment Box Shape" FillColor="255, 255, 204" OutlineColor="204, 204, 102" InitialHeight="0.3" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Comment" DisplayName="Comment" DefaultText="BusinessRulesShapeNameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="6c3d8e9d-ae1f-41d5-bd81-6356b20d70e7" Description="Description for Ufba.vShome.FeatureShape" Name="FeatureShape" DisplayName="Feature Shape" Namespace="Ufba.vShome" FixedTooltipText="Feature Shape" FillColor="192, 255, 255" InitialHeight="0.7" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Serial" DisplayName="Serial" DefaultText="Serial" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="FeatureType" DisplayName="Feature Type" DefaultText="FeatureType" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="aa9efdc1-7f37-468d-ac28-00c66eec2841" Description="Description for Ufba.vShome.DeviceShape" Name="DeviceShape" DisplayName="Device Shape" Namespace="Ufba.vShome" FixedTooltipText="Device Shape" FillColor="255, 192, 128" InitialHeight="0.5" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="ReturnType" DisplayName="Return Type" DefaultText="ReturnType" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DeviceType" DisplayName="Device Type" DefaultText="DeviceType" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="fe3d32f2-4fb1-430e-9154-63ab0dc86d77" Description="Description for Ufba.vShome.ActuatorConnector" Name="ActuatorConnector" DisplayName="Actuator Connector" Namespace="Ufba.vShome" FixedTooltipText="Actuator Connector" />
    <Connector Id="133eddb3-963a-4de8-82e1-a638f16bb74e" Description="Description for Ufba.vShome.Father" Name="Father" DisplayName="Father" Namespace="Ufba.vShome" FixedTooltipText="Father" Color="Plum" TargetEndStyle="FilledArrow" />
    <Connector Id="2f46d126-beb6-429a-bb2d-9379546f7cff" Description="Description for Ufba.vShome.Brother" Name="Brother" DisplayName="Brother" Namespace="Ufba.vShome" FixedTooltipText="Brother" Color="Indigo" SourceEndStyle="EmptyDiamond" TargetEndStyle="EmptyDiamond" />
    <Connector Id="015221af-d804-4e57-8545-6714a3e8bdbc" Description="Description for Ufba.vShome.Alternative" Name="Alternative" DisplayName="Alternative" Namespace="Ufba.vShome" FixedTooltipText="Alternative" Color="DarkViolet" SourceEndStyle="EmptyArrow" TargetEndStyle="EmptyArrow" />
    <Connector Id="f830940c-8e9b-403f-acd7-7befff6b3722" Description="Description for Ufba.vShome.Sensor" Name="Sensor" DisplayName="Sensor" Namespace="Ufba.vShome" FixedTooltipText="Sensor" DashStyle="Dot" />
    <Connector Id="3f03c3a0-19d2-4d73-a0c8-a6491ffb0b24" Description="Description for Ufba.vShome.CommentLink" Name="CommentLink" DisplayName="Comment Link" Namespace="Ufba.vShome" FixedTooltipText="Comment Link" />
  </Connectors>
  <XmlSerializationBehavior Name="vShomeSerializationBehavior" Namespace="Ufba.vShome">
    <ClassData>
      <XmlClassData TypeName="ModelRootHasComments" MonikerAttributeName="" SerializeId="true" MonikerElementName="modelRootHasCommentsMoniker" ElementName="modelRootHasComments" MonikerTypeName="ModelRootHasCommentsMoniker">
        <DomainRelationshipMoniker Name="ModelRootHasComments" />
      </XmlClassData>
      <XmlClassData TypeName="ModelRoot" MonikerAttributeName="" SerializeId="true" MonikerElementName="modelRootMoniker" ElementName="modelRoot" MonikerTypeName="ModelRootMoniker">
        <DomainClassMoniker Name="ModelRoot" />
        <ElementData>
          <XmlRelationshipData RoleElementName="comments">
            <DomainRelationshipMoniker Name="ModelRootHasComments" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="features">
            <DomainRelationshipMoniker Name="ModelRootHasFeatures" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="devices">
            <DomainRelationshipMoniker Name="ModelRootHasDevices" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="ModelRoot/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="port">
            <DomainPropertyMoniker Name="ModelRoot/Port" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Feature" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureMoniker" ElementName="feature" MonikerTypeName="FeatureMoniker">
        <DomainClassMoniker Name="Feature" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="actuator">
            <DomainRelationshipMoniker Name="FeatureReferencesActuator" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="father">
            <DomainRelationshipMoniker Name="FeatureReferencesFather" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="sensor">
            <DomainRelationshipMoniker Name="FeatureReferencesSensor" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="brother">
            <DomainRelationshipMoniker Name="FeatureReferencesBrother" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="alternatives">
            <DomainRelationshipMoniker Name="FeatureReferencesAlternatives" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="featureType">
            <DomainPropertyMoniker Name="Feature/FeatureType" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="serial">
            <DomainPropertyMoniker Name="Feature/Serial" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="featureName">
            <DomainPropertyMoniker Name="Feature/FeatureName" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Comment" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentMoniker" ElementName="comment" MonikerTypeName="CommentMoniker">
        <DomainClassMoniker Name="Comment" />
        <ElementData>
          <XmlPropertyData XmlName="text">
            <DomainPropertyMoniker Name="Comment/Text" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="features">
            <DomainRelationshipMoniker Name="CommentReferencesFeatures" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="CommentBoxShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentBoxShapeMoniker" ElementName="commentBoxShape" MonikerTypeName="CommentBoxShapeMoniker">
        <GeometryShapeMoniker Name="CommentBoxShape" />
      </XmlClassData>
      <XmlClassData TypeName="vShomeDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="vShomeDiagramMoniker" ElementName="vShomeDiagram" MonikerTypeName="VShomeDiagramMoniker">
        <DiagramMoniker Name="vShomeDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="Device" MonikerAttributeName="" SerializeId="true" MonikerElementName="deviceMoniker" ElementName="device" MonikerTypeName="DeviceMoniker">
        <DomainClassMoniker Name="Device" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Device/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="returnType">
            <DomainPropertyMoniker Name="Device/ReturnType" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="deviceType">
            <DomainPropertyMoniker Name="Device/DeviceType" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FeatureReferencesActuator" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureReferencesActuatorMoniker" ElementName="featureReferencesActuator" MonikerTypeName="FeatureReferencesActuatorMoniker">
        <DomainRelationshipMoniker Name="FeatureReferencesActuator" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureReferencesFather" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureReferencesFatherMoniker" ElementName="featureReferencesFather" MonikerTypeName="FeatureReferencesFatherMoniker">
        <DomainRelationshipMoniker Name="FeatureReferencesFather" />
      </XmlClassData>
      <XmlClassData TypeName="ModelRootHasFeatures" MonikerAttributeName="" SerializeId="true" MonikerElementName="modelRootHasFeaturesMoniker" ElementName="modelRootHasFeatures" MonikerTypeName="ModelRootHasFeaturesMoniker">
        <DomainRelationshipMoniker Name="ModelRootHasFeatures" />
      </XmlClassData>
      <XmlClassData TypeName="ModelRootHasDevices" MonikerAttributeName="" SerializeId="true" MonikerElementName="modelRootHasDevicesMoniker" ElementName="modelRootHasDevices" MonikerTypeName="ModelRootHasDevicesMoniker">
        <DomainRelationshipMoniker Name="ModelRootHasDevices" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureShapeMoniker" ElementName="featureShape" MonikerTypeName="FeatureShapeMoniker">
        <GeometryShapeMoniker Name="FeatureShape" />
      </XmlClassData>
      <XmlClassData TypeName="ActuatorConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="actuatorConnectorMoniker" ElementName="actuatorConnector" MonikerTypeName="ActuatorConnectorMoniker">
        <ConnectorMoniker Name="ActuatorConnector" />
      </XmlClassData>
      <XmlClassData TypeName="Father" MonikerAttributeName="" SerializeId="true" MonikerElementName="fatherMoniker" ElementName="father" MonikerTypeName="FatherMoniker">
        <ConnectorMoniker Name="Father" />
      </XmlClassData>
      <XmlClassData TypeName="DeviceShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="deviceShapeMoniker" ElementName="deviceShape" MonikerTypeName="DeviceShapeMoniker">
        <GeometryShapeMoniker Name="DeviceShape" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureReferencesSensor" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureReferencesSensorMoniker" ElementName="featureReferencesSensor" MonikerTypeName="FeatureReferencesSensorMoniker">
        <DomainRelationshipMoniker Name="FeatureReferencesSensor" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureReferencesBrother" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureReferencesBrotherMoniker" ElementName="featureReferencesBrother" MonikerTypeName="FeatureReferencesBrotherMoniker">
        <DomainRelationshipMoniker Name="FeatureReferencesBrother" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureReferencesAlternatives" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureReferencesAlternativesMoniker" ElementName="featureReferencesAlternatives" MonikerTypeName="FeatureReferencesAlternativesMoniker">
        <DomainRelationshipMoniker Name="FeatureReferencesAlternatives" />
      </XmlClassData>
      <XmlClassData TypeName="Brother" MonikerAttributeName="" SerializeId="true" MonikerElementName="brotherMoniker" ElementName="brother" MonikerTypeName="BrotherMoniker">
        <ConnectorMoniker Name="Brother" />
      </XmlClassData>
      <XmlClassData TypeName="Alternative" MonikerAttributeName="" SerializeId="true" MonikerElementName="alternativeMoniker" ElementName="alternative" MonikerTypeName="AlternativeMoniker">
        <ConnectorMoniker Name="Alternative" />
      </XmlClassData>
      <XmlClassData TypeName="Sensor" MonikerAttributeName="" SerializeId="true" MonikerElementName="sensorMoniker" ElementName="sensor" MonikerTypeName="SensorMoniker">
        <ConnectorMoniker Name="Sensor" />
      </XmlClassData>
      <XmlClassData TypeName="CommentReferencesFeatures" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentReferencesFeaturesMoniker" ElementName="commentReferencesFeatures" MonikerTypeName="CommentReferencesFeaturesMoniker">
        <DomainRelationshipMoniker Name="CommentReferencesFeatures" />
      </XmlClassData>
      <XmlClassData TypeName="CommentLink" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentLinkMoniker" ElementName="commentLink" MonikerTypeName="CommentLinkMoniker">
        <ConnectorMoniker Name="CommentLink" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="vShomeExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="FeatureReferencesActuatorBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FeatureReferencesActuator" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Feature" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Device" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FeatureReferencesFatherBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FeatureReferencesFather" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Feature" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Feature" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FeatureReferencesSensorBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FeatureReferencesSensor" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Feature" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Device" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FeatureReferencesBrotherBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FeatureReferencesBrother" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Feature" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Feature" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FeatureReferencesAlternativesBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FeatureReferencesAlternatives" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Feature" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Feature" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="CommentReferencesFeaturesBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="CommentReferencesFeatures" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Comment" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Feature" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="66143188-5fb3-44fe-9064-0d7028b3e6c6" Description="" Name="vShomeDiagram" DisplayName="Class Diagram" Namespace="Ufba.vShome">
    <Class>
      <DomainClassMoniker Name="ModelRoot" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Comment" />
        <ParentElementPath>
          <DomainPath>ModelRootHasComments.ModelRoot/!ModelRoot</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CommentBoxShape/Comment" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Comment/Text" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="CommentBoxShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Feature" />
        <ParentElementPath>
          <DomainPath>ModelRootHasFeatures.ModelRoot/!ModelRoot</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="FeatureShape/FeatureType" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Feature/FeatureType" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="FeatureShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Feature/FeatureName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="FeatureShape/Serial" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Feature/Serial" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="FeatureShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Device" />
        <ParentElementPath>
          <DomainPath>ModelRootHasDevices.ModelRoot/!ModelRoot</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="FeatureShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Device/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DeviceShape/DeviceType" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Device/DeviceType" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DeviceShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Device/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DeviceShape/ReturnType" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Device/ReturnType" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="DeviceShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ActuatorConnector" />
        <DomainRelationshipMoniker Name="FeatureReferencesActuator" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="Father" />
        <DomainRelationshipMoniker Name="FeatureReferencesFather" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="Alternative" />
        <DomainRelationshipMoniker Name="FeatureReferencesAlternatives" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="Brother" />
        <DomainRelationshipMoniker Name="FeatureReferencesBrother" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="Sensor" />
        <DomainRelationshipMoniker Name="FeatureReferencesSensor" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="CommentLink" />
        <DomainRelationshipMoniker Name="CommentReferencesFeatures" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="visSHome" EditorGuid="4ec00923-c29b-496a-ac39-4c8aec7fce8d">
    <RootClass>
      <DomainClassMoniker Name="ModelRoot" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="vShomeSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="Class Diagrams">
      <ElementTool Name="Comment" ToolboxIcon="resources\commenttool.bmp" Caption="Comment" Tooltip="Create a Comment" HelpKeyword="CommentF1Keyword">
        <DomainClassMoniker Name="Comment" />
      </ElementTool>
      <ElementTool Name="Device" ToolboxIcon="Resources\ElementToolBitmap.bmp" Caption="Device" Tooltip="Device" HelpKeyword="Device">
        <DomainClassMoniker Name="Device" />
      </ElementTool>
      <ElementTool Name="Feature" ToolboxIcon="Resources\ClassTool.bmp" Caption="Feature" Tooltip="Feature" HelpKeyword="Feature">
        <DomainClassMoniker Name="Feature" />
      </ElementTool>
      <ConnectionTool Name="Father" ToolboxIcon="Resources\GeneralizationTool.bmp" Caption="Father" Tooltip="Father" HelpKeyword="Father">
        <ConnectionBuilderMoniker Name="vShome/FeatureReferencesFatherBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="Actuator" ToolboxIcon="Resources\MessageTool.bmp" Caption="Actuator" Tooltip="Actuator" HelpKeyword="Actuator">
        <ConnectionBuilderMoniker Name="vShome/FeatureReferencesActuatorBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="Sensor" ToolboxIcon="Resources\ImplementationTool.bmp" Caption="Sensor" Tooltip="Sensor" HelpKeyword="Sensor">
        <ConnectionBuilderMoniker Name="vShome/FeatureReferencesSensorBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="Alternative" ToolboxIcon="Resources\AggregationTool.bmp" Caption="Alternative" Tooltip="Alternative" HelpKeyword="Alternative">
        <ConnectionBuilderMoniker Name="vShome/FeatureReferencesAlternativesBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="Brother" ToolboxIcon="Resources\UnidirectionTool.bmp" Caption="Brother" Tooltip="Brother" HelpKeyword="Brother">
        <ConnectionBuilderMoniker Name="vShome/FeatureReferencesBrotherBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="CommentLink" ToolboxIcon="Resources\CommentLinkTool.bmp" Caption="CommentLink" Tooltip="Comment Link" HelpKeyword="CommentLink">
        <ConnectionBuilderMoniker Name="vShome/CommentReferencesFeaturesBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="vShomeDiagram" />
  </Designer>
  <Explorer ExplorerGuid="458b7ea5-ccdb-4c4a-a3b6-42292eb1c295" Title="">
    <ExplorerBehaviorMoniker Name="vShome/vShomeExplorer" />
  </Explorer>
</Dsl>