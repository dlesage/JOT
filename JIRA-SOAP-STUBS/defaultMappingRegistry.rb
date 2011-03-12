require 'JIRA-SOAP-STUBS/default.rb'
require 'soap/mapping'

module JIRA

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsBeansSoapRpcJiraAtlassianCom = "http://beans.soap.rpc.jira.atlassian.com"
  NsExceptionRpcJiraAtlassianCom = "http://exception.rpc.jira.atlassian.com"

  EncodedRegistry.register(
    :class => JIRA::RemoteComment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComment"),
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "body")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["groupLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "groupLevel")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["roleLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "roleLevel")]],
      ["updateAuthor", ["SOAP::SOAPString", XSD::QName.new(nil, "updateAuthor")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteTimeInfo,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteTimeInfo"),
    :schema_element => [
      ["serverTime", ["SOAP::SOAPString", XSD::QName.new(nil, "serverTime")]],
      ["timeZoneId", ["SOAP::SOAPString", XSD::QName.new(nil, "timeZoneId")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteServerInfo,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteServerInfo"),
    :schema_element => [
      ["baseUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "baseUrl")]],
      ["buildDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "buildDate")]],
      ["buildNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "buildNumber")]],
      ["edition", ["SOAP::SOAPString", XSD::QName.new(nil, "edition")]],
      ["serverTime", ["JIRA::RemoteTimeInfo", XSD::QName.new(nil, "serverTime")]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteEntity,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteUser,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteUser"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["fullname", ["SOAP::SOAPString", XSD::QName.new(nil, "fullname")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteGroup,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteGroup"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["users", ["JIRA::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteVersion,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteVersion"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["archived", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "archived")]],
      ["releaseDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "releaseDate")]],
      ["released", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "released")]],
      ["sequence", ["SOAP::SOAPLong", XSD::QName.new(nil, "sequence")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteComponent,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComponent"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteCustomFieldValue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteCustomFieldValue"),
    :schema_element => [
      ["customfieldId", ["SOAP::SOAPString", XSD::QName.new(nil, "customfieldId")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["values", ["JIRA::ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteIssue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssue"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["affectsVersions", ["JIRA::ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "affectsVersions")]],
      ["assignee", ["SOAP::SOAPString", XSD::QName.new(nil, "assignee")]],
      ["attachmentNames", ["JIRA::ArrayOf_xsd_string", XSD::QName.new(nil, "attachmentNames")]],
      ["components", ["JIRA::ArrayOf_tns1_RemoteComponent", XSD::QName.new(nil, "components")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["customFieldValues", ["JIRA::ArrayOf_tns1_RemoteCustomFieldValue", XSD::QName.new(nil, "customFieldValues")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duedate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "duedate")]],
      ["environment", ["SOAP::SOAPString", XSD::QName.new(nil, "environment")]],
      ["fixVersions", ["JIRA::ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "fixVersions")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(nil, "priority")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["reporter", ["SOAP::SOAPString", XSD::QName.new(nil, "reporter")]],
      ["resolution", ["SOAP::SOAPString", XSD::QName.new(nil, "resolution")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]],
      ["votes", ["SOAP::SOAPLong", XSD::QName.new(nil, "votes")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteFieldValue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFieldValue"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["values", ["JIRA::ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteNamedObject,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteNamedObject"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteIssueType,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssueType"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]],
      ["subTask", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "subTask")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteConfiguration,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteConfiguration"),
    :schema_element => [
      ["allowAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowAttachments")]],
      ["allowExternalUserManagment", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowExternalUserManagment")]],
      ["allowIssueLinking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowIssueLinking")]],
      ["allowSubTasks", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowSubTasks")]],
      ["allowTimeTracking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowTimeTracking")]],
      ["allowUnassignedIssues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowUnassignedIssues")]],
      ["allowVoting", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowVoting")]],
      ["allowWatching", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowWatching")]],
      ["timeTrackingDaysPerWeek", ["SOAP::SOAPInt", XSD::QName.new(nil, "timeTrackingDaysPerWeek")]],
      ["timeTrackingHoursPerDay", ["SOAP::SOAPInt", XSD::QName.new(nil, "timeTrackingHoursPerDay")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteScheme,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteScheme"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemotePermission,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermission"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["permission", ["SOAP::SOAPLong", XSD::QName.new(nil, "permission")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemotePermissionMapping,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionMapping"),
    :schema_element => [
      ["permission", ["JIRA::RemotePermission", XSD::QName.new(nil, "permission")]],
      ["remoteEntities", ["JIRA::ArrayOf_tns1_RemoteEntity", XSD::QName.new(nil, "remoteEntities")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemotePermissionScheme,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionScheme"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteScheme"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["permissionMappings", ["JIRA::ArrayOf_tns1_RemotePermissionMapping", XSD::QName.new(nil, "permissionMappings")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteProject,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProject"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["issueSecurityScheme", ["JIRA::RemoteScheme", XSD::QName.new(nil, "issueSecurityScheme")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["lead", ["SOAP::SOAPString", XSD::QName.new(nil, "lead")]],
      ["notificationScheme", ["JIRA::RemoteScheme", XSD::QName.new(nil, "notificationScheme")]],
      ["permissionScheme", ["JIRA::RemotePermissionScheme", XSD::QName.new(nil, "permissionScheme")]],
      ["projectUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "projectUrl")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemotePriority,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePriority"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]],
      ["color", ["SOAP::SOAPString", XSD::QName.new(nil, "color")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteResolution,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteResolution"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteStatus,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteStatus"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteProjectRole,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProjectRole"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteRoleActor,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActor"),
    :schema_element => [
      ["descriptor", ["SOAP::SOAPString", XSD::QName.new(nil, "descriptor")]],
      ["parameter", ["SOAP::SOAPString", XSD::QName.new(nil, "parameter")]],
      ["projectRole", ["JIRA::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["users", ["JIRA::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteRoleActors,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActors"),
    :schema_element => [
      ["projectRole", ["JIRA::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["JIRA::ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["JIRA::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteProjectRoleActors,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProjectRoleActors"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActors"),
    :schema_element => [
      ["projectRole", ["JIRA::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["JIRA::ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["JIRA::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]],
      ["project", ["JIRA::RemoteProject", XSD::QName.new(nil, "project")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteField,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteField"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteFilter,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFilter"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["xml", ["SOAP::SOAPString", XSD::QName.new(nil, "xml")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteSecurityLevel,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteSecurityLevel"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteAvatar,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAvatar"),
    :schema_element => [
      ["base64Data", ["SOAP::SOAPString", XSD::QName.new(nil, "base64Data")]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(nil, "contentType")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "owner")]],
      ["system", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "system")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteAttachment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAttachment"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")]],
      ["filesize", ["SOAP::SOAPLong", XSD::QName.new(nil, "filesize")]],
      ["mimetype", ["SOAP::SOAPString", XSD::QName.new(nil, "mimetype")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteWorklog,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteWorklog"),
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["groupLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "groupLevel")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["roleLevelId", ["SOAP::SOAPString", XSD::QName.new(nil, "roleLevelId")]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")]],
      ["timeSpent", ["SOAP::SOAPString", XSD::QName.new(nil, "timeSpent")]],
      ["timeSpentInSeconds", ["SOAP::SOAPLong", XSD::QName.new(nil, "timeSpentInSeconds")]],
      ["updateAuthor", ["SOAP::SOAPString", XSD::QName.new(nil, "updateAuthor")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]]
    ]
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteAuthenticationException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteAuthenticationException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => JIRA::RemoteValidationException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteValidationException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => JIRA::RemotePermissionException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemotePermissionException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteUser,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteUser") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteVersion,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteVersion") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_xsd_string,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteComponent,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComponent") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteCustomFieldValue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteCustomFieldValue") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteFieldValue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFieldValue") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteNamedObject,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteNamedObject") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteIssueType,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssueType") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteEntity,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemotePermissionMapping,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionMapping") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemotePriority,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePriority") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteResolution,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteResolution") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteStatus,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteStatus") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteProjectRole,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProjectRole") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteRoleActor,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActor") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteScheme,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteScheme") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteField,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteField") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteComment,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComment") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteFilter,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFilter") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteSecurityLevel,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteSecurityLevel") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteAvatar,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAvatar") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemotePermissionScheme,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionScheme") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemotePermission,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermission") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_xsd_base64Binary,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "byte[]") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteAttachment,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAttachment") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteWorklog,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteWorklog") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteIssue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssue") }
  )

  EncodedRegistry.set(
    JIRA::ArrayOf_tns1_RemoteProject,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProject") }
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteComment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComment"),
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "body")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["groupLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "groupLevel")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["roleLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "roleLevel")]],
      ["updateAuthor", ["SOAP::SOAPString", XSD::QName.new(nil, "updateAuthor")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteTimeInfo,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteTimeInfo"),
    :schema_element => [
      ["serverTime", ["SOAP::SOAPString", XSD::QName.new(nil, "serverTime")]],
      ["timeZoneId", ["SOAP::SOAPString", XSD::QName.new(nil, "timeZoneId")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteServerInfo,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteServerInfo"),
    :schema_element => [
      ["baseUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "baseUrl")]],
      ["buildDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "buildDate")]],
      ["buildNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "buildNumber")]],
      ["edition", ["SOAP::SOAPString", XSD::QName.new(nil, "edition")]],
      ["serverTime", ["JIRA::RemoteTimeInfo", XSD::QName.new(nil, "serverTime")]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteEntity,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteUser,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteUser"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["fullname", ["SOAP::SOAPString", XSD::QName.new(nil, "fullname")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteGroup,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteGroup"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["users", ["JIRA::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteVersion,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteVersion"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["archived", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "archived")]],
      ["releaseDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "releaseDate")]],
      ["released", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "released")]],
      ["sequence", ["SOAP::SOAPLong", XSD::QName.new(nil, "sequence")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteComponent,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComponent"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteCustomFieldValue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteCustomFieldValue"),
    :schema_element => [
      ["customfieldId", ["SOAP::SOAPString", XSD::QName.new(nil, "customfieldId")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["values", ["JIRA::ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteIssue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssue"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["affectsVersions", ["JIRA::ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "affectsVersions")]],
      ["assignee", ["SOAP::SOAPString", XSD::QName.new(nil, "assignee")]],
      ["attachmentNames", ["JIRA::ArrayOf_xsd_string", XSD::QName.new(nil, "attachmentNames")]],
      ["components", ["JIRA::ArrayOf_tns1_RemoteComponent", XSD::QName.new(nil, "components")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["customFieldValues", ["JIRA::ArrayOf_tns1_RemoteCustomFieldValue", XSD::QName.new(nil, "customFieldValues")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duedate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "duedate")]],
      ["environment", ["SOAP::SOAPString", XSD::QName.new(nil, "environment")]],
      ["fixVersions", ["JIRA::ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "fixVersions")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(nil, "priority")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["reporter", ["SOAP::SOAPString", XSD::QName.new(nil, "reporter")]],
      ["resolution", ["SOAP::SOAPString", XSD::QName.new(nil, "resolution")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]],
      ["votes", ["SOAP::SOAPLong", XSD::QName.new(nil, "votes")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteFieldValue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFieldValue"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["values", ["JIRA::ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteNamedObject,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteNamedObject"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteIssueType,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssueType"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]],
      ["subTask", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "subTask")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteConfiguration,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteConfiguration"),
    :schema_element => [
      ["allowAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowAttachments")]],
      ["allowExternalUserManagment", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowExternalUserManagment")]],
      ["allowIssueLinking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowIssueLinking")]],
      ["allowSubTasks", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowSubTasks")]],
      ["allowTimeTracking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowTimeTracking")]],
      ["allowUnassignedIssues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowUnassignedIssues")]],
      ["allowVoting", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowVoting")]],
      ["allowWatching", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowWatching")]],
      ["timeTrackingDaysPerWeek", ["SOAP::SOAPInt", XSD::QName.new(nil, "timeTrackingDaysPerWeek")]],
      ["timeTrackingHoursPerDay", ["SOAP::SOAPInt", XSD::QName.new(nil, "timeTrackingHoursPerDay")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteScheme,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteScheme"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemotePermission,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermission"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["permission", ["SOAP::SOAPLong", XSD::QName.new(nil, "permission")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemotePermissionMapping,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionMapping"),
    :schema_element => [
      ["permission", ["JIRA::RemotePermission", XSD::QName.new(nil, "permission")]],
      ["remoteEntities", ["JIRA::ArrayOf_tns1_RemoteEntity", XSD::QName.new(nil, "remoteEntities")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemotePermissionScheme,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionScheme"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteScheme"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["permissionMappings", ["JIRA::ArrayOf_tns1_RemotePermissionMapping", XSD::QName.new(nil, "permissionMappings")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteProject,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProject"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["issueSecurityScheme", ["JIRA::RemoteScheme", XSD::QName.new(nil, "issueSecurityScheme")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["lead", ["SOAP::SOAPString", XSD::QName.new(nil, "lead")]],
      ["notificationScheme", ["JIRA::RemoteScheme", XSD::QName.new(nil, "notificationScheme")]],
      ["permissionScheme", ["JIRA::RemotePermissionScheme", XSD::QName.new(nil, "permissionScheme")]],
      ["projectUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "projectUrl")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemotePriority,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePriority"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]],
      ["color", ["SOAP::SOAPString", XSD::QName.new(nil, "color")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteResolution,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteResolution"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteStatus,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteStatus"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteProjectRole,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProjectRole"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteRoleActor,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActor"),
    :schema_element => [
      ["descriptor", ["SOAP::SOAPString", XSD::QName.new(nil, "descriptor")]],
      ["parameter", ["SOAP::SOAPString", XSD::QName.new(nil, "parameter")]],
      ["projectRole", ["JIRA::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["users", ["JIRA::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteRoleActors,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActors"),
    :schema_element => [
      ["projectRole", ["JIRA::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["JIRA::ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["JIRA::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteProjectRoleActors,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProjectRoleActors"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActors"),
    :schema_element => [
      ["projectRole", ["JIRA::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["JIRA::ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["JIRA::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]],
      ["project", ["JIRA::RemoteProject", XSD::QName.new(nil, "project")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteField,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteField"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteFilter,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFilter"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["xml", ["SOAP::SOAPString", XSD::QName.new(nil, "xml")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteSecurityLevel,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteSecurityLevel"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteAvatar,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAvatar"),
    :schema_element => [
      ["base64Data", ["SOAP::SOAPString", XSD::QName.new(nil, "base64Data")]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(nil, "contentType")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "owner")]],
      ["system", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "system")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteAttachment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAttachment"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")]],
      ["filesize", ["SOAP::SOAPLong", XSD::QName.new(nil, "filesize")]],
      ["mimetype", ["SOAP::SOAPString", XSD::QName.new(nil, "mimetype")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteWorklog,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteWorklog"),
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["groupLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "groupLevel")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["roleLevelId", ["SOAP::SOAPString", XSD::QName.new(nil, "roleLevelId")]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")]],
      ["timeSpent", ["SOAP::SOAPString", XSD::QName.new(nil, "timeSpent")]],
      ["timeSpentInSeconds", ["SOAP::SOAPLong", XSD::QName.new(nil, "timeSpentInSeconds")]],
      ["updateAuthor", ["SOAP::SOAPString", XSD::QName.new(nil, "updateAuthor")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]]
    ]
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteAuthenticationException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteAuthenticationException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => JIRA::RemoteValidationException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteValidationException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => JIRA::RemotePermissionException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemotePermissionException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

end

end
