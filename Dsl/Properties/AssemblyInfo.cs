#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"Ufba")]
[assembly: AssemblyProduct(@"vShome")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"Ufba.vShome.DslPackage, PublicKey=002400000480000094000000060200000024000052534131000400000100010041D4E2A5A1B6FA4EB9367FB840889ED16A79D2DB98BB5801026A268523B75F0D701FCEC55BAF3C4B9E2D80DBF1E0554866BE43F11616FA237F1D44FEB5E6A908E41E77C8A9DADB69E2E0DE694DCE7F974245E75164BBF3C2901443D68715F07FADBF42539F8D70126C5BDD0ABB7A7A87612118E697F250AF6BA2DF78ED727BA5")]