using Microsoft.VisualStudio.Modeling;
using Microsoft.VisualStudio.Modeling.Validation;

namespace Ufba.vShome.Validation
{
	[ValidationState(ValidationState.Enabled)]
	public partial class FeatureReferencesActuatorBuilder
	{
		// Identify the method as a validation method:  
		[ValidationMethod
		( // Specify which events cause the method to be invoked:  
		  ValidationCategories.Open // On file load.  
		| ValidationCategories.Save // On save to file.  
		| ValidationCategories.Menu // On user menu command.  
		)]
		private void tfdytdyt(ValidationContext context)
		{
			
			context.LogError("kkkk OptionType in", "", null);
		}
	}
}

