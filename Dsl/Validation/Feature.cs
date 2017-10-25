using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.Modeling;
using Microsoft.VisualStudio.Modeling.Validation;

namespace Ufba.vShome.Validation
{
	[ValidationState(ValidationState.Enabled)]
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


			context.LogError("Duplicated OptionType in", "", null);
		
	}
	}
}
