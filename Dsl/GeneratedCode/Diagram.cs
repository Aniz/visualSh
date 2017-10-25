﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

[module: global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Scope = "type", Target = "Ufba.vShome.vShomeDiagram")]

namespace Ufba.vShome
{
	/// <summary>
	/// DomainClass vShomeDiagram
	/// </summary>
	[DslDesign::DisplayNameResource("Ufba.vShome.vShomeDiagram.DisplayName", typeof(global::Ufba.vShome.vShomeDomainModel), "Ufba.vShome.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Ufba.vShome.vShomeDiagram.Description", typeof(global::Ufba.vShome.vShomeDomainModel), "Ufba.vShome.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Ufba.vShome.vShomeDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("66143188-5fb3-44fe-9064-0d7028b3e6c6")]
	public partial class vShomeDiagram : DslDiagrams::Diagram
	{
		#region Diagram boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		#endregion
		#region Toolbox filters
		private static global::System.ComponentModel.ToolboxItemFilterAttribute[] toolboxFilters = new global::System.ComponentModel.ToolboxItemFilterAttribute[] {
					new global::System.ComponentModel.ToolboxItemFilterAttribute(global::Ufba.vShome.vShomeToolboxHelperBase.ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) };
		
		/// <summary>
		/// Toolbox item filter attributes for this diagram.
		/// </summary>
		public override global::System.Collections.ICollection TargetToolboxItemFilterAttributes
		{
			get
			{
				return toolboxFilters;
			}
		}
		#endregion
		#region Auto-placement
		/// <summary>
		/// Indicate that child shapes should added through view fixup should be placed automatically.
		/// </summary>
		public override bool ShouldAutoPlaceChildShapes
		{
			get
			{
				return true;
			}
		}
		#endregion
		#region Shape mapping
		/// <summary>
		/// Called during view fixup to ask the parent whether a shape should be created for the given child element.
		/// </summary>
		/// <remarks>
		/// Always return true, since we assume there is only one diagram per model file for DSL scenarios.
		/// </remarks>
		protected override bool ShouldAddShapeForElement(DslModeling::ModelElement element)
		{
			return true;
		}
		
		/// <summary>
		/// Called during view fixup to configure the given child element, after it has been created.
		/// </summary>
		/// <remarks>
		/// Custom code for choosing the shapes attached to either end of a connector is called from here.
		/// </remarks>
		protected override void OnChildConfiguring(DslDiagrams::ShapeElement child, bool createdDuringViewFixup)
		{
			DslDiagrams::NodeShape sourceShape;
			DslDiagrams::NodeShape targetShape;
			DslDiagrams::BinaryLinkShape connector = child as DslDiagrams::BinaryLinkShape;
			if(connector == null)
			{
				base.OnChildConfiguring(child, createdDuringViewFixup);
				return;
			}
			this.GetSourceAndTargetForConnector(connector, out sourceShape, out targetShape);
			
			global::System.Diagnostics.Debug.Assert(sourceShape != null && targetShape != null, "Unable to find source and target shapes for connector.");
			connector.Connect(sourceShape, targetShape);
		}
		
		/// <summary>
		/// helper method to find the shapes for either end of a connector, including calling the user's custom code
		/// </summary>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
		internal void GetSourceAndTargetForConnector(DslDiagrams::BinaryLinkShape connector, out DslDiagrams::NodeShape sourceShape, out DslDiagrams::NodeShape targetShape)
		{
			sourceShape = null;
			targetShape = null;
			
			if (sourceShape == null || targetShape == null)
			{
				DslDiagrams::NodeShape[] endShapes = GetEndShapesForConnector(connector);
				if(sourceShape == null)
				{
					sourceShape = endShapes[0];
				}
				if(targetShape == null)
				{
					targetShape = endShapes[1];
				}
			}
		}
		
		/// <summary>
		/// Helper method to find shapes for either end of a connector by looking for shapes associated with either end of the relationship mapped to the connector.
		/// </summary>
		private DslDiagrams::NodeShape[] GetEndShapesForConnector(DslDiagrams::BinaryLinkShape connector)
		{
			DslModeling::ElementLink link = connector.ModelElement as DslModeling::ElementLink;
			DslDiagrams::NodeShape sourceShape = null, targetShape = null;
			if (link != null)
			{
				global::System.Collections.ObjectModel.ReadOnlyCollection<DslModeling::ModelElement> linkedElements = link.LinkedElements;
				if (linkedElements.Count == 2)
				{
					DslDiagrams::Diagram currentDiagram = this.Diagram;
					DslModeling::LinkedElementCollection<DslDiagrams::PresentationElement> presentationElements = DslDiagrams::PresentationViewsSubject.GetPresentation(linkedElements[0]);
					foreach (DslDiagrams::PresentationElement presentationElement in presentationElements)
					{
						DslDiagrams::NodeShape shape = presentationElement as DslDiagrams::NodeShape;
						if (shape != null && shape.Diagram == currentDiagram)
						{
							sourceShape = shape;
							break;
						}
					}
					
					presentationElements = DslDiagrams::PresentationViewsSubject.GetPresentation(linkedElements[1]);
					foreach (DslDiagrams::PresentationElement presentationElement in presentationElements)
					{
						DslDiagrams::NodeShape shape = presentationElement as DslDiagrams::NodeShape;
						if (shape != null && shape.Diagram == currentDiagram)
						{
							targetShape = shape;
							break;
						}
					}
		
				}
			}
			
			return new DslDiagrams::NodeShape[] { sourceShape, targetShape };
		}
		
		/// <summary>
		/// Creates a new shape for the given model element as part of view fixup
		/// </summary>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily", Justification = "Generated code.")]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]
		protected override DslDiagrams::ShapeElement CreateChildShape(DslModeling::ModelElement element)
		{
			if(element is global::Ufba.vShome.Comment)
			{
				global::Ufba.vShome.CommentBoxShape newShape = new global::Ufba.vShome.CommentBoxShape(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::Ufba.vShome.Feature)
			{
				global::Ufba.vShome.FeatureShape newShape = new global::Ufba.vShome.FeatureShape(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::Ufba.vShome.Device)
			{
				global::Ufba.vShome.DeviceShape newShape = new global::Ufba.vShome.DeviceShape(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::Ufba.vShome.FeatureReferencesActuator)
			{
				global::Ufba.vShome.ActuatorConnector newShape = new global::Ufba.vShome.ActuatorConnector(this.Partition);
				return newShape;
			}
			if(element is global::Ufba.vShome.FeatureReferencesFather)
			{
				global::Ufba.vShome.Father newShape = new global::Ufba.vShome.Father(this.Partition);
				return newShape;
			}
			if(element is global::Ufba.vShome.FeatureReferencesAlternatives)
			{
				global::Ufba.vShome.Alternative newShape = new global::Ufba.vShome.Alternative(this.Partition);
				return newShape;
			}
			if(element is global::Ufba.vShome.FeatureReferencesBrother)
			{
				global::Ufba.vShome.Brother newShape = new global::Ufba.vShome.Brother(this.Partition);
				return newShape;
			}
			if(element is global::Ufba.vShome.FeatureReferencesSensor)
			{
				global::Ufba.vShome.Sensor newShape = new global::Ufba.vShome.Sensor(this.Partition);
				return newShape;
			}
			if(element is global::Ufba.vShome.CommentReferencesFeatures)
			{
				global::Ufba.vShome.CommentLink newShape = new global::Ufba.vShome.CommentLink(this.Partition);
				return newShape;
			}
			return base.CreateChildShape(element);
		}
		#endregion
		#region Decorator mapping
		/// <summary>
		/// Initialize shape decorator mappings.  This is done here rather than in individual shapes because decorator maps
		/// are defined per diagram type rather than per shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
			global::Ufba.vShome.CommentBoxShape.DecoratorsInitialized += CommentBoxShapeDecoratorMap.OnDecoratorsInitialized;
			global::Ufba.vShome.FeatureShape.DecoratorsInitialized += FeatureShapeDecoratorMap.OnDecoratorsInitialized;
			global::Ufba.vShome.DeviceShape.DecoratorsInitialized += DeviceShapeDecoratorMap.OnDecoratorsInitialized;
		}
		
		/// <summary>
		/// Class containing decorator path traversal methods for CommentBoxShape.
		/// </summary>
		internal static partial class CommentBoxShapeDecoratorMap
		{
			/// <summary>
			/// Event handler called when decorator initialization is complete for CommentBoxShape.  Adds decorator mappings for this shape or connector.
			/// </summary>
			public static void OnDecoratorsInitialized(object sender, global::System.EventArgs e)
			{
				DslDiagrams::ShapeElement shape = (DslDiagrams::ShapeElement)sender;
				DslDiagrams::AssociatedPropertyInfo propertyInfo;
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Ufba.vShome.Comment.TextDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "Comment").AssociateValueWith(shape.Store, propertyInfo);
			}
		}
		
		/// <summary>
		/// Class containing decorator path traversal methods for FeatureShape.
		/// </summary>
		internal static partial class FeatureShapeDecoratorMap
		{
			/// <summary>
			/// Event handler called when decorator initialization is complete for FeatureShape.  Adds decorator mappings for this shape or connector.
			/// </summary>
			public static void OnDecoratorsInitialized(object sender, global::System.EventArgs e)
			{
				DslDiagrams::ShapeElement shape = (DslDiagrams::ShapeElement)sender;
				DslDiagrams::AssociatedPropertyInfo propertyInfo;
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Ufba.vShome.Feature.FeatureTypeDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "FeatureType").AssociateValueWith(shape.Store, propertyInfo);
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Ufba.vShome.Feature.FeatureNameDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "Name").AssociateValueWith(shape.Store, propertyInfo);
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Ufba.vShome.Feature.SerialDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "Serial").AssociateValueWith(shape.Store, propertyInfo);
			}
		}
		
		/// <summary>
		/// Class containing decorator path traversal methods for DeviceShape.
		/// </summary>
		internal static partial class DeviceShapeDecoratorMap
		{
			/// <summary>
			/// Event handler called when decorator initialization is complete for DeviceShape.  Adds decorator mappings for this shape or connector.
			/// </summary>
			public static void OnDecoratorsInitialized(object sender, global::System.EventArgs e)
			{
				DslDiagrams::ShapeElement shape = (DslDiagrams::ShapeElement)sender;
				DslDiagrams::AssociatedPropertyInfo propertyInfo;
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Ufba.vShome.Device.NameDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "Name").AssociateValueWith(shape.Store, propertyInfo);
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Ufba.vShome.Device.DeviceTypeDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "DeviceType").AssociateValueWith(shape.Store, propertyInfo);
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Ufba.vShome.Device.NameDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "Name").AssociateValueWith(shape.Store, propertyInfo);
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Ufba.vShome.Device.ReturnTypeDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "ReturnType").AssociateValueWith(shape.Store, propertyInfo);
			}
		}
		
		#endregion
		
		#region Connect actions
		private bool changingMouseAction;
		private global::Ufba.vShome.FatherConnectAction fatherConnectAction;
		private global::Ufba.vShome.ActuatorConnectAction actuatorConnectAction;
		private global::Ufba.vShome.SensorConnectAction sensorConnectAction;
		private global::Ufba.vShome.AlternativeConnectAction alternativeConnectAction;
		private global::Ufba.vShome.BrotherConnectAction brotherConnectAction;
		private global::Ufba.vShome.CommentLinkConnectAction commentLinkConnectAction;
		/// <summary>
		/// Virtual method to provide a filter when to select the mouse action
		/// </summary>
		/// <param name="activeView">Currently active view</param>
		/// <param name="filter">filter string used to filter the toolbox items</param>
		protected virtual bool SelectedToolboxItemSupportsFilterString(DslDiagrams::DiagramView activeView, string filter)
		{
			return activeView.SelectedToolboxItemSupportsFilterString(filter);
		}
		/// <summary>
		/// Override to provide the right mouse action when trying
		/// to create links on the diagram
		/// </summary>
		/// <param name="pointArgs"></param>
		public override void OnViewMouseEnter(DslDiagrams::DiagramPointEventArgs pointArgs)
		{
			if (pointArgs  == null) throw new global::System.ArgumentNullException("pointArgs");
		
			DslDiagrams::DiagramView activeView = this.ActiveDiagramView;
			if(activeView != null)
			{
				DslDiagrams::MouseAction action = null;
				if (SelectedToolboxItemSupportsFilterString(activeView, global::Ufba.vShome.vShomeToolboxHelper.FatherFilterString))
				{
					if (this.fatherConnectAction == null)
					{
						this.fatherConnectAction = new global::Ufba.vShome.FatherConnectAction(this);
						this.fatherConnectAction.MouseActionDeactivated += new DslDiagrams::MouseAction.MouseActionDeactivatedEventHandler(OnConnectActionDeactivated);
					}
					action = this.fatherConnectAction;
				} 
				else if (SelectedToolboxItemSupportsFilterString(activeView, global::Ufba.vShome.vShomeToolboxHelper.ActuatorFilterString))
				{
					if (this.actuatorConnectAction == null)
					{
						this.actuatorConnectAction = new global::Ufba.vShome.ActuatorConnectAction(this);
						this.actuatorConnectAction.MouseActionDeactivated += new DslDiagrams::MouseAction.MouseActionDeactivatedEventHandler(OnConnectActionDeactivated);
					}
					action = this.actuatorConnectAction;
				} 
				else if (SelectedToolboxItemSupportsFilterString(activeView, global::Ufba.vShome.vShomeToolboxHelper.SensorFilterString))
				{
					if (this.sensorConnectAction == null)
					{
						this.sensorConnectAction = new global::Ufba.vShome.SensorConnectAction(this);
						this.sensorConnectAction.MouseActionDeactivated += new DslDiagrams::MouseAction.MouseActionDeactivatedEventHandler(OnConnectActionDeactivated);
					}
					action = this.sensorConnectAction;
				} 
				else if (SelectedToolboxItemSupportsFilterString(activeView, global::Ufba.vShome.vShomeToolboxHelper.AlternativeFilterString))
				{
					if (this.alternativeConnectAction == null)
					{
						this.alternativeConnectAction = new global::Ufba.vShome.AlternativeConnectAction(this);
						this.alternativeConnectAction.MouseActionDeactivated += new DslDiagrams::MouseAction.MouseActionDeactivatedEventHandler(OnConnectActionDeactivated);
					}
					action = this.alternativeConnectAction;
				} 
				else if (SelectedToolboxItemSupportsFilterString(activeView, global::Ufba.vShome.vShomeToolboxHelper.BrotherFilterString))
				{
					if (this.brotherConnectAction == null)
					{
						this.brotherConnectAction = new global::Ufba.vShome.BrotherConnectAction(this);
						this.brotherConnectAction.MouseActionDeactivated += new DslDiagrams::MouseAction.MouseActionDeactivatedEventHandler(OnConnectActionDeactivated);
					}
					action = this.brotherConnectAction;
				} 
				else if (SelectedToolboxItemSupportsFilterString(activeView, global::Ufba.vShome.vShomeToolboxHelper.CommentLinkFilterString))
				{
					if (this.commentLinkConnectAction == null)
					{
						this.commentLinkConnectAction = new global::Ufba.vShome.CommentLinkConnectAction(this);
						this.commentLinkConnectAction.MouseActionDeactivated += new DslDiagrams::MouseAction.MouseActionDeactivatedEventHandler(OnConnectActionDeactivated);
					}
					action = this.commentLinkConnectAction;
				} 
				else
				{
					action = null;
				}
				
				if (pointArgs.DiagramClientView.ActiveMouseAction != action)
				{
					try
					{
						this.changingMouseAction = true;
						pointArgs.DiagramClientView.ActiveMouseAction = action;
					}
					finally
					{
						this.changingMouseAction = false;
					}
				}
			}
		}
		
		/// <summary>
		/// Snap toolbox selection back to regular pointer after using a custom connect action.
		/// </summary>
		private void OnConnectActionDeactivated(object sender, DslDiagrams::DiagramEventArgs e)
		{
			OnMouseActionDeactivated();
		}
		
		/// <summary>
		/// Overridable method to manage the mouse deactivation. The default implementation snap stoolbox selection back to regular pointer 
		/// after using a custom connect action.
		/// </summary>
		protected virtual void OnMouseActionDeactivated()
		{
			DslDiagrams::DiagramView activeView = this.ActiveDiagramView;
		
			if (activeView != null && activeView.Toolbox != null)
			{
				// If we're not changing mouse action due to changing toolbox selection change,
				// reset toolbox selection.
				if (!this.changingMouseAction)
				{
					activeView.Toolbox.SelectedToolboxItemUsed();
				}
			}
		}
		#endregion
		
		/// <summary>
		/// Dispose of connect actions.
		/// </summary>
		protected override void Dispose(bool disposing)
		{
			try
			{
				if(disposing)
				{
					if(this.fatherConnectAction != null)
					{
						this.fatherConnectAction.Dispose();
						this.fatherConnectAction = null;
					}
					if(this.actuatorConnectAction != null)
					{
						this.actuatorConnectAction.Dispose();
						this.actuatorConnectAction = null;
					}
					if(this.sensorConnectAction != null)
					{
						this.sensorConnectAction.Dispose();
						this.sensorConnectAction = null;
					}
					if(this.alternativeConnectAction != null)
					{
						this.alternativeConnectAction.Dispose();
						this.alternativeConnectAction = null;
					}
					if(this.brotherConnectAction != null)
					{
						this.brotherConnectAction.Dispose();
						this.brotherConnectAction = null;
					}
					if(this.commentLinkConnectAction != null)
					{
						this.commentLinkConnectAction.Dispose();
						this.commentLinkConnectAction = null;
					}
				}
			}
			finally
			{
				base.Dispose(disposing);
			}
		}
		#region Constructors, domain class Id
	
		/// <summary>
		/// vShomeDiagram domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x66143188, 0x5fb3, 0x44fe, 0x90, 0x64, 0x0d, 0x70, 0x28, 0xb3, 0xe6, 0xc6);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public vShomeDiagram(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public vShomeDiagram(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace Ufba.vShome
{
	
		/// <summary>
		/// Double derived implementation for the rule that initiates view fixup when an element that has an associated shape is added to the model.
		/// This now enables the DSL author to everride the SkipFixUp() method 
		/// </summary>
		internal partial class FixUpDiagramBase : DslModeling::AddRule
		{
			protected virtual bool SkipFixup(DslModeling::ModelElement childElement)
			{
				return childElement.IsDeleted;
			}
		}
	
		/// <summary>
		/// Rule that initiates view fixup when an element that has an associated shape is added to the model. 
		/// </summary>
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.Comment), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.Feature), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.Device), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.FeatureReferencesActuator), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.FeatureReferencesFather), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.FeatureReferencesAlternatives), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.FeatureReferencesBrother), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.FeatureReferencesSensor), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.CommentReferencesFeatures), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		internal sealed partial class FixUpDiagram : FixUpDiagramBase
		{
			[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
			public override void ElementAdded(DslModeling::ElementAddedEventArgs e)
			{
				if(e == null) throw new global::System.ArgumentNullException("e");
			
				DslModeling::ModelElement childElement = e.ModelElement;
				if (this.SkipFixup(childElement))
					return;
				DslModeling::ModelElement parentElement;
				if(childElement is DslModeling::ElementLink)
				{
					parentElement = GetParentForRelationship((DslModeling::ElementLink)childElement);
				} else
				if(childElement is global::Ufba.vShome.Comment)
				{
					parentElement = GetParentForComment((global::Ufba.vShome.Comment)childElement);
				} else
				if(childElement is global::Ufba.vShome.Feature)
				{
					parentElement = GetParentForFeature((global::Ufba.vShome.Feature)childElement);
				} else
				if(childElement is global::Ufba.vShome.Device)
				{
					parentElement = GetParentForDevice((global::Ufba.vShome.Device)childElement);
				} else
				{
					parentElement = null;
				}
				
				if(parentElement != null)
				{
					DslDiagrams::Diagram.FixUpDiagram(parentElement, childElement);
				}
			}
			public static global::Ufba.vShome.ModelRoot GetParentForComment( global::Ufba.vShome.Comment root )
			{
				// Segments 0 and 1
				global::Ufba.vShome.ModelRoot result = root.ModelRoot;
				if ( result == null ) return null;
				return result;
			}
			public static global::Ufba.vShome.ModelRoot GetParentForFeature( global::Ufba.vShome.Feature root )
			{
				// Segments 0 and 1
				global::Ufba.vShome.ModelRoot result = root.ModelRoot;
				if ( result == null ) return null;
				return result;
			}
			public static global::Ufba.vShome.ModelRoot GetParentForDevice( global::Ufba.vShome.Device root )
			{
				// Segments 0 and 1
				global::Ufba.vShome.ModelRoot result = root.ModelRoot;
				if ( result == null ) return null;
				return result;
			}
			private static DslModeling::ModelElement GetParentForRelationship(DslModeling::ElementLink elementLink)
			{
				global::System.Collections.ObjectModel.ReadOnlyCollection<DslModeling::ModelElement> linkedElements = elementLink.LinkedElements;
	
				if (linkedElements.Count == 2)
				{
					DslDiagrams::ShapeElement sourceShape = linkedElements[0] as DslDiagrams::ShapeElement;
					DslDiagrams::ShapeElement targetShape = linkedElements[1] as DslDiagrams::ShapeElement;
	
					if(sourceShape == null)
					{
						DslModeling::LinkedElementCollection<DslDiagrams::PresentationElement> presentationElements = DslDiagrams::PresentationViewsSubject.GetPresentation(linkedElements[0]);
						foreach (DslDiagrams::PresentationElement presentationElement in presentationElements)
						{
							DslDiagrams::ShapeElement shape = presentationElement as DslDiagrams::ShapeElement;
							if (shape != null)
							{
								sourceShape = shape;
								break;
							}
						}
					}
					
					if(targetShape == null)
					{
						DslModeling::LinkedElementCollection<DslDiagrams::PresentationElement> presentationElements = DslDiagrams::PresentationViewsSubject.GetPresentation(linkedElements[1]);
						foreach (DslDiagrams::PresentationElement presentationElement in presentationElements)
						{
							DslDiagrams::ShapeElement shape = presentationElement as DslDiagrams::ShapeElement;
							if (shape != null)
							{
								targetShape = shape;
								break;
							}
						}
					}
					
					if(sourceShape == null || targetShape == null)
					{
						global::System.Diagnostics.Debug.Fail("Unable to find source and/or target shape for view fixup.");
						return null;
					}
	
					DslDiagrams::ShapeElement sourceParent = sourceShape.ParentShape;
					DslDiagrams::ShapeElement targetParent = targetShape.ParentShape;
	
					while (sourceParent != targetParent && sourceParent != null)
					{
						DslDiagrams::ShapeElement curParent = targetParent;
						while (sourceParent != curParent && curParent != null)
						{
							curParent = curParent.ParentShape;
						}
	
						if(sourceParent == curParent)
						{
							break;
						}
						else
						{
							sourceParent = sourceParent.ParentShape;
						}
					}
	
					while (sourceParent != null)
					{
						// ensure that the parent can parent connectors (i.e., a diagram or a swimlane).
						if(sourceParent is DslDiagrams::Diagram || sourceParent is DslDiagrams::SwimlaneShape)
						{
							break;
						}
						else
						{
							sourceParent = sourceParent.ParentShape;
						}
					}
	
					global::System.Diagnostics.Debug.Assert(sourceParent != null && sourceParent.ModelElement != null, "Unable to find common parent for view fixup.");
					return sourceParent.ModelElement;
				}
	
				return null;
			}
		}
		
	
		/// <summary>
		/// Reroute a connector when the role players of its underlying relationship change
		/// </summary>
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.FeatureReferencesActuator), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.FeatureReferencesFather), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.FeatureReferencesAlternatives), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.FeatureReferencesBrother), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.FeatureReferencesSensor), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Ufba.vShome.CommentReferencesFeatures), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		internal sealed class ConnectorRolePlayerChanged : DslModeling::RolePlayerChangeRule
		{
			/// <summary>
			/// Reroute a connector when the role players of its underlying relationship change
			/// </summary>
			public override void RolePlayerChanged(DslModeling::RolePlayerChangedEventArgs e)
			{
				if (e == null) throw new global::System.ArgumentNullException("e");
	
				global::System.Collections.ObjectModel.ReadOnlyCollection<DslDiagrams::PresentationViewsSubject> connectorLinks = DslDiagrams::PresentationViewsSubject.GetLinksToPresentation(e.ElementLink);
				foreach (DslDiagrams::PresentationViewsSubject connectorLink in connectorLinks)
				{
					// Fix up any binary link shapes attached to the element link.
					DslDiagrams::BinaryLinkShape linkShape = connectorLink.Presentation as DslDiagrams::BinaryLinkShape;
					if (linkShape != null)
					{
						global::Ufba.vShome.vShomeDiagram diagram = linkShape.Diagram as global::Ufba.vShome.vShomeDiagram;
						if (diagram != null)
						{
							if (e.NewRolePlayer != null)
							{
								DslDiagrams::NodeShape fromShape;
								DslDiagrams::NodeShape toShape;
								diagram.GetSourceAndTargetForConnector(linkShape, out fromShape, out toShape);
								if (fromShape != null && toShape != null)
								{
									if (!object.Equals(fromShape, linkShape.FromShape))
									{
										linkShape.FromShape = fromShape;
									}
									if (!object.Equals(linkShape.ToShape, toShape))
									{
										linkShape.ToShape = toShape;
									}
								}
								else
								{
									// delete the connector if we cannot find an appropriate target shape.
									linkShape.Delete();
								}
							}
							else
							{
								// delete the connector if the new role player is null.
								linkShape.Delete();
							}
						}
					}
				}
			}
		}
	}