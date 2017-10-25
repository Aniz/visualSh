// This file is used by Code Analysis to maintain SuppressMessage
// attributes that are applied to this project. Project-level
// suppressions either have no target or are given a specific target
// and scoped to a namespace, type, member, etc.
//
// To add a suppression to this file, right-click the message in the
// Error List, point to "Suppress Message(s)", and click "In Project
// Suppression File". You do not need to add suppressions to this
// file manually.

using System.Diagnostics.CodeAnalysis;

[assembly: SuppressMessage("Microsoft.Naming", "CA1716:IdentifiersShouldNotMatchKeywords", MessageId = "Interface", Scope = "member", Target = "Ufba.vShome.InterfaceHasOperation.Interface", Justification = "An appropriate term in a class diagram model")]
[assembly: SuppressMessage("Microsoft.Naming", "CA1716:IdentifiersShouldNotMatchKeywords", MessageId = "Interface", Scope = "member", Target = "Ufba.vShome.InterfaceOperation.Interface", Justification = "An appropriate term in a class diagram model")]
[assembly: SuppressMessage("Microsoft.Naming", "CA1711:IdentifiersShouldNotHaveIncorrectSuffix", Scope = "type", Target = "Ufba.vShome.ModelAttribute", Justification="Attribute in this sense is a model concept")]
[assembly: SuppressMessage("Microsoft.Naming", "CA1721:PropertyNamesShouldNotMatchGetMethods", Scope = "member", Target = "Ufba.vShome.ModelAttribute.Type", Justification="Type here refers to the model concept")]
[assembly: SuppressMessage("Microsoft.Naming", "CA1721:PropertyNamesShouldNotMatchGetMethods", Scope = "member", Target = "Ufba.vShome.ModelRootHasTypes.Type", Justification = "Type here refers to the model concept")]
[assembly: SuppressMessage("Microsoft.Naming", "CA1716:IdentifiersShouldNotMatchKeywords", MessageId = "Implements", Scope = "member", Target = "Ufba.vShome.ModelType.Implements", Justification="An appropriate term in a class diagram model")]
[assembly: SuppressMessage("Microsoft.Naming", "CA1721:PropertyNamesShouldNotMatchGetMethods", Scope="member", Target="Ufba.vShome.MultipleAssociationRole.Type", Justification="Type here refers to the model concept")]
[assembly: SuppressMessage("Microsoft.Naming", "CA1703:ResourceStringsShouldBeSpelledCorrectly", MessageId = "visSHome", Scope = "resource", Target = "Ufba.vShome.GeneratedCode.DomainModelResx.resources", Justification="'visSHome' is the file extension")]
