using Microsoft.VisualStudio.Modeling;
using Microsoft.VisualStudio.Modeling.Validation;
using System.Linq;

namespace Ufba.vShome
{
	[ValidationState(ValidationState.Disabled)]
	public partial class Feature
	{
		// Identify the method as a validation method:  
		[ValidationMethod
		( // Specify which events cause the method to be invoked:  
		  ValidationCategories.Open // On file load.  
		| ValidationCategories.Save // On save to file.  
		| ValidationCategories.Menu // On user menu command.  
		)]
		private void DuplicatedEntry(ValidationContext context)
		{
			foreach (Feature f2 in this.ModelRoot.Features)
			{
				if (this.FeatureName == f2.FeatureName && this.Id != f2.Id)
				{
					context.LogError("Duplicated Feature in" + this.FeatureName.ToString(), "Err 04", this);
				}
			}
		}

		// Identify the method as a validation method:  
		[ValidationMethod
		( // Specify which events cause the method to be invoked:  
		  ValidationCategories.Open // On file load.  
		| ValidationCategories.Save // On save to file.  
		| ValidationCategories.Menu // On user menu command.  
		)]
		private void DeviceValidation(ValidationContext context)
		{
			if (this.Actuator != null && this.Actuator.DeviceType.ToString() != "Actuator")
			{
				context.LogError("[Device Type Error] The Actuator of a Feature must be of type Actuator", "Err 01", this);
			}

			if (this.Sensor != null && this.Sensor.DeviceType.ToString() != "Sensor")
			{
				context.LogError("[Device Type Error] The Sensor of a Feature must be of type Sensor", "Err 02", this);
			}
		}
	}
}
