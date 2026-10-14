context generalledgeraccount {};

@EndUserText.label : 'Semantic Tag'
@ObjectModel.compositionRoot : true
@ObjectModel.modelingPattern : #ANALYTICAL_DIMENSION
@EntityRelationship.entityIds : [ { name: 'SemanticTag', propertyTypes: [ 'sap.vdm.gfn:SemanticTag' ] } ]
@EntityRelationship.entityType : 'sap.vdm.sont:SemanticTag'
@ObjectModel.representativeKey : 'SemanticTag'
@ObjectModel.tenantWideUniqueName : 'SemanticTag'
@ObjectModel.supportedCapabilities : [
  #ANALYTICAL_DIMENSION,
  #SQL_DATA_SOURCE,
  #CDS_MODELING_DATA_SOURCE,
  #CDS_MODELING_ASSOCIATION_TARGET,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #S
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTag {
  @DataIntegration.dataUnavailable : true
  _Text : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTagText on SemanticTag = _Text.SemanticTag;
  @EndUserText.label : 'Semantic Tag'
  @EndUserText.heading : 'Semantic Tag'
  @EndUserText.quickInfo : 'Semantic Tag of a Hierarchy Node'
  @ObjectModel.text.association : '_Text'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:SemanticTag'
  key SemanticTag : String(10);
  @EndUserText.label : 'Semantic Tag Group'
  @EndUserText.heading : 'Semantic Tag Group'
  @EndUserText.quickInfo : 'Semantic Tag Group'
  @DataIntegration.dataUnavailable : true
  SemanticTagGroup : String(4);
  @EndUserText.label : 'Parent Semantic Tag'
  @EndUserText.heading : 'Parent Semantic Tag'
  @EndUserText.quickInfo : 'Parent Semantic Tag'
  @DataIntegration.dataUnavailable : true
  ParentSemanticTag : String(10);
  @DataIntegration.dataUnavailable : true
  _ParentSemanticTag : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTag on ParentSemanticTag = _ParentSemanticTag.SemanticTag;
};

@EndUserText.label : 'Chart Of Accounts'
@ObjectModel.compositionRoot : true
@EntityRelationship.entityIds : [ { propertyTypes: [ 'sap.vdm.gfn:ChartOfAccounts' ] } ]
@EntityRelationship.entityType : 'sap.vdm.sont:ChartOfAccounts'
@ObjectModel.representativeKey : 'ChartOfAccounts'
@ObjectModel.tenantWideUniqueName : 'ChartOfAccounts'
@ObjectModel.supportedCapabilities : [ #CDS_MODELING_DATA_SOURCE, #EXTRACTION_DATA_SOURCE ]
@ObjectModel.usageType.sizeCategory : #S
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts {
  @DataIntegration.dataUnavailable : true
  _Text : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccountsText on ChartOfAccounts = _Text.ChartOfAccounts;
  @EndUserText.label : 'Chart of Accounts'
  @EndUserText.heading : 'Chart of Accounts'
  @EndUserText.quickInfo : 'Chart of Accounts'
  @ObjectModel.text.association : '_Text'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:ChartOfAccounts'
  key ChartOfAccounts : String(4);
  @EndUserText.label : 'Maint.Language'
  @EndUserText.heading : 'Maintenance Language'
  @EndUserText.quickInfo : 'Maintenance Language for the Chart of Accounts'
  @EntityRelationship.reference : [
    {
      name: '_Language',
      referencedEntityType: 'sap.vdm.sont:Language',
      referencedPropertyType: 'sap.vdm.gfn:Language'
    }
  ]
  @DataIntegration.dataUnavailable : true
  MaintenanceLanguage : String(2);
  @EndUserText.label : 'Blocked'
  @EndUserText.heading : 'B'
  @EndUserText.quickInfo : 'Indicator: Is the Chart of Accounts Blocked ?'
  @DataIntegration.dataUnavailable : true
  ChartOfAcctsIsBlocked : Boolean;
  @EndUserText.label : 'Group Chart of Accts'
  @EndUserText.heading : 'Group'
  @EndUserText.quickInfo : 'Group Chart of Accts'
  @EntityRelationship.reference : [
    {
      name: '_CorpGroupChartOfAccounts',
      referencedEntityType: 'sap.vdm.sont:ChartOfAccounts',
      referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
    }
  ]
  @ObjectModel.text.association : '_CorpGroupChartOfAccountsText'
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : _toSapVdmSontChartOfAccounts_CorporateGroupChartOfAccounts
  CorporateGroupChartOfAccounts : String(4);
  @DataIntegration.dataUnavailable : true
  _CorpGroupChartOfAccountsText : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccountsText on CorporateGroupChartOfAccounts = _CorpGroupChartOfAccountsText.ChartOfAccounts;
  _toSapVdmSontChartOfAccounts_CorporateGroupChartOfAccounts : Association to sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on CorporateGroupChartOfAccounts = _toSapVdmSontChartOfAccounts_CorporateGroupChartOfAccounts.ChartOfAccounts;
};

@EndUserText.label : 'Semantic Tag - Text'
@ObjectModel.modelingPattern : #LANGUAGE_DEPENDENT_TEXT
@EntityRelationship.entityIds : [
  {
    name: 'SemanticTagText',
    propertyTypes: [ 'sap.vdm.gfn:Language', 'sap.vdm.gfn:SemanticTag' ]
  }
]
@EntityRelationship.entityType : 'sap.vdm.sont:SemanticTagText'
@ObjectModel.representativeKey : 'SemanticTag'
@ObjectModel.tenantWideUniqueName : 'SemanticTagText'
@ObjectModel.supportedCapabilities : [
  #LANGUAGE_DEPENDENT_TEXT,
  #SQL_DATA_SOURCE,
  #CDS_MODELING_DATA_SOURCE,
  #CDS_MODELING_ASSOCIATION_TARGET,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #S
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTagText {
  @EndUserText.label : 'Language Key'
  @Semantics.language : true
  @EndUserText.heading : 'Language'
  @EndUserText.quickInfo : 'Language Key'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:Language'
  key Language : String(2);
  @EndUserText.label : 'Semantic Tag'
  @EndUserText.heading : 'Semantic Tag'
  @EndUserText.quickInfo : 'Semantic Tag of a Hierarchy Node'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:SemanticTag'
  key SemanticTag : String(10);
  @Semantics.text : true
  @EndUserText.label : 'Semantic Tag Name'
  @EndUserText.heading : 'Semantic Tag Name'
  @EndUserText.quickInfo : 'Name of Semantic Tag of Hierarchy Node'
  @DataIntegration.dataUnavailable : true
  SemanticTagName : String(20);
};

@EndUserText.label : 'Chart Of Accounts - Text'
@EntityRelationship.entityIds : [
  {
    propertyTypes: [ 'sap.vdm.gfn:ChartOfAccounts', 'sap.vdm.gfn:Language' ]
  }
]
@EntityRelationship.entityType : 'sap.vdm.sont:ChartOfAccountsText'
@ObjectModel.representativeKey : 'ChartOfAccounts'
@ObjectModel.tenantWideUniqueName : 'ChartOfAccountsText'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #LANGUAGE_DEPENDENT_TEXT,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #S
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccountsText {
  @EndUserText.label : 'Language Key'
  @Semantics.language : true
  @EndUserText.heading : 'Language'
  @EndUserText.quickInfo : 'Language Key'
  @EntityRelationship.reference : [
    {
      name: '_Language',
      referencedEntityType: 'sap.vdm.sont:Language',
      referencedPropertyType: 'sap.vdm.gfn:Language'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:Language'
  key Language : String(2);
  @EndUserText.label : 'Chart of Accounts'
  @EndUserText.heading : 'Chart of Accounts'
  @EndUserText.quickInfo : 'Chart of Accounts'
  @EntityRelationship.reference : [
    {
      name: '_ChartOfAccounts',
      referencedEntityType: 'sap.vdm.sont:ChartOfAccounts',
      referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
    }
  ]
  @ObjectModel.text.association : '_ChartOfAccountsText'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:ChartOfAccounts'
  @ObjectModel.foreignKey.association : _toSapVdmSontChartOfAccounts_ChartOfAccounts
  key ChartOfAccounts : String(4);
  @DataIntegration.dataUnavailable : true
  _ChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on ChartOfAccounts = _ChartOfAccounts.ChartOfAccounts;
  @Semantics.text : true
  @EndUserText.label : 'Chart of Accounts Description'
  @EndUserText.heading : 'Chart of Accounts Description'
  @EndUserText.quickInfo : 'Chart of Accounts Description'
  @DataIntegration.dataUnavailable : true
  ChartOfAccountsName : String(50);
  @DataIntegration.dataUnavailable : true
  _ChartOfAccountsText : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccountsText on ChartOfAccounts = _ChartOfAccountsText.ChartOfAccounts;
  _toSapVdmSontChartOfAccounts_ChartOfAccounts : Association to sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on ChartOfAccounts = _toSapVdmSontChartOfAccounts_ChartOfAccounts.ChartOfAccounts;
};

@EndUserText.label : 'Hierarchy Leaf Node with Semantic Tag'
@ObjectModel.modelingPattern : #NONE
@EntityRelationship.entityType : 'sap.vdm.sont:SemanticTagLeafNode'
@EntityRelationship.temporalIds : [
  {
    temporalType: #DATE,
    propertyTypes: [
      'sap.vdm.gfn:GLAccountHierarchy',
      'sap.vdm.gfn:HierarchyNode',
      'sap.vdm.gfn:SemanticTag'
    ],
    temporalIntervalType: #CLOSED_CLOSED,
    temporalIntervalEndProperty: 'ValidityEndDate',
    temporalIntervalStartProperty: 'ValidityStartDate'
  }
]
@ObjectModel.tenantWideUniqueName : 'SemanticTagLeafNode'
@ObjectModel.supportedCapabilities : [ #EXTRACTION_DATA_SOURCE ]
@ObjectModel.usageType.sizeCategory : #M
@EntityRelationship.compositeReferences : [
  {
    name: '_Hierarchy',
    referencedEntityType: 'sap.vdm.sont:GLAccountHierarchy',
    referencedPropertyTypes: [
      {
        localPropertyName: 'GLAccountHierarchy',
        referencedPropertyType: 'sap.vdm.gfn:GLAccountHierarchy'
      },
      {
        localPropertyName: 'ValidityEndDate',
        referencedPropertyType: 'sap.vdm.gfn:ValidityEndDate'
      }
    ]
  },
  {
    name: '_GLAccountHierarchyNode',
    referencedEntityType: 'sap.vdm.sont:GLAccountHierarchyNode',
    referencedPropertyTypes: [
      {
        localPropertyName: 'GLAccountHierarchy',
        referencedPropertyType: 'sap.vdm.gfn:GLAccountHierarchy'
      },
      {
        localPropertyName: 'HierarchyNode',
        referencedPropertyType: 'sap.vdm.gfn:HierarchyNode'
      },
      {
        localPropertyName: 'ValidityEndDate',
        referencedPropertyType: 'sap.vdm.gfn:ValidityEndDate'
      }
    ]
  }
]
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTagLeafNode {
  @EndUserText.label : 'G/L Account'
  @EndUserText.heading : 'G/L Acct'
  @EndUserText.quickInfo : 'G/L Account Number'
  @DataIntegration.dataUnavailable : true
  GLAccount : String(10);
  @DataIntegration.dataUnavailable : true
  _Hierarchy : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountHierarchy on GLAccountHierarchy = _Hierarchy.GLAccountHierarchy and ValidityEndDate = _Hierarchy.ValidityEndDate;
  @EndUserText.label : 'Semantic Tag'
  @EndUserText.heading : 'Semantic Tag'
  @EndUserText.quickInfo : 'Semantic Tag of a Hierarchy Node'
  @EntityRelationship.reference : [
    {
      name: '_SemanticTag',
      referencedEntityType: 'sap.vdm.sont:SemanticTag',
      referencedPropertyType: 'sap.vdm.gfn:SemanticTag'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:SemanticTag'
  @ObjectModel.foreignKey.association : '_SemanticTag'
  key SemanticTag : String(10);
  @DataIntegration.dataUnavailable : true
  _SemanticTag : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTag on SemanticTag = _SemanticTag.SemanticTag;
  @EndUserText.label : 'Node'
  @EndUserText.heading : 'Hierarchy Node'
  @EndUserText.quickInfo : 'Hierarchy node'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:HierarchyNode'
  @ObjectModel.foreignKey.association : '_GLAccountHierarchyNode'
  key HierarchyNode : String(50);
  @EndUserText.label : 'Functional Area'
  @EndUserText.heading : 'Functional Area'
  @EndUserText.quickInfo : 'Functional Area'
  @DataIntegration.dataUnavailable : true
  FunctionalArea : String(16);
  @EndUserText.label : 'Chart of Accounts'
  @EndUserText.heading : 'Chart of Accounts'
  @EndUserText.quickInfo : 'Chart of Accounts'
  @DataIntegration.dataUnavailable : true
  ChartOfAccounts : String(4);
  @EndUserText.label : 'Valid To'
  @EndUserText.heading : 'to'
  @EndUserText.quickInfo : 'Valid To Date'
  @Semantics.businessDate.to : true
  @DataIntegration.dataUnavailable : true
  key ValidityEndDate : Date;
  @EndUserText.label : 'Valid From'
  @EndUserText.heading : 'Valid From'
  @EndUserText.quickInfo : 'Valid-From Date'
  @Semantics.businessDate.from : true
  @DataIntegration.dataUnavailable : true
  ValidityStartDate : Date;
  @EndUserText.label : 'Hierarchy ID'
  @EndUserText.heading : 'Hierarchy ID'
  @EndUserText.quickInfo : 'Hierarchy ID'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccountHierarchy'
  @ObjectModel.foreignKey.association : '_Hierarchy'
  key GLAccountHierarchy : String(42);
  @DataIntegration.dataUnavailable : true
  _GLAccountHierarchyNode : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].GLAccountHierarchyNode on GLAccountHierarchy = _GLAccountHierarchyNode.GLAccountHierarchy and HierarchyNode = _GLAccountHierarchyNode.HierarchyNode and ValidityEndDate = _GLAccountHierarchyNode.ValidityEndDate;
};

@ODM.entityName : 'GeneralLedgerAccount'
@EndUserText.label : 'G/L Account In Chart Of Accounts'
@ObjectModel.compositionRoot : true
@EntityRelationship.entityIds : [
  {
    propertyTypes: [ 'sap.vdm.gfn:ChartOfAccounts', 'sap.vdm.gfn:GLAccount' ]
  }
]
@EntityRelationship.entityType : 'sap.vdm.sont:GeneralLedgerAccount'
@ObjectModel.representativeKey : 'GLAccount'
@ObjectModel.tenantWideUniqueName : 'GeneralLedgerAccount'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #SEARCHABLE_ENTITY,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #M
@EntityRelationship.compositeReferences : [
  {
    name: '_CorporateGroupAccount',
    referencedEntityType: 'sap.vdm.sont:GeneralLedgerAccount',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CorporateGroupChartOfAccounts',
        referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
      },
      {
        localPropertyName: 'CorporateGroupAccount',
        referencedPropertyType: 'sap.vdm.gfn:GLAccount'
      }
    ]
  },
  {
    name: '_GLAccountGroup',
    referencedEntityType: 'sap.vdm.sont:GLAccountGroup',
    referencedPropertyTypes: [
      {
        localPropertyName: 'GLAccountGroup',
        referencedPropertyType: 'sap.vdm.gfn:GLAccountGroup'
      },
      {
        localPropertyName: 'ChartOfAccounts',
        referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
      }
    ]
  }
]
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccount {
  @EndUserText.label : 'G/L Account'
  @EndUserText.heading : 'G/L Acct'
  @EndUserText.quickInfo : 'G/L Account Number'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccount'
  key GLAccount : String(10);
  @EndUserText.label : 'Created On'
  @EndUserText.heading : 'Date'
  @EndUserText.quickInfo : 'Record Created On'
  @DataIntegration.dataUnavailable : true
  CreationDate : Date;
  @EndUserText.label : 'Created by'
  @EndUserText.heading : 'Created by'
  @EndUserText.quickInfo : 'Name of Person who Created the Object'
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  CreatedByUser : String(12);
  @EndUserText.label : 'G/L Account Type'
  @EndUserText.heading : 'G/L Account Type'
  @EndUserText.quickInfo : 'Type of a General Ledger Account'
  @EntityRelationship.reference : [
    {
      name: '_GLAccountType',
      referencedEntityType: 'sap.vdm.sont:GLAccountType',
      referencedPropertyType: 'sap.vdm.gfn:GLAccountType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  GLAccountType : String(1) enum {
    C = 'C';
    N = 'N';
    P = 'P';
    S = 'S';
    X = 'X';
  };
  @EndUserText.label : 'Functional Area'
  @EndUserText.heading : 'Functional Area'
  @EndUserText.quickInfo : 'Functional Area'
  @EntityRelationship.reference : [
    {
      name: '_FunctionalArea',
      referencedEntityType: 'sap.vdm.sont:FunctionalArea',
      referencedPropertyType: 'sap.vdm.gfn:FunctionalArea'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FunctionalArea : String(16);
  @EndUserText.label : 'Account Group'
  @EndUserText.heading : 'AcGp'
  @EndUserText.quickInfo : 'G/L Account Group'
  @DataIntegration.dataUnavailable : true
  GLAccountGroup : String(4);
  @EndUserText.label : 'Trading Partner No.'
  @EndUserText.heading : 'Tr.Prt'
  @EndUserText.quickInfo : 'Company ID of Trading Partner'
  @EntityRelationship.reference : [
    {
      name: '_GlobalCompany',
      referencedEntityType: 'sap.vdm.sont:Globalcompany',
      referencedPropertyType: 'sap.vdm.gfn:Company'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerCompany : String(6);
  @EndUserText.label : 'Chart of Accounts'
  @EndUserText.heading : 'Chart of Accounts'
  @EndUserText.quickInfo : 'Chart of Accounts'
  @EntityRelationship.reference : [
    {
      name: '_ChartOfAccounts',
      referencedEntityType: 'sap.vdm.sont:ChartOfAccounts',
      referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
    }
  ]
  @ObjectModel.text.association : '_ChartOfAccountsText'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:ChartOfAccounts'
  @ObjectModel.foreignKey.association : _toSapVdmSontChartOfAccounts_ChartOfAccounts
  key ChartOfAccounts : String(4);
  @EndUserText.label : 'Sample Account'
  @EndUserText.heading : 'Samp. Acct'
  @EndUserText.quickInfo : 'Number of the Sample Account'
  @DataIntegration.dataUnavailable : true
  SampleGLAccount : String(10);
  @EndUserText.label : 'G/L Account Subtype'
  @EndUserText.heading : 'G/L Account Subtype'
  @EndUserText.quickInfo : 'Subtype of a GL Account'
  @EntityRelationship.reference : [
    {
      name: '_GLAccountSubtype',
      referencedEntityType: 'sap.vdm.sont:GLAccountSubtype',
      referencedPropertyType: 'sap.vdm.gfn:GLAccountSubtype'
    }
  ]
  @DataIntegration.dataUnavailable : true
  GLAccountSubtype : String(1);
  @DataIntegration.dataUnavailable : true
  _ChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on ChartOfAccounts = _ChartOfAccounts.ChartOfAccounts;
  @EndUserText.label : 'G/L Acct External ID'
  @EndUserText.heading : 'G/L Account External ID'
  @EndUserText.quickInfo : 'G/L Account Number'
  @DataIntegration.dataUnavailable : true
  GLAccountExternal : String(10);
  @EndUserText.label : 'Time Stamp'
  @EndUserText.heading : 'Time Stamp'
  @EndUserText.quickInfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @DataIntegration.dataUnavailable : true
  LastChangeDateTime : DateTime;
  @EndUserText.label : 'Profit Loss Account'
  @EndUserText.heading : 'B/S acct'
  @EndUserText.quickInfo : 'Indicator: Account is a balance sheet account?'
  @DataIntegration.dataUnavailable : true
  IsProfitLossAccount : Boolean;
  @DataIntegration.dataUnavailable : true
  _ChartOfAccountsText : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccountsText on ChartOfAccounts = _ChartOfAccountsText.ChartOfAccounts;
  @EndUserText.label : 'Group Account Number'
  @EndUserText.heading : 'Group Acct'
  @EndUserText.quickInfo : 'Group Account Number'
  @DataIntegration.dataUnavailable : true
  CorporateGroupAccount : String(10);
  @EndUserText.label : 'Balance Sheet Acct'
  @EndUserText.heading : 'Balance Sheet Account'
  @EndUserText.quickInfo : 'Is Balance Sheet Account'
  @DataIntegration.dataUnavailable : true
  IsBalanceSheetAccount : Boolean;
  @EndUserText.label : 'P&L state. acct'
  @EndUserText.heading : 'AT'
  @EndUserText.quickInfo : 'P&L statement account type'
  @DataIntegration.dataUnavailable : true
  ProfitLossAccountType : String(2);
  @DataIntegration.dataUnavailable : true
  _GLAccountHierarchyNode : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].GLAccountHierarchyNode on GLAccount = _GLAccountHierarchyNode.GLAccount and ChartOfAccounts = _GLAccountHierarchyNode.ChartOfAccounts;
  @EndUserText.label : 'Reconciliation Acct'
  @EndUserText.heading : ''
  @EndUserText.quickInfo : 'Bank Reconciliation Account'
  @DataIntegration.dataUnavailable : true
  BankReconciliationAccount : String(10);
  @EndUserText.label : 'Posting Block'
  @EndUserText.heading : 'Posting Block'
  @EndUserText.quickInfo : 'Indicator: Is Account Blocked for Posting?'
  @DataIntegration.dataUnavailable : true
  AccountIsBlockedForPosting : Boolean;
  @EndUserText.label : 'Deletion Flag'
  @EndUserText.heading : 'DelFl'
  @EndUserText.quickInfo : 'Indicator: Account Marked for Deletion?'
  @DataIntegration.dataUnavailable : true
  AccountIsMarkedForDeletion : Boolean;
  @EndUserText.label : 'Creation Block'
  @EndUserText.heading : 'Creation Block'
  @EndUserText.quickInfo : 'Indicator: Account Is Blocked for Creation ?'
  @DataIntegration.dataUnavailable : true
  AccountIsBlockedForCreation : Boolean;
  @EndUserText.label : 'Planning Block'
  @EndUserText.heading : 'Planning Block'
  @EndUserText.quickInfo : 'Indicator: Account Blocked for Planning ?'
  @DataIntegration.dataUnavailable : true
  AccountIsBlockedForPlanning : Boolean;
  @EndUserText.label : 'Group Chart of Accts'
  @EndUserText.heading : 'Group'
  @EndUserText.quickInfo : 'Group Chart of Accts'
  @EntityRelationship.reference : [
    {
      name: '_CorporateGroupChartOfAccounts',
      referencedEntityType: 'sap.vdm.sont:ChartOfAccounts',
      referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : _toSapVdmSontChartOfAccounts_CorporateGroupChartOfAccounts
  CorporateGroupChartOfAccounts : String(4);
  @DataIntegration.dataUnavailable : true
  _CorporateGroupChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on CorporateGroupChartOfAccounts = _CorporateGroupChartOfAccounts.ChartOfAccounts;
  _toSapVdmSontChartOfAccounts_ChartOfAccounts : Association to sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on ChartOfAccounts = _toSapVdmSontChartOfAccounts_ChartOfAccounts.ChartOfAccounts;
  _toSapVdmSontChartOfAccounts_CorporateGroupChartOfAccounts : Association to sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on CorporateGroupChartOfAccounts = _toSapVdmSontChartOfAccounts_CorporateGroupChartOfAccounts.ChartOfAccounts;
};

@EndUserText.label : 'Flow Type for G/L Account Type'
@ObjectModel.compositionRoot : true
@ObjectModel.modelingPattern : #ANALYTICAL_DIMENSION
@EntityRelationship.entityIds : [ { propertyTypes: [ 'sap.vdm.gfn:GLAccountTypeFlowType' ] } ]
@EntityRelationship.entityType : 'sap.vdm.sont:GLAccountTypeFlowType'
@ObjectModel.representativeKey : 'GLAccountTypeFlowType'
@ObjectModel.tenantWideUniqueName : 'GLAccountTypeFlowType'
@ObjectModel.supportedCapabilities : [
  #ANALYTICAL_DIMENSION,
  #CDS_MODELING_ASSOCIATION_TARGET,
  #CDS_MODELING_DATA_SOURCE,
  #SQL_DATA_SOURCE,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #S
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].GLAccountTypeFlowType {
  @EndUserText.label : 'GLAcct Type FlowType'
  @EndUserText.heading : 'G/L Account Flow Type For G/L Account Type'
  @EndUserText.quickInfo : 'G/L Account Flow Type For G/L Account Type'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccountTypeFlowType'
  key GLAccountTypeFlowType : String(12) enum {
    values;
  };
};

@EndUserText.label : 'G/L Account Hierarchy Node'
@EntityRelationship.entityType : 'sap.vdm.sont:GLAccountHierarchyNode'
@ObjectModel.representativeKey : 'HierarchyNode'
@EntityRelationship.temporalIds : [
  {
    temporalType: #DATE,
    propertyTypes: [ 'sap.vdm.gfn:GLAccountHierarchy', 'sap.vdm.gfn:HierarchyNode' ],
    temporalIntervalType: #CLOSED_CLOSED,
    temporalIntervalEndProperty: 'ValidityEndDate',
    temporalIntervalStartProperty: 'ValidityStartDate'
  }
]
@ObjectModel.tenantWideUniqueName : 'GLAccountHierarchyNode'
@ObjectModel.supportedCapabilities : [ #CDS_MODELING_DATA_SOURCE, #EXTRACTION_DATA_SOURCE ]
@ObjectModel.usageType.sizeCategory : #L
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].GLAccountHierarchyNode {
  @DataIntegration.dataUnavailable : true
  _Text : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].GLAccountHierarchyNodeText on GLAccountHierarchy = _Text.GLAccountHierarchy and HierarchyNode = _Text.HierarchyNode and GLAccount = '';
  @EndUserText.label : 'Node Type'
  @EndUserText.heading : 'Node Type'
  @EndUserText.quickInfo : 'Hierarchy node type'
  @DataIntegration.dataUnavailable : true
  NodeType : String(1) enum {
    A = 'A';
    D = 'D';
    K = 'K';
    L = 'L';
    M = 'M';
    N = 'N';
    O = 'O';
    R = 'R';
  };
  @EndUserText.label : 'G/L Account'
  @EndUserText.heading : 'G/L Account'
  @EndUserText.quickInfo : 'General Ledger Account'
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_GLAccountInChartOfAccounts'
  GLAccount : String(10);
  @EndUserText.label : 'Par. Node'
  @EndUserText.heading : 'Parent Node'
  @EndUserText.quickInfo : 'Hierarchy parent node'
  @DataIntegration.dataUnavailable : true
  ParentNode : String(50);
  @DataIntegration.dataUnavailable : true
  _Hierarchy : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountHierarchy on GLAccountHierarchy = _Hierarchy.GLAccountHierarchy and ValidityEndDate = _Hierarchy.ValidityEndDate;
  @EndUserText.label : 'Node'
  @EndUserText.heading : 'Hierarchy Node'
  @EndUserText.quickInfo : 'Hierarchy node'
  @ObjectModel.text.association : '_Text'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:HierarchyNode'
  key HierarchyNode : String(50);
  @DataIntegration.dataUnavailable : true
  SequenceNumber : String(56);
  @EndUserText.label : 'Attribute Value'
  @EndUserText.heading : 'Attribute Value'
  @EndUserText.quickInfo : 'Hierarchy Attribute Value'
  @DataIntegration.dataUnavailable : true
  SignIsInverted : Boolean;
  @EndUserText.label : 'Chart of Accounts'
  @EndUserText.heading : 'Chart of Accounts'
  @EndUserText.quickInfo : 'Chart of Accounts'
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_ChartOfAccounts'
  ChartOfAccounts : String(4);
  @EndUserText.label : 'Validity End Date'
  @EndUserText.heading : 'Validity End Date'
  @EndUserText.quickInfo : 'Validity End Date'
  @Semantics.businessDate.to : true
  @DataIntegration.dataUnavailable : true
  key ValidityEndDate : Date;
  @EndUserText.label : 'Value'
  @EndUserText.heading : 'Node Value'
  @EndUserText.quickInfo : 'Node value'
  @DataIntegration.dataUnavailable : true
  HierarchyNodeVal : String(40);
  @EndUserText.label : 'Version'
  @EndUserText.heading : 'Hierarchy Version'
  @EndUserText.quickInfo : 'Hierarchy version'
  @DataIntegration.dataUnavailable : true
  HierarchyVersion : String(15);
  @DataIntegration.dataUnavailable : true
  _ChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on ChartOfAccounts = _ChartOfAccounts.ChartOfAccounts;
  @EndUserText.label : 'Validity Start Date'
  @EndUserText.heading : 'Validity Start Date'
  @EndUserText.quickInfo : 'Validity Start Date'
  @Semantics.businessDate.from : true
  @DataIntegration.dataUnavailable : true
  ValidityStartDate : Date;
  @EndUserText.label : 'G/L Account Hierarchy'
  @EndUserText.heading : ''
  @EndUserText.quickInfo : 'G/L Account Hierarchy'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccountHierarchy'
  @ObjectModel.foreignKey.association : '_Hierarchy'
  key GLAccountHierarchy : String(42);
  @EndUserText.label : 'Hierarchy Level'
  @EndUserText.heading : 'Hierarchy Level'
  @EndUserText.quickInfo : 'Hierarchy Level'
  @DataIntegration.dataUnavailable : true
  HierarchyNodeLevel : String(6);
  @EndUserText.label : 'Sequence Number'
  @EndUserText.heading : 'Hierarchy Sequence Number'
  @EndUserText.quickInfo : 'Hierarchy Sequence Number'
  @DataIntegration.dataUnavailable : true
  HierarchyNodeSequence : String(6);
  @DataIntegration.dataUnavailable : true
  _GLAccountInChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccount on ChartOfAccounts = _GLAccountInChartOfAccounts.ChartOfAccounts and GLAccount = _GLAccountInChartOfAccounts.GLAccount;
};

@EndUserText.label : 'G/L Account Hierarchy - Text'
@EntityRelationship.entityType : 'sap.vdm.sont:GLAccountHierarchyText'
@ObjectModel.representativeKey : 'GLAccountHierarchy'
@EntityRelationship.temporalIds : [
  {
    temporalType: #DATE,
    propertyTypes: [ 'sap.vdm.gfn:GLAccountHierarchy', 'sap.vdm.gfn:Language' ],
    temporalIntervalType: #CLOSED_CLOSED,
    temporalIntervalEndProperty: 'ValidityEndDate',
    temporalIntervalStartProperty: 'ValidityStartDate'
  }
]
@ObjectModel.tenantWideUniqueName : 'GLAccountHierarchyText'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #LANGUAGE_DEPENDENT_TEXT,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #L
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].GLAccountHierarchyText {
  @EndUserText.label : 'Language Key'
  @Semantics.language : true
  @EndUserText.heading : 'Language'
  @EndUserText.quickInfo : 'Language Key'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:Language'
  key Language : String(2);
  @EndUserText.label : 'Valid To'
  @EndUserText.heading : 'to'
  @EndUserText.quickInfo : 'Valid To Date'
  @Semantics.businessDate.to : true
  @DataIntegration.dataUnavailable : true
  key ValidityEndDate : Date;
  @EndUserText.label : 'Valid From'
  @EndUserText.heading : 'Valid From'
  @EndUserText.quickInfo : 'Valid-From Date'
  @Semantics.businessDate.from : true
  @DataIntegration.dataUnavailable : true
  ValidityStartDate : Date;
  @EndUserText.label : 'G/L Account Hierarchy'
  @EndUserText.heading : ''
  @EndUserText.quickInfo : 'G/L Account Hierarchy'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccountHierarchy'
  key GLAccountHierarchy : String(42);
  @Semantics.text : true
  @EndUserText.label : 'Description'
  @EndUserText.heading : 'Hierarchy Description'
  @EndUserText.quickInfo : 'Hierarchy description'
  @DataIntegration.dataUnavailable : true
  GLAccountHierarchyName : String(50);
};

@EndUserText.label : 'General Ledger Account - Text'
@EntityRelationship.entityIds : [
  {
    name: 'GeneralLedgerAccountText',
    propertyTypes: [
      'sap.vdm.gfn:ChartOfAccounts',
      'sap.vdm.gfn:GLAccount',
      'sap.vdm.gfn:Language'
    ]
  }
]
@EntityRelationship.entityType : 'sap.vdm.sont:GeneralLedgerAccountText'
@ObjectModel.representativeKey : 'GLAccount'
@ObjectModel.tenantWideUniqueName : 'GeneralLedgerAccountText'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #LANGUAGE_DEPENDENT_TEXT,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #L
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountText {
  @EndUserText.label : 'Language Key'
  @Semantics.language : true
  @EndUserText.heading : 'Language'
  @EndUserText.quickInfo : 'Language Key'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:Language'
  key Language : String(2);
  @EndUserText.label : 'G/L Account'
  @EndUserText.heading : 'G/L Acct'
  @EndUserText.quickInfo : 'G/L Account Number'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccount'
  key GLAccount : String(10);
  @Semantics.text : true
  @EndUserText.label : 'G/L Account Name'
  @EndUserText.heading : 'G/L Account Name'
  @EndUserText.quickInfo : 'G/L Account Name'
  @DataIntegration.dataUnavailable : true
  GLAccountName : String(20);
  @EndUserText.label : 'Chart of Accounts'
  @EndUserText.heading : 'Chart of Accounts'
  @EndUserText.quickInfo : 'Chart of Accounts'
  @ObjectModel.text.association : '_ChartOfAccountsText'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:ChartOfAccounts'
  @ObjectModel.foreignKey.association : '_ChartOfAccounts'
  key ChartOfAccounts : String(4);
  @DataIntegration.dataUnavailable : true
  _ChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on ChartOfAccounts = _ChartOfAccounts.ChartOfAccounts;
  @Semantics.text : true
  @EndUserText.label : 'G/L Account Long Name'
  @EndUserText.heading : 'G/L Account Long Name'
  @EndUserText.quickInfo : 'G/L Account Long Name'
  @DataIntegration.dataUnavailable : true
  GLAccountLongName : String(50);
  @EndUserText.label : 'Time Stamp'
  @EndUserText.heading : 'Time Stamp'
  @EndUserText.quickInfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @DataIntegration.dataUnavailable : true
  LastChangeDateTime : DateTime;
  @DataIntegration.dataUnavailable : true
  _ChartOfAccountsText : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccountsText on ChartOfAccounts = _ChartOfAccountsText.ChartOfAccounts;
};

@EndUserText.label : 'G/L Account with Semantic Tag'
@ObjectModel.modelingPattern : #ANALYTICAL_CUBE
@EntityRelationship.entityType : 'sap.vdm.sont:SemanticTagGeneralLedger'
@ObjectModel.tenantWideUniqueName : 'SemanticTagGeneralLedger'
@ObjectModel.supportedCapabilities : [
  #ANALYTICAL_PROVIDER,
  #SQL_DATA_SOURCE,
  #CDS_MODELING_DATA_SOURCE,
  #CDS_MODELING_ASSOCIATION_TARGET,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #XL
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTagGeneralLedger {
  @EndUserText.label : 'G/L Account'
  @EndUserText.heading : 'G/L Account'
  @EndUserText.quickInfo : 'G/L Account'
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_GLAccountInChartOfAccounts'
  key GLAccount : String(10);
  @DataIntegration.dataUnavailable : true
  _Hierarchy : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountHierarchy on GLAccountHierarchy = _Hierarchy.GLAccountHierarchy;
  @EndUserText.label : 'Semantic Tag'
  @EndUserText.heading : 'Semantic Tag'
  @EndUserText.quickInfo : 'Semantic Tag of a Hierarchy Node'
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_SemanticTag'
  key SemanticTag : String(10);
  @DataIntegration.dataUnavailable : true
  _SemanticTag : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTag on SemanticTag = _SemanticTag.SemanticTag;
  @EndUserText.label : 'Node'
  @EndUserText.heading : 'Hierarchy Node'
  @EndUserText.quickInfo : 'Hierarchy node'
  @DataIntegration.dataUnavailable : true
  key HierarchyNode : String(50);
  @EndUserText.label : 'Chart of Accounts'
  @EndUserText.heading : 'Chart of Accounts'
  @EndUserText.quickInfo : 'Chart of Accounts'
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_ChartOfAccounts'
  key ChartOfAccounts : String(4);
  @EndUserText.label : 'Valid To'
  @EndUserText.heading : 'to'
  @EndUserText.quickInfo : 'Valid To Date'
  @Semantics.businessDate.to : true
  @DataIntegration.dataUnavailable : true
  key ValidityEndDate : Date;
  @DataIntegration.dataUnavailable : true
  _ChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on ChartOfAccounts = _ChartOfAccounts.ChartOfAccounts;
  @EndUserText.label : 'Valid From'
  @EndUserText.heading : 'Valid From'
  @EndUserText.quickInfo : 'Valid-From Date'
  @Semantics.businessDate.from : true
  @DataIntegration.dataUnavailable : true
  key ValidityStartDate : Date;
  @EndUserText.label : 'FSV'
  @EndUserText.heading : 'Financial Statement Version'
  @EndUserText.quickInfo : 'Financial Statement Version'
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_Hierarchy'
  key GLAccountHierarchy : String(42);
  @EndUserText.label : 'Functional Area'
  @EndUserText.heading : 'Functional Area Enabled'
  @EndUserText.quickInfo : 'Indicator: Functional Area Enabled'
  @DataIntegration.dataUnavailable : true
  FunctionalAreaIsUsed : Boolean;
  @DataIntegration.dataUnavailable : true
  _GLAccountHierarchyNode : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].GLAccountHierarchyNode on GLAccountHierarchy = _GLAccountHierarchyNode.GLAccountHierarchy and HierarchyNode = _GLAccountHierarchyNode.HierarchyNode;
  @EndUserText.label : 'Fun.Area Perm.'
  @EndUserText.heading : ''
  @EndUserText.quickInfo : 'Indicator: Assignment of Functional Areas Is Permitted'
  @DataIntegration.dataUnavailable : true
  IsFunctionalAreaPermitted : Boolean;
  @DataIntegration.dataUnavailable : true
  _GLAccountInChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccount on ChartOfAccounts = _GLAccountInChartOfAccounts.ChartOfAccounts and GLAccount = _GLAccountInChartOfAccounts.GLAccount;
};

@EndUserText.label : 'Functional Area with Semantic Tag'
@ObjectModel.modelingPattern : #ANALYTICAL_CUBE
@EntityRelationship.entityIds : [
  {
    name: 'SemanticTagFunctionalArea',
    propertyTypes: [
      'sap.vdm.gfn:FunctionalArea',
      'sap.vdm.gfn:GLAccountHierarchy',
      'sap.vdm.gfn:HierarchyNode',
      'sap.vdm.gfn:SemanticTag',
      'sap.vdm.gfn:ValidityEndDate',
      'sap.vdm.gfn:ValidityStartDate'
    ]
  }
]
@EntityRelationship.entityType : 'sap.vdm.sont:SemanticTagFunctionalArea'
@ObjectModel.tenantWideUniqueName : 'SemanticTagFunctionalArea'
@ObjectModel.supportedCapabilities : [
  #ANALYTICAL_PROVIDER,
  #SQL_DATA_SOURCE,
  #CDS_MODELING_DATA_SOURCE,
  #CDS_MODELING_ASSOCIATION_TARGET,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #M
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTagFunctionalArea {
  _Hierarchy : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountHierarchy on GLAccountHierarchy = _Hierarchy.GLAccountHierarchy;
  @EndUserText.label : 'Semantic Tag'
  @EndUserText.heading : 'Semantic Tag'
  @EndUserText.quickInfo : 'Semantic Tag of a Hierarchy Node'
  @EntityRelationship.propertyType : 'sap.vdm.gfn:SemanticTag'
  @ObjectModel.foreignKey.association : '_SemanticTag'
  key SemanticTag : String(10);
  _SemanticTag : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTag on SemanticTag = _SemanticTag.SemanticTag;
  @EndUserText.label : 'Node'
  @EndUserText.heading : 'Hierarchy Node'
  @EndUserText.quickInfo : 'Hierarchy node'
  @EntityRelationship.propertyType : 'sap.vdm.gfn:HierarchyNode'
  key HierarchyNode : String(50);
  @EndUserText.label : 'Functional Area'
  @EndUserText.heading : 'FA'
  @EndUserText.quickInfo : 'Functional Area'
  @EntityRelationship.reference : [
    {
      name: '_FunctionalArea',
      referencedEntityType: 'sap.vdm.sont:FunctionalArea',
      referencedPropertyType: 'sap.vdm.gfn:FunctionalArea'
    }
  ]
  @EntityRelationship.propertyType : 'sap.vdm.gfn:FunctionalArea'
  key FunctionalArea : String(16);
  @EndUserText.label : 'Valid To'
  @EndUserText.heading : 'to'
  @EndUserText.quickInfo : 'Valid To Date'
  @Semantics.businessDate.to : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:ValidityEndDate'
  key ValidityEndDate : Date;
  @EndUserText.label : 'Valid From'
  @EndUserText.heading : 'Valid From'
  @EndUserText.quickInfo : 'Valid-From Date'
  @Semantics.businessDate.from : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:ValidityStartDate'
  key ValidityStartDate : Date;
  @EndUserText.label : 'FSV'
  @EndUserText.heading : 'Financial Statement Version'
  @EndUserText.quickInfo : 'Financial Statement Version'
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccountHierarchy'
  @ObjectModel.foreignKey.association : '_Hierarchy'
  key GLAccountHierarchy : String(42);
  _GLAccountHierarchyNode : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].GLAccountHierarchyNode on GLAccountHierarchy = _GLAccountHierarchyNode.GLAccountHierarchy and HierarchyNode = _GLAccountHierarchyNode.HierarchyNode;
};

@EndUserText.label : 'Financial Statement Hierarchy Node'
@ObjectModel.modelingPattern : #ANALYTICAL_PARENT_CHILD_HIERARCHY_NODE
@EntityRelationship.entityType : 'sap.vdm.sont:FinancialStatementHierNode'
@ObjectModel.representativeKey : 'HierarchyNode'
@EntityRelationship.temporalIds : [
  {
    temporalType: #DATE,
    propertyTypes: [
      'sap.vdm.gfn:FinancialStatementHierarchy',
      'sap.vdm.gfn:HierarchyNode'
    ],
    temporalIntervalType: #CLOSED_CLOSED,
    temporalIntervalEndProperty: 'ValidityEndDate',
    temporalIntervalStartProperty: 'ValidityStartDate'
  }
]
@ObjectModel.tenantWideUniqueName : 'FinancialStatementHierNode'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #CDS_MODELING_ASSOCIATION_TARGET,
  #ANALYTICAL_PARENT_CHILD_HIERARCHY_NODE,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #L
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].FinancialStatementHierNode {
  @DataIntegration.dataUnavailable : true
  _Text : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].FinancialStatementHierNodeText on FinancialStatementHierarchy = _Text.FinancialStatementHierarchy and HierarchyNode = _Text.HierarchyNode and FinancialStatementLeafItem = '';
  @EndUserText.label : 'Par. Node'
  @EndUserText.heading : 'Parent Node'
  @EndUserText.quickInfo : 'Hierarchy parent node'
  @DataIntegration.dataUnavailable : true
  ParentNode : String(50);
  @DataIntegration.dataUnavailable : true
  _Hierarchy : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].FinancialStatementHierarchy on FinancialStatementHierarchy = _Hierarchy.FinancialStatementHierarchy and ValidityEndDate = _Hierarchy.ValidityEndDate;
  @DataIntegration.dataUnavailable : true
  _ParentNode : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].FinancialStatementHierNode on FinancialStatementHierarchy = _ParentNode.FinancialStatementHierarchy and ValidityEndDate = _ParentNode.ValidityEndDate and ParentNode = _ParentNode.HierarchyNode;
  @EndUserText.label : 'Node'
  @EndUserText.heading : 'Hierarchy Node'
  @EndUserText.quickInfo : 'Hierarchy node'
  @ObjectModel.text.association : '_Text'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:HierarchyNode'
  key HierarchyNode : String(50);
  @EndUserText.label : 'Hierarchy Level'
  @EndUserText.heading : 'Hierarchy Level'
  @EndUserText.quickInfo : 'Hierarchy Level'
  @DataIntegration.dataUnavailable : true
  HierarchyLevel : String(6);
  @DataIntegration.dataUnavailable : true
  SequenceNumber : String(56);
  @EndUserText.label : 'Attribute Value'
  @EndUserText.heading : 'Attribute Value'
  @EndUserText.quickInfo : 'Hierarchy Attribute Value'
  @DataIntegration.dataUnavailable : true
  SignIsInverted : Boolean;
  @EndUserText.label : 'Node Class'
  @EndUserText.heading : 'Node Class'
  @EndUserText.quickInfo : 'Node class'
  @DataIntegration.dataUnavailable : true
  ChartOfAccounts : String(12);
  @EndUserText.label : 'Balance'
  @EndUserText.heading : 'Balance Indicator'
  @EndUserText.quickInfo : 'Balance indicator'
  @DataIntegration.dataUnavailable : true
  DebitCreditCode : String(1) enum {
    ![ ] = '';
    H = 'H';
    S = 'S';
  };
  @EndUserText.label : 'Valid To'
  @EndUserText.heading : 'to'
  @EndUserText.quickInfo : 'Valid To Date'
  @Semantics.businessDate.to : true
  @DataIntegration.dataUnavailable : true
  key ValidityEndDate : Date;
  @EndUserText.label : 'Value'
  @EndUserText.heading : 'Node Value'
  @EndUserText.quickInfo : 'Node value'
  @DataIntegration.dataUnavailable : true
  HierarchyNodeVal : String(40);
  @EndUserText.label : 'Version'
  @EndUserText.heading : 'Hierarchy Version'
  @EndUserText.quickInfo : 'Hierarchy version'
  @DataIntegration.dataUnavailable : true
  HierarchyVersion : String(15);
  @EndUserText.label : 'Validity Start Date'
  @EndUserText.heading : 'Validity Start Date'
  @EndUserText.quickInfo : 'Validity Start Date'
  @Semantics.businessDate.from : true
  @DataIntegration.dataUnavailable : true
  ValidityStartDate : Date;
  @EndUserText.label : 'Sequence Number'
  @EndUserText.heading : 'Hierarchy Sequence Number'
  @EndUserText.quickInfo : 'Hierarchy Sequence Number'
  @DataIntegration.dataUnavailable : true
  HierarchyNodeSequence : String(6);
  @EndUserText.label : 'Node for Extraction'
  @EndUserText.heading : 'Hierarchy Node for Extraction'
  @EndUserText.quickInfo : 'Hierarchy Node for Extraction'
  @DataIntegration.dataUnavailable : true
  FinStmntNodeFormattedID : String(32);
  @EndUserText.label : 'Node'
  @EndUserText.heading : 'Hierarchy Node'
  @EndUserText.quickInfo : 'Hierarchy node'
  @DataIntegration.dataUnavailable : true
  FinancialStatementLeafItem : String(50);
  @EndUserText.label : 'Node Type'
  @EndUserText.heading : 'Node Type'
  @EndUserText.quickInfo : 'Financial Statement Node Type'
  @DataIntegration.dataUnavailable : true
  FinancialStatementNodeType : String(1) enum {
    F = 'F';
    G = 'G';
    I = 'I';
  };
  @EndUserText.label : 'Hierarchy ID'
  @EndUserText.heading : 'Hierarchy ID'
  @EndUserText.quickInfo : 'Hierarchy ID'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:FinancialStatementHierarchy'
  @ObjectModel.foreignKey.association : '_Hierarchy'
  key FinancialStatementHierarchy : String(42);
};

@EndUserText.label : 'Financial Statement Hierarchy - Text'
@ObjectModel.modelingPattern : #LANGUAGE_DEPENDENT_TEXT
@EntityRelationship.entityType : 'sap.vdm.sont:FinancialStatementHierText'
@ObjectModel.representativeKey : 'FinancialStatementHierarchy'
@EntityRelationship.temporalIds : [
  {
    temporalType: #DATE,
    propertyTypes: [ 'sap.vdm.gfn:FinancialStatementHierarchy', 'sap.vdm.gfn:Language' ],
    temporalIntervalType: #CLOSED_CLOSED,
    temporalIntervalEndProperty: 'ValidityEndDate',
    temporalIntervalStartProperty: 'ValidityStartDate'
  }
]
@ObjectModel.tenantWideUniqueName : 'FinancialStatementHierText'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #CDS_MODELING_ASSOCIATION_TARGET,
  #LANGUAGE_DEPENDENT_TEXT,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #L
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].FinancialStatementHierText {
  @EndUserText.label : 'Language Key'
  @Semantics.language : true
  @EndUserText.heading : 'Language'
  @EndUserText.quickInfo : 'Language Key'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:Language'
  key Language : String(2);
  @DataIntegration.dataUnavailable : true
  _Hierarchy : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].FinancialStatementHierarchy on FinancialStatementHierarchy = _Hierarchy.FinancialStatementHierarchy and ValidityEndDate = _Hierarchy.ValidityEndDate;
  @EndUserText.label : 'Valid To'
  @EndUserText.heading : 'to'
  @EndUserText.quickInfo : 'Valid To Date'
  @Semantics.businessDate.to : true
  @DataIntegration.dataUnavailable : true
  key ValidityEndDate : Date;
  @EndUserText.label : 'Valid From'
  @EndUserText.heading : 'Valid From'
  @EndUserText.quickInfo : 'Valid-From Date'
  @Semantics.businessDate.from : true
  @DataIntegration.dataUnavailable : true
  ValidityStartDate : Date;
  @EndUserText.label : 'Hierarchy ID'
  @EndUserText.heading : 'Hierarchy ID'
  @EndUserText.quickInfo : 'Hierarchy ID'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:FinancialStatementHierarchy'
  key FinancialStatementHierarchy : String(42);
  @Semantics.text : true
  @EndUserText.label : 'Financial Statement Description'
  @EndUserText.heading : 'Hierarchy Description'
  @EndUserText.quickInfo : 'Hierarchy description'
  @DataIntegration.dataUnavailable : true
  FinancialStmntHierarchyName : String(50);
};

@EndUserText.label : 'G/L Account Hierarchy Node - Text'
@EntityRelationship.entityType : 'sap.vdm.sont:GLAccountHierarchyNodeText'
@ObjectModel.representativeKey : 'HierarchyNode'
@EntityRelationship.temporalIds : [
  {
    temporalType: #DATE,
    propertyTypes: [
      'sap.vdm.gfn:GLAccountHierarchy',
      'sap.vdm.gfn:HierarchyNode',
      'sap.vdm.gfn:Language'
    ],
    temporalIntervalType: #CLOSED_CLOSED,
    temporalIntervalEndProperty: 'ValidityEndDate',
    temporalIntervalStartProperty: 'ValidityStartDate'
  }
]
@ObjectModel.tenantWideUniqueName : 'GLAccountHierarchyNodeText'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #LANGUAGE_DEPENDENT_TEXT,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #L
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].GLAccountHierarchyNodeText {
  @EndUserText.label : 'Language Key'
  @Semantics.language : true
  @EndUserText.heading : 'Language'
  @EndUserText.quickInfo : 'Language Key'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:Language'
  key Language : String(2);
  @DataIntegration.dataUnavailable : true
  _Hierarchy : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountHierarchy on GLAccountHierarchy = _Hierarchy.GLAccountHierarchy;
  @EndUserText.label : 'Node'
  @EndUserText.heading : 'Hierarchy Node'
  @EndUserText.quickInfo : 'Hierarchy node'
  @ObjectModel.text.element : [ 'HierarchyNodeText' ]
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:HierarchyNode'
  key HierarchyNode : String(50);
  @EndUserText.label : 'Valid To'
  @EndUserText.heading : 'to'
  @EndUserText.quickInfo : 'Valid To Date'
  @Semantics.businessDate.to : true
  @DataIntegration.dataUnavailable : true
  key ValidityEndDate : Date;
  @Semantics.text : true
  @EndUserText.label : 'Description'
  @EndUserText.heading : 'Node Description'
  @EndUserText.quickInfo : 'Hierarchy node description'
  @DataIntegration.dataUnavailable : true
  HierarchyNodeText : String(50);
  @EndUserText.label : 'Valid From'
  @EndUserText.heading : 'Valid From'
  @EndUserText.quickInfo : 'Valid-From Date'
  @Semantics.businessDate.from : true
  @DataIntegration.dataUnavailable : true
  ValidityStartDate : Date;
  @EndUserText.label : 'G/L Account Hierarchy'
  @EndUserText.heading : ''
  @EndUserText.quickInfo : 'G/L Account Hierarchy'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccountHierarchy'
  @ObjectModel.foreignKey.association : '_Hierarchy'
  key GLAccountHierarchy : String(42);
  @Semantics.text : true
  @DataIntegration.dataUnavailable : true
  HierarchyNodeShortText : String(20);
};

@EndUserText.label : 'Financial Statement Hierarchy'
@ObjectModel.compositionRoot : true
@ObjectModel.modelingPattern : #ANALYTICAL_DIMENSION
@EntityRelationship.entityType : 'sap.vdm.sont:FinancialStatementHierarchy'
@ObjectModel.representativeKey : 'FinancialStatementHierarchy'
@EntityRelationship.temporalIds : [
  {
    temporalType: #DATE,
    propertyTypes: [ 'sap.vdm.gfn:FinancialStatementHierarchy' ],
    temporalIntervalType: #CLOSED_CLOSED,
    temporalIntervalEndProperty: 'ValidityEndDate',
    temporalIntervalStartProperty: 'ValidityStartDate'
  }
]
@ObjectModel.tenantWideUniqueName : 'FinancialStatementHierarchy'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #CDS_MODELING_ASSOCIATION_TARGET,
  #ANALYTICAL_DIMENSION,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #L
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].FinancialStatementHierarchy {
  @DataIntegration.dataUnavailable : true
  _Text : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].FinancialStatementHierText on FinancialStatementHierarchy = _Text.FinancialStatementHierarchy and ValidityEndDate = _Text.ValidityEndDate;
  @EndUserText.label : 'Hierarchy Type'
  @EndUserText.heading : 'Hierarchy Type'
  @EndUserText.quickInfo : 'Hierarchy Type'
  @DataIntegration.dataUnavailable : true
  HierarchyType : String(4);
  @EndUserText.label : 'Updated At'
  @EndUserText.heading : 'Last Updated At'
  @EndUserText.quickInfo : 'Last Updated At (Timestamp)'
  @DataIntegration.dataUnavailable : true
  LastChangeTime : DateTime;
  @EndUserText.label : 'Char80'
  @EndUserText.heading : 'Char80'
  @EndUserText.quickInfo : 'Char 80'
  @DataIntegration.dataUnavailable : true
  ChartOfAccounts : String(80);
  @EndUserText.label : 'Validity End Date'
  @EndUserText.heading : 'Validity End Date'
  @EndUserText.quickInfo : 'Validity End Date'
  @Semantics.businessDate.to : true
  @DataIntegration.dataUnavailable : true
  key ValidityEndDate : Date;
  @EndUserText.label : 'Last Changed By'
  @EndUserText.heading : 'Changed By'
  @EndUserText.quickInfo : 'Last Changed By'
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  LastChangedByUser : String(12);
  @EndUserText.label : 'Validity Start Date'
  @EndUserText.heading : 'Validity Start Date'
  @EndUserText.quickInfo : 'Validity Start Date'
  @Semantics.businessDate.from : true
  @DataIntegration.dataUnavailable : true
  ValidityStartDate : Date;
  @EndUserText.label : 'Updated At'
  @EndUserText.heading : 'Last Updated At'
  @EndUserText.quickInfo : 'Last Updated At (Timestamp)'
  @DataIntegration.dataUnavailable : true
  LastChangeDateTime : DateTime;
  @EndUserText.label : 'Char80'
  @EndUserText.heading : 'Char80'
  @EndUserText.quickInfo : 'Char 80'
  @DataIntegration.dataUnavailable : true
  FunctionalAreaIsUsed : Boolean;
  @EndUserText.label : 'Char80'
  @EndUserText.heading : 'Char80'
  @EndUserText.quickInfo : 'Char 80'
  @DataIntegration.dataUnavailable : true
  FinStatementNetProfitItem : String(80);
  @EndUserText.label : 'Char80'
  @EndUserText.heading : 'Char80'
  @EndUserText.quickInfo : 'Char 80'
  @DataIntegration.dataUnavailable : true
  GroupChartOfAccountIsUsed : Boolean;
  @EndUserText.label : 'Char80'
  @EndUserText.heading : 'Char80'
  @EndUserText.quickInfo : 'Char 80'
  @DataIntegration.dataUnavailable : true
  FinStatementLiabilitiesItem : String(80);
  @EndUserText.label : 'Hierarchy ID'
  @EndUserText.heading : 'Hierarchy ID'
  @EndUserText.quickInfo : 'Hierarchy ID'
  @ObjectModel.text.association : '_Text'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:FinancialStatementHierarchy'
  key FinancialStatementHierarchy : String(42);
  @EndUserText.label : 'Char80'
  @EndUserText.heading : 'Char80'
  @EndUserText.quickInfo : 'Char 80'
  @DataIntegration.dataUnavailable : true
  FinancialStatementNotesItem : String(80);
  @Semantics.text : true
  @EndUserText.label : 'Description'
  @ObjectModel.custom : true
  @EndUserText.heading : 'Hierarchy Description'
  @EndUserText.quickInfo : 'Hierarchy description'
  FinancialStmntHierarchyName : String;
  @EndUserText.label : 'Char80'
  @EndUserText.heading : 'Char80'
  @EndUserText.quickInfo : 'Char 80'
  @DataIntegration.dataUnavailable : true
  FinancialStatementAssetsItem : String(80);
  @EndUserText.label : 'Char80'
  @EndUserText.heading : 'Char80'
  @EndUserText.quickInfo : 'Char 80'
  @DataIntegration.dataUnavailable : true
  FinStatementProfitAndLossItem : String(80);
  @EndUserText.label : 'Char80'
  @EndUserText.heading : 'Char80'
  @EndUserText.quickInfo : 'Char 80'
  @DataIntegration.dataUnavailable : true
  FinancialStatementNetLossItem : String(80);
  @EndUserText.label : 'Char80'
  @EndUserText.heading : 'Char80'
  @EndUserText.quickInfo : 'Char 80'
  @DataIntegration.dataUnavailable : true
  FinancialStatementOrphansItem : String(80);
};

@EndUserText.label : 'GLAccount Flow Type'
@ObjectModel.compositionRoot : true
@ObjectModel.modelingPattern : #ANALYTICAL_DIMENSION
@EntityRelationship.entityIds : [ { propertyTypes: [ 'sap.vdm.gfn:GLAccountFlowType' ] } ]
@EntityRelationship.entityType : 'sap.vdm.sont:GeneralLedgerAccountFlowType'
@ObjectModel.representativeKey : 'GLAccountFlowType'
@ObjectModel.tenantWideUniqueName : 'GeneralLedgerAccountFlowType'
@ObjectModel.supportedCapabilities : [
  #ANALYTICAL_DIMENSION,
  #CDS_MODELING_ASSOCIATION_TARGET,
  #CDS_MODELING_DATA_SOURCE,
  #SQL_DATA_SOURCE,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #S
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountFlowType {
  @EndUserText.label : 'G/L Acct. Flow Type'
  @EndUserText.heading : 'G/L Account Flow Type'
  @EndUserText.quickInfo : 'G/L Account Flow Type'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccountFlowType'
  key GLAccountFlowType : String(10) enum {
    values;
  };
};

@ODM.oid : 'GeneralLedgerAccountLineItemOID'
@EndUserText.label : 'Raw Data of G/L Account Line Item'
@ObjectModel.modelingPattern : #ANALYTICAL_CUBE
@EntityRelationship.entityIds : [
  {
    propertyTypes: [
      'sap.vdm.gfn:AccountingDocument',
      'sap.vdm.gfn:CompanyCode',
      'sap.vdm.gfn:FiscalYear',
      'sap.vdm.gfn:LedgerGLLineItem',
      'sap.vdm.gfn:SourceLedger'
    ]
  }
]
@EntityRelationship.entityType : 'sap.vdm.sont:GeneralLedgerAccountLineItem'
@ObjectModel.representativeKey : 'LedgerGLLineItem'
@ObjectModel.tenantWideUniqueName : 'GeneralLedgerAccountLineItem'
@ObjectModel.supportedCapabilities : [
  #ANALYTICAL_PROVIDER,
  #SQL_DATA_SOURCE,
  #CDS_MODELING_DATA_SOURCE,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #XXL
@EntityRelationship.compositeReferences : [
  {
    name: '_JournalEntry',
    referencedEntityType: 'sap.vdm.sont:JournalEntry',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CompanyCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'FiscalYear',
        referencedPropertyType: 'sap.vdm.gfn:FiscalYear'
      },
      {
        localPropertyName: 'AccountingDocument',
        referencedPropertyType: 'sap.vdm.gfn:AccountingDocument'
      }
    ]
  },
  {
    name: '_AlternativeGLAccount',
    referencedEntityType: 'sap.vdm.sont:GLAccountInChartOfAccounts',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CountryChartOfAccounts',
        referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
      },
      {
        localPropertyName: 'AlternativeGLAccount',
        referencedPropertyType: 'sap.vdm.gfn:GLAccount'
      }
    ]
  },
  {
    name: '_BusinessProcess',
    referencedEntityType: 'sap.vdm.sont:BusinessProcess',
    referencedPropertyTypes: [
      {
        localPropertyName: 'ControllingArea',
        referencedPropertyType: 'sap.vdm.gfn:ControllingArea'
      },
      {
        localPropertyName: 'BusinessProcess',
        referencedPropertyType: 'sap.vdm.gfn:BusinessProcess'
      }
    ]
  },
  {
    name: '_CashLedgerAccount',
    referencedEntityType: 'sap.vdm.sont:GLAccountInCompanyCode',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CashLedgerCompanyCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'CashLedgerAccount',
        referencedPropertyType: 'sap.vdm.gfn:GLAccount'
      }
    ]
  },
  {
    name: '_ClearingAccountingDocument',
    referencedEntityType: 'sap.vdm.sont:AccountingDocument',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CompanyCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'FiscalYear',
        referencedPropertyType: 'sap.vdm.gfn:FiscalYear'
      },
      {
        localPropertyName: 'ClearingAccountingDocument',
        referencedPropertyType: 'sap.vdm.gfn:AccountingDocument'
      }
    ]
  },
  {
    name: '_CnsldtnFinancialStatementItem',
    referencedEntityType: 'sap.vdm.sont:CnsldtnFinStmntItem',
    referencedPropertyTypes: [
      {
        localPropertyName: 'ConsolidationChartOfAccounts',
        referencedPropertyType: 'sap.vdm.gfn:ConsolidationChartOfAccounts'
      },
      {
        localPropertyName: 'CnsldtnFinancialStatementItem',
        referencedPropertyType: 'sap.vdm.gfn:FinancialStatementItem'
      }
    ]
  },
  {
    name: '_CnsldtnSubitem',
    referencedEntityType: 'sap.vdm.sont:CnsldtnSubItem',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CnsldtnSubitemCategory',
        referencedPropertyType: 'sap.vdm.gfn:SubItemCategory'
      },
      {
        localPropertyName: 'CnsldtnSubitem',
        referencedPropertyType: 'sap.vdm.gfn:SubItem'
      }
    ]
  },
  {
    name: '_FiscalPeriodForVariant',
    referencedEntityType: 'sap.vdm.sont:FiscalPeriodForVariant',
    referencedPropertyTypes: [
      {
        localPropertyName: 'LedgerFiscalYear',
        referencedPropertyType: 'sap.vdm.gfn:FiscalYear'
      },
      {
        localPropertyName: 'FiscalPeriod',
        referencedPropertyType: 'sap.vdm.gfn:FiscalPeriod'
      },
      {
        localPropertyName: 'FiscalYearVariant',
        referencedPropertyType: 'sap.vdm.gfn:FiscalYearVariant'
      }
    ]
  },
  {
    name: '_FiscalYear',
    referencedEntityType: 'sap.vdm.sont:FiscalYearForCompanyCode',
    referencedPropertyTypes: [
      {
        localPropertyName: 'FiscalYear',
        referencedPropertyType: 'sap.vdm.gfn:FiscalYear'
      },
      {
        localPropertyName: 'CompanyCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      }
    ]
  },
  {
    name: '_FiscalYearPeriodForVariant',
    referencedEntityType: 'sap.vdm.sont:FiscalYearPeriodForVariant',
    referencedPropertyTypes: [
      {
        localPropertyName: 'FiscalYearPeriod',
        referencedPropertyType: 'sap.vdm.gfn:FiscalYearPeriod'
      },
      {
        localPropertyName: 'FiscalYearVariant',
        referencedPropertyType: 'sap.vdm.gfn:FiscalYearVariant'
      }
    ]
  },
  {
    name: '_FixedAsset',
    referencedEntityType: 'sap.vdm.sont:FixedAsset',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CompanyCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'MasterFixedAsset',
        referencedPropertyType: 'sap.vdm.gfn:MasterFixedAsset'
      },
      {
        localPropertyName: 'FixedAsset',
        referencedPropertyType: 'sap.vdm.gfn:FixedAsset'
      }
    ]
  },
  {
    name: '_Fund',
    referencedEntityType: 'sap.vdm.sont:Fund',
    referencedPropertyTypes: [
      {
        localPropertyName: 'FinancialManagementArea',
        referencedPropertyType: 'sap.vdm.gfn:FinancialManagementArea'
      },
      { localPropertyName: 'Fund', referencedPropertyType: 'sap.vdm.gfn:Fund' }
    ]
  },
  {
    name: '_FundedProgram',
    referencedEntityType: 'sap.vdm.sont:FundedProgram',
    referencedPropertyTypes: [
      {
        localPropertyName: 'FinancialManagementArea',
        referencedPropertyType: 'sap.vdm.gfn:FinancialManagementArea'
      },
      {
        localPropertyName: 'FundedProgram',
        referencedPropertyType: 'sap.vdm.gfn:FundedProgram'
      }
    ]
  },
  {
    name: '_GLAccountInChartOfAccounts',
    referencedEntityType: 'sap.vdm.sont:GLAccountInChartOfAccounts',
    referencedPropertyTypes: [
      {
        localPropertyName: 'ChartOfAccounts',
        referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
      },
      {
        localPropertyName: 'GLAccount',
        referencedPropertyType: 'sap.vdm.gfn:GLAccount'
      }
    ]
  },
  {
    name: '_GroupFixedAsset',
    referencedEntityType: 'sap.vdm.sont:FixedAsset',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CompanyCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'GroupMasterFixedAsset',
        referencedPropertyType: 'sap.vdm.gfn:MasterFixedAsset'
      },
      {
        localPropertyName: 'GroupFixedAsset',
        referencedPropertyType: 'sap.vdm.gfn:FixedAsset'
      }
    ]
  },
  {
    name: '_GroupMasterFixedAsset',
    referencedEntityType: 'sap.vdm.sont:MasterFixedAsset',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CompanyCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'GroupMasterFixedAsset',
        referencedPropertyType: 'sap.vdm.gfn:MasterFixedAsset'
      }
    ]
  },
  {
    name: '_InventorySpclStkSalesDocItm',
    referencedEntityType: 'sap.vdm.sont:SalesDocumentItem',
    referencedPropertyTypes: [
      {
        localPropertyName: 'InventorySpclStkSalesDocument',
        referencedPropertyType: 'sap.vdm.gfn:SalesDocument'
      },
      {
        localPropertyName: 'InventorySpclStkSalesDocItm',
        referencedPropertyType: 'sap.vdm.gfn:SalesDocumentItem'
      }
    ]
  },
  {
    name: '_LedgerFiscalYearForVariant',
    referencedEntityType: 'sap.vdm.sont:FiscalYearForVariant',
    referencedPropertyTypes: [
      {
        localPropertyName: 'LedgerFiscalYear',
        referencedPropertyType: 'sap.vdm.gfn:FiscalYear'
      },
      {
        localPropertyName: 'FiscalYearVariant',
        referencedPropertyType: 'sap.vdm.gfn:FiscalYearVariant'
      }
    ]
  },
  {
    name: '_MasterFixedAsset',
    referencedEntityType: 'sap.vdm.sont:MasterFixedAsset',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CompanyCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'MasterFixedAsset',
        referencedPropertyType: 'sap.vdm.gfn:MasterFixedAsset'
      }
    ]
  },
  {
    name: '_OffsettingAccount',
    referencedEntityType: 'sap.vdm.sont:OffsettingAccount',
    referencedPropertyTypes: [
      {
        localPropertyName: 'OffsettingChartOfAccounts',
        referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
      },
      {
        localPropertyName: 'OffsettingAccountType',
        referencedPropertyType: 'sap.vdm.gfn:OffsettingAccountType'
      },
      {
        localPropertyName: 'OffsettingAccount',
        referencedPropertyType: 'sap.vdm.gfn:OffsettingAccount'
      }
    ]
  },
  {
    name: '_PartnerBusinessProcess',
    referencedEntityType: 'sap.vdm.sont:BusinessProcess',
    referencedPropertyTypes: [
      {
        localPropertyName: 'ControllingArea',
        referencedPropertyType: 'sap.vdm.gfn:ControllingArea'
      },
      {
        localPropertyName: 'PartnerBusinessProcess',
        referencedPropertyType: 'sap.vdm.gfn:BusinessProcess'
      }
    ]
  },
  {
    name: '_PartnerFixedAsset',
    referencedEntityType: 'sap.vdm.sont:FixedAsset',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CompanyCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'PartnerMasterFixedAsset',
        referencedPropertyType: 'sap.vdm.gfn:MasterFixedAsset'
      },
      {
        localPropertyName: 'PartnerFixedAsset',
        referencedPropertyType: 'sap.vdm.gfn:FixedAsset'
      }
    ]
  },
  {
    name: '_PartnerFund',
    referencedEntityType: 'sap.vdm.sont:Fund',
    referencedPropertyTypes: [
      {
        localPropertyName: 'FinancialManagementArea',
        referencedPropertyType: 'sap.vdm.gfn:FinancialManagementArea'
      },
      {
        localPropertyName: 'PartnerFund',
        referencedPropertyType: 'sap.vdm.gfn:Fund'
      }
    ]
  },
  {
    name: '_PartnerMasterFixedAsset',
    referencedEntityType: 'sap.vdm.sont:MasterFixedAsset',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CompanyCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'PartnerMasterFixedAsset',
        referencedPropertyType: 'sap.vdm.gfn:MasterFixedAsset'
      }
    ]
  },
  {
    name: '_PartnerSalesDocumentItem',
    referencedEntityType: 'sap.vdm.sont:SalesDocumentItem',
    referencedPropertyTypes: [
      {
        localPropertyName: 'PartnerSalesDocument',
        referencedPropertyType: 'sap.vdm.gfn:SalesDocument'
      },
      {
        localPropertyName: 'PartnerSalesDocumentItem',
        referencedPropertyType: 'sap.vdm.gfn:SalesDocumentItem'
      }
    ]
  },
  {
    name: '_ProviderContractItem',
    referencedEntityType: 'sap.vdm.sont:ProviderContractItem',
    referencedPropertyTypes: [
      {
        localPropertyName: 'ProviderContract',
        referencedPropertyType: 'sap.vdm.gfn:ProviderContract'
      },
      {
        localPropertyName: 'ProviderContractItem',
        referencedPropertyType: 'sap.vdm.gfn:ProviderContractItem'
      }
    ]
  },
  {
    name: '_PubSecBudgetAccount',
    referencedEntityType: 'sap.vdm.sont:PubSecBudgetAccount',
    referencedPropertyTypes: [
      {
        localPropertyName: 'PubSecBudgetAccountCoCode',
        referencedPropertyType: 'sap.vdm.gfn:PubSecBudgetAccountCoCode'
      },
      {
        localPropertyName: 'PubSecBudgetAccount',
        referencedPropertyType: 'sap.vdm.gfn:PubSecBudgetAccount'
      }
    ]
  },
  {
    name: '_PubSecBudgetCnsmpnDate',
    referencedEntityType: 'sap.vdm.sont:FiscCalendarDateForCompCode',
    referencedPropertyTypes: [
      {
        localPropertyName: 'PubSecBudgetCnsmpnDate',
        referencedPropertyType: 'sap.vdm.gfn:CalendarDate'
      },
      {
        localPropertyName: 'PubSecBudgetAccountCoCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      }
    ]
  },
  {
    name: '_PubSecBudgetCnsmpnFsclPeriod',
    referencedEntityType: 'sap.vdm.sont:FiscalYearPeriodForCmpnyCode',
    referencedPropertyTypes: [
      {
        localPropertyName: 'PubSecBudgetAccountCoCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'PubSecBudgetCnsmpnFsclYear',
        referencedPropertyType: 'sap.vdm.gfn:FiscalYear'
      },
      {
        localPropertyName: 'PubSecBudgetCnsmpnFsclPeriod',
        referencedPropertyType: 'sap.vdm.gfn:FiscalPeriod'
      }
    ]
  },
  {
    name: '_PubSecBudgetCnsmpnFsclYear',
    referencedEntityType: 'sap.vdm.sont:FiscalYearForCompanyCode',
    referencedPropertyTypes: [
      {
        localPropertyName: 'PubSecBudgetAccountCoCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'PubSecBudgetCnsmpnFsclYear',
        referencedPropertyType: 'sap.vdm.gfn:FiscalYear'
      }
    ]
  },
  {
    name: '_SalesDocumentItem',
    referencedEntityType: 'sap.vdm.sont:SalesDocumentItem',
    referencedPropertyTypes: [
      {
        localPropertyName: 'SalesDocument',
        referencedPropertyType: 'sap.vdm.gfn:SalesDocument'
      },
      {
        localPropertyName: 'SalesDocumentItem',
        referencedPropertyType: 'sap.vdm.gfn:SalesDocumentItem'
      }
    ]
  },
  {
    name: '_SpecialGLCode',
    referencedEntityType: 'sap.vdm.sont:SpecialGLCode',
    referencedPropertyTypes: [
      {
        localPropertyName: 'SpecialGLCode',
        referencedPropertyType: 'sap.vdm.gfn:SpecialGLCode'
      },
      {
        localPropertyName: 'FinancialAccountType',
        referencedPropertyType: 'sap.vdm.gfn:FinancialAccountType'
      }
    ]
  },
  {
    name: '_USFedApplSecdrySrceFunds',
    referencedEntityType: 'sap.vdm.sont:USFedApplSecdrySrceFunds',
    referencedPropertyTypes: [
      {
        localPropertyName: 'FinancialManagementArea',
        referencedPropertyType: 'sap.vdm.gfn:FinancialManagementArea'
      },
      {
        localPropertyName: 'USFedApplOfSecdrySrceFunds',
        referencedPropertyType: 'sap.vdm.gfn:USFedApplOfSecdrySrceFunds'
      }
    ]
  },
  {
    name: '_FiscalYearForFinMgmtArea',
    referencedEntityType: 'sap.vdm.sont:FiscalYearForFinMgmtArea',
    referencedPropertyTypes: [
      {
        localPropertyName: 'FinancialManagementArea',
        referencedPropertyType: 'sap.vdm.gfn:FinancialManagementArea'
      },
      {
        localPropertyName: 'USFedFiscalYearBlank',
        referencedPropertyType: 'sap.vdm.gfn:FinMgmtAreaFiscalYear'
      }
    ]
  },
  {
    name: '_USFedObjectClass',
    referencedEntityType: 'sap.vdm.sont:USFedObjectClass',
    referencedPropertyTypes: [
      {
        localPropertyName: 'FinancialManagementArea',
        referencedPropertyType: 'sap.vdm.gfn:FinancialManagementArea'
      },
      {
        localPropertyName: 'USFedFiscalYearBlank',
        referencedPropertyType: 'sap.vdm.gfn:FinMgmtAreaFiscalYear'
      },
      {
        localPropertyName: 'USFedObjectClass',
        referencedPropertyType: 'sap.vdm.gfn:USFedObjectClass'
      }
    ]
  }
]
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountLineItem {
  @EndUserText.label : 'Fund'
  @EndUserText.heading : 'Fund'
  @EndUserText.quickInfo : 'Fund'
  @DataIntegration.dataUnavailable : true
  Fund : String(10);
  @EndUserText.label : 'Plant'
  @EndUserText.heading : 'Plnt'
  @EndUserText.quickInfo : 'Plant'
  @EntityRelationship.reference : [
    {
      name: '_Plant',
      referencedEntityType: 'sap.vdm.sont:Plant',
      referencedPropertyType: 'sap.vdm.gfn:Plant'
    }
  ]
  @DataIntegration.dataUnavailable : true
  Plant : String(4);
  @EndUserText.label : 'Company'
  @EndUserText.heading : 'Company'
  @EndUserText.quickInfo : 'Company'
  @EntityRelationship.reference : [
    {
      name: '_Company',
      referencedEntityType: 'sap.vdm.sont:Globalcompany',
      referencedPropertyType: 'sap.vdm.gfn:Company'
    }
  ]
  @DataIntegration.dataUnavailable : true
  Company : String(6);
  @EndUserText.label : 'Grant'
  @EndUserText.heading : 'Grant'
  @EndUserText.quickInfo : 'Grant'
  @EntityRelationship.reference : [
    {
      name: '_Grant',
      referencedEntityType: 'sap.vdm.sont:Grant',
      referencedPropertyType: 'sap.vdm.gfn:GrantID'
    }
  ]
  @DataIntegration.dataUnavailable : true
  GrantID : String(20);
  @EndUserText.label : 'Order ID'
  @EndUserText.heading : 'Order ID'
  @EndUserText.quickInfo : 'Order ID'
  @EntityRelationship.reference : [
    {
      name: '_Order',
      referencedEntityType: 'sap.vdm.sont:Order',
      referencedPropertyType: 'sap.vdm.gfn:OrderID'
    }
  ]
  @DataIntegration.dataUnavailable : true
  OrderID : String(12);
  @EndUserText.label : 'Product'
  @EndUserText.heading : 'Product'
  @EndUserText.quickInfo : 'Product'
  @EntityRelationship.reference : [
    {
      name: '_Product',
      referencedEntityType: 'sap.vdm.sont:Product',
      referencedPropertyType: 'sap.vdm.gfn:Product'
    }
  ]
  @DataIntegration.dataUnavailable : true
  Product : String(40);
  @EndUserText.label : 'Project'
  @EndUserText.heading : 'Project'
  @EndUserText.quickInfo : 'Project'
  @DataIntegration.dataUnavailable : true
  Project : String(24);
  @EndUserText.label : 'Segment'
  @EndUserText.heading : 'Segment'
  @EndUserText.quickInfo : 'Segment for Segmental Reporting'
  @EntityRelationship.reference : [
    {
      name: '_Segment',
      referencedEntityType: 'sap.vdm.sont:Segment',
      referencedPropertyType: 'sap.vdm.gfn:Segment'
    }
  ]
  @DataIntegration.dataUnavailable : true
  Segment : String(10);
  @EndUserText.label : 'Tax Code'
  @EndUserText.heading : 'Tax Code'
  @EndUserText.quickInfo : 'Tax on Sales/Purchases Code'
  @DataIntegration.dataUnavailable : true
  TaxCode : String(2);
  @EndUserText.label : 'Assembly'
  @EndUserText.heading : 'Assembly'
  @EndUserText.quickInfo : 'Assembly'
  @EntityRelationship.reference : [
    {
      name: '_Assembly',
      referencedEntityType: 'sap.vdm.sont:Product',
      referencedPropertyType: 'sap.vdm.gfn:Product'
    }
  ]
  @DataIntegration.dataUnavailable : true
  Assembly : String(40);
  @EndUserText.label : 'Base Unit of Measure'
  @EndUserText.heading : 'BUn'
  @EndUserText.quickInfo : 'Base Unit of Measure'
  @EntityRelationship.reference : [
    {
      name: '_BaseUnit',
      referencedEntityType: 'sap.vdm.sont:UnitOfMeasure',
      referencedPropertyType: 'sap.vdm.gfn:UnitOfMeasure'
    }
  ]
  @DataIntegration.dataUnavailable : true
  BaseUnit : String(3);
  @EndUserText.label : 'Customer'
  @EndUserText.heading : 'Customer'
  @EndUserText.quickInfo : 'Customer Number'
  @EntityRelationship.reference : [
    {
      name: '_Customer',
      referencedEntityType: 'sap.vdm.sont:Customer',
      referencedPropertyType: 'sap.vdm.gfn:Customer'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  Customer : String(10);
  @EndUserText.label : 'Quantity'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Quantity'
  @EndUserText.quickInfo : 'Quantity'
  @DataIntegration.dataUnavailable : true
  @Semantics.quantity.unitOfMeasure : 'BaseUnit'
  Quantity : Decimal(23, 3);
  @EndUserText.label : 'Supplier'
  @EndUserText.heading : 'Supplier'
  @EndUserText.quickInfo : 'Supplier'
  @EntityRelationship.reference : [
    {
      name: '_Supplier',
      referencedEntityType: 'sap.vdm.sont:Supplier',
      referencedPropertyType: 'sap.vdm.gfn:Supplier'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  Supplier : String(10);
  @EndUserText.label : 'Work Item ID'
  @EndUserText.heading : 'Work Item ID'
  @EndUserText.quickInfo : 'Work Item ID'
  @DataIntegration.dataUnavailable : true
  WorkItem : String(10);
  @EndUserText.label : 'Equipment'
  @EndUserText.heading : 'Equipment'
  @EndUserText.quickInfo : 'Equipment Number'
  @EntityRelationship.reference : [
    {
      name: '_Equipment',
      referencedEntityType: 'sap.vdm.sont:Equipment',
      referencedPropertyType: 'sap.vdm.gfn:Equipment'
    }
  ]
  @DataIntegration.dataUnavailable : true
  Equipment : String(18);
  @EndUserText.label : 'G/L Account'
  @EndUserText.heading : 'G/L Account'
  @EndUserText.quickInfo : 'G/L Account'
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_GLAccountInChartOfAccounts'
  GLAccount : String(10);
  @EndUserText.label : 'House Bank'
  @EndUserText.heading : 'House Bk'
  @EndUserText.quickInfo : 'House Bank Key'
  @DataIntegration.dataUnavailable : true
  HouseBank : String(5);
  @EndUserText.label : 'Is Settled'
  @EndUserText.heading : 'Settld'
  @EndUserText.quickInfo : 'Indicator: Line Item is Settled or Transferred'
  @DataIntegration.dataUnavailable : true
  IsSettled : Boolean;
  @EndUserText.label : 'Item Number'
  @EndUserText.heading : 'Item Number'
  @EndUserText.quickInfo : 'Number of Order Item'
  @DataIntegration.dataUnavailable : true
  OrderItem : String(4);
  @EndUserText.label : 'Value Date'
  @EndUserText.heading : 'Value Date'
  @EndUserText.quickInfo : 'Value Date'
  @DataIntegration.dataUnavailable : true
  ValueDate : Date;
  @EndUserText.label : 'Asset Class'
  @EndUserText.heading : 'Class'
  @EndUserText.quickInfo : 'Asset Class'
  @DataIntegration.dataUnavailable : true
  AssetClass : String(8);
  @EndUserText.label : 'Cost Center'
  @EndUserText.heading : 'Cost Center'
  @EndUserText.quickInfo : 'Cost Center'
  @DataIntegration.dataUnavailable : true
  CostCenter : String(10);
  @EndUserText.label : 'Cost Object'
  @EndUserText.heading : 'CostObject'
  @EndUserText.quickInfo : 'Cost Object'
  @DataIntegration.dataUnavailable : true
  CostObject : String(12);
  @EndUserText.label : 'Cutback Run'
  @EndUserText.heading : 'Cutback Run'
  @EndUserText.quickInfo : 'Cutback Run'
  @DataIntegration.dataUnavailable : true
  CutbackRun : Timestamp;
  @EndUserText.label : 'Fiscal Year'
  @EndUserText.heading : 'Fiscal Year'
  @EndUserText.quickInfo : 'Fiscal Year'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:FiscalYear'
  key FiscalYear : String(4);
  @EndUserText.label : 'Asset Subnumber'
  @EndUserText.heading : 'Asset Subnumber'
  @EndUserText.quickInfo : 'Asset Subnumber'
  @DataIntegration.dataUnavailable : true
  FixedAsset : String(4);
  @EndUserText.label : 'Is Reversing'
  @EndUserText.heading : 'Rvrsng'
  @EndUserText.quickInfo : 'Indicator: Item is Reversing Another Item'
  @DataIntegration.dataUnavailable : true
  IsReversal : Boolean;
  @EndUserText.label : 'Is Reversed'
  @EndUserText.heading : 'Rvrsd'
  @EndUserText.quickInfo : 'Indicator: Item is Reversed'
  @DataIntegration.dataUnavailable : true
  IsReversed : Boolean;
  @EndUserText.label : 'Net Due Date'
  @EndUserText.heading : 'Net Due Dt'
  @EndUserText.quickInfo : 'Net Due Date'
  @DataIntegration.dataUnavailable : true
  NetDueDate : Date;
  @EndUserText.label : 'Posting Key'
  @EndUserText.heading : 'Posting Key'
  @EndUserText.quickInfo : 'Posting Key'
  @EntityRelationship.reference : [
    {
      name: '_PostingKey',
      referencedEntityType: 'sap.vdm.sont:PostingKey',
      referencedPropertyType: 'sap.vdm.gfn:PostingKey'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PostingKey : String(2);
  @EndUserText.label : 'Tax Ctry/Reg.'
  @EndUserText.heading : 'Tax Country/Region'
  @EndUserText.quickInfo : 'Tax Reporting Country/Region'
  @EntityRelationship.reference : [
    {
      name: '_TaxCountry',
      referencedEntityType: 'sap.vdm.sont:Country',
      referencedPropertyType: 'sap.vdm.gfn:Country'
    }
  ]
  @DataIntegration.dataUnavailable : true
  TaxCountry : String(3);
  @EndUserText.label : 'WBS Element'
  @EndUserText.heading : 'WBS Element'
  @EndUserText.quickInfo : 'WBS Element'
  @DataIntegration.dataUnavailable : true
  WBSElement : String(24);
  @EndUserText.label : 'Bill-to Party'
  @EndUserText.heading : 'Bill-to'
  @EndUserText.quickInfo : 'Bill-to Party'
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  BillToParty : String(10);
  @EndUserText.label : 'Company Code'
  @EndUserText.heading : 'Company Code'
  @EndUserText.quickInfo : 'Company Code'
  @EntityRelationship.reference : [
    {
      name: '_CompanyCode',
      referencedEntityType: 'sap.vdm.sont:CompanyCode',
      referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:CompanyCode'
  key CompanyCode : String(4);
  @EndUserText.label : 'Funds Center'
  @EndUserText.heading : 'Funds Center'
  @EndUserText.quickInfo : 'Funds Management Center'
  @DataIntegration.dataUnavailable : true
  FundsCenter : String(16);
  @EndUserText.label : 'Itm chngd by Doc Spl'
  @EndUserText.heading : 'Item changed by document splitting'
  @EndUserText.quickInfo : 'Item changed by document splitting'
  @DataIntegration.dataUnavailable : true
  ItemIsSplit : Boolean;
  @EndUserText.label : 'Origin Order'
  @EndUserText.heading : 'Origin Order'
  @EndUserText.quickInfo : 'Origin Order'
  @EntityRelationship.reference : [
    {
      name: '_OriginOrder',
      referencedEntityType: 'sap.vdm.sont:Order',
      referencedPropertyType: 'sap.vdm.gfn:OrderID'
    }
  ]
  @DataIntegration.dataUnavailable : true
  OriginOrder : String(12);
  @EndUserText.label : 'Partner Fund'
  @EndUserText.heading : 'Partner Fund'
  @EndUserText.quickInfo : 'Partner Fund'
  @DataIntegration.dataUnavailable : true
  PartnerFund : String(10);
  @EndUserText.label : 'Posting Date'
  @EndUserText.heading : 'Posting Date'
  @EndUserText.quickInfo : 'Posting Date'
  @DataIntegration.dataUnavailable : true
  PostingDate : Date;
  @EndUserText.label : 'Ship-to Party'
  @EndUserText.heading : 'Ship-to'
  @EndUserText.quickInfo : 'Ship-to Party'
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  ShipToParty : String(10);
  @EndUserText.label : 'Product Sold'
  @EndUserText.heading : 'Product Sold'
  @EndUserText.quickInfo : 'Product Sold'
  @EntityRelationship.reference : [
    {
      name: '_SoldProduct',
      referencedEntityType: 'sap.vdm.sont:Product',
      referencedPropertyType: 'sap.vdm.gfn:Product'
    }
  ]
  @DataIntegration.dataUnavailable : true
  SoldProduct : String(40);
  @EndUserText.label : 'Agency Identifier'
  @EndUserText.heading : 'Agency Identifier'
  @EndUserText.quickInfo : 'Agency Identifier (AID)'
  @DataIntegration.dataUnavailable : true
  USFedAgency : String(3);
  @EndUserText.label : 'Plan Item'
  @EndUserText.heading : 'Plan Item'
  @EndUserText.quickInfo : 'Plan Item'
  @DataIntegration.dataUnavailable : true
  WorkPackage : String(50);
  @EndUserText.label : 'Budget Period'
  @EndUserText.heading : 'Budget Period'
  @EndUserText.quickInfo : 'Budget Period'
  @EntityRelationship.reference : [
    {
      name: '_BudgetPeriod',
      referencedEntityType: 'sap.vdm.sont:BudgetPeriod',
      referencedPropertyType: 'sap.vdm.gfn:BudgetPeriod'
    }
  ]
  @DataIntegration.dataUnavailable : true
  BudgetPeriod : String(10);
  @EndUserText.label : 'Business Area'
  @EndUserText.heading : 'Business Area'
  @EndUserText.quickInfo : 'Business Area'
  @EntityRelationship.reference : [
    {
      name: '_BusinessArea',
      referencedEntityType: 'sap.vdm.sont:BusinessArea',
      referencedPropertyType: 'sap.vdm.gfn:BusinessArea'
    }
  ]
  @DataIntegration.dataUnavailable : true
  BusinessArea : String(4);
  @EndUserText.label : 'Clearing Date'
  @EndUserText.heading : 'Clearing Date'
  @EndUserText.quickInfo : 'Clearing Date'
  @DataIntegration.dataUnavailable : true
  ClearingDate : Date;
  @EndUserText.label : 'Cost Estimate'
  @EndUserText.heading : 'Cost Estimate'
  @EndUserText.quickInfo : 'Cost Estimate'
  @DataIntegration.dataUnavailable : true
  CostEstimate : String(12);
  @EndUserText.label : 'Creation Date'
  @EndUserText.heading : 'Journal Entry Creation Date'
  @EndUserText.quickInfo : 'Creation Date'
  @DataIntegration.dataUnavailable : true
  CreationDate : Date;
  @EndUserText.label : 'Journal Entry Date'
  @EndUserText.heading : 'Journal Entry Date'
  @EndUserText.quickInfo : 'Journal Entry Date'
  @DataIntegration.dataUnavailable : true
  DocumentDate : Date;
  @EndUserText.label : 'Fiscal Period'
  @EndUserText.heading : 'Fiscal Period'
  @EndUserText.quickInfo : 'Fiscal Period'
  @Semantics.fiscal.period : true
  @DataIntegration.dataUnavailable : true
  FiscalPeriod : String(3);
  @EndUserText.label : 'Record Type'
  @EndUserText.heading : 'R'
  @EndUserText.quickInfo : 'Record Type'
  @DataIntegration.dataUnavailable : true
  GLRecordType : String(1) enum {
    values;
  };
  @EndUserText.label : 'Is Commitment'
  @EndUserText.heading : 'Is Commitment'
  @EndUserText.quickInfo : 'Indicator: Is Commitment'
  @DataIntegration.dataUnavailable : true
  IsCommitment : Boolean;
  @EndUserText.label : 'Is Settling'
  @EndUserText.heading : 'Settlg'
  @EndUserText.quickInfo : 'Indicator: Item is Settling or Transferring Another Item'
  @DataIntegration.dataUnavailable : true
  IsSettlement : Boolean;
  @EndUserText.label : 'Joint Venture'
  @EndUserText.heading : 'JV'
  @EndUserText.quickInfo : 'Joint Venture'
  @DataIntegration.dataUnavailable : true
  JointVenture : String(6);
  @EndUserText.label : 'Partner Grant'
  @EndUserText.heading : 'Partner Grant'
  @EndUserText.quickInfo : 'Partner Grant'
  @EntityRelationship.reference : [
    {
      name: '_PartnerGrant',
      referencedEntityType: 'sap.vdm.sont:Grant',
      referencedPropertyType: 'sap.vdm.gfn:GrantID'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerGrant : String(20);
  @EndUserText.label : 'Partner Order'
  @EndUserText.heading : 'Partner Order'
  @EndUserText.quickInfo : 'Partner Order'
  @EntityRelationship.reference : [
    {
      name: '_PartnerOrder',
      referencedEntityType: 'sap.vdm.sont:InternalOrder',
      referencedPropertyType: 'sap.vdm.gfn:InternalOrder'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerOrder : String(12);
  @EndUserText.label : 'Product Grp (MntOrd)'
  @EndUserText.heading : 'Product Group for Maintenance Orders'
  @EndUserText.quickInfo : 'Product Group for Maintenance Orders'
  @EntityRelationship.reference : [
    {
      name: '_ProductGroup',
      referencedEntityType: 'sap.vdm.sont:ProductGroup',
      referencedPropertyType: 'sap.vdm.gfn:MaterialGroup'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ProductGroup : String(9);
  @EndUserText.label : 'Profit Center'
  @EndUserText.heading : 'Profit Center'
  @EndUserText.quickInfo : 'Profit Center'
  @DataIntegration.dataUnavailable : true
  ProfitCenter : String(10);
  @EndUserText.label : 'Source Ledger'
  @EndUserText.heading : 'Source Ledger'
  @EndUserText.quickInfo : 'Source Ledger'
  @EntityRelationship.reference : [
    {
      name: '_Ledger',
      referencedEntityType: 'sap.vdm.sont:Ledger',
      referencedPropertyType: 'sap.vdm.gfn:Ledger'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:SourceLedger'
  key SourceLedger : String(2);
  @EndUserText.label : 'Accrual Object'
  @EndUserText.heading : 'Accrual Object'
  @EndUserText.quickInfo : 'Identifier of the Accrual Object'
  @DataIntegration.dataUnavailable : true
  AccrualObject : String(32);
  @EndUserText.label : 'Customer Group'
  @EndUserText.heading : 'CGrp'
  @EndUserText.quickInfo : 'Customer Group'
  @EntityRelationship.reference : [
    {
      name: '_CustomerGroup',
      referencedEntityType: 'sap.vdm.sont:CustomerGroup',
      referencedPropertyType: 'sap.vdm.gfn:CustomerGroup'
    }
  ]
  @DataIntegration.dataUnavailable : true
  CustomerGroup : String(2);
  @EndUserText.label : 'Fixed Quantity'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Fixed Quantity'
  @EndUserText.quickInfo : 'Fixed Quantity'
  @DataIntegration.dataUnavailable : true
  @Semantics.quantity.unitOfMeasure : 'BaseUnit'
  FixedQuantity : Decimal(23, 3);
  @EndUserText.label : 'Funded Program'
  @EndUserText.heading : 'Funded Program'
  @EndUserText.quickInfo : 'Funded Program'
  @DataIntegration.dataUnavailable : true
  FundedProgram : String(24);
  @EndUserText.label : 'G/L Account Type'
  @EndUserText.heading : 'G/L Account Type'
  @EndUserText.quickInfo : 'Type of a General Ledger Account'
  @EntityRelationship.reference : [
    {
      name: '_GLAccountType',
      referencedEntityType: 'sap.vdm.sont:GLAccountType',
      referencedPropertyType: 'sap.vdm.gfn:GLAccountType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  GLAccountType : String(1) enum {
    values;
  };
  @EndUserText.label : 'Grant Currency'
  @EndUserText.heading : 'GrantCurr'
  @EndUserText.quickInfo : 'Grant currency'
  @DataIntegration.dataUnavailable : true
  GrantCurrency : String(5);
  @EndUserText.label : 'Logical System'
  @EndUserText.heading : 'Log.System'
  @EndUserText.quickInfo : 'Logical System'
  @DataIntegration.dataUnavailable : true
  LogicalSystem : String(10);
  @EndUserText.label : 'Priority'
  @EndUserText.heading : 'P'
  @EndUserText.quickInfo : 'Priority'
  @DataIntegration.dataUnavailable : true
  MaintPriority : String(1);
  @EndUserText.label : 'Order Category'
  @EndUserText.heading : 'Cat'
  @EndUserText.quickInfo : 'Order Category'
  @EntityRelationship.reference : [
    {
      name: '_OrderCategory',
      referencedEntityType: 'sap.vdm.sont:OrderCategory',
      referencedPropertyType: 'sap.vdm.gfn:OrderCategory'
    }
  ]
  @DataIntegration.dataUnavailable : true
  OrderCategory : String(2) enum {
    values;
  };
  @EndUserText.label : 'Origin Product'
  @EndUserText.heading : 'Origin Product'
  @EndUserText.quickInfo : 'Origin Product'
  @EntityRelationship.reference : [
    {
      name: '_OriginProduct',
      referencedEntityType: 'sap.vdm.sont:Product',
      referencedPropertyType: 'sap.vdm.gfn:Product'
    }
  ]
  @DataIntegration.dataUnavailable : true
  OriginProduct : String(40);
  @EndUserText.label : 'Sales District'
  @EndUserText.heading : 'SDst'
  @EndUserText.quickInfo : 'Sales District'
  @EntityRelationship.reference : [
    {
      name: '_SalesDistrict',
      referencedEntityType: 'sap.vdm.sont:SalesDistrict',
      referencedPropertyType: 'sap.vdm.gfn:SalesDistrict'
    }
  ]
  @DataIntegration.dataUnavailable : true
  SalesDistrict : String(6);
  @EndUserText.label : 'Sales Document'
  @EndUserText.heading : 'Sales Doc.'
  @EndUserText.quickInfo : 'Sales Document'
  @EntityRelationship.reference : [
    {
      name: '_SalesDocument',
      referencedEntityType: 'sap.vdm.sont:SalesDocument',
      referencedPropertyType: 'sap.vdm.gfn:SalesDocument'
    }
  ]
  @DataIntegration.dataUnavailable : true
  SalesDocument : String(10);
  @EndUserText.label : 'Special G/L'
  @EndUserText.heading : 'Special G/L Indicator'
  @EndUserText.quickInfo : 'Special G/L Indicator'
  @DataIntegration.dataUnavailable : true
  SpecialGLCode : String(1);
  @EndUserText.label : 'Superior Order'
  @EndUserText.heading : 'Superior Order'
  @EndUserText.quickInfo : 'Number of Superior Order'
  @DataIntegration.dataUnavailable : true
  SuperiorOrder : String(12);
  @EndUserText.label : 'Fund Type'
  @EndUserText.heading : 'Fund Type'
  @EndUserText.quickInfo : 'Fund Type'
  @DataIntegration.dataUnavailable : true
  USFedFundType : String(6);
  @EndUserText.label : 'Valuation Area'
  @EndUserText.heading : 'ValA'
  @EndUserText.quickInfo : 'Valuation Area'
  @DataIntegration.dataUnavailable : true
  ValuationArea : String(4);
  @EndUserText.label : 'Asset Value Date'
  @EndUserText.heading : 'AssetValDate'
  @EndUserText.quickInfo : 'Asset Value Date'
  @DataIntegration.dataUnavailable : true
  AssetValueDate : Date;
  @EndUserText.label : 'Consolidation Subitem'
  @EndUserText.heading : 'Consolidation Subitem'
  @EndUserText.quickInfo : 'Consolidation Subitem'
  @DataIntegration.dataUnavailable : true
  CnsldtnSubitem : String(10);
  @EndUserText.label : 'Commitment Item'
  @EndUserText.heading : 'Commitment Item'
  @EndUserText.quickInfo : 'Commitment Item'
  @DataIntegration.dataUnavailable : true
  CommitmentItem : String(24);
  @EndUserText.label : 'Cost Source Unit'
  @EndUserText.heading : 'Cost Source Unit'
  @EndUserText.quickInfo : 'Cost Source Unit'
  @EntityRelationship.reference : [
    {
      name: '_CostSourceUnit',
      referencedEntityType: 'sap.vdm.sont:UnitOfMeasure',
      referencedPropertyType: 'sap.vdm.gfn:UnitOfMeasure'
    }
  ]
  @DataIntegration.dataUnavailable : true
  CostSourceUnit : String(3);
  @EndUserText.label : 'Cutback Account'
  @EndUserText.heading : 'Cutback Account'
  @EndUserText.quickInfo : 'Cutback Account'
  @DataIntegration.dataUnavailable : true
  CutbackAccount : String(10);
  @EndUserText.label : 'Functional Area'
  @EndUserText.heading : 'FA'
  @EndUserText.quickInfo : 'Functional Area'
  @EntityRelationship.reference : [
    {
      name: '_FunctionalArea',
      referencedEntityType: 'sap.vdm.sont:FunctionalArea',
      referencedPropertyType: 'sap.vdm.gfn:FunctionalArea'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FunctionalArea : String(16);
  @EndUserText.label : 'Global Currency'
  @EndUserText.heading : 'Global Currency'
  @EndUserText.quickInfo : 'Global Currency'
  @EntityRelationship.reference : [
    {
      name: '_GlobalCurrency',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  GlobalCurrency : String(5);
  @EndUserText.label : 'Order Operation'
  @EndUserText.heading : 'Order Operation'
  @EndUserText.quickInfo : 'Order Operation'
  @DataIntegration.dataUnavailable : true
  OrderOperation : String(4);
  @EndUserText.label : 'Trading Partner'
  @EndUserText.heading : 'Trading Partner'
  @EndUserText.quickInfo : 'Company ID of Trading Partner'
  @EntityRelationship.reference : [
    {
      name: '_PartnerCompany',
      referencedEntityType: 'sap.vdm.sont:Partnercompany',
      referencedPropertyType: 'sap.vdm.gfn:PartnerCompany'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerCompany : String(6);
  @EndUserText.label : 'Partner Project'
  @EndUserText.heading : 'Partner Project'
  @EndUserText.quickInfo : 'Partner Project'
  @DataIntegration.dataUnavailable : true
  PartnerProject : String(24);
  @EndUserText.label : 'Partner Segment'
  @EndUserText.heading : 'Ptnr Segm.'
  @EndUserText.quickInfo : 'Partner Segment for Segmental Reporting'
  @DataIntegration.dataUnavailable : true
  PartnerSegment : String(10);
  @EndUserText.label : 'PartnerVenture'
  @EndUserText.heading : 'PartnerVenture'
  @EndUserText.quickInfo : 'Partner Venture'
  @DataIntegration.dataUnavailable : true
  PartnerVenture : String(6);
  @EndUserText.label : 'Network'
  @EndUserText.heading : 'Network'
  @EndUserText.quickInfo : 'Network Number for Account Assignment'
  @DataIntegration.dataUnavailable : true
  ProjectNetwork : String(12);
  @EndUserText.label : 'RE Rental Object'
  @EndUserText.heading : 'RE Rental Object'
  @EndUserText.quickInfo : 'RE Rental Object'
  @DataIntegration.dataUnavailable : true
  RERentalObject : String(8);
  @EndUserText.label : 'Sponsored Class'
  @EndUserText.heading : 'Sponsored Class'
  @EndUserText.quickInfo : 'Sponsored Class'
  @DataIntegration.dataUnavailable : true
  SponsoredClass : String(20);
  @EndUserText.label : 'Accrual Item Type'
  @EndUserText.heading : 'Accrual Item Type'
  @EndUserText.quickInfo : 'Type of the Item of the Accrual Subobject'
  @DataIntegration.dataUnavailable : true
  AccrualItemType : String(11);
  @EndUserText.label : 'Billable Control'
  @EndUserText.heading : 'BCon'
  @EndUserText.quickInfo : 'Billable Control'
  @DataIntegration.dataUnavailable : true
  BillableControl : String(2);
  @EndUserText.label : 'Business Process'
  @EndUserText.heading : 'Bus. Process'
  @EndUserText.quickInfo : 'Business Process'
  @DataIntegration.dataUnavailable : true
  BusinessProcess : String(12);
  @EndUserText.label : 'Chart of Accounts'
  @EndUserText.heading : 'Chart of Accounts'
  @EndUserText.quickInfo : 'Chart of Accounts'
  @EntityRelationship.reference : [
    {
      name: '_ChartOfAccounts',
      referencedEntityType: 'sap.vdm.sont:ChartOfAccounts',
      referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_ChartOfAccounts'
  ChartOfAccounts : String(4);
  @EndUserText.label : 'Controlling Area'
  @EndUserText.heading : 'Controlling Area'
  @EndUserText.quickInfo : 'Controlling Area'
  @EntityRelationship.reference : [
    {
      name: '_ControllingArea',
      referencedEntityType: 'sap.vdm.sont:ControllingArea',
      referencedPropertyType: 'sap.vdm.gfn:ControllingArea'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ControllingArea : String(4);
  @EndUserText.label : 'Origin Group'
  @EndUserText.heading : 'OrGp'
  @EndUserText.quickInfo : 'Origin Group as Subdivision of Cost Element'
  @DataIntegration.dataUnavailable : true
  CostOriginGroup : String(4);
  @EndUserText.label : 'Credit Risk Class'
  @EndUserText.heading : 'Credit Risk Class'
  @EndUserText.quickInfo : 'Credit Risk Class'
  @DataIntegration.dataUnavailable : true
  CreditRiskClass : String(3);
  @EndUserText.label : 'Debit/Credit Code'
  @EndUserText.heading : 'Debit/Credit Code'
  @EndUserText.quickInfo : 'Debit/Credit Code'
  @EntityRelationship.reference : [
    {
      name: '_DebitCreditCode',
      referencedEntityType: 'sap.vdm.sont:DebitCreditCode',
      referencedPropertyType: 'sap.vdm.gfn:DebitCreditCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  DebitCreditCode : String(1) enum {
    values;
  };
  @EndUserText.label : 'Group Asset Subnmbr'
  @EndUserText.heading : 'Group Asset Subnumber'
  @EndUserText.quickInfo : 'Group Asset Subnumber'
  @DataIntegration.dataUnavailable : true
  GroupFixedAsset : String(4);
  @EndUserText.label : 'Personnel Number'
  @EndUserText.heading : 'Pers.No.'
  @EndUserText.quickInfo : 'Personnel Number'
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  PersonnelNumber : String(8);
  @EndUserText.label : 'Sender G/L Account'
  @EndUserText.heading : 'Sender G/L Account'
  @EndUserText.quickInfo : 'Sender G/L Account'
  @DataIntegration.dataUnavailable : true
  SenderGLAccount : String(10);
  @EndUserText.label : 'Service Contract'
  @EndUserText.heading : 'SrvContr'
  @EndUserText.quickInfo : 'Service Contract ID'
  @DataIntegration.dataUnavailable : true
  ServiceContract : String(10);
  @EndUserText.label : 'Service Document'
  @EndUserText.heading : 'Service Document'
  @EndUserText.quickInfo : 'Service Document ID'
  @DataIntegration.dataUnavailable : true
  ServiceDocument : String(10);
  @EndUserText.label : 'Sub account'
  @EndUserText.heading : 'Sub acct'
  @EndUserText.quickInfo : 'Subaccount'
  @DataIntegration.dataUnavailable : true
  USFedSubAccount : String(3);
  @EndUserText.label : 'Accrual Subobject'
  @EndUserText.heading : 'Accrual Subobject'
  @EndUserText.quickInfo : 'Identifier of the Accrual Subobject'
  @DataIntegration.dataUnavailable : true
  AccrualSubobject : String(32);
  @EndUserText.label : 'Accrual Value Date'
  @EndUserText.heading : 'AccrValDte'
  @EndUserText.quickInfo : 'Accrual Value Date'
  @DataIntegration.dataUnavailable : true
  AccrualValueDate : Date;
  @EndUserText.label : 'Creation Date Time'
  @EndUserText.heading : 'Creation Date Time'
  @EndUserText.quickInfo : 'Creation Date Time'
  @DataIntegration.dataUnavailable : true
  CreationDateTime : DateTime;
  @EndUserText.label : 'Item Text'
  @EndUserText.heading : 'Item Text'
  @EndUserText.quickInfo : 'Item Text'
  @DataIntegration.dataUnavailable : true
  DocumentItemText : String(50);
  @EndUserText.label : 'Translation Date'
  @EndUserText.heading : 'TranslDate'
  @EndUserText.quickInfo : 'Translation Date'
  @DataIntegration.dataUnavailable : true
  ExchangeRateDate : Date;
  @EndUserText.label : 'Fiscal Year Period'
  @EndUserText.heading : 'Fiscal Year Period'
  @EndUserText.quickInfo : 'Fiscal Year Period'
  @Semantics.fiscal.yearPeriod : true
  @DataIntegration.dataUnavailable : true
  FiscalYearPeriod : String(7);
  @EndUserText.label : 'House Bank Account'
  @EndUserText.heading : 'House Bank Account'
  @EndUserText.quickInfo : 'House Bank Account'
  @DataIntegration.dataUnavailable : true
  HouseBankAccount : String(5);
  @EndUserText.label : 'Invoice Reference'
  @EndUserText.heading : 'Invoice Reference'
  @EndUserText.quickInfo : 'Invoice Reference'
  @DataIntegration.dataUnavailable : true
  InvoiceReference : String(10);
  @EndUserText.label : 'Fiscal Year of Ledger'
  @EndUserText.heading : 'Fiscal Year of Ledger'
  @EndUserText.quickInfo : 'Fiscal Year of Ledger'
  @Semantics.fiscal.year : true
  @DataIntegration.dataUnavailable : true
  LedgerFiscalYear : String(4);
  @EndUserText.label : 'Journal Entry Item'
  @EndUserText.heading : 'General Ledger Journal Entry Line Item'
  @EndUserText.quickInfo : 'General Ledger Journal Entry Line Item'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:LedgerGLLineItem'
  key LedgerGLLineItem : String(6);
  @EndUserText.label : 'Fixed Asset'
  @EndUserText.heading : 'Fixed Asset'
  @EndUserText.quickInfo : 'Fixed Asset (Main Asset Number)'
  @DataIntegration.dataUnavailable : true
  MasterFixedAsset : String(12);
  @EndUserText.label : 'Operating Concern'
  @EndUserText.heading : 'OpCo'
  @EndUserText.quickInfo : 'Operating Concern'
  @EntityRelationship.reference : [
    {
      name: '_OperatingConcern',
      referencedEntityType: 'sap.vdm.sont:OperatingConcern',
      referencedPropertyType: 'sap.vdm.gfn:OperatingConcern'
    }
  ]
  @DataIntegration.dataUnavailable : true
  OperatingConcern : String(4);
  @EndUserText.label : 'Origin Cost Center'
  @EndUserText.heading : 'Origin Cost Center'
  @EndUserText.quickInfo : 'Origin Cost Center'
  @DataIntegration.dataUnavailable : true
  OriginCostCenter : String(10);
  @EndUserText.label : 'Origin Object Type'
  @EndUserText.heading : 'Origin Object Type'
  @EndUserText.quickInfo : 'Type of Origin Object'
  @DataIntegration.dataUnavailable : true
  OriginObjectType : String(2) enum {
    values;
  };
  @EndUserText.label : 'Partner Order item'
  @EndUserText.heading : 'Partner Order Item Number'
  @EndUserText.quickInfo : 'Partner Order Item Number'
  @DataIntegration.dataUnavailable : true
  PartnerOrderItem : String(4);
  @EndUserText.label : 'Provider Contract'
  @EndUserText.heading : 'Provider Contract'
  @EndUserText.quickInfo : 'Provider Contract'
  @EntityRelationship.reference : [
    {
      name: '_ProviderContract',
      referencedEntityType: 'sap.vdm.sont:ProviderContract',
      referencedPropertyType: 'sap.vdm.gfn:ProviderContract'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ProviderContract : String(20);
  @EndUserText.label : 'RE Business Entity'
  @EndUserText.heading : 'RE Business Entity'
  @EndUserText.quickInfo : 'RE Business Entity'
  @DataIntegration.dataUnavailable : true
  REBusinessEntity : String(8);
  @EndUserText.label : 'Product Sold Group'
  @EndUserText.heading : 'ProdSoldGp'
  @EndUserText.quickInfo : 'Product Sold Group'
  @EntityRelationship.reference : [
    {
      name: '_SoldProductGroup',
      referencedEntityType: 'sap.vdm.sont:ProductGroup',
      referencedPropertyType: 'sap.vdm.gfn:MaterialGroup'
    }
  ]
  @DataIntegration.dataUnavailable : true
  SoldProductGroup : String(9);
  @EndUserText.label : 'Sponsored Program'
  @EndUserText.heading : 'Sponsored Program'
  @EndUserText.quickInfo : 'Sponsored Program'
  @DataIntegration.dataUnavailable : true
  SponsoredProgram : String(20);
  @EndUserText.label : 'Main Account'
  @EndUserText.heading : 'Main Acct'
  @EndUserText.quickInfo : 'Main Account'
  @DataIntegration.dataUnavailable : true
  USFedMainAccount : String(4);
  @EndUserText.label : 'Obj Class US Fed'
  @EndUserText.heading : 'Obj Class US Fed'
  @EndUserText.quickInfo : 'Object Class for US Federal'
  @DataIntegration.dataUnavailable : true
  USFedObjectClass : String(24);
  @DataIntegration.dataUnavailable : true
  _ChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on ChartOfAccounts = _ChartOfAccounts.ChartOfAccounts;
  @DataIntegration.dataUnavailable : true
  _SemTagGLAccount : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTagGeneralLedger on GLAccount = _SemTagGLAccount.GLAccount and ChartOfAccounts = _SemTagGLAccount.ChartOfAccounts;
  @EndUserText.label : 'Account Assignment'
  @EndUserText.heading : 'Account Assignment'
  @EndUserText.quickInfo : 'Account Assignment'
  @DataIntegration.dataUnavailable : true
  AccountAssignment : String(30);
  @EndUserText.label : 'Accrual Object Type'
  @EndUserText.heading : 'Accrual Object Type'
  @EndUserText.quickInfo : 'Type of the Accrual Object'
  @DataIntegration.dataUnavailable : true
  AccrualObjectType : String(4);
  @EndUserText.label : 'Cash Origin Account'
  @EndUserText.heading : 'Cash Origin Account'
  @EndUserText.quickInfo : 'Cash Origin Account'
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_CashLedgerAccount'
  CashLedgerAccount : String(10);
  @EndUserText.label : 'Condition Contract'
  @EndUserText.heading : 'Condition Contract'
  @EndUserText.quickInfo : 'Condition Contract'
  @EntityRelationship.reference : [
    {
      name: '_ConditionContract',
      referencedEntityType: 'sap.vdm.sont:ConditionContract',
      referencedPropertyType: 'sap.vdm.gfn:ConditionContract'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ConditionContract : String(10);
  @EndUserText.label : 'Consolidation Unit'
  @EndUserText.heading : 'Consolidation Unit'
  @EndUserText.quickInfo : 'Consolidation Unit'
  @EntityRelationship.reference : [
    {
      name: '_ConsolidationUnit',
      referencedEntityType: 'sap.vdm.sont:CnsldtnUnit_3',
      referencedPropertyType: 'sap.vdm.gfn:ConsolidationUnit'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ConsolidationUnit : String(18);
  @EndUserText.label : 'Controlling Object'
  @EndUserText.heading : 'Controlling Object'
  @EndUserText.quickInfo : 'Controlling Object'
  @DataIntegration.dataUnavailable : true
  ControllingObject : String(22);
  @EndUserText.label : 'Cutback Cost Object'
  @EndUserText.heading : 'Cutback Cost Object'
  @EndUserText.quickInfo : 'Cutback Cost Object'
  @DataIntegration.dataUnavailable : true
  CutbackCostObject : String(22);
  @EndUserText.label : 'Fiscal Year Variant'
  @EndUserText.heading : 'Fiscal Year Variant'
  @EndUserText.quickInfo : 'Fiscal Year Variant'
  @EntityRelationship.reference : [
    {
      name: '_FiscalYearVariant',
      referencedEntityType: 'sap.vdm.sont:FiscalYearVariant',
      referencedPropertyType: 'sap.vdm.gfn:FiscalYearVariant'
    }
  ]
  @Semantics.fiscal.yearVariant : true
  @DataIntegration.dataUnavailable : true
  FiscalYearVariant : String(2);
  @EndUserText.label : 'Open Item Management'
  @EndUserText.heading : 'Managed on an Open Item Basis'
  @EndUserText.quickInfo : 'Managed on an Open Item Basis'
  @DataIntegration.dataUnavailable : true
  IsOpenItemManaged : Boolean;
  @EndUserText.label : 'Priority Type'
  @EndUserText.heading : 'PrTyp'
  @EndUserText.quickInfo : 'Priority Type'
  @DataIntegration.dataUnavailable : true
  MaintPriorityType : String(2);
  @EndUserText.label : 'Offsetting Account'
  @EndUserText.heading : 'Offsetting Account'
  @EndUserText.quickInfo : 'Offsetting Account'
  @DataIntegration.dataUnavailable : true
  OffsettingAccount : String(10);
  @EndUserText.label : 'Order Suboperation'
  @EndUserText.heading : 'Order Suboperation'
  @EndUserText.quickInfo : 'Order Suboperation'
  @DataIntegration.dataUnavailable : true
  OrderSuboperation : String(4);
  @EndUserText.label : 'Partner Cost Center'
  @EndUserText.heading : 'Partner Cost Center'
  @EndUserText.quickInfo : 'Partner Cost Center'
  @DataIntegration.dataUnavailable : true
  PartnerCostCenter : String(10);
  @EndUserText.label : 'Partner Cost Object'
  @EndUserText.heading : 'Partner Cost Object'
  @EndUserText.quickInfo : 'Partner Cost Object'
  @DataIntegration.dataUnavailable : true
  PartnerCostObject : String(12);
  @EndUserText.label : 'Partner Asset Subnumber'
  @EndUserText.heading : 'Partner Asset Subnumber'
  @EndUserText.quickInfo : 'Partner Asset Subnumber'
  @DataIntegration.dataUnavailable : true
  PartnerFixedAsset : String(4);
  @EndUserText.label : 'Partner WBS Element'
  @EndUserText.heading : 'Partner WBS Element'
  @EndUserText.quickInfo : 'Partner WBS Element'
  @DataIntegration.dataUnavailable : true
  PartnerWBSElement : String(24);
  @EndUserText.label : 'Production Process'
  @EndUserText.heading : 'Production Process'
  @EndUserText.quickInfo : 'Production Process'
  @DataIntegration.dataUnavailable : true
  ProductionProcess : String(12);
  @EndUserText.label : 'Project Internal ID'
  @EndUserText.heading : 'Project Internal ID'
  @EndUserText.quickInfo : 'Project Internal ID'
  @EntityRelationship.reference : [
    {
      name: '_ProjectBasicData',
      referencedEntityType: 'sap.vdm.sont:ProjectBasicData',
      referencedPropertyType: 'sap.vdm.gfn:ProjectInternalID'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ProjectInternalID : String(8);
  @EndUserText.label : 'Reference Document'
  @EndUserText.heading : 'Ref. Doc.'
  @EndUserText.quickInfo : 'Reference Doc. Number'
  @DataIntegration.dataUnavailable : true
  ReferenceDocument : String(10);
  @EndUserText.label : 'Reference quantity'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Reference quantity'
  @EndUserText.quickInfo : 'Reference quantity'
  @DataIntegration.dataUnavailable : true
  @Semantics.quantity.unitOfMeasure : 'ReferenceQuantityUnit'
  ReferenceQuantity : Decimal(23, 3);
  @EndUserText.label : 'Sales Document Item'
  @EndUserText.heading : 'SDItem'
  @EndUserText.quickInfo : 'Sales Document Item'
  @DataIntegration.dataUnavailable : true
  SalesDocumentItem : String(6);
  @EndUserText.label : 'Sales Organization'
  @EndUserText.heading : 'SOrg.'
  @EndUserText.quickInfo : 'Sales Organization'
  @EntityRelationship.reference : [
    {
      name: '_SalesOrganization',
      referencedEntityType: 'sap.vdm.sont:SalesOrganization',
      referencedPropertyType: 'sap.vdm.gfn:SalesOrganization'
    }
  ]
  @DataIntegration.dataUnavailable : true
  SalesOrganization : String(4);
  @EndUserText.label : 'Company Code in Sender System'
  @EndUserText.heading : 'Company Code in Sender System'
  @EndUserText.quickInfo : 'Company Code in Sender System'
  @DataIntegration.dataUnavailable : true
  SenderCompanyCode : String(4);
  @EndUserText.label : 'Budget Impact'
  @EndUserText.heading : 'Budgetary Impact'
  @EndUserText.quickInfo : 'Budgetary Impact'
  @EntityRelationship.reference : [
    {
      name: '_USFedBudgetImpact',
      referencedEntityType: 'sap.vdm.sont:USFedBudgetImpact',
      referencedPropertyType: 'sap.vdm.gfn:USFedBudgetImpact'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedBudgetImpact : String(1) enum {
    values;
  };
  @EndUserText.label : 'Reimbursable'
  @EndUserText.heading : 'Reimbur'
  @EndUserText.quickInfo : 'Reimbursable'
  @EntityRelationship.reference : [
    {
      name: '_USFedReimbursable',
      referencedEntityType: 'sap.vdm.sont:USFedReimbursable',
      referencedPropertyType: 'sap.vdm.gfn:USFedReimbursable'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedReimbursable : String(1) enum {
    values;
  };
  @EndUserText.label : 'Valuation Quantity'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Valuation Quantity'
  @EndUserText.quickInfo : 'Valuation Quantity'
  @DataIntegration.dataUnavailable : true
  @Semantics.quantity.unitOfMeasure : 'CostSourceUnit'
  ValuationQuantity : Decimal(23, 3);
  @EndUserText.label : 'Journal Entry'
  @EndUserText.heading : 'Journal Entry'
  @EndUserText.quickInfo : 'Journal Entry'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:AccountingDocument'
  key AccountingDocument : String(10);
  @EndUserText.label : 'Component Breakdown'
  @EndUserText.heading : 'Component Breakdown'
  @EndUserText.quickInfo : 'Component Breakdown'
  @DataIntegration.dataUnavailable : true
  ComponentBreakdown : String(16);
  @EndUserText.label : 'Functional Currency'
  @EndUserText.heading : 'FuCrcy'
  @EndUserText.quickInfo : 'Functional Currency'
  @EntityRelationship.reference : [
    {
      name: '_FunctionalCurrency',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FunctionalCurrency : String(5);
  @EndUserText.label : 'Functional Location'
  @EndUserText.heading : 'Functional Location'
  @EndUserText.quickInfo : 'Functional Location'
  @EntityRelationship.reference : [
    {
      name: '_FunctionalLocation',
      referencedEntityType: 'sap.vdm.sont:FunctionalLocation',
      referencedPropertyType: 'sap.vdm.gfn:FunctionalLocation'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FunctionalLocation : String(30);
  @EndUserText.label : 'Last Change Date Time'
  @EndUserText.heading : 'Last Change Date Time'
  @EndUserText.quickInfo : 'Last Change Date Time'
  @DataIntegration.dataUnavailable : true
  LastChangeDateTime : DateTime;
  @EndUserText.label : 'Origin Profit Center'
  @EndUserText.heading : 'Origin PC'
  @EndUserText.quickInfo : 'Origin Profit Center'
  @DataIntegration.dataUnavailable : true
  OriginProfitCenter : String(10);
  @EndUserText.label : 'Origin Sender Object'
  @EndUserText.heading : 'Origin Sender Object'
  @EndUserText.quickInfo : 'Origin Sender Object'
  @EntityRelationship.reference : [
    {
      name: '_OriginSenderObject',
      referencedEntityType: 'sap.vdm.sont:ControllingObject',
      referencedPropertyType: 'sap.vdm.gfn:ControllingObject'
    }
  ]
  @DataIntegration.dataUnavailable : true
  OriginSenderObject : String(22);
  @EndUserText.label : 'Partner Company Code'
  @EndUserText.heading : 'Partner Company Code'
  @EndUserText.quickInfo : 'Partner Company Code'
  @EntityRelationship.reference : [
    {
      name: '_PartnerCompanyCode',
      referencedEntityType: 'sap.vdm.sont:CompanyCode',
      referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerCompanyCode : String(4);
  @EndUserText.label : 'Partner Equity Group'
  @EndUserText.heading : 'Partner Equity Group'
  @EndUserText.quickInfo : 'Partner Equity Group'
  @DataIntegration.dataUnavailable : true
  PartnerEquityGroup : String(3);
  @EndUserText.label : 'Purchasing Document'
  @EndUserText.heading : 'Purchasing Document'
  @EndUserText.quickInfo : 'Purchasing Document'
  @DataIntegration.dataUnavailable : true
  PurchasingDocument : String(10);
  @EndUserText.label : 'RE Service Charge Key'
  @EndUserText.heading : 'RE Service Charge Key'
  @EndUserText.quickInfo : 'RE Service Charge Key'
  @DataIntegration.dataUnavailable : true
  REServiceChargeKey : String(4);
  @EndUserText.label : 'RE Settlement Unit'
  @EndUserText.heading : 'RE Settlement Unit'
  @EndUserText.quickInfo : 'RE Settlement Unit'
  @DataIntegration.dataUnavailable : true
  RESettlementUnitID : String(5);
  @EndUserText.label : 'Real Estate Building'
  @EndUserText.heading : 'Real Estate Building'
  @EndUserText.quickInfo : 'Real Estate Building'
  @DataIntegration.dataUnavailable : true
  RealEstateBuilding : String(8);
  @EndUserText.label : 'Real Estate Contract'
  @EndUserText.heading : 'Real Estate Contract'
  @EndUserText.quickInfo : 'Real Estate Contract Number'
  @DataIntegration.dataUnavailable : true
  RealEstateContract : String(13);
  @EndUserText.label : 'Real Estate Property'
  @EndUserText.heading : 'Real Estate Property'
  @EndUserText.quickInfo : 'Real Estate Property'
  @DataIntegration.dataUnavailable : true
  RealEstateProperty : String(8);
  @EndUserText.label : 'Sub Transaction'
  @EndUserText.heading : 'SubTA'
  @EndUserText.quickInfo : 'Partial Document to be balanced to zero'
  @DataIntegration.dataUnavailable : true
  TransactionSubitem : String(6);
  @EndUserText.label : 'Authority Type'
  @EndUserText.heading : 'Author'
  @EndUserText.quickInfo : 'Authority Type'
  @EntityRelationship.reference : [
    {
      name: '_USFedAuthorityType',
      referencedEntityType: 'sap.vdm.sont:USFedAuthorityType',
      referencedPropertyType: 'sap.vdm.gfn:USFedAuthorityType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedAuthorityType : String(1) enum {
    values;
  };
  @EndUserText.label : 'Payment Office'
  @EndUserText.heading : 'Payment Office'
  @EndUserText.quickInfo : 'Payment Office'
  @DataIntegration.dataUnavailable : true
  USFedPaymentOffice : String(5);
  @EndUserText.label : 'Reduction Type'
  @EndUserText.heading : 'Rdctn Type'
  @EndUserText.quickInfo : 'Reduction Type for US Federal'
  @DataIntegration.dataUnavailable : true
  USFedReductionType : String(3) enum {
    values;
  };
  @DataIntegration.dataUnavailable : true
  _CashLedgerAccount : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].OperatingGeneralLedgerAccount on CashLedgerCompanyCode = _CashLedgerAccount.CompanyCode and CashLedgerAccount = _CashLedgerAccount.GLAccount;
  @EndUserText.label : 'Additional Quantity 1'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Additional Quantity 1'
  @EndUserText.quickInfo : 'Additional Quantity 1'
  @DataIntegration.dataUnavailable : true
  @Semantics.quantity.unitOfMeasure : 'AdditionalQuantity1Unit'
  AdditionalQuantity1 : Decimal(23, 3);
  @EndUserText.label : 'Additional Quantity 2'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Additional Quantity 2'
  @EndUserText.quickInfo : 'Additional Quantity 2'
  @DataIntegration.dataUnavailable : true
  @Semantics.quantity.unitOfMeasure : 'AdditionalQuantity2Unit'
  AdditionalQuantity2 : Decimal(23, 3);
  @EndUserText.label : 'Additional Quantity 3'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Additional Quantity 3'
  @EndUserText.quickInfo : 'Additional Quantity 3'
  @DataIntegration.dataUnavailable : true
  @Semantics.quantity.unitOfMeasure : 'AdditionalQuantity3Unit'
  AdditionalQuantity3 : Decimal(23, 3);
  @EndUserText.label : 'Assignment Reference'
  @EndUserText.heading : 'Assignment Reference'
  @EndUserText.quickInfo : 'Assignment Reference'
  @DataIntegration.dataUnavailable : true
  AssignmentReference : String(18);
  @EndUserText.label : 'Billing Type'
  @EndUserText.heading : 'BillT'
  @EndUserText.quickInfo : 'Billing Type'
  @EntityRelationship.reference : [
    {
      name: '_BillingDocumentType',
      referencedEntityType: 'sap.vdm.sont:BillingDocumentType',
      referencedPropertyType: 'sap.vdm.gfn:BillingDocumentType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  BillingDocumentType : String(4);
  @EndUserText.label : 'Company Code Currency'
  @EndUserText.heading : 'Company Code Currency'
  @EndUserText.quickInfo : 'Company Code Currency'
  @EntityRelationship.reference : [
    {
      name: '_CompanyCodeCurrency',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  CompanyCodeCurrency : String(5);
  @EndUserText.label : 'Activity Type'
  @EndUserText.heading : 'ActTyp'
  @EndUserText.quickInfo : 'Activity Type'
  @DataIntegration.dataUnavailable : true
  CostCtrActivityType : String(6);
  @EndUserText.label : 'Distribution Channel'
  @EndUserText.heading : 'DChl'
  @EndUserText.quickInfo : 'Distribution Channel'
  @EntityRelationship.reference : [
    {
      name: '_DistributionChannel',
      referencedEntityType: 'sap.vdm.sont:DistributionChannel',
      referencedPropertyType: 'sap.vdm.gfn:DistributionChannel'
    }
  ]
  @DataIntegration.dataUnavailable : true
  DistributionChannel : String(2);
  @EndUserText.label : 'Financial Data Source'
  @EndUserText.heading : 'Financial Data Source'
  @EndUserText.quickInfo : 'Financial Data Source'
  @DataIntegration.dataUnavailable : true
  FinancialDataSource : String(10);
  @EndUserText.label : 'Joint Venture Partner'
  @EndUserText.heading : 'Joint Venture Partner'
  @EndUserText.quickInfo : 'Joint Venture Partner'
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  JointVenturePartner : String(10);
  @EndUserText.label : 'Line Item is Completed'
  @EndUserText.heading : 'Line Item is Completed'
  @EndUserText.quickInfo : 'Indicator: Line Item is Completed'
  @DataIntegration.dataUnavailable : true
  LineItemIsCompleted : Boolean;
  @EndUserText.label : 'Partner Budget Period'
  @EndUserText.heading : 'Partner Budget Period'
  @EndUserText.quickInfo : 'FM: Partner Budget Period'
  @EntityRelationship.reference : [
    {
      name: '_PartnerBudgetPeriod',
      referencedEntityType: 'sap.vdm.sont:BudgetPeriod',
      referencedPropertyType: 'sap.vdm.gfn:BudgetPeriod'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerBudgetPeriod : String(10);
  @EndUserText.label : 'Partner Bus. Area'
  @EndUserText.heading : 'Partner Business Area'
  @EndUserText.quickInfo : 'Partner Business Area'
  @EntityRelationship.reference : [
    {
      name: '_PartnerBusinessArea',
      referencedEntityType: 'sap.vdm.sont:BusinessArea',
      referencedPropertyType: 'sap.vdm.gfn:BusinessArea'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerBusinessArea : String(4);
  @EndUserText.label : 'Partner Profit Center'
  @EndUserText.heading : 'Partner Profit Center'
  @EndUserText.quickInfo : 'Partner Profit Center'
  @DataIntegration.dataUnavailable : true
  PartnerProfitCenter : String(10);
  @EndUserText.label : 'Product Price Control'
  @EndUserText.heading : 'Product Price Control'
  @EndUserText.quickInfo : 'Product Price Control Indicator'
  @DataIntegration.dataUnavailable : true
  ProductPriceControl : String(1) enum {
    values;
  };
  @EndUserText.label : 'Budget Account'
  @EndUserText.heading : 'Budget Account'
  @EndUserText.quickInfo : 'Budget Account'
  @DataIntegration.dataUnavailable : true
  PubSecBudgetAccount : String(10);
  @EndUserText.label : 'Srv Contract Item'
  @EndUserText.heading : 'SCItem'
  @EndUserText.quickInfo : 'Service Contract Item ID'
  @DataIntegration.dataUnavailable : true
  ServiceContractItem : String(6);
  @EndUserText.label : 'Serv. Contract Type'
  @EndUserText.heading : 'SrvConType'
  @EndUserText.quickInfo : 'Service Contract Type'
  @DataIntegration.dataUnavailable : true
  ServiceContractType : String(4);
  @EndUserText.label : 'Service Doc. Item'
  @EndUserText.heading : 'Service Document Item'
  @EndUserText.quickInfo : 'Service Document Item ID'
  @DataIntegration.dataUnavailable : true
  ServiceDocumentItem : String(6);
  @EndUserText.label : 'Service Doc. Type'
  @EndUserText.heading : 'Service Document Type'
  @EndUserText.quickInfo : 'Service Document Type'
  @DataIntegration.dataUnavailable : true
  ServiceDocumentType : String(4);
  @EndUserText.label : 'Source Logical System'
  @EndUserText.heading : 'Source Logical System'
  @EndUserText.quickInfo : 'Source Logical System'
  @DataIntegration.dataUnavailable : true
  SourceLogicalSystem : String(10);
  @EndUserText.label : 'Transaction Currency'
  @EndUserText.heading : 'Transaction Currency'
  @EndUserText.quickInfo : 'Transaction Currency'
  @EntityRelationship.reference : [
    {
      name: '_TransactionCurrency',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  TransactionCurrency : String(5);
  @EndUserText.label : 'Sublevel Prefix'
  @EndUserText.heading : 'Sublevel Prefix'
  @EndUserText.quickInfo : 'Sublevel Prefix (SP)'
  @DataIntegration.dataUnavailable : true
  USFedSubLevelPrefix : String(2);
  @EndUserText.label : 'Varc. Origin Group'
  @EndUserText.heading : 'Variance Origin Group'
  @EndUserText.quickInfo : 'Variance Origin Group'
  @DataIntegration.dataUnavailable : true
  VarianceOriginGroup : String(4);
  @EndUserText.label : 'Alternative G/L Account'
  @EndUserText.heading : ''
  @EndUserText.quickInfo : 'Alternative G/L Account Number In Company Code'
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_AlternativeGLAccount'
  AlternativeGLAccount : String(10);
  @EndUserText.label : 'Asset Transaction Type'
  @EndUserText.heading : 'Asset Transaction Type'
  @EndUserText.quickInfo : 'Asset Transaction Type'
  @EntityRelationship.reference : [
    {
      name: '_AssetTransactionType',
      referencedEntityType: 'sap.vdm.sont:AssetTransactionType',
      referencedPropertyType: 'sap.vdm.gfn:AssetTransactionType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  AssetTransactionType : String(3);
  @EndUserText.label : 'Clearing Journal Entry'
  @EndUserText.heading : 'Clearing Journal Entry'
  @EndUserText.quickInfo : 'Clearing Journal Entry'
  @DataIntegration.dataUnavailable : true
  ClearingJournalEntry : String(10);
  @EndUserText.label : 'Cost Analysis Resource'
  @EndUserText.heading : 'Cost Analysis Resource'
  @EndUserText.quickInfo : 'Cost Analysis Resource'
  @DataIntegration.dataUnavailable : true
  CostAnalysisResource : String(10);
  @EndUserText.label : 'Account Type'
  @EndUserText.heading : 'Account Type'
  @EndUserText.quickInfo : 'Account Type'
  @EntityRelationship.reference : [
    {
      name: '_FinancialAccountType',
      referencedEntityType: 'sap.vdm.sont:FinancialAccountType',
      referencedPropertyType: 'sap.vdm.gfn:FinancialAccountType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FinancialAccountType : String(1) enum {
    values;
  };
  @EndUserText.label : 'Financial Closing Step'
  @EndUserText.heading : 'Financial Closing Step'
  @EndUserText.quickInfo : 'Financial Closing Step'
  @DataIntegration.dataUnavailable : true
  FinancialClosingStep : String(3);
  @EndUserText.label : 'Follow-On Document Type'
  @EndUserText.heading : 'Follow-On Document Type'
  @EndUserText.quickInfo : 'Follow-On Document Type'
  @DataIntegration.dataUnavailable : true
  FollowOnDocumentType : String(1);
  @EndUserText.label : 'Freely Defined Currency 1'
  @EndUserText.heading : 'Freely Defined Currency 1'
  @EndUserText.quickInfo : 'Freely Defined Currency 1'
  @EntityRelationship.reference : [
    {
      name: '_FreeDefinedCurrency1',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FreeDefinedCurrency1 : String(5);
  @EndUserText.label : 'Freely Defined Currency 2'
  @EndUserText.heading : 'Freely Defined Currency 2'
  @EndUserText.quickInfo : 'Freely Defined Currency 2'
  @EntityRelationship.reference : [
    {
      name: '_FreeDefinedCurrency2',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FreeDefinedCurrency2 : String(5);
  @EndUserText.label : 'Freely Defined Currency 3'
  @EndUserText.heading : 'Freely Defined Currency 3'
  @EndUserText.quickInfo : 'Freely Defined Currency 3'
  @EntityRelationship.reference : [
    {
      name: '_FreeDefinedCurrency3',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FreeDefinedCurrency3 : String(5);
  @EndUserText.label : 'Freely Defined Currency 4'
  @EndUserText.heading : 'Freely Defined Currency 4'
  @EndUserText.quickInfo : 'Freely Defined Currency 4'
  @EntityRelationship.reference : [
    {
      name: '_FreeDefinedCurrency4',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FreeDefinedCurrency4 : String(5);
  @EndUserText.label : 'Freely Defined Currency 5'
  @EndUserText.heading : 'Freely Defined Currency 5'
  @EndUserText.quickInfo : 'Freely Defined Currency 5'
  @EntityRelationship.reference : [
    {
      name: '_FreeDefinedCurrency5',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FreeDefinedCurrency5 : String(5);
  @EndUserText.label : 'Freely Defined Currency 6'
  @EndUserText.heading : 'Freely Defined Currency 6'
  @EndUserText.quickInfo : 'Freely Defined Currency 6'
  @EntityRelationship.reference : [
    {
      name: '_FreeDefinedCurrency6',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FreeDefinedCurrency6 : String(5);
  @EndUserText.label : 'Freely Defined Currency 7'
  @EndUserText.heading : 'Freely Defined Currency 7'
  @EndUserText.quickInfo : 'Freely Defined Currency 7'
  @EntityRelationship.reference : [
    {
      name: '_FreeDefinedCurrency7',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FreeDefinedCurrency7 : String(5);
  @EndUserText.label : 'Freely Defined Currency 8'
  @EndUserText.heading : 'Freely Defined Currency 8'
  @EndUserText.quickInfo : 'Freely Defined Currency 8'
  @EntityRelationship.reference : [
    {
      name: '_FreeDefinedCurrency8',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FreeDefinedCurrency8 : String(5);
  @EndUserText.label : 'Invoice Item Reference'
  @EndUserText.heading : 'Invoice Item Reference'
  @EndUserText.quickInfo : 'Invoice Item Reference'
  @DataIntegration.dataUnavailable : true
  InvoiceItemReference : String(3);
  @EndUserText.label : 'Division'
  @EndUserText.heading : 'Dv'
  @EndUserText.quickInfo : 'Division'
  @EntityRelationship.reference : [
    {
      name: '_Division',
      referencedEntityType: 'sap.vdm.sont:Division',
      referencedPropertyType: 'sap.vdm.gfn:Division'
    }
  ]
  @DataIntegration.dataUnavailable : true
  OrganizationDivision : String(2);
  @EndUserText.label : 'Organizational Change'
  @EndUserText.heading : 'Organizational Change'
  @EndUserText.quickInfo : 'Orgl Change'
  @DataIntegration.dataUnavailable : true
  OrganizationalChange : String(10);
  @EndUserText.label : 'Origin Order Operation'
  @EndUserText.heading : 'Origin Order Operation'
  @EndUserText.quickInfo : 'Origin Order Operation'
  @DataIntegration.dataUnavailable : true
  OriginOrderOperation : String(4);
  @EndUserText.label : 'Partner Order Cat.'
  @EndUserText.heading : 'Partner Order Category'
  @EndUserText.quickInfo : 'Partner Order Category'
  @EntityRelationship.reference : [
    {
      name: '_PartnerOrderCategory',
      referencedEntityType: 'sap.vdm.sont:OrderCategory',
      referencedPropertyType: 'sap.vdm.gfn:OrderCategory'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerOrderCategory : String(2) enum {
    values;
  };
  @EndUserText.label : 'Partner Sales Doc.'
  @EndUserText.heading : 'Partner Sales Document'
  @EndUserText.quickInfo : 'Partner Sales Document'
  @EntityRelationship.reference : [
    {
      name: '_PartnerSalesDocument',
      referencedEntityType: 'sap.vdm.sont:SalesDocument',
      referencedPropertyType: 'sap.vdm.gfn:SalesDocument'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerSalesDocument : String(10);
  @EndUserText.label : 'Profitability Segment'
  @EndUserText.heading : 'Profitability Segment'
  @EndUserText.quickInfo : 'Profitability Segment'
  @DataIntegration.dataUnavailable : true
  ProfitabilitySegment : String(10);
  @EndUserText.label : 'Provider Contract Item'
  @EndUserText.heading : 'Provider Contract Item'
  @EndUserText.quickInfo : 'Provider Contract Item'
  @DataIntegration.dataUnavailable : true
  ProviderContractItem : String(6);
  @EndUserText.label : 'Qty is Incomplete'
  @EndUserText.heading : 'Quantity is Incomplete'
  @EndUserText.quickInfo : 'Indicator: Quantity is Incomplete'
  @DataIntegration.dataUnavailable : true
  QuantityIsIncomplete : Boolean;
  @EndUserText.label : 'Serv. Rendered Date'
  @EndUserText.heading : 'Serv.R.Dte'
  @EndUserText.quickInfo : 'Date on which services are rendered'
  @DataIntegration.dataUnavailable : true
  ServicesRenderedDate : Date;
  @EndUserText.label : 'Borrowing Source'
  @EndUserText.heading : 'Borrow'
  @EndUserText.quickInfo : 'Borrowing Source'
  @EntityRelationship.reference : [
    {
      name: '_USFedBorrowingSource',
      referencedEntityType: 'sap.vdm.sont:USFedBorrowingSource',
      referencedPropertyType: 'sap.vdm.gfn:USFedBorrowingSource'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedBorrowingSource : String(1) enum {
    values;
  };
  @EndUserText.label : 'Ending Prd of Avail'
  @EndUserText.heading : 'Ending Period of Availability'
  @EndUserText.quickInfo : 'Ending Period of Availability (EPOA)'
  @DataIntegration.dataUnavailable : true
  USFedEndPerdOfAvaily : String(4);
  @EndUserText.label : 'FMA Fiscal Year'
  @EndUserText.heading : 'Fiscal Year for Financial Management Area'
  @EndUserText.quickInfo : 'Fiscal Year for Financial Management Area'
  @DataIntegration.dataUnavailable : true
  USFedFiscalYearBlank : String(4);
  @EndUserText.label : 'Prog.Rpt.Category'
  @EndUserText.heading : 'Program Reporting Category'
  @EndUserText.quickInfo : 'Program Reporting Category'
  @DataIntegration.dataUnavailable : true
  USFedPgmReportingCat : String(3);
  @EndUserText.label : 'WBS Element Internal ID'
  @EndUserText.heading : 'WBS Element Internal ID'
  @EndUserText.quickInfo : 'WBS Element Internal ID'
  @EntityRelationship.reference : [
    {
      name: '_WBSElementBasicData',
      referencedEntityType: 'sap.vdm.sont:WBSElementBasicData',
      referencedPropertyType: 'sap.vdm.gfn:WBSElementInternalID'
    }
  ]
  @DataIntegration.dataUnavailable : true
  WBSElementInternalID : String(8);
  @EndUserText.label : 'Object ID'
  @EndUserText.heading : 'ID'
  @EndUserText.quickInfo : 'Object ID of the resource'
  @DataIntegration.dataUnavailable : true
  WorkCenterInternalID : String(8);
  @EndUserText.label : 'Account Assignment Type'
  @EndUserText.heading : 'Account Assignment Type'
  @EndUserText.quickInfo : 'Account Assignment Type'
  @EntityRelationship.reference : [
    {
      name: '_AccountAssignmentType',
      referencedEntityType: 'sap.vdm.sont:AccountAssignmentType',
      referencedPropertyType: 'sap.vdm.gfn:AccountAssignmentType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  AccountAssignmentType : String(2);
  @EndUserText.label : 'Amount in Grant Crcy'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Grant Crcy'
  @EndUserText.quickInfo : 'Grant Amount in Grant Currency'
  @Semantics.amount.currencyCode : 'GrantCurrency'
  @DataIntegration.dataUnavailable : true
  AmountInGrantCurrency : Decimal(34, 4);
  @EndUserText.label : 'Depreciation Area'
  @EndUserText.heading : 'Depreciation Area'
  @EndUserText.quickInfo : 'Asset Depreciation Area (Real or Derived)'
  @DataIntegration.dataUnavailable : true
  AssetDepreciationArea : String(2);
  @EndUserText.label : 'Solution Order'
  @EndUserText.heading : 'Solution Order'
  @EndUserText.quickInfo : 'Solution Order'
  @DataIntegration.dataUnavailable : true
  BusinessSolutionOrder : String(10);
  @EndUserText.label : 'Cash Origin CoCode'
  @EndUserText.heading : 'Cash Origin Company Code'
  @EndUserText.quickInfo : 'Cash Origin Company Code'
  @EntityRelationship.reference : [
    {
      name: '_CashLedgerCompanyCode',
      referencedEntityType: 'sap.vdm.sont:CompanyCode',
      referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  CashLedgerCompanyCode : String(4);
  @EndUserText.label : 'Fiscal Year of Clearing JE (Depr.)'
  @EndUserText.heading : 'Fiscal Year of Clearing Journal Entry (Deprecated)'
  @EndUserText.quickInfo : 'Fiscal Year of Clearing Journal Entry (Deprecated)'
  @DataIntegration.dataUnavailable : true
  ClearingDocFiscalYear : String(4);
  @EndUserText.label : 'Group Asset'
  @EndUserText.heading : 'Group Asset'
  @EndUserText.quickInfo : 'Group Asset'
  @DataIntegration.dataUnavailable : true
  GroupMasterFixedAsset : String(12);
  @EndUserText.label : 'Offsetting Account Type'
  @EndUserText.heading : 'Offsetting Account Type'
  @EndUserText.quickInfo : 'Offsetting Account Type'
  @EntityRelationship.reference : [
    {
      name: '_OffsettingAccountType',
      referencedEntityType: 'sap.vdm.sont:FinancialAccountType',
      referencedPropertyType: 'sap.vdm.gfn:FinancialAccountType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  OffsettingAccountType : String(1) enum {
    values;
  };
  @EndUserText.label : 'Partner Func. Area'
  @EndUserText.heading : 'Partner Func. Area'
  @EndUserText.quickInfo : 'Partner Functional Area'
  @EntityRelationship.reference : [
    {
      name: '_PartnerFunctionalArea',
      referencedEntityType: 'sap.vdm.sont:FunctionalArea',
      referencedPropertyType: 'sap.vdm.gfn:FunctionalArea'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerFunctionalArea : String(16);
  @EndUserText.label : 'Partner Project Network'
  @EndUserText.heading : 'Partner Project Network'
  @EndUserText.quickInfo : 'Partner Project Network'
  @DataIntegration.dataUnavailable : true
  PartnerProjectNetwork : String(12);
  @EndUserText.label : 'Performance Obligation'
  @EndUserText.heading : 'Performance Obligation'
  @EndUserText.quickInfo : 'Performance Obligation'
  @DataIntegration.dataUnavailable : true
  PerformanceObligation : String(16);
  @EndUserText.label : 'RE Partner Rental Object'
  @EndUserText.heading : 'RE Partner Rental Object'
  @EndUserText.quickInfo : 'RE Partner Rental Object'
  @DataIntegration.dataUnavailable : true
  REPartnerRentalObject : String(8);
  @EndUserText.label : 'Reference Document Item'
  @EndUserText.heading : 'Reference Document Item'
  @EndUserText.quickInfo : 'Reference Document Item'
  @DataIntegration.dataUnavailable : true
  ReferenceDocumentItem : String(6);
  @EndUserText.label : 'Reference Document Type'
  @EndUserText.heading : 'Reference Document Type'
  @EndUserText.quickInfo : 'Reference Document Type'
  @EntityRelationship.reference : [
    {
      name: '_ReferenceDocumentType',
      referencedEntityType: 'sap.vdm.sont:ReferenceDocumentType',
      referencedPropertyType: 'sap.vdm.gfn:ReferenceDocumentType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ReferenceDocumentType : String(5);
  @EndUserText.label : 'Reference Qty UoM'
  @EndUserText.heading : 'Reference Quantity Unit Of Measure'
  @EndUserText.quickInfo : 'Unit of Measure for Reference Quantity'
  @EntityRelationship.reference : [
    {
      name: '_ReferenceQuantityUnit',
      referencedEntityType: 'sap.vdm.sont:UnitOfMeasure',
      referencedPropertyType: 'sap.vdm.gfn:UnitOfMeasure'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ReferenceQuantityUnit : String(3);
  @EndUserText.label : 'Avail Type Code'
  @EndUserText.heading : 'Availability Type Code'
  @EndUserText.quickInfo : 'Availability Type Code (A)'
  @EntityRelationship.reference : [
    {
      name: '_USFedAvailabilityType',
      referencedEntityType: 'sap.vdm.sont:USFedAvailabilityType',
      referencedPropertyType: 'sap.vdm.gfn:USFedAvailabilityType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedAvailabilityType : String(1) enum {
    values;
  };
  @EndUserText.label : 'Business Evt Typ Cd'
  @EndUserText.heading : 'Business Evt Typ Cd'
  @EndUserText.quickInfo : 'Business Event Type Code'
  @DataIntegration.dataUnavailable : true
  USFedBusEventTypeCode : String(10);
  @EndUserText.label : 'Commitment string'
  @EndUserText.heading : 'Commitment string for budgetary ledger'
  @EndUserText.quickInfo : 'FM Commitment String For Budgetary Ledger'
  @DataIntegration.dataUnavailable : true
  USFedCommitmentString : String(62);
  @DataIntegration.dataUnavailable : true
  _AlternativeGLAccount : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccount on CountryChartOfAccounts = _AlternativeGLAccount.ChartOfAccounts and AlternativeGLAccount = _AlternativeGLAccount.GLAccount;
  @EndUserText.label : 'Posting View Item'
  @EndUserText.heading : 'Posting View Item'
  @EndUserText.quickInfo : 'Journal Entry Posting View Item'
  @DataIntegration.dataUnavailable : true
  AccountingDocumentItem : String(3);
  @EndUserText.label : 'Journal Entry Type'
  @EndUserText.heading : 'Journal Entry Type'
  @EndUserText.quickInfo : 'Journal Entry Type'
  @EntityRelationship.reference : [
    {
      name: '_AccountingDocumentType',
      referencedEntityType: 'sap.vdm.sont:AccountingDocumentType',
      referencedPropertyType: 'sap.vdm.gfn:AccountingDocumentType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  AccountingDocumentType : String(2);
  @EndUserText.label : 'Accrual Reference Object'
  @EndUserText.heading : 'Accrual Reference Object'
  @EndUserText.quickInfo : 'Accrual Reference Object'
  @DataIntegration.dataUnavailable : true
  AccrualReferenceObject : String(32);
  @EndUserText.label : 'Amount in Global Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Global Currency'
  @EndUserText.quickInfo : 'Amount in Global Currency'
  @Semantics.amount.currencyCode : 'GlobalCurrency'
  @DataIntegration.dataUnavailable : true
  AmountInGlobalCurrency : Decimal(34, 4);
  @EndUserText.label : 'Amount in Object Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Object Currency'
  @EndUserText.quickInfo : 'Amount in Object Currency'
  @Semantics.amount.currencyCode : 'ControllingObjectCurrency'
  @DataIntegration.dataUnavailable : true
  AmountInObjectCurrency : Decimal(34, 4);
  @EndUserText.label : 'Consolidation Subitem Category'
  @EndUserText.heading : 'Consolidation Subitem Category'
  @EndUserText.quickInfo : 'Consolidation Subitem Category'
  @EntityRelationship.reference : [
    {
      name: '_CnsldtnSubitemCategory',
      referencedEntityType: 'sap.vdm.sont:CnsldtnSubItemCategory',
      referencedPropertyType: 'sap.vdm.gfn:SubItemCategory'
    }
  ]
  @DataIntegration.dataUnavailable : true
  CnsldtnSubitemCategory : String(3);
  @EndUserText.label : 'Controlling Object Class'
  @EndUserText.heading : 'Controlling Object Class'
  @EndUserText.quickInfo : 'Controlling Object Class'
  @EntityRelationship.reference : [
    {
      name: '_ControllingObjectClass',
      referencedEntityType: 'sap.vdm.sont:ControllingObjectClass',
      referencedPropertyType: 'sap.vdm.gfn:ControllingObjectClass'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ControllingObjectClass : String(2) enum {
    values;
  };
  @EndUserText.label : 'Alternative Chart of Accounts'
  @EndUserText.heading : 'Alternative Chart of Accounts'
  @EndUserText.quickInfo : 'Alternative Chart of Accounts for Country/Region'
  @EntityRelationship.reference : [
    {
      name: '_CountryChartOfAccounts',
      referencedEntityType: 'sap.vdm.sont:ChartOfAccounts',
      referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_CountryChartOfAccounts'
  CountryChartOfAccounts : String(4);
  @EndUserText.label : 'Earmarked Funds Document'
  @EndUserText.heading : 'Earmarked Funds Document'
  @EndUserText.quickInfo : 'Earmarked Funds Document'
  @DataIntegration.dataUnavailable : true
  EarmarkedFundsDocument : String(10);
  @EndUserText.label : 'Fixed Amount in Transaction Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Fixed Amount in Transaction Currency'
  @EndUserText.quickInfo : 'Fixed Amount in Transaction Currency'
  @Semantics.amount.currencyCode : 'TransactionCurrency'
  @DataIntegration.dataUnavailable : true
  FixedAmountInTransCrcy : Decimal(34, 4);
  @EndUserText.label : 'Incomplete Summable Valuation Quantity'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Incomplete Summable Valuation Quantity'
  @EndUserText.quickInfo : 'Incomplete Summable Valuation Quantity'
  @DataIntegration.dataUnavailable : true
  @Semantics.quantity.unitOfMeasure : 'IncmpltSummableValnQtyUnt'
  IncmpltSummableValnQty : Decimal(23, 3);
  @EndUserText.label : 'Inventory Valuation Type'
  @EndUserText.heading : 'Inventory Valuation Type'
  @EndUserText.quickInfo : 'Inventory Valuation Type'
  @EntityRelationship.reference : [
    {
      name: '_InventoryValuationType',
      referencedEntityType: 'sap.vdm.sont:InventoryValuationType',
      referencedPropertyType: 'sap.vdm.gfn:InventoryValuationType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  InventoryValuationType : String(10);
  @EndUserText.label : 'Joint Venture Equity Type'
  @EndUserText.heading : 'Joint Venture Equity Type'
  @EndUserText.quickInfo : 'Joint Venture Equity Type'
  @DataIntegration.dataUnavailable : true
  JointVentureEquityType : String(3);
  @EndUserText.label : 'Material Ledger Category'
  @EndUserText.heading : 'Material Ledger Category'
  @EndUserText.quickInfo : 'Category in Material Ledger Update Structure'
  @DataIntegration.dataUnavailable : true
  MaterialLedgerCategory : String(2) enum {
    values;
  };
  @EndUserText.label : 'Partner Business Process'
  @EndUserText.heading : 'Partner Business Process'
  @EndUserText.quickInfo : 'Partner Business Process'
  @DataIntegration.dataUnavailable : true
  PartnerBusinessProcess : String(12);
  @EndUserText.label : 'Partner Service Document'
  @EndUserText.heading : 'Partner Service Document'
  @EndUserText.quickInfo : 'Partner Service Document'
  @DataIntegration.dataUnavailable : true
  PartnerServiceDocument : String(10);
  @EndUserText.label : 'Procurement Alternative'
  @EndUserText.heading : 'Procurement Alternative'
  @EndUserText.quickInfo : 'Procurement Alternative'
  @DataIntegration.dataUnavailable : true
  ProcurementAlternative : String(12);
  @EndUserText.label : 'Budget Consumption Date'
  @EndUserText.heading : 'Budget Consumption Date'
  @EndUserText.quickInfo : 'Budget Consumption Date'
  @DataIntegration.dataUnavailable : true
  PubSecBudgetCnsmpnDate : Date;
  @EndUserText.label : 'Budget Consumption Type'
  @EndUserText.heading : 'Budget Consumption Type'
  @EndUserText.quickInfo : 'Budget Consumption Type'
  @EntityRelationship.reference : [
    {
      name: '_PubSecBudgetCnsmpnType',
      referencedEntityType: 'sap.vdm.sont:PubSecBdgtCnsmpnType',
      referencedPropertyType: 'sap.vdm.gfn:PubSecBudgetCnsmpnType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PubSecBudgetCnsmpnType : String(2);
  @EndUserText.label : 'Budget-Relevant'
  @EndUserText.heading : 'Budget-Relevant'
  @EndUserText.quickInfo : 'Budget-Relevant Indicator'
  @DataIntegration.dataUnavailable : true
  PubSecBudgetIsRelevant : Boolean;
  @EndUserText.label : 'Purchasing Doc. Item'
  @EndUserText.heading : 'Purchasing Document Item'
  @EndUserText.quickInfo : 'Purchasing Document Item'
  @DataIntegration.dataUnavailable : true
  PurchasingDocumentItem : String(5);
  @EndUserText.label : 'Related Network Activity'
  @EndUserText.heading : 'Related Network Activity'
  @EndUserText.quickInfo : 'Related Network Activity'
  @DataIntegration.dataUnavailable : true
  RelatedNetworkActivity : String(4);
  @EndUserText.label : 'Sender Cost Recovery Code'
  @EndUserText.heading : 'Sender Cost Recovery Code'
  @EndUserText.quickInfo : 'Sender Cost Recovery Code'
  @DataIntegration.dataUnavailable : true
  SenderCostRecoveryCode : String(2);
  @EndUserText.label : 'Exchange Indicator'
  @EndUserText.heading : 'Exchg'
  @EndUserText.quickInfo : 'Exchange Indicator'
  @EntityRelationship.reference : [
    {
      name: '_USFedExchangeIndicator',
      referencedEntityType: 'sap.vdm.sont:USFedExchangeIndicator',
      referencedPropertyType: 'sap.vdm.gfn:USFedExchangeIndicator'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedExchangeIndicator : String(1) enum {
    values;
  };
  @EndUserText.label : 'Year Cohort'
  @EndUserText.heading : 'Cohort'
  @EndUserText.quickInfo : 'Reporting Year for Cohort : OUTPUT FORMAT'
  @DataIntegration.dataUnavailable : true
  USFedRptgYearForCohort : String(4);
  @EndUserText.label : 'SGL account'
  @EndUserText.heading : 'SGL account'
  @EndUserText.quickInfo : 'Standard General Ledger Account for US Federal Government'
  @EntityRelationship.reference : [
    {
      name: '_USFedStandardGLAccount',
      referencedEntityType: 'sap.vdm.sont:USFedStandardGLAccount',
      referencedPropertyType: 'sap.vdm.gfn:USFedStandardGLAccount'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedStandardGLAccount : String(6);
  @EndUserText.label : 'Valuation Fixed Quantity'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Valuation Fixed Quantity'
  @EndUserText.quickInfo : 'Valuation Fixed Quantity'
  @DataIntegration.dataUnavailable : true
  @Semantics.quantity.unitOfMeasure : 'CostSourceUnit'
  ValuationFixedQuantity : Decimal(23, 3);
  @EndUserText.label : 'Account Assignment Number'
  @EndUserText.heading : 'Account Assignment Number'
  @EndUserText.quickInfo : 'Account Assignment Number'
  @DataIntegration.dataUnavailable : true
  AccountAssignmentNumber : String(2);
  @EndUserText.label : 'Additional Quantity 1 Unit'
  @EndUserText.heading : 'Additional Quantity 1 Unit'
  @EndUserText.quickInfo : 'Additional Quantity 1 Unit'
  @EntityRelationship.reference : [
    {
      name: '_AdditionalQuantity1Unit',
      referencedEntityType: 'sap.vdm.sont:UnitOfMeasure',
      referencedPropertyType: 'sap.vdm.gfn:UnitOfMeasure'
    }
  ]
  @DataIntegration.dataUnavailable : true
  AdditionalQuantity1Unit : String(3);
  @EndUserText.label : 'Additional Quantity 2 Unit'
  @EndUserText.heading : 'Additional Quantity 2 Unit'
  @EndUserText.quickInfo : 'Additional Quantity 2 Unit'
  @EntityRelationship.reference : [
    {
      name: '_AdditionalQuantity2Unit',
      referencedEntityType: 'sap.vdm.sont:UnitOfMeasure',
      referencedPropertyType: 'sap.vdm.gfn:UnitOfMeasure'
    }
  ]
  @DataIntegration.dataUnavailable : true
  AdditionalQuantity2Unit : String(3);
  @EndUserText.label : 'Additional Quantity 3 Unit'
  @EndUserText.heading : 'Additional Quantity 3 Unit'
  @EndUserText.quickInfo : 'Additional Quantity 3 Unit'
  @EntityRelationship.reference : [
    {
      name: '_AdditionalQuantity3Unit',
      referencedEntityType: 'sap.vdm.sont:UnitOfMeasure',
      referencedPropertyType: 'sap.vdm.gfn:UnitOfMeasure'
    }
  ]
  @DataIntegration.dataUnavailable : true
  AdditionalQuantity3Unit : String(3);
  @EndUserText.label : 'Trans. Type Category'
  @EndUserText.heading : 'Category'
  @EndUserText.quickInfo : 'Transaction Type Category'
  @EntityRelationship.reference : [
    {
      name: '_MovementCategory',
      referencedEntityType: 'sap.vdm.sont:MovementCategory',
      referencedPropertyType: 'sap.vdm.gfn:AssetAcctTransClassfctn'
    }
  ]
  @DataIntegration.dataUnavailable : true
  AssetAcctTransClassfctn : String(2);
  @EndUserText.label : 'Business Transaction Type'
  @EndUserText.heading : 'Business Transaction Type'
  @EndUserText.quickInfo : 'Business Transaction Type'
  @EntityRelationship.reference : [
    {
      name: '_BusinessTransactionType',
      referencedEntityType: 'sap.vdm.sont:BusinessTransactionType',
      referencedPropertyType: 'sap.vdm.gfn:BusinessTransactionType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  BusinessTransactionType : String(4);
  @EndUserText.label : 'Controlling Doc Item'
  @EndUserText.heading : 'Controlling Document Item'
  @EndUserText.quickInfo : 'Controlling Document Item'
  @DataIntegration.dataUnavailable : true
  ControllingDocumentItem : String(3);
  @EndUserText.label : 'CO subkey'
  @EndUserText.heading : ''
  @EndUserText.quickInfo : 'CO key subnumber'
  @DataIntegration.dataUnavailable : true
  ControllingKeySubNumber : String(14);
  @EndUserText.label : 'Customer or Supplier Country/Region'
  @EndUserText.heading : 'Customer or Supplier Country/Region'
  @EndUserText.quickInfo : 'Customer or Supplier Country/Region'
  @EntityRelationship.reference : [
    {
      name: '_CustomerSupplierCountry',
      referencedEntityType: 'sap.vdm.sont:Country',
      referencedPropertyType: 'sap.vdm.gfn:Country'
    }
  ]
  @DataIntegration.dataUnavailable : true
  CustomerSupplierCountry : String(3);
  @EndUserText.label : 'Elimination Profit Center'
  @EndUserText.heading : 'Elimination Profit Center'
  @EndUserText.quickInfo : 'Elimination Profit Center'
  @DataIntegration.dataUnavailable : true
  EliminationProfitCenter : String(10);
  @EndUserText.label : 'FM Area'
  @EndUserText.heading : 'FMA'
  @EndUserText.quickInfo : 'Financial Management Area'
  @EntityRelationship.reference : [
    {
      name: '_FinancialManagementArea',
      referencedEntityType: 'sap.vdm.sont:FinancialManagementArea',
      referencedPropertyType: 'sap.vdm.gfn:FinancialManagementArea'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FinancialManagementArea : String(4);
  @EndUserText.label : 'Financial Services Branch'
  @EndUserText.heading : 'Financial Services Branch'
  @EndUserText.quickInfo : 'Financial Services Branch'
  @DataIntegration.dataUnavailable : true
  FinancialServicesBranch : String(10);
  @EndUserText.label : 'Fixed Amount in Company Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Fixed Amount in Company Currency'
  @EndUserText.quickInfo : 'Fixed Amount in Company Currency'
  @Semantics.amount.currencyCode : 'CompanyCodeCurrency'
  @DataIntegration.dataUnavailable : true
  FixedAmountInCoCodeCrcy : Decimal(34, 4);
  @EndUserText.label : 'Fixed Amount in Global Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Fixed Amount in Global Currency'
  @EndUserText.quickInfo : 'Fixed Amount in Global Currency'
  @Semantics.amount.currencyCode : 'GlobalCurrency'
  @DataIntegration.dataUnavailable : true
  FixedAmountInGlobalCrcy : Decimal(34, 4);
  @EndUserText.label : 'General Ledger Aging Scope'
  @EndUserText.heading : 'General Ledger Aging Scope'
  @EndUserText.quickInfo : 'General Ledger Aging Scope'
  @DataIntegration.dataUnavailable : true
  GeneralLedgerAgingScope : String(10);
  @EndUserText.label : 'Joint Venture Billing Date'
  @EndUserText.heading : 'Joint Venture Billing Date'
  @EndUserText.quickInfo : 'Joint Venture Billing Date'
  @DataIntegration.dataUnavailable : true
  JointVentureBillingDate : Date;
  @EndUserText.label : 'Joint Venture Billing Type'
  @EndUserText.heading : 'Joint Venture Billing Type'
  @EndUserText.quickInfo : 'Joint Venture Billing Type'
  @DataIntegration.dataUnavailable : true
  JointVentureBillingType : String(2);
  @EndUserText.label : 'Joint Venture Equity Group'
  @EndUserText.heading : 'Joint Venture Equity Group'
  @EndUserText.quickInfo : 'Joint Venture Equity Group'
  @DataIntegration.dataUnavailable : true
  JointVentureEquityGroup : String(3);
  @EndUserText.label : 'MaintActivityType'
  @EndUserText.heading : 'MAT'
  @EndUserText.quickInfo : 'Maintenance activity type'
  @EntityRelationship.reference : [
    {
      name: '_MaintenanceActivityType',
      referencedEntityType: 'sap.vdm.sont:MaintenanceActivityType',
      referencedPropertyType: 'sap.vdm.gfn:MaintenanceActivityType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  MaintenanceActivityType : String(3);
  @EndUserText.label : 'Partner Fixed Asset'
  @EndUserText.heading : 'Partner Fixed Asset'
  @EndUserText.quickInfo : 'Partner Fixed Asset (Partner Main Asset Number)'
  @DataIntegration.dataUnavailable : true
  PartnerMasterFixedAsset : String(12);
  @EndUserText.label : 'Predecessor Journal Entry'
  @EndUserText.heading : 'Predecessor Journal Entry'
  @EndUserText.quickInfo : 'Preceding Journal Entry Document Number'
  @DataIntegration.dataUnavailable : true
  PredecessorJournalEntry : String(10);
  @EndUserText.label : 'RE Partner Business Entity'
  @EndUserText.heading : 'RE Partner Business Entity'
  @EndUserText.quickInfo : 'RE Partner Business Entity'
  @DataIntegration.dataUnavailable : true
  REPartnerBusinessEntity : String(8);
  @EndUserText.label : 'Sender Account Assignment'
  @EndUserText.heading : 'Sender Account Assignment'
  @EndUserText.quickInfo : 'Sender Account Assignment'
  @DataIntegration.dataUnavailable : true
  SenderAccountAssignment : String(30);
  @EndUserText.label : 'Settlement Reference Date'
  @EndUserText.heading : 'Settlement Reference Date'
  @EndUserText.quickInfo : 'Settlement Reference Date'
  @DataIntegration.dataUnavailable : true
  SettlementReferenceDate : Date;
  @EndUserText.label : 'Source Reference Document'
  @EndUserText.heading : 'Source Reference Document'
  @EndUserText.quickInfo : 'Source Reference Document'
  @DataIntegration.dataUnavailable : true
  SourceReferenceDocument : String(10);
  @EndUserText.label : 'Agency Location Code'
  @EndUserText.heading : 'Agency Location Code'
  @EndUserText.quickInfo : 'Agency Location Code'
  @DataIntegration.dataUnavailable : true
  USFedAgencyLocationCode : String(8);
  @EndUserText.label : 'Custodial indicator'
  @EndUserText.heading : 'Custodial'
  @EndUserText.quickInfo : 'Custodial Indicator'
  @EntityRelationship.reference : [
    {
      name: '_USFedCustodialIndicator',
      referencedEntityType: 'sap.vdm.sont:USFedCustodialIndicator',
      referencedPropertyType: 'sap.vdm.gfn:USFedCustodialIndicator'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedCustodialIndicator : String(1) enum {
    values;
  };
  @EndUserText.label : 'Prior Year Adj. Cd'
  @EndUserText.heading : 'Prior Year Adjustment Code'
  @EndUserText.quickInfo : 'Prior Year Adjustment Code'
  @EntityRelationship.reference : [
    {
      name: '_USFedPriorYearAdjmt',
      referencedEntityType: 'sap.vdm.sont:USFedPriorYearAdjmt',
      referencedPropertyType: 'sap.vdm.gfn:USFedPriorYearAdjmtCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedPriorYearAdjmtCode : String(1) enum {
    values;
  };
  @EndUserText.label : 'Subaccount (TP)'
  @EndUserText.heading : 'Subaccount (TP)'
  @EndUserText.quickInfo : 'Subaccount for Trading Partner'
  @EntityRelationship.reference : [
    {
      name: '_USFedTrdgPartSubAccount',
      referencedEntityType: 'sap.vdm.sont:USFedTrdgPartSubAccount',
      referencedPropertyType: 'sap.vdm.gfn:USFedTrdgPartSubAccount'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedTrdgPartSubAccount : String(3);
  @EndUserText.label : 'Origin G/L Account of a Variance'
  @EndUserText.heading : 'Origin G/L Account of a Variance'
  @EndUserText.quickInfo : 'Origin G/L Account of a Variance'
  @DataIntegration.dataUnavailable : true
  VarianceOriginGLAccount : String(10);
  @DataIntegration.dataUnavailable : true
  _CountryChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on CountryChartOfAccounts = _CountryChartOfAccounts.ChartOfAccounts;
  @DataIntegration.dataUnavailable : true
  _GLAccountInCompanyCode : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].OperatingGeneralLedgerAccount on CompanyCode = _GLAccountInCompanyCode.CompanyCode and GLAccount = _GLAccountInCompanyCode.GLAccount;
  @EndUserText.label : 'Customer Supplier Industry'
  @EndUserText.heading : 'Customer Supplier Industry'
  @EndUserText.quickInfo : 'Customer Supplier Industry'
  @DataIntegration.dataUnavailable : true
  CustomerSupplierIndustry : String(4);
  @EndUserText.label : 'Depreciation Fiscal Period'
  @EndUserText.heading : 'Depreciation Fiscal Period'
  @EndUserText.quickInfo : 'Fiscal Period of Depreciation'
  @DataIntegration.dataUnavailable : true
  DepreciationFiscalPeriod : String(3);
  @EndUserText.label : 'Financial Transaction Type'
  @EndUserText.heading : 'Financial Transaction Type'
  @EndUserText.quickInfo : 'Financial Transaction Type'
  @EntityRelationship.reference : [
    {
      name: '_FinancialTransactionType',
      referencedEntityType: 'sap.vdm.sont:FinancialTransactionType',
      referencedPropertyType: 'sap.vdm.gfn:FinancialTransactionType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  FinancialTransactionType : String(3);
  @EndUserText.label : 'Financial Valuation Object'
  @EndUserText.heading : 'Financial Valuation Object'
  @EndUserText.quickInfo : 'Financial Valuation Object'
  @DataIntegration.dataUnavailable : true
  FinancialValuationObject : String(32);
  @EndUserText.label : 'Is Supplier Stock Valuation'
  @EndUserText.heading : 'Is Supplier Stock Valuation'
  @EndUserText.quickInfo : 'Is Supplier Stock Valuation'
  @DataIntegration.dataUnavailable : true
  IsSupplierStockValuation : Boolean;
  @EndUserText.label : 'Journal Entry Item Category'
  @EndUserText.heading : 'Journal Entry Item Category'
  @EndUserText.quickInfo : 'Journal Entry Item Category'
  @DataIntegration.dataUnavailable : true
  JournalEntryItemCategory : String(5);
  @EndUserText.label : 'Partner Account Assignment'
  @EndUserText.heading : 'Partner Account Assignment'
  @EndUserText.quickInfo : 'Partner Account Assignment'
  @DataIntegration.dataUnavailable : true
  PartnerAccountAssignment : String(30);
  @EndUserText.label : 'Partner Consolidation Unit'
  @EndUserText.heading : 'Partner Consolidation Unit'
  @EndUserText.quickInfo : 'Partner Consolidation Unit'
  @EntityRelationship.reference : [
    {
      name: '_PartnerConsolidationUnit',
      referencedEntityType: 'sap.vdm.sont:CnsldtnUnit_3',
      referencedPropertyType: 'sap.vdm.gfn:ConsolidationUnit'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerConsolidationUnit : String(18);
  @EndUserText.label : 'Partner Project Internal ID'
  @EndUserText.heading : 'Partner Project Internal ID'
  @EndUserText.quickInfo : 'Partner Project Internal ID'
  @EntityRelationship.reference : [
    {
      name: '_PartnerProjectBasicData',
      referencedEntityType: 'sap.vdm.sont:ProjectBasicData',
      referencedPropertyType: 'sap.vdm.gfn:ProjectInternalID'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerProjectInternalID : String(8);
  @EndUserText.label : 'Partner Sales Document Item'
  @EndUserText.heading : 'Partner Sales Document Item'
  @EndUserText.quickInfo : 'Partner Sales Document Item'
  @DataIntegration.dataUnavailable : true
  PartnerSalesDocumentItem : String(6);
  @EndUserText.label : 'Per. of Perf. End'
  @EndUserText.heading : 'End Date'
  @EndUserText.quickInfo : 'Billing Period of Performance End Date'
  @DataIntegration.dataUnavailable : true
  PerformancePeriodEndDate : Date;
  @EndUserText.label : 'Reference Document Context'
  @EndUserText.heading : 'Reference Document Context'
  @EndUserText.quickInfo : 'Reference Document Context'
  @DataIntegration.dataUnavailable : true
  ReferenceDocumentContext : String(10);
  @EndUserText.label : 'Alloc Transfr Agency'
  @EndUserText.heading : 'Allocation Transfer Agency Identifier'
  @EndUserText.quickInfo : 'Allocation Transfer Agency Identifier (ATA)'
  @DataIntegration.dataUnavailable : true
  USFedAllocTransfAgencyID : String(3);
  @EndUserText.label : 'Main Account (TP)'
  @EndUserText.heading : 'Main Account (TP)'
  @EndUserText.quickInfo : 'Main Account for Trading Partner'
  @EntityRelationship.reference : [
    {
      name: '_USFedTrdgPartMainAccount',
      referencedEntityType: 'sap.vdm.sont:USFedTrdgPartMainAccount',
      referencedPropertyType: 'sap.vdm.gfn:USFedTrdgPartMainAccount'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedTrdgPartMainAccount : String(4);
  @EndUserText.label : 'Solution Order Item'
  @EndUserText.heading : 'Solution Order Item'
  @EndUserText.quickInfo : 'Solution Order Item'
  @DataIntegration.dataUnavailable : true
  BusinessSolutionOrderItem : String(6);
  @EndUserText.label : 'Business Transaction'
  @EndUserText.heading : 'BTran'
  @EndUserText.quickInfo : 'CO Business Transaction'
  @DataIntegration.dataUnavailable : true
  ControllingBusTransacType : String(4);
  @EndUserText.label : 'CO Object Currency'
  @EndUserText.heading : 'ObCrcy'
  @EndUserText.quickInfo : 'CO Object Currency'
  @DataIntegration.dataUnavailable : true
  ControllingObjectCurrency : String(5);
  @EndUserText.label : 'Transaction Type for General Ledger'
  @EndUserText.heading : 'Transaction Type for General Ledger'
  @EndUserText.quickInfo : 'Transaction Type for General Ledger'
  @DataIntegration.dataUnavailable : true
  GLBusinessTransactionType : String(4);
  @EndUserText.label : 'Group Val. Fixed Amount in Global Cur.'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Group Valuation Fixed Amount in Global Currency'
  @EndUserText.quickInfo : 'Group Valuation Fixed Amount in Global Currency'
  @Semantics.amount.currencyCode : 'GlobalCurrency'
  @DataIntegration.dataUnavailable : true
  GrpValnFixedAmtInGlobCrcy : Decimal(34, 4);
  @EndUserText.label : 'Bdgt Validty No.'
  @EndUserText.heading : 'Budget Validity Number'
  @EndUserText.quickInfo : 'Budget Validity Number'
  @DataIntegration.dataUnavailable : true
  GteeMBudgetValidityNumber : String(3);
  @EndUserText.label : 'Incomplete Sum. Valuation Fix Quantity'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Incomplete Summable Valuation Fix Quantity'
  @EndUserText.quickInfo : 'Incomplete Summable Valuation Fix Quantity'
  @DataIntegration.dataUnavailable : true
  @Semantics.quantity.unitOfMeasure : 'IncmpltSummableValnQtyUnt'
  IncmpltSummableValnFxdQty : Decimal(23, 3);
  @EndUserText.label : 'Incomplete Sum. Valuation Quantity Unit'
  @EndUserText.heading : 'Incomplete Summable Valuation Quantity Unit'
  @EndUserText.quickInfo : 'Incomplete Summable Valuation Quantity Unit'
  @EntityRelationship.reference : [
    {
      name: '_IncmpltSummableValnQtyUnt',
      referencedEntityType: 'sap.vdm.sont:UnitOfMeasure',
      referencedPropertyType: 'sap.vdm.gfn:UnitOfMeasure'
    }
  ]
  @DataIntegration.dataUnavailable : true
  IncmpltSummableValnQtyUnt : String(3);
  @EndUserText.label : 'Inventory Special Stock Type'
  @EndUserText.heading : 'Inventory Special Stock Type'
  @EndUserText.quickInfo : 'Inventory Special Stock Type'
  @EntityRelationship.reference : [
    {
      name: '_InventorySpecialStockType',
      referencedEntityType: 'sap.vdm.sont:InventorySpecialStockType',
      referencedPropertyType: 'sap.vdm.gfn:InventorySpecialStockType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  InventorySpecialStockType : String(1);
  @EndUserText.label : 'Planned Parts/Work'
  @EndUserText.heading : 'Plnd'
  @EndUserText.quickInfo : 'Planned Parts/Work'
  @DataIntegration.dataUnavailable : true
  MaintenanceOrderIsPlanned : Boolean;
  @EndUserText.label : 'Material Ledger Process Type'
  @EndUserText.heading : 'Material Ledger Process Type'
  @EndUserText.quickInfo : 'Material Ledger Process Type (Procurement/Consumption)'
  @DataIntegration.dataUnavailable : true
  MaterialLedgerProcessType : String(4);
  @EndUserText.label : 'Offsetting Chart of Accounts'
  @EndUserText.heading : 'Offsetting Chart of Accounts'
  @EndUserText.quickInfo : 'Offsetting Chart of Accounts'
  @EntityRelationship.reference : [
    {
      name: '_OffsettingChartOfAccounts',
      referencedEntityType: 'sap.vdm.sont:ChartOfAccounts',
      referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_OffsettingChartOfAccounts'
  OffsettingChartOfAccounts : String(4);
  @EndUserText.label : 'Origin Cost Center Activity Type'
  @EndUserText.heading : 'Origin Cost Center Activity Type'
  @EndUserText.quickInfo : 'Origin Cost Center Activity Type'
  @DataIntegration.dataUnavailable : true
  OriginCostCtrActivityType : String(6);
  @EndUserText.label : 'Company Code for Budget Account'
  @EndUserText.heading : 'Company Code for Budget Account'
  @EndUserText.quickInfo : 'Budget Account Company Code'
  @EntityRelationship.reference : [
    {
      name: '_PubSecBudgetAccountCoCode',
      referencedEntityType: 'sap.vdm.sont:CompanyCode',
      referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PubSecBudgetAccountCoCode : String(4);
  @EndUserText.label : 'Amount Type for Budget Consumption'
  @EndUserText.heading : 'Amount Type for Budget Consumption'
  @EndUserText.quickInfo : 'Budget Consumption Amount Type'
  @EntityRelationship.reference : [
    {
      name: '_PubSecBudgetCnsmpnAmtType',
      referencedEntityType: 'sap.vdm.sont:PubSecBdgtCnsmpnAmtType',
      referencedPropertyType: 'sap.vdm.gfn:PubSecBudgetCnsmpnAmtType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PubSecBudgetCnsmpnAmtType : String(4) enum {
    values;
  };
  @EndUserText.label : 'RE Partner Service Charge Key'
  @EndUserText.heading : 'RE Partner Service Charge Key'
  @EndUserText.quickInfo : 'RE Partner Service Charge Key'
  @DataIntegration.dataUnavailable : true
  REPartnerServiceChargeKey : String(4);
  @EndUserText.label : 'RE Partner Settlement Unit'
  @EndUserText.heading : 'RE Partner Settlement Unit'
  @EndUserText.quickInfo : 'RE Partner Settlement Unit'
  @DataIntegration.dataUnavailable : true
  REPartnerSettlementUnitID : String(5);
  @EndUserText.label : 'Real Estate Partner Building'
  @EndUserText.heading : 'Real Estate Partner Building'
  @EndUserText.quickInfo : 'Real Estate Partner Building'
  @DataIntegration.dataUnavailable : true
  RealEstatePartnerBuilding : String(8);
  @EndUserText.label : 'Real Estate Partner Contract'
  @EndUserText.heading : 'Real Estate Partner Contract'
  @EndUserText.quickInfo : 'Real Estate Partner Contract'
  @DataIntegration.dataUnavailable : true
  RealEstatePartnerContract : String(13);
  @EndUserText.label : 'Real Estate Partner Property'
  @EndUserText.heading : 'Real Estate Partner Property'
  @EndUserText.quickInfo : 'Real Estate Partner Property'
  @DataIntegration.dataUnavailable : true
  RealEstatePartnerProperty : String(8);
  @EndUserText.label : 'Revenue Accounting Contract'
  @EndUserText.heading : 'Revenue Accounting Contract'
  @EndUserText.quickInfo : 'Revenue Accounting Contract'
  @DataIntegration.dataUnavailable : true
  RevenueAccountingContract : String(14);
  @EndUserText.label : 'Reversal Reference Document'
  @EndUserText.heading : 'Reversal Reference Document'
  @EndUserText.quickInfo : 'Reversal Reference Document'
  @DataIntegration.dataUnavailable : true
  ReversalReferenceDocument : String(10);
  @EndUserText.label : 'Source Reference Document Subitem'
  @EndUserText.heading : 'Source Reference Document Subitem'
  @EndUserText.quickInfo : 'Source Reference Document Subitem'
  @DataIntegration.dataUnavailable : true
  SourceReferenceDocSubitem : String(6);
  @EndUserText.label : 'SLA Line Item Type'
  @EndUserText.heading : 'SLALiTy'
  @EndUserText.quickInfo : 'Subledger-Specific Line Item Type'
  @EntityRelationship.reference : [
    {
      name: '_SubLedgerAccLineItemType',
      referencedEntityType: 'sap.vdm.sont:SubLedgerAccLineItemType',
      referencedPropertyType: 'sap.vdm.gfn:SubLedgerAcctLineItemType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  SubLedgerAcctLineItemType : String(5);
  @EndUserText.label : 'Overtime Category'
  @EndUserText.heading : 'Overtime Category'
  @EndUserText.quickInfo : 'Overtime Category'
  @DataIntegration.dataUnavailable : true
  TimeSheetOvertimeCategory : String(4);
  @EndUserText.label : 'Availability Time'
  @EndUserText.heading : 'Avail'
  @EndUserText.quickInfo : 'Availability Time'
  @EntityRelationship.reference : [
    {
      name: '_USFedAvailyTimeType',
      referencedEntityType: 'sap.vdm.sont:USFedAvailyTimeType',
      referencedPropertyType: 'sap.vdm.gfn:USFedAvailabilityTimeType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedAvailabilityTimeType : String(1) enum {
    values;
  };
  @EndUserText.label : 'Agency ID (TP)'
  @EndUserText.heading : 'Agency ID (TP)'
  @EndUserText.quickInfo : 'Agency Identifier (AID) for Trading Partner'
  @EntityRelationship.reference : [
    {
      name: '_USFedTradingPartnerAgcy',
      referencedEntityType: 'sap.vdm.sont:USFedTradingPartnerAgcy',
      referencedPropertyType: 'sap.vdm.gfn:USFedTradingPartnerAgency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedTradingPartnerAgency : String(3);
  @EndUserText.label : 'Journal Entry Created By'
  @EndUserText.heading : 'Journal Entry Created By'
  @EndUserText.quickInfo : 'User that created the journal entry'
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  AccountingDocCreatedByUser : String(12);
  @EndUserText.label : 'Journal Entry Category'
  @EndUserText.heading : 'Journal Entry Category'
  @EndUserText.quickInfo : 'Journal Entry Category'
  @EntityRelationship.reference : [
    {
      name: '_AccountingDocumentCategory',
      referencedEntityType: 'sap.vdm.sont:AccountingDocumentCategory',
      referencedPropertyType: 'sap.vdm.gfn:AccountingDocumentCategory'
    }
  ]
  @DataIntegration.dataUnavailable : true
  AccountingDocumentCategory : String(1) enum {
    values;
  };
  @EndUserText.label : 'Accounting Notification UUID'
  @EndUserText.heading : 'Accounting Notification UUID'
  @EndUserText.quickInfo : 'Accounting Notification UUID'
  @DataIntegration.dataUnavailable : true
  AccountingNotificationUUID : UUID;
  @EndUserText.label : 'Logical Syst. AcrObj'
  @EndUserText.heading : 'ACR Log. System'
  @EndUserText.quickInfo : 'Logical System of the Accrual Object'
  @DataIntegration.dataUnavailable : true
  AccrualObjectLogicalSystem : String(10);
  @EndUserText.label : 'Amount in Balance Transaction Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Balance Transaction Currency'
  @EndUserText.quickInfo : 'Amount in Balance Transaction Currency'
  @Semantics.amount.currencyCode : 'BalanceTransactionCurrency'
  @DataIntegration.dataUnavailable : true
  AmountInBalanceTransacCrcy : Decimal(34, 4);
  @EndUserText.label : 'Amount in Functional Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Functional Currency'
  @EndUserText.quickInfo : 'Amount in Functional Currency'
  @Semantics.amount.currencyCode : 'FunctionalCurrency'
  @DataIntegration.dataUnavailable : true
  AmountInFunctionalCurrency : Decimal(34, 4);
  @EndUserText.label : 'Balance Transaction Currency'
  @EndUserText.heading : 'Balance Transaction Currency'
  @EndUserText.quickInfo : 'Balance Transaction Currency'
  @EntityRelationship.reference : [
    {
      name: '_BalanceTransactionCurrency',
      referencedEntityType: 'sap.vdm.sont:Currency',
      referencedPropertyType: 'sap.vdm.gfn:Currency'
    }
  ]
  @DataIntegration.dataUnavailable : true
  BalanceTransactionCurrency : String(5);
  @EndUserText.label : 'Clearing Journal Entry (Deprecated)'
  @EndUserText.heading : 'Clearing Journal Entry (Deprecated)'
  @EndUserText.quickInfo : 'Clearing Journal Entry (Deprecated)'
  @DataIntegration.dataUnavailable : true
  ClearingAccountingDocument : String(10);
  @EndUserText.label : 'Controlling Debit Credit Code'
  @EndUserText.heading : 'Controlling Debit Credit Code'
  @EndUserText.quickInfo : 'Controlling Debit Credit Code'
  @EntityRelationship.reference : [
    {
      name: '_ControllingDebitCreditCode',
      referencedEntityType: 'sap.vdm.sont:ControllingDebitCreditCode',
      referencedPropertyType: 'sap.vdm.gfn:ControllingDebitCreditCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ControllingDebitCreditCode : String(1) enum {
    values;
  };
  @EndUserText.label : 'Controlling Object Debit Type'
  @EndUserText.heading : 'Controlling Object Debit Type'
  @EndUserText.quickInfo : 'Controlling Object Debit Type'
  @DataIntegration.dataUnavailable : true
  ControllingObjectDebitType : String(1) enum {
    values;
  };
  @EndUserText.label : 'Earmarked Funds Document Item'
  @EndUserText.heading : 'Earmarked Funds Document Item'
  @EndUserText.quickInfo : 'Earmarked Funds Document Item'
  @DataIntegration.dataUnavailable : true
  EarmarkedFundsDocumentItem : String(3);
  @EndUserText.label : 'Fixed Price Variance in Global Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Fixed Price Variance in Global Currency'
  @EndUserText.quickInfo : 'Fixed Price Variance in Global Currency'
  @Semantics.amount.currencyCode : 'GlobalCurrency'
  @DataIntegration.dataUnavailable : true
  FixedPriceVarcInGlobalCrcy : Decimal(34, 4);
  @EndUserText.label : 'Invoice Reference Fiscal Year'
  @EndUserText.heading : 'Invoice Reference Fiscal Year'
  @EndUserText.quickInfo : 'Invoice Reference Fiscal Year'
  @DataIntegration.dataUnavailable : true
  InvoiceReferenceFiscalYear : String(4);
  @EndUserText.label : 'Joint Venture Production Date'
  @EndUserText.heading : 'Joint Venture Production Date'
  @EndUserText.quickInfo : 'Joint Venture Production Date'
  @DataIntegration.dataUnavailable : true
  JointVentureProductionDate : Date;
  @EndUserText.label : 'G/L Offsetting Entry Line Item'
  @EndUserText.heading : 'G/L Offsetting Entry Line Item'
  @EndUserText.quickInfo : 'General Ledger Offsetting Entry Line Item'
  @DataIntegration.dataUnavailable : true
  OffsettingLedgerGLLineItem : String(6);
  @EndUserText.label : 'Dr/Cr Ind. (Origin)'
  @EndUserText.heading : 'D/C'
  @EndUserText.quickInfo : 'Debit/Credit Indicator (Origin)'
  @EntityRelationship.reference : [
    {
      name: '_OriginCtrlgDebitCreditCode',
      referencedEntityType: 'sap.vdm.sont:ControllingDebitCreditCode',
      referencedPropertyType: 'sap.vdm.gfn:ControllingDebitCreditCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  OriginCtrlgDebitCreditCode : String(1) enum {
    values;
  };
  @EndUserText.label : 'Partner Cost Center Activity Type'
  @EndUserText.heading : 'Partner Cost Center Activity Type'
  @EndUserText.quickInfo : 'Partner Cost Center Activity Type'
  @DataIntegration.dataUnavailable : true
  PartnerCostCtrActivityType : String(6);
  @EndUserText.label : 'Partner Service Document Item'
  @EndUserText.heading : 'Partner Service Document Item'
  @EndUserText.quickInfo : 'Partner Service Document Item'
  @DataIntegration.dataUnavailable : true
  PartnerServiceDocumentItem : String(6);
  @EndUserText.label : 'Partner Service Document Type'
  @EndUserText.heading : 'Partner Service Document Type'
  @EndUserText.quickInfo : 'Partner Service Document Type'
  @DataIntegration.dataUnavailable : true
  PartnerServiceDocumentType : String(4);
  @EndUserText.label : 'Per. of Perf. Start'
  @EndUserText.heading : 'Start Date'
  @EndUserText.quickInfo : 'Billing Period of Performance Start Date'
  @DataIntegration.dataUnavailable : true
  PerformancePeriodStartDate : Date;
  @EndUserText.label : 'Year of Budget Consumption'
  @EndUserText.heading : 'Year of Budget Consumption'
  @EndUserText.quickInfo : 'CC Fiscal Year for Budget Consumption Date'
  @DataIntegration.dataUnavailable : true
  PubSecBudgetCnsmpnFsclYear : String(4);
  @EndUserText.label : 'Reference Document Item Group'
  @EndUserText.heading : 'Reference Document Item Group'
  @EndUserText.quickInfo : 'Reference Document Item Group'
  @DataIntegration.dataUnavailable : true
  ReferenceDocumentItemGroup : String(6);
  @EndUserText.label : 'Reversal Transaction Sub Item'
  @EndUserText.heading : 'Reversal Transaction Sub Item'
  @EndUserText.quickInfo : 'Reversal Transaction Sub Item'
  @DataIntegration.dataUnavailable : true
  ReversalTransactionSubitem : String(6);
  @EndUserText.label : 'Sales Price Amount in Company Code Crcy'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Sales Price Amount in Company Code Currency'
  @EndUserText.quickInfo : 'Sales Price Amount in Company Code Currency'
  @Semantics.amount.currencyCode : 'CompanyCodeCurrency'
  @DataIntegration.dataUnavailable : true
  SlsPriceAmountInCoCodeCrcy : Decimal(34, 4);
  @EndUserText.label : 'Total Price Variance in Global Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Total Price Variance in Global Currency'
  @EndUserText.quickInfo : 'Total Price Variance in Global Currency'
  @Semantics.amount.currencyCode : 'GlobalCurrency'
  @DataIntegration.dataUnavailable : true
  TotalPriceVarcInGlobalCrcy : Decimal(34, 4);
  @EndUserText.label : 'Application of Funds'
  @EndUserText.heading : 'Application of Funds'
  @EndUserText.quickInfo : 'Application of Secondary Source Funds - US Federal'
  @DataIntegration.dataUnavailable : true
  USFedApplOfSecdrySrceFunds : String(16);
  @EndUserText.label : 'Apportionment Cat'
  @EndUserText.heading : 'Apport'
  @EndUserText.quickInfo : 'Apportionment Category'
  @EntityRelationship.reference : [
    {
      name: '_USFedApportionmentCat',
      referencedEntityType: 'sap.vdm.sont:USFedApportionmentCat',
      referencedPropertyType: 'sap.vdm.gfn:USFedApportionmentCategory'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedApportionmentCategory : String(1) enum {
    values;
  };
  @EndUserText.label : 'BL Status'
  @EndUserText.heading : 'Budgetary Ledger Status'
  @EndUserText.quickInfo : 'Budgetary ledger status'
  @DataIntegration.dataUnavailable : true
  USFedBudgetaryLedgerStatus : String(5);
  @EndUserText.label : 'Federal/Nonfederal'
  @EndUserText.heading : 'Federal Nonfederal Code'
  @EndUserText.quickInfo : 'Federal/Nonfederal Code'
  @EntityRelationship.reference : [
    {
      name: '_USFedFederalNonFederal',
      referencedEntityType: 'sap.vdm.sont:USFedFederalNonFederal',
      referencedPropertyType: 'sap.vdm.gfn:USFedFederalNonFederalCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedFederalNonFederalCode : String(1) enum {
    values;
  };
  @EndUserText.label : 'Sequence Nbr'
  @EndUserText.heading : 'Sequence'
  @EndUserText.quickInfo : 'Posting sequence number - US Federal specific field'
  @DataIntegration.dataUnavailable : true
  USFedPostingSequenceNumber : String(10);
  @DataIntegration.dataUnavailable : true
  _OffsettingChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on OffsettingChartOfAccounts = _OffsettingChartOfAccounts.ChartOfAccounts;
  @EndUserText.label : 'Amount in Company Code Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Company Code Currency'
  @EndUserText.quickInfo : 'Amount in Company Code Currency'
  @Semantics.amount.currencyCode : 'CompanyCodeCurrency'
  @DataIntegration.dataUnavailable : true
  AmountInCompanyCodeCurrency : Decimal(34, 4);
  @EndUserText.label : 'Amount in Transaction Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Transaction Currency'
  @EndUserText.quickInfo : 'Amount in Transaction Currency'
  @Semantics.amount.currencyCode : 'TransactionCurrency'
  @DataIntegration.dataUnavailable : true
  AmountInTransactionCurrency : Decimal(34, 4);
  @EndUserText.label : 'Business Transaction Category'
  @EndUserText.heading : 'Business Transaction Category'
  @EndUserText.quickInfo : 'Business Transaction Category'
  @EntityRelationship.reference : [
    {
      name: '_BusinessTransactionCategory',
      referencedEntityType: 'sap.vdm.sont:BusinessTransactionCategory',
      referencedPropertyType: 'sap.vdm.gfn:BusinessTransactionCategory'
    }
  ]
  @DataIntegration.dataUnavailable : true
  BusinessTransactionCategory : String(4);
  @EndUserText.label : 'Component Breakdown Scale Numerator'
  @EndUserText.heading : 'Component Breakdown Scale Numerator'
  @EndUserText.quickInfo : 'Component Breakdown Scale Numerator'
  @DataIntegration.dataUnavailable : true
  CompBreakdownScaleNumerator : Decimal(23, 3);
  @EndUserText.label : 'Customer Service Notification'
  @EndUserText.heading : 'Customer Service Notification'
  @EndUserText.quickInfo : 'Customer Service Notification'
  @DataIntegration.dataUnavailable : true
  CustomerServiceNotification : String(12);
  @EndUserText.label : 'Financial Valuation Subobject'
  @EndUserText.heading : 'Financial Valuation Subobject'
  @EndUserText.quickInfo : 'Financial Valuation Subobject'
  @DataIntegration.dataUnavailable : true
  FinancialValuationSubobject : String(32);
  @EndUserText.label : 'General Ledger Aging Increment'
  @EndUserText.heading : 'General Ledger Aging Increment'
  @EndUserText.quickInfo : 'General Ledger Aging Increment'
  @DataIntegration.dataUnavailable : true
  GeneralLedgerAgingIncrement : String(15);
  @EndUserText.label : 'GV Total Price Var. in Global Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Group Valuation Total Price Variance in Global Currency'
  @EndUserText.quickInfo : 'Group Valuation Total Price Variance in Global Currency'
  @Semantics.amount.currencyCode : 'GlobalCurrency'
  @DataIntegration.dataUnavailable : true
  GrpValnTotPrcVarcInGlobCrcy : Decimal(34, 4);
  @EndUserText.label : 'Inventory Spcl Stock Sales Document Item'
  @EndUserText.heading : 'Inventory Special Stock Sales Document Item'
  @EndUserText.quickInfo : 'Inventory Special Stock Sales Document Item'
  @DataIntegration.dataUnavailable : true
  InventorySpclStkSalesDocItm : String(6);
  @EndUserText.label : 'Joint Venture Operational Date'
  @EndUserText.heading : 'Joint Venture Operational Date'
  @EndUserText.quickInfo : 'Joint Venture Operational Date'
  @DataIntegration.dataUnavailable : true
  JointVentureOperationalDate : Date;
  @EndUserText.label : 'Shifted Fiscal Year Consecutive ID'
  @EndUserText.heading : 'Shifted Fiscal Year Consecutive ID'
  @EndUserText.quickInfo : 'Shifted Fiscal Year Consecutive ID'
  @DataIntegration.dataUnavailable : true
  JrnlEntrAltvFYConsecutiveID : String(10);
  @EndUserText.label : 'Obsolete Reason'
  @EndUserText.heading : 'Journal Entry Item Obsolete Reason'
  @EndUserText.quickInfo : 'Journal Entry Item Obsolete Reason'
  @EntityRelationship.reference : [
    {
      name: '_JrnlEntryItemObsoleteRsn',
      referencedEntityType: 'sap.vdm.sont:JrnlEntryItemObsoleteRsn',
      referencedPropertyType: 'sap.vdm.gfn:JrnlEntryItemObsoleteReason'
    }
  ]
  @DataIntegration.dataUnavailable : true
  JrnlEntryItemObsoleteReason : String(1) enum {
    values;
  };
  @EndUserText.label : 'Partner WBS Element Internal ID'
  @EndUserText.heading : 'Partner WBS Element Internal ID'
  @EndUserText.quickInfo : 'Partner WBS Element Internal ID'
  @EntityRelationship.reference : [
    {
      name: '_PartnerWBSElementBasicData',
      referencedEntityType: 'sap.vdm.sont:WBSElementBasicData',
      referencedPropertyType: 'sap.vdm.gfn:WBSElementInternalID'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerWBSElementInternalID : String(8);
  @EndUserText.label : 'Predecessor Journal Entry Item'
  @EndUserText.heading : 'Predecessor Journal Entry Item'
  @EndUserText.quickInfo : 'Preceding Journal Entry Line Item'
  @DataIntegration.dataUnavailable : true
  PredecessorJournalEntryItem : String(6);
  @EndUserText.label : 'Predecessor Reference Document Item'
  @EndUserText.heading : 'Predecessor Reference Document Item'
  @EndUserText.quickInfo : 'Predecessor Reference Document Item'
  @DataIntegration.dataUnavailable : true
  PredecessorReferenceDocItem : String(6);
  @EndUserText.label : 'Predecessor Reference Document Type'
  @EndUserText.heading : 'Predecessor Reference Document Type'
  @EndUserText.quickInfo : 'Predecessor Reference Document Type'
  @DataIntegration.dataUnavailable : true
  PredecessorReferenceDocType : String(5);
  @EndUserText.label : 'PC Val. Fixed Amount in Global Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Profit Center Valuation Fixed Amount in Global Currency'
  @EndUserText.quickInfo : 'Profit Center Valuation Fixed Amount in Global Currency'
  @Semantics.amount.currencyCode : 'GlobalCurrency'
  @DataIntegration.dataUnavailable : true
  PrftCtrValnFxdAmtInGlobCrcy : Decimal(34, 4);
  @EndUserText.label : 'Sender Account Assignment Type'
  @EndUserText.heading : 'Sender Account Assignment Type'
  @EndUserText.quickInfo : 'Account Assignment Type in Sender System'
  @DataIntegration.dataUnavailable : true
  SenderAccountAssignmentType : String(2);
  @EndUserText.label : 'Source Reference Document Item'
  @EndUserText.heading : 'Source Reference Document Item'
  @EndUserText.quickInfo : 'Source Reference Document Item'
  @DataIntegration.dataUnavailable : true
  SourceReferenceDocumentItem : String(6);
  @EndUserText.label : 'Source Reference Document Type'
  @EndUserText.heading : 'Source Reference Document Type'
  @EndUserText.quickInfo : 'Source Reference Document Type'
  @DataIntegration.dataUnavailable : true
  SourceReferenceDocumentType : String(5);
  @EndUserText.label : 'Sublevel Prefix (TP)'
  @EndUserText.heading : 'Sublevel Prefix (TP)'
  @EndUserText.quickInfo : 'Sublevel Prefix (SP) for Trading Partner'
  @EntityRelationship.reference : [
    {
      name: '_USFedTrdgPartSubLvlPrefix',
      referencedEntityType: 'sap.vdm.sont:USFedTrdgPartSubLvlPrefix',
      referencedPropertyType: 'sap.vdm.gfn:USFedTrdgPartSubLevelPrefix'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedTrdgPartSubLevelPrefix : String(2);
  @DataIntegration.dataUnavailable : true
  _GLAccountInChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccount on ChartOfAccounts = _GLAccountInChartOfAccounts.ChartOfAccounts and GLAccount = _GLAccountInChartOfAccounts.GLAccount;
  @EndUserText.label : 'Amount in Freely Defined Currency 1'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Freely Defined Currency 1'
  @EndUserText.quickInfo : 'Amount in Freely Defined Currency 1'
  @Semantics.amount.currencyCode : 'FreeDefinedCurrency1'
  @DataIntegration.dataUnavailable : true
  AmountInFreeDefinedCurrency1 : Decimal(34, 4);
  @EndUserText.label : 'Amount in Freely Defined Currency 2'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Freely Defined Currency 2'
  @EndUserText.quickInfo : 'Amount in Freely Defined Currency 2'
  @Semantics.amount.currencyCode : 'FreeDefinedCurrency2'
  @DataIntegration.dataUnavailable : true
  AmountInFreeDefinedCurrency2 : Decimal(34, 4);
  @EndUserText.label : 'Amount in Freely Defined Currency 3'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Freely Defined Currency 3'
  @EndUserText.quickInfo : 'Amount in Freely Defined Currency 3'
  @Semantics.amount.currencyCode : 'FreeDefinedCurrency3'
  @DataIntegration.dataUnavailable : true
  AmountInFreeDefinedCurrency3 : Decimal(34, 4);
  @EndUserText.label : 'Amount in Freely Defined Currency 4'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Freely Defined Currency 4'
  @EndUserText.quickInfo : 'Amount in Freely Defined Currency 4'
  @Semantics.amount.currencyCode : 'FreeDefinedCurrency4'
  @DataIntegration.dataUnavailable : true
  AmountInFreeDefinedCurrency4 : Decimal(34, 4);
  @EndUserText.label : 'Amount in Freely Defined Currency 5'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Freely Defined Currency 5'
  @EndUserText.quickInfo : 'Amount in Freely Defined Currency 5'
  @Semantics.amount.currencyCode : 'FreeDefinedCurrency5'
  @DataIntegration.dataUnavailable : true
  AmountInFreeDefinedCurrency5 : Decimal(34, 4);
  @EndUserText.label : 'Amount in Freely Defined Currency 6'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Freely Defined Currency 6'
  @EndUserText.quickInfo : 'Amount in Freely Defined Currency 6'
  @Semantics.amount.currencyCode : 'FreeDefinedCurrency6'
  @DataIntegration.dataUnavailable : true
  AmountInFreeDefinedCurrency6 : Decimal(34, 4);
  @EndUserText.label : 'Amount in Freely Defined Currency 7'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Freely Defined Currency 7'
  @EndUserText.quickInfo : 'Amount in Freely Defined Currency 7'
  @Semantics.amount.currencyCode : 'FreeDefinedCurrency7'
  @DataIntegration.dataUnavailable : true
  AmountInFreeDefinedCurrency7 : Decimal(34, 4);
  @EndUserText.label : 'Amount in Freely Defined Currency 8'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Amount in Freely Defined Currency 8'
  @EndUserText.quickInfo : 'Amount in Freely Defined Currency 8'
  @Semantics.amount.currencyCode : 'FreeDefinedCurrency8'
  @DataIntegration.dataUnavailable : true
  AmountInFreeDefinedCurrency8 : Decimal(34, 4);
  @EndUserText.label : 'Consolidation Chart of Accounts'
  @EndUserText.heading : 'Consolidation Chart of Accounts'
  @EndUserText.quickInfo : 'Consolidation Chart of Accounts'
  @EntityRelationship.reference : [
    {
      name: '_ConsolidationChartOfAccounts',
      referencedEntityType: 'sap.vdm.sont:CnsldtnChartOfAccounts',
      referencedPropertyType: 'sap.vdm.gfn:ConsolidationChartOfAccounts'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ConsolidationChartOfAccounts : String(2);
  @EndUserText.label : 'Financial Valuation Object Type'
  @EndUserText.heading : 'Financial Valuation Object Type'
  @EndUserText.quickInfo : 'Financial Valuation Object Type'
  @DataIntegration.dataUnavailable : true
  FinancialValuationObjectType : String(4);
  @EndUserText.label : 'Inventory WBS Element'
  @EndUserText.heading : 'Inventory Special Stock WBS Element'
  @EndUserText.quickInfo : 'Inventory Special Stock WBS Element'
  @DataIntegration.dataUnavailable : true
  InventorySpclStockWBSElement : String(24);
  @EndUserText.label : 'Inv. Special Stock WBS Element Int. ID'
  @EndUserText.heading : 'Inventory Special Stock WBS Element Internal ID'
  @EndUserText.quickInfo : 'Inventory Special Stock WBS Element Internal ID'
  @EntityRelationship.reference : [
    {
      name: '_InvtrySpclStockWBSElmntBasic',
      referencedEntityType: 'sap.vdm.sont:WBSElementBasicData',
      referencedPropertyType: 'sap.vdm.gfn:WBSElementInternalID'
    }
  ]
  @DataIntegration.dataUnavailable : true
  InvtrySpclStockWBSElmntIntID : String(8);
  @EndUserText.label : 'Joint Venture Cost Recovery Code'
  @EndUserText.heading : 'Joint Venture Cost Recovery Code'
  @EndUserText.quickInfo : 'Joint Venture Cost Recovery Code'
  @DataIntegration.dataUnavailable : true
  JointVentureCostRecoveryCode : String(2);
  @EndUserText.label : 'Is Secondary Journal Entry'
  @EndUserText.heading : 'Is Secondary Journal Entry'
  @EndUserText.quickInfo : 'Journal Entry Is Secondary Entry'
  @DataIntegration.dataUnavailable : true
  JournalEntryIsSecondaryEntry : Boolean;
  @EndUserText.label : 'Journal Entry Item Migration Source'
  @EndUserText.heading : 'Journal Entry Item Migration Source'
  @EndUserText.quickInfo : 'Journal Entry Item Migration Source'
  @DataIntegration.dataUnavailable : true
  JrnlEntryItemMigrationSource : String(1) enum {
    values;
  };
  @EndUserText.label : 'Order planning ind.'
  @EndUserText.heading : 'OPI'
  @EndUserText.quickInfo : 'Maintenance order planning indicator'
  @DataIntegration.dataUnavailable : true
  MaintenanceOrderPlanningCode : String(1) enum {
    values;
  };
  @EndUserText.label : 'Partner Account Assignment Type'
  @EndUserText.heading : 'Partner Account Assignment Type'
  @EndUserText.quickInfo : 'Partner Account Assignment Type'
  @DataIntegration.dataUnavailable : true
  PartnerAccountAssignmentType : String(2);
  @EndUserText.label : 'Predecessor Reference Document Context'
  @EndUserText.heading : 'Predecessor Reference Document Context'
  @EndUserText.quickInfo : 'Predecessor Reference Document Context'
  @DataIntegration.dataUnavailable : true
  PredecessorReferenceDocCntxt : String(10);
  @EndUserText.label : 'Predecessor Reference Document'
  @EndUserText.heading : 'Predecessor Reference Document'
  @EndUserText.quickInfo : 'Predecessor Reference Document'
  @DataIntegration.dataUnavailable : true
  PredecessorReferenceDocument : String(10);
  @EndUserText.label : 'Posting Period for Budget Consumption'
  @EndUserText.heading : 'Posting Period for Budget Consumption'
  @EndUserText.quickInfo : 'CC Fiscal Period for Budget Consumption Date'
  @DataIntegration.dataUnavailable : true
  PubSecBudgetCnsmpnFsclPeriod : String(3);
  @EndUserText.label : 'Source Reference Document Context'
  @EndUserText.heading : 'Source Reference Document Context'
  @EndUserText.quickInfo : 'Source Reference Document Context'
  @DataIntegration.dataUnavailable : true
  SourceReferenceDocumentCntxt : String(10);
  @EndUserText.label : 'Statistical Account Assignment Type 1'
  @EndUserText.heading : 'Statistical Account Assignment Type 1'
  @EndUserText.quickInfo : 'Statistical Account Assignment Type 1'
  @DataIntegration.dataUnavailable : true
  StstclAccountAssignmentType1 : String(2) enum {
    values;
  };
  @EndUserText.label : 'Statistical Account Assignment Type 2'
  @EndUserText.heading : 'Statistical Account Assignment Type 2'
  @EndUserText.quickInfo : 'Statistical Account Assignment Type 2'
  @DataIntegration.dataUnavailable : true
  StstclAccountAssignmentType2 : String(2) enum {
    values;
  };
  @EndUserText.label : 'Statistical Account Assignment Type 3'
  @EndUserText.heading : 'Statistical Account Assignment Type 3'
  @EndUserText.quickInfo : 'Statistical Account Assignment Type 3'
  @DataIntegration.dataUnavailable : true
  StstclAccountAssignmentType3 : String(2) enum {
    values;
  };
  @EndUserText.label : 'Transaction Key'
  @EndUserText.heading : 'Transaction Key'
  @EndUserText.quickInfo : 'Transaction Key'
  @DataIntegration.dataUnavailable : true
  TransactionTypeDetermination : String(3);
  @EndUserText.label : 'Category B Detail'
  @EndUserText.heading : 'Dtl'
  @EndUserText.quickInfo : 'Apportionment Category B Program Code'
  @DataIntegration.dataUnavailable : true
  USFedApprtmtCatDetailPgmCode : String(4);
  @EndUserText.label : 'Begin Prd of Avail'
  @EndUserText.heading : 'Beginning Period of Availability'
  @EndUserText.quickInfo : 'Beginning Period of Availability (BPOA)'
  @DataIntegration.dataUnavailable : true
  USFedBeginPerdOfAvailability : String(4);
  @EndUserText.label : 'BEA Category'
  @EndUserText.heading : 'B'
  @EndUserText.quickInfo : 'Budget Enforcement Act Category'
  @EntityRelationship.reference : [
    {
      name: '_USFedBdgtEnforcementCat',
      referencedEntityType: 'sap.vdm.sont:USFedBdgtEnforcementCat',
      referencedPropertyType: 'sap.vdm.gfn:USFedBudgetEnforcementActCat'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedBudgetEnforcementActCat : String(1) enum {
    values;
  };
  @EndUserText.label : 'Prog Act Rep Key'
  @EndUserText.heading : 'Program Activity Reporting Key'
  @EndUserText.quickInfo : 'Program Activity Reporting Key'
  @DataIntegration.dataUnavailable : true
  USFedPgmActivityReportingKey : String(15);
  @EndUserText.label : 'End Prd Avail (TP)'
  @EndUserText.heading : 'Ending Period of Availability (TP)'
  @EndUserText.quickInfo : 'Ending Period of Availability (EPOA) for Trading Partner'
  @DataIntegration.dataUnavailable : true
  USFedTrdgPartEndPerdOfAvaily : String(4);
  @EndUserText.label : 'Yr of Budget Auth'
  @EndUserText.heading : 'Year of Budget Authority'
  @EndUserText.quickInfo : 'Year of Budget Authority'
  @EntityRelationship.reference : [
    {
      name: '_USFedYearOfBdgtAuthority',
      referencedEntityType: 'sap.vdm.sont:USFedYearOfBdgtAuthority',
      referencedPropertyType: 'sap.vdm.gfn:USFedYearOfBdgtAuthorityCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedYearOfBdgtAuthorityCode : String(4) enum {
    values;
  };
  @EndUserText.label : 'Consolidation Financial Statement Item'
  @EndUserText.heading : 'Consolidation Financial Statement Item'
  @EndUserText.quickInfo : 'Consolidation Financial Statement Item'
  @DataIntegration.dataUnavailable : true
  CnsldtnFinancialStatementItem : String(10);
  @EndUserText.label : 'Current Plan Proj Sls Ord Valn Strategy'
  @EndUserText.heading : 'Current Plan Project Sales Order Valuation Strategy'
  @EndUserText.quickInfo : 'Current Plan Project Sales Order Valuation Strategy'
  @DataIntegration.dataUnavailable : true
  CurPlanProjSlsOrdValnStrategy : String(1) enum {
    values;
  };
  @EndUserText.label : 'Financial Services Product Group'
  @EndUserText.heading : 'Financial Services Product Group'
  @EndUserText.quickInfo : 'Financial Services Product Group'
  @DataIntegration.dataUnavailable : true
  FinancialServicesProductGroup : String(10);
  @EndUserText.label : 'GV Fixed Price Var. in Global Currency'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Group Valuation Fixed Price Variance in Global Currency'
  @EndUserText.quickInfo : 'Group Valuation Fixed Price Variance in Global Currency'
  @Semantics.amount.currencyCode : 'GlobalCurrency'
  @DataIntegration.dataUnavailable : true
  GrpValnFixedPrcVarcInGlobCrcy : Decimal(34, 4);
  @EndUserText.label : 'Inventory Special Stock Sales Document'
  @EndUserText.heading : 'Inventory Special Stock Sales Document'
  @EndUserText.quickInfo : 'Inventory Special Stock Sales Document'
  @EntityRelationship.reference : [
    {
      name: '_InventorySpclStkSalesDocument',
      referencedEntityType: 'sap.vdm.sont:SalesDocument',
      referencedPropertyType: 'sap.vdm.gfn:SalesDocument'
    }
  ]
  @DataIntegration.dataUnavailable : true
  InventorySpclStkSalesDocument : String(10);
  @EndUserText.label : 'Inventory Special Stock Supplier'
  @EndUserText.heading : 'Inventory Special Stock Supplier'
  @EndUserText.quickInfo : 'Supplier of Inventory Special Stock'
  @EntityRelationship.reference : [
    {
      name: '_InventorySpecialStockSupplier',
      referencedEntityType: 'sap.vdm.sont:Supplier',
      referencedPropertyType: 'sap.vdm.gfn:Supplier'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  InventorySpecialStockSupplier : String(10);
  @EndUserText.label : 'Inventory Special Stock Valuation Type'
  @EndUserText.heading : 'Inventory Special Stock Valuation Type'
  @EndUserText.quickInfo : 'Inventory Special Stock Valuation Type'
  @EntityRelationship.reference : [
    {
      name: '_InventorySpclStockValnType',
      referencedEntityType: 'sap.vdm.sont:InvtrySpecialStockValnType',
      referencedPropertyType: 'sap.vdm.gfn:InventorySpecialStockValnType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  InventorySpecialStockValnType : String(1) enum {
    values;
  };
  @EndUserText.label : 'Partner Controlling Object Class'
  @EndUserText.heading : 'Partner Controlling Object Class'
  @EndUserText.quickInfo : 'Partner Controlling Object Class'
  @EntityRelationship.reference : [
    {
      name: '_PartnerControllingObjectClass',
      referencedEntityType: 'sap.vdm.sont:ControllingObjectClass',
      referencedPropertyType: 'sap.vdm.gfn:ControllingObjectClass'
    }
  ]
  @DataIntegration.dataUnavailable : true
  PartnerControllingObjectClass : String(2) enum {
    values;
  };
  @EndUserText.label : 'Partner Project Network Activity'
  @EndUserText.heading : 'Partner Project Network Activity'
  @EndUserText.quickInfo : 'Partner Project Network Activity'
  @DataIntegration.dataUnavailable : true
  PartnerProjectNetworkActivity : String(4);
  @EndUserText.label : 'Predecessor Journal Entry Fiscal Year'
  @EndUserText.heading : 'Predecessor Journal Entry Fiscal Year'
  @EndUserText.quickInfo : 'Preceding Journal Entry Fiscal Year'
  @DataIntegration.dataUnavailable : true
  PrdcssrJournalEntryFiscalYear : String(4);
  @EndUserText.label : 'Reversal Reference Document Type'
  @EndUserText.heading : 'Reversal Reference Document Type'
  @EndUserText.quickInfo : 'Reversal Reference Document Type'
  @DataIntegration.dataUnavailable : true
  ReversalReferenceDocumentType : String(5);
  @EndUserText.label : 'Settlement Distribution Rule Group'
  @EndUserText.heading : 'Settlement Distribution Rule Group'
  @EndUserText.quickInfo : 'Settlement Distribution Rule Group'
  @DataIntegration.dataUnavailable : true
  SettlementDistributionRuleGrp : String(10);
  @EndUserText.label : 'Avail Type Code (TP)'
  @EndUserText.heading : 'Availability Type Code (TP)'
  @EndUserText.quickInfo : 'Availability Type Code (A) for Trading Partner'
  @EntityRelationship.reference : [
    {
      name: '_USFedTrdgPartAvailyType',
      referencedEntityType: 'sap.vdm.sont:USFedTrdgPartAvailyType',
      referencedPropertyType: 'sap.vdm.gfn:USFedTrdgPartAvailabilityType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedTrdgPartAvailabilityType : String(1) enum {
    values;
  };
  @EndUserText.label : 'BusinessEvtTypCd(TP)'
  @EndUserText.heading : 'Business Event Type Code (TP)'
  @EndUserText.quickInfo : 'Business Event Type Code for Trading Partner'
  @EntityRelationship.reference : [
    {
      name: '_USFedTrdgPartBusEvtType',
      referencedEntityType: 'sap.vdm.sont:USFedTrdgPartBusEvtType',
      referencedPropertyType: 'sap.vdm.gfn:USFedTrdgPartBusEventTypeCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedTrdgPartBusEventTypeCode : String(10);
  @EndUserText.label : 'Fiscal Year of Clearing Journal Entry'
  @EndUserText.heading : 'Fiscal Year of Clearing Journal Entry'
  @EndUserText.quickInfo : 'Fiscal Year of Clearing Journal Entry'
  @DataIntegration.dataUnavailable : true
  ClearingJournalEntryFiscalYear : String(4);
  @EndUserText.label : 'Customer Supplier Corporate Group'
  @EndUserText.heading : 'Customer Supplier Corporate Group'
  @EndUserText.quickInfo : 'Customer Supplier Corporate Group'
  @DataIntegration.dataUnavailable : true
  CustomerSupplierCorporateGroup : String(10);
  @EndUserText.label : 'Joint Venture Accounting Activity'
  @EndUserText.heading : 'Joint Venture Accounting Activity'
  @EndUserText.quickInfo : 'Joint Venture Accounting Activity'
  @DataIntegration.dataUnavailable : true
  JointVentureAccountingActivity : String(2);
  @EndUserText.label : 'Closing Run UUID'
  @EndUserText.heading : 'UUID of Financial Closing Run'
  @EndUserText.quickInfo : 'UUID of Financial Closing Run'
  @DataIntegration.dataUnavailable : true
  JrnlPeriodEndClosingRunLogUUID : UUID;
  @EndUserText.label : 'Ptnr. Reference Date'
  @EndUserText.heading : 'P. RefDate'
  @EndUserText.quickInfo : 'Partner Reference Date for Settlement'
  @DataIntegration.dataUnavailable : true
  PartnerSettlementReferenceDate : Date;
  @EndUserText.label : 'Predecessor Journal Entry Company Code'
  @EndUserText.heading : 'Predecessor Journal Entry Company Code'
  @EndUserText.quickInfo : 'Preceding Journal Entry Company Code'
  @DataIntegration.dataUnavailable : true
  PrdcssrJournalEntryCompanyCode : String(4);
  @EndUserText.label : 'PC Val. Fixed Price Var. in Global Cur.'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Profit Center Val. Fixed Price Var. in Global Currency'
  @EndUserText.quickInfo : 'Profit Center Valuation Fixed Price Variance in Global Cur.'
  @Semantics.amount.currencyCode : 'GlobalCurrency'
  @DataIntegration.dataUnavailable : true
  PrftCtrValnFxdPrcVarcInGlbCrcy : Decimal(34, 4);
  @EndUserText.label : 'PC Val. Total Price Var. in Global Cur.'
  @Aggregation.default : #SUM
  @EndUserText.heading : 'Profit Center Val. Total Price Var. in Global Currency'
  @EndUserText.quickInfo : 'Profit Center Valuation Total Price Variance in Global Cur.'
  @Semantics.amount.currencyCode : 'GlobalCurrency'
  @DataIntegration.dataUnavailable : true
  PrftCtrValnTotPrcVarcInGlbCrcy : Decimal(34, 4);
  @EndUserText.label : 'Reference Purchase Order Category'
  @EndUserText.heading : 'Reference Purchase Order Category'
  @EndUserText.quickInfo : 'Category of Reference Purchase Order'
  @DataIntegration.dataUnavailable : true
  ReferencePurchaseOrderCategory : String(3) enum {
    values;
  };
  @EndUserText.label : 'Reversal Reference Document Context'
  @EndUserText.heading : 'Reversal Reference Document Context'
  @EndUserText.quickInfo : 'Reversal Reference Document Context'
  @DataIntegration.dataUnavailable : true
  ReversalReferenceDocumentCntxt : String(10);
  @EndUserText.label : 'AllcTrnsfrAgncy (TP)'
  @EndUserText.heading : 'Allocation Transfer Agency ID (TP)'
  @EndUserText.quickInfo : 'Allocation Transfer Agency Identifier (ATA) Trading Partner'
  @EntityRelationship.reference : [
    {
      name: '_USFedAllocTransfTrdgPart',
      referencedEntityType: 'sap.vdm.sont:USFedAllocTransfTrdgPart',
      referencedPropertyType: 'sap.vdm.gfn:USFedAllocTransfAgencyTrdgPart'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedAllocTransfAgencyTrdgPart : String(3);
  @EndUserText.label : 'Disastr Emer Fnd Cde'
  @EndUserText.heading : 'Disastr Emer Fnd Cde'
  @EndUserText.quickInfo : 'Disaster Emergency Fund Code'
  @EntityRelationship.reference : [
    {
      name: '_USFedDisasterEmergencyFund',
      referencedEntityType: 'sap.vdm.sont:USFedDisasterEmergencyFund',
      referencedPropertyType: 'sap.vdm.gfn:USFedDisasterEmergencyFundCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  USFedDisasterEmergencyFundCode : String(3);
  @EndUserText.label : 'Begin Prd Avail (TP)'
  @EndUserText.heading : 'Beginning Period of Availability (TP)'
  @EndUserText.quickInfo : 'Beginning Period of Availability (BPOA) for Trading Partner'
  @DataIntegration.dataUnavailable : true
  USFedTrdgPartBeginPerdOfAvaily : String(4);
  @DataIntegration.dataUnavailable : true
  GeneralLedgerAccountLineItemOID : String(128);
};

@EndUserText.label : 'G/L Account Type - Text'
@EntityRelationship.entityIds : [
  {
    name: 'GeneralLedgerAccountTypeText',
    propertyTypes: [ 'sap.vdm.gfn:GLAccountType', 'sap.vdm.gfn:Language' ]
  }
]
@EntityRelationship.entityType : 'sap.vdm.sont:GeneralLedgerAccountTypeText'
@ObjectModel.representativeKey : 'GLAccountType'
@ObjectModel.tenantWideUniqueName : 'GeneralLedgerAccountTypeText'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #LANGUAGE_DEPENDENT_TEXT,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #M
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountTypeText {
  @EndUserText.label : 'Lang.'
  @Semantics.language : true
  @EndUserText.heading : 'Ln'
  @EndUserText.quickInfo : 'Language Key'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:Language'
  key Language : String(2);
  @EndUserText.label : 'Lower Value'
  @EndUserText.heading : 'Fixed'
  @EndUserText.quickInfo : 'Values for Domains: Single Value/Lower Limit'
  @DataIntegration.dataUnavailable : true
  DomainValue : String(10);
  @EndUserText.label : 'Lower Value'
  @EndUserText.heading : 'Fixed'
  @EndUserText.quickInfo : 'Values for Domains: Single Value/Lower Limit'
  @ObjectModel.text.element : [ 'GLAccountTypeName' ]
  @EntityRelationship.reference : [
    {
      name: '_GLAccountType',
      referencedEntityType: 'sap.vdm.sont:GeneralLedgerAccountType',
      referencedPropertyType: 'sap.vdm.gfn:GLAccountType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccountType'
  key GLAccountType : String(10);
  @Semantics.text : true
  @EndUserText.label : 'Short Description'
  @EndUserText.heading : 'Short Description'
  @EndUserText.quickInfo : 'Short Text for Fixed Values'
  @DataIntegration.dataUnavailable : true
  GLAccountTypeName : String(60);
};

@EndUserText.label : 'General Ledger Account Hierarchy'
@ObjectModel.compositionRoot : true
@EntityRelationship.entityType : 'sap.vdm.sont:GeneralLedgerAccountHierarchy'
@ObjectModel.representativeKey : 'GLAccountHierarchy'
@EntityRelationship.temporalIds : [
  {
    temporalType: #DATE,
    propertyTypes: [ 'sap.vdm.gfn:GLAccountHierarchy' ],
    temporalIntervalType: #CLOSED_CLOSED,
    temporalIntervalEndProperty: 'ValidityEndDate',
    temporalIntervalStartProperty: 'ValidityStartDate'
  }
]
@ObjectModel.tenantWideUniqueName : 'GeneralLedgerAccountHierarchy'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #SEARCHABLE_ENTITY,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #L
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountHierarchy {
  @DataIntegration.dataUnavailable : true
  _Text : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].GLAccountHierarchyText on GLAccountHierarchy = _Text.GLAccountHierarchy and ValidityEndDate = _Text.ValidityEndDate;
  @EndUserText.label : 'Hierarchy Type'
  @EndUserText.heading : 'Hierarchy Type'
  @EndUserText.quickInfo : 'Hierarchy Type'
  @DataIntegration.dataUnavailable : true
  HierarchyType : String(4);
  @EndUserText.label : 'Updated At'
  @EndUserText.heading : 'Last Updated At'
  @EndUserText.quickInfo : 'Last Updated At (Timestamp)'
  @DataIntegration.dataUnavailable : true
  LastChangeTime : DateTime;
  @EndUserText.label : 'Chart of Accounts'
  @EndUserText.heading : 'Chart of Accounts'
  @EndUserText.quickInfo : 'Chart of Accounts'
  @EntityRelationship.reference : [
    {
      name: '_ChartOfAccounts',
      referencedEntityType: 'sap.vdm.sont:ChartOfAccounts',
      referencedPropertyType: 'sap.vdm.gfn:ChartOfAccounts'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @ObjectModel.foreignKey.association : '_ChartOfAccounts'
  ChartOfAccounts : String(4);
  @EndUserText.label : 'Valid To'
  @EndUserText.heading : 'to'
  @EndUserText.quickInfo : 'Valid To Date'
  @Semantics.businessDate.to : true
  @DataIntegration.dataUnavailable : true
  key ValidityEndDate : Date;
  @EndUserText.label : 'Hierarchy ID'
  @EndUserText.heading : 'Hierarchy ID'
  @EndUserText.quickInfo : 'Hierarchy ID'
  @DataIntegration.dataUnavailable : true
  HierarchyShortID : String(20);
  @DataIntegration.dataUnavailable : true
  _ChartOfAccounts : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].ChartOfAccounts on ChartOfAccounts = _ChartOfAccounts.ChartOfAccounts;
  @EndUserText.label : 'Last Changed By'
  @EndUserText.heading : 'Changed By'
  @EndUserText.quickInfo : 'Last Changed By'
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  LastChangedByUser : String(12);
  @EndUserText.label : 'Sem. Tag Assigned'
  @EndUserText.heading : 'Semantic Tag Assigned'
  @EndUserText.quickInfo : 'Indicator: Semantic Tag Assigned'
  @DataIntegration.dataUnavailable : true
  SemanticTagIsUsed : Boolean;
  @EndUserText.label : 'Valid From'
  @EndUserText.heading : 'Valid From'
  @EndUserText.quickInfo : 'Valid-From Date'
  @Semantics.businessDate.from : true
  @DataIntegration.dataUnavailable : true
  ValidityStartDate : Date;
  @EndUserText.label : 'G/L Account Hierarchy'
  @EndUserText.heading : ''
  @EndUserText.quickInfo : 'G/L Account Hierarchy'
  @ObjectModel.text.association : '_Text'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccountHierarchy'
  key GLAccountHierarchy : String(42);
  @EndUserText.label : 'Updated At'
  @EndUserText.heading : 'Last Updated At'
  @EndUserText.quickInfo : 'Last Updated At (Timestamp)'
  @DataIntegration.dataUnavailable : true
  LastChangeDateTime : DateTime;
  @EndUserText.label : 'Functional Area'
  @EndUserText.heading : 'Functional Area Enabled'
  @EndUserText.quickInfo : 'Indicator: Functional Area Enabled'
  @DataIntegration.dataUnavailable : true
  FunctionalAreaIsUsed : Boolean;
};

@EndUserText.label : 'General Ledger Account in Company Code'
@ObjectModel.compositionRoot : true
@EntityRelationship.entityIds : [
  { propertyTypes: [ 'sap.vdm.gfn:CompanyCode', 'sap.vdm.gfn:GLAccount' ] }
]
@EntityRelationship.entityType : 'sap.vdm.sont:OperatingGeneralLedgerAccount'
@ObjectModel.representativeKey : 'GLAccount'
@ObjectModel.tenantWideUniqueName : 'OperatingGeneralLedgerAccount'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #SEARCHABLE_ENTITY,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #M
@EntityRelationship.compositeReferences : [
  {
    name: '_TaxCategory',
    referencedEntityType: 'sap.vdm.sont:TaxCategory',
    referencedPropertyTypes: [
      {
        localPropertyName: 'CompanyCode',
        referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
      },
      {
        localPropertyName: 'TaxCategory',
        referencedPropertyType: 'sap.vdm.gfn:TaxCategory'
      }
    ]
  }
]
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].OperatingGeneralLedgerAccount {
  @EndUserText.label : 'G/L Account'
  @EndUserText.heading : 'G/L Acct'
  @EndUserText.quickInfo : 'G/L Account Number'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccount'
  key GLAccount : String(10);
  @EndUserText.label : 'House Bank'
  @EndUserText.heading : 'House Bk'
  @EndUserText.quickInfo : 'Short Key for a House Bank'
  @DataIntegration.dataUnavailable : true
  HouseBank : String(5);
  @EndUserText.label : 'Company Code'
  @EndUserText.heading : 'CoCd'
  @EndUserText.quickInfo : 'Company Code'
  @EntityRelationship.reference : [
    {
      name: '_CompanyCode',
      referencedEntityType: 'sap.vdm.sont:CompanyCode',
      referencedPropertyType: 'sap.vdm.gfn:CompanyCode'
    }
  ]
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:CompanyCode'
  key CompanyCode : String(4);
  @EndUserText.label : 'Tax Category'
  @EndUserText.heading : 'Tx'
  @EndUserText.quickInfo : 'Tax Category in Account Master Record'
  @DataIntegration.dataUnavailable : true
  TaxCategory : String(2);
  @EndUserText.label : 'Created On'
  @EndUserText.heading : 'Date'
  @EndUserText.quickInfo : 'Record Created On'
  @DataIntegration.dataUnavailable : true
  CreationDate : Date;
  @EndUserText.label : 'Created by'
  @EndUserText.heading : 'Created by'
  @EndUserText.quickInfo : 'Name of Person who Created the Object'
  @DataIntegration.dataUnavailable : true
  @PersonalData.isPotentiallyPersonal : true
  CreatedByUser : String(12);
  @EndUserText.label : 'Planning Level'
  @EndUserText.heading : 'Level'
  @EndUserText.quickInfo : 'Planning Level'
  @DataIntegration.dataUnavailable : true
  PlanningLevel : String(2);
  @EndUserText.label : 'Commitment item'
  @EndUserText.heading : 'Commitment itm'
  @EndUserText.quickInfo : 'Commitment Item'
  @DataIntegration.dataUnavailable : true
  CommitmentItem : String(14);
  @EndUserText.label : 'Valuation Group'
  @EndUserText.heading : 'Valuation Group'
  @EndUserText.quickInfo : 'Valuation Group'
  @DataIntegration.dataUnavailable : true
  ValuationGroup : String(10);
  @EndUserText.label : 'Clerk Abbrev.'
  @EndUserText.heading : 'Clerk Abbrev.'
  @EndUserText.quickInfo : 'Accounting Clerk Abbreviation'
  @DataIntegration.dataUnavailable : true
  AccountingClerk : String(2);
  @EndUserText.label : 'Field status group'
  @EndUserText.heading : 'FStGroup'
  @EndUserText.quickInfo : 'Field status group'
  @DataIntegration.dataUnavailable : true
  FieldStatusGroup : String(4);
  @EndUserText.label : 'Account ID'
  @EndUserText.heading : 'Acct ID'
  @EndUserText.quickInfo : 'ID for Account Details'
  @DataIntegration.dataUnavailable : true
  HouseBankAccount : String(5);
  @EndUserText.label : 'Planning Group'
  @EndUserText.heading : 'Plan. Group'
  @EndUserText.quickInfo : 'Planning Group'
  @DataIntegration.dataUnavailable : true
  CashPlanningGroup : String(10);
  @EndUserText.label : 'Account Currency'
  @EndUserText.heading : 'Crcy'
  @EndUserText.quickInfo : 'Account Currency'
  @DataIntegration.dataUnavailable : true
  GLAccountCurrency : String(5);
  @EndUserText.label : 'Rel.Cash Flow'
  @EndUserText.heading : 'C'
  @EndUserText.quickInfo : 'Cash Receipt Account / Cash Disbursement Account'
  @DataIntegration.dataUnavailable : true
  IsCashFlowAccount : Boolean;
  @EndUserText.label : 'OI Management'
  @EndUserText.heading : 'OI Management'
  @EndUserText.quickInfo : 'Indicator: Open Item Management?'
  @DataIntegration.dataUnavailable : true
  IsOpenItemManaged : Boolean;
  @EndUserText.label : 'Pstg w/o tax allowed'
  @EndUserText.heading : ''
  @EndUserText.quickInfo : 'Indicator: Tax code is not a required field'
  @DataIntegration.dataUnavailable : true
  TaxCodeIsRequired : Boolean;
  @EndUserText.label : 'Tolerance Group'
  @EndUserText.heading : 'Tolerance Group'
  @EndUserText.quickInfo : 'Tolerance Group for G/L Accounts'
  @DataIntegration.dataUnavailable : true
  APARToleranceGroup : String(4);
  @EndUserText.label : 'Authorization'
  @EndUserText.heading : 'AuGr'
  @EndUserText.quickInfo : 'Authorization Group'
  @DataIntegration.dataUnavailable : true
  AuthorizationGroup : String(4);
  @EndUserText.label : 'Inflation key'
  @EndUserText.heading : 'Infl. key'
  @EndUserText.quickInfo : 'Inflation Key'
  @DataIntegration.dataUnavailable : true
  GLAcctInflationKey : String(8);
  @EndUserText.label : 'Time Stamp'
  @EndUserText.heading : 'Time Stamp'
  @EndUserText.quickInfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @DataIntegration.dataUnavailable : true
  LastChangeDateTime : DateTime;
  @EndUserText.label : 'Is Managed Ext.'
  @EndUserText.heading : 'Acct Is Managed in Ext. System'
  @EndUserText.quickInfo : 'Indicator: account managed in external system'
  @DataIntegration.dataUnavailable : true
  IsManagedExternally : Boolean;
  @EndUserText.label : 'Supplement'
  @EndUserText.heading : 'Supplement Auto. Postings'
  @EndUserText.quickInfo : 'Indicator: Supplement for Automatic Postings ?'
  @DataIntegration.dataUnavailable : true
  SupplementIsAllowed : Boolean;
  @EndUserText.label : 'Alternative G/L Account'
  @EndUserText.heading : ''
  @EndUserText.quickInfo : 'Alternative G/L Account Number In Company Code'
  @DataIntegration.dataUnavailable : true
  AlternativeGLAccount : String(10);
  @EndUserText.label : 'Commitment Item Short ID'
  @EndUserText.heading : 'Commitment Item Short ID'
  @EndUserText.quickInfo : 'Commitment Item Short ID'
  @DataIntegration.dataUnavailable : true
  CommitmentItemShortID : String(14);
  @EndUserText.label : 'Auto. Posting'
  @EndUserText.heading : 'Post Automat.'
  @EndUserText.quickInfo : 'Indicator: Is Account only Posted to Automatically?'
  @DataIntegration.dataUnavailable : true
  IsAutomaticallyPosted : Boolean;
  @EndUserText.label : 'Balances in LC'
  @EndUserText.heading : 'Balances in LC'
  @EndUserText.quickInfo : 'Indicator: Manage Balances in Local Currency Only'
  @DataIntegration.dataUnavailable : true
  BalanceHasLocalCurrency : Boolean;
  @EndUserText.label : 'Interest Indicator'
  @EndUserText.heading : 'Interest Indicator'
  @EndUserText.quickInfo : 'Interest Indicator'
  @DataIntegration.dataUnavailable : true
  InterestCalculationCode : String(2);
  @EndUserText.label : 'Last Key Date'
  @EndUserText.heading : 'Key Date Lst Int.Calc'
  @EndUserText.quickInfo : 'Key Date of Last Interest Calculation'
  @DataIntegration.dataUnavailable : true
  InterestCalculationDate : Date;
  @EndUserText.label : 'Last Int. Calc.'
  @EndUserText.heading : 'LastIntCal'
  @EndUserText.quickInfo : 'Date of Last Interest Calculation Run'
  @DataIntegration.dataUnavailable : true
  LastInterestCalcRunDate : Date;
  @EndUserText.label : 'Recovery Indicator'
  @EndUserText.heading : 'RI'
  @EndUserText.quickInfo : 'Recovery Indicator'
  @DataIntegration.dataUnavailable : true
  JointVentureRecoveryCode : String(2);
  @EndUserText.label : 'Line Items'
  @EndUserText.heading : 'Line Item Display Possible'
  @EndUserText.quickInfo : 'Indicator: Can Line Items Be Displayed by Account?'
  @DataIntegration.dataUnavailable : true
  LineItemDisplayIsEnabled : Boolean;
  @EndUserText.label : 'Extended OI Mgmt'
  @EndUserText.heading : 'Extended Open Item Management'
  @EndUserText.quickInfo : 'Extended Open Item Management'
  @DataIntegration.dataUnavailable : true
  IsExtendedOpenItemManaged : Boolean;
  @EndUserText.label : 'Reconcil. ID'
  @EndUserText.heading : 'Reconcil. Acct'
  @EndUserText.quickInfo : 'Account Is Reconciliation Account'
  @EntityRelationship.reference : [
    {
      name: '_Reconciliationaccttype',
      referencedEntityType: 'sap.vdm.sont:Reconciliationaccttype',
      referencedPropertyType: 'sap.vdm.gfn:ReconciliationAccountType'
    }
  ]
  @DataIntegration.dataUnavailable : true
  ReconciliationAccountType : String(1) enum {
    values;
  };
  @EndUserText.label : 'Posting Block'
  @EndUserText.heading : 'Posting Block'
  @EndUserText.quickInfo : 'Indicator: Is Account Blocked for Posting?'
  @DataIntegration.dataUnavailable : true
  AccountIsBlockedForPosting : Boolean;
  @EndUserText.label : 'Deletion Flag'
  @EndUserText.heading : 'DelFl'
  @EndUserText.quickInfo : 'Indicator: Account Marked for Deletion?'
  @DataIntegration.dataUnavailable : true
  AccountIsMarkedForDeletion : Boolean;
  @EndUserText.label : 'Int.Calc.Freq.'
  @EndUserText.heading : 'Interest Calc. Frequency'
  @EndUserText.quickInfo : 'Interest Calculation Frequency in Months'
  @DataIntegration.dataUnavailable : true
  IntrstCalcFrequencyInMonths : String(2) enum {
    values;
  };
  @EndUserText.label : 'MCA Key'
  @EndUserText.heading : 'MCA Key'
  @EndUserText.quickInfo : 'MCA Key'
  @DataIntegration.dataUnavailable : true
  MultiCurrencyAccountingCode : String(5);
  @EndUserText.label : 'OI Mgmt by LedgerGrp'
  @EndUserText.heading : 'Open Item Management by Ledger Group'
  @EndUserText.quickInfo : 'Open Item Management by Ledger Group'
  @DataIntegration.dataUnavailable : true
  ClearingIsLedgerGroupSpecific : Boolean;
  @EndUserText.label : 'Sort key'
  @EndUserText.heading : 'Sort'
  @EndUserText.quickInfo : 'Key for sorting according to assignment numbers'
  @DataIntegration.dataUnavailable : true
  AcctgDocItmDisplaySequenceRule : String(3);
  @EndUserText.label : 'E/R Diff. Key'
  @EndUserText.heading : 'E/R Diff. Key'
  @EndUserText.quickInfo : 'Key for Exchange Rate Differences in Foreign Currency Accts'
  @DataIntegration.dataUnavailable : true
  ExchRateDifferencesAccountDetn : String(4);
  @EndUserText.label : 'Rec.Act Ready'
  @EndUserText.heading : 'Recon. Acct Ready for Input'
  @EndUserText.quickInfo : 'Indicator: Reconcil.Acct Ready for Input at Time of Posting?'
  @DataIntegration.dataUnavailable : true
  ReconciliationAcctIsChangeable : Boolean;
};

@EndUserText.label : 'Financial Statement Hierarchy Node - Text'
@EntityRelationship.entityType : 'sap.vdm.sont:FinancialStatementHierNodeText'
@ObjectModel.representativeKey : 'HierarchyNode'
@EntityRelationship.temporalIds : [
  {
    temporalType: #DATE,
    propertyTypes: [
      'sap.vdm.gfn:FinancialStatementHierarchy',
      'sap.vdm.gfn:HierarchyNode',
      'sap.vdm.gfn:Language'
    ],
    temporalIntervalType: #CLOSED_CLOSED,
    temporalIntervalEndProperty: 'ValidityEndDate',
    temporalIntervalStartProperty: 'ValidityStartDate'
  }
]
@ObjectModel.tenantWideUniqueName : 'FinancialStatementHierNodeText'
@ObjectModel.supportedCapabilities : [
  #CDS_MODELING_DATA_SOURCE,
  #CDS_MODELING_ASSOCIATION_TARGET,
  #LANGUAGE_DEPENDENT_TEXT,
  #EXTRACTION_DATA_SOURCE
]
@ObjectModel.usageType.sizeCategory : #L
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].FinancialStatementHierNodeText {
  @EndUserText.label : 'Language Key'
  @Semantics.language : true
  @EndUserText.heading : 'Language'
  @EndUserText.quickInfo : 'Language Key'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:Language'
  key Language : String(2);
  @DataIntegration.dataUnavailable : true
  _Hierarchy : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountHierarchy on FinancialStatementHierarchy = _Hierarchy.GLAccountHierarchy;
  @EndUserText.label : 'Node'
  @EndUserText.heading : 'Hierarchy Node'
  @EndUserText.quickInfo : 'Hierarchy node'
  @ObjectModel.text.element : [ 'HierarchyNodeText' ]
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:HierarchyNode'
  key HierarchyNode : String(50);
  @EndUserText.label : 'Valid To'
  @EndUserText.heading : 'to'
  @EndUserText.quickInfo : 'Valid To Date'
  @Semantics.businessDate.to : true
  @DataIntegration.dataUnavailable : true
  key ValidityEndDate : Date;
  @Semantics.text : true
  @EndUserText.label : 'Description'
  @EndUserText.heading : 'Node Description'
  @EndUserText.quickInfo : 'Hierarchy node description'
  @DataIntegration.dataUnavailable : true
  HierarchyNodeText : String(50);
  @EndUserText.label : 'Valid From'
  @EndUserText.heading : 'Valid From'
  @EndUserText.quickInfo : 'Valid-From Date'
  @Semantics.businessDate.from : true
  @DataIntegration.dataUnavailable : true
  ValidityStartDate : Date;
  @Semantics.text : true
  @DataIntegration.dataUnavailable : true
  HierarchyNodeShortText : String(20);
  @EndUserText.label : 'Node for Extraction'
  @EndUserText.heading : 'Hierarchy Node for Extraction'
  @EndUserText.quickInfo : 'Hierarchy Node for Extraction'
  @DataIntegration.dataUnavailable : true
  FinStmntNodeFormattedID : String(32);
  @EndUserText.label : 'Hierarchy ID'
  @EndUserText.heading : 'Hierarchy ID'
  @EndUserText.quickInfo : 'Hierarchy ID'
  @DataIntegration.dataUnavailable : true
  @EntityRelationship.propertyType : 'sap.vdm.gfn:FinancialStatementHierarchy'
  @ObjectModel.foreignKey.association : '_Hierarchy'
  key FinancialStatementHierarchy : String(42);
};

@EndUserText.label : 'G/L Account HierNode By Semantic Tag'
@ObjectModel.modelingPattern : #ANALYTICAL_DIMENSION
@EntityRelationship.entityIds : [
  {
    name: 'GLAccountHierNodeBySemanticTag',
    propertyTypes: [
      'sap.vdm.gfn:GLAccountHierarchy',
      'sap.vdm.gfn:HierarchyNode',
      'sap.vdm.gfn:SemanticTag'
    ]
  }
]
@EntityRelationship.entityType : 'sap.vdm.sont:GLAccountHierNodeBySemanticTag'
@ObjectModel.representativeKey : 'HierarchyNode'
@ObjectModel.tenantWideUniqueName : 'GLAccountHierNodeBySemanticTag'
@ObjectModel.supportedCapabilities : [
  #ANALYTICAL_DIMENSION,
  #EXTRACTION_DATA_SOURCE,
  #CDS_MODELING_ASSOCIATION_TARGET
]
@ObjectModel.usageType.sizeCategory : #S
entity sap.![s4com:apiResource:GeneralLedgerAccount:v1].GLAccountHierNodeBySemanticTag {
  _Hierarchy : Association to many sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountHierarchy on GLAccountHierarchy = _Hierarchy.GLAccountHierarchy;
  @EndUserText.label : 'Semantic Tag'
  @EndUserText.heading : 'Semantic Tag'
  @EndUserText.quickInfo : 'Semantic Tag of a Hierarchy Node'
  @EntityRelationship.propertyType : 'sap.vdm.gfn:SemanticTag'
  @ObjectModel.foreignKey.association : '_SemanticTag'
  key SemanticTag : String(10);
  _SemanticTag : Association to one sap.![s4com:apiResource:GeneralLedgerAccount:v1].SemanticTag on SemanticTag = _SemanticTag.SemanticTag;
  @EndUserText.label : 'Node'
  @EndUserText.heading : 'Hierarchy Node'
  @EndUserText.quickInfo : 'Hierarchy node'
  @EntityRelationship.propertyType : 'sap.vdm.gfn:HierarchyNode'
  key HierarchyNode : String(50);
  @EndUserText.label : 'Field Name'
  @EndUserText.heading : 'Field Name'
  @EndUserText.quickInfo : 'Field Name'
  HierarchyNodeType : String(30);
  @EndUserText.label : 'Hierarchy ID'
  @EndUserText.heading : 'Hierarchy ID'
  @EndUserText.quickInfo : 'Hierarchy ID'
  @EntityRelationship.propertyType : 'sap.vdm.gfn:GLAccountHierarchy'
  @ObjectModel.foreignKey.association : '_Hierarchy'
  key GLAccountHierarchy : String(42);
};


@EndUserText.label : 'Working Capital Analytics Cube'
define view WorkingCapitalCube as select from sap.![s4com:apiResource:GeneralLedgerAccount:v1].GeneralLedgerAccountLineItem as I
{
  @Analytics.dimension : true
  key I.CompanyCode                                                                          as CompanyCode,
  @Analytics.dimension : true
  key I.FiscalYear                                                                           as FiscalYear,
  @Analytics.dimension : true
  key I.FiscalYearPeriod                                                                     as FiscalYearPeriod,
  @Analytics.dimension : true
      cast(CASE
        WHEN I.FinancialAccountType = 'D' THEN 'Customer'
        WHEN I.FinancialAccountType = 'K' THEN 'Supplier'
        ELSE I.FinancialAccountType
      END as String(20))                                                                as FinancialAccountType,
  @Analytics.dimension : true
  key I.GLAccount                                                                            as GLAccount,
  @Analytics.dimension : true
  key I.Customer                                                                             as Customer,
  @Analytics.dimension : true
  key I.Supplier                                                                             as Supplier,
  @Analytics.dimension : true
  key I.ProfitCenter                                                                         as ProfitCenter,
  @Analytics.dimension : true
  key I.CostCenter                                                                           as CostCenter,
  @Analytics.dimension : true
  key I.CompanyCodeCurrency                                                                  as CompanyCodeCurrency,
  @Analytics.dimension : true
  key I.TransactionCurrency                                                                  as TransactionCurrency,
  @Analytics.dimension : true
  key I.DebitCreditCode                                                                      as DebitCreditCode,
  @Analytics.dimension : true
      I.PostingDate                                                                          as PostingDate,
  @Analytics.dimension : true
      I.NetDueDate                                                                           as NetDueDate,
  @Analytics.dimension : true
      I.ClearingDate                                                                         as ClearingDate,
  @Analytics.dimension : true
      I.AccountingDocumentType                                                               as AccountingDocumentType,
  @Analytics.dimension : true
      I.ChartOfAccounts                                                                      as ChartOfAccounts,
  @Analytics.dimension : true
      cast(CASE
        WHEN I.NetDueDate IS NULL THEN 'Unknown'
        WHEN I.NetDueDate >= I.PostingDate THEN 'Current'
        WHEN cast((I.PostingDate - I.NetDueDate) as Integer) <= 30 THEN '1-30 days overdue'
        WHEN cast((I.PostingDate - I.NetDueDate) as Integer) <= 60 THEN '31-60 days overdue'
        WHEN cast((I.PostingDate - I.NetDueDate) as Integer) <= 90 THEN '61-90 days overdue'
        ELSE '90+ days overdue'
      END as String(30))                                                                     as AgingBucket,
      cast(SUM(I.AmountInCompanyCodeCurrency) as Decimal(34,4))                             as TotalAmountInCompanyCodeCurrency,
      cast(SUM(CASE WHEN I.AmountInCompanyCodeCurrency IS NOT NULL THEN 1 ELSE 0 END) as Integer) as AmountInCompanyCodeCurrencyCount,
      cast(SUM(I.AmountInTransactionCurrency) as Decimal(34,4))                             as TotalAmountInTransactionCurrency,
      cast(SUM(CASE WHEN I.AmountInTransactionCurrency IS NOT NULL THEN 1 ELSE 0 END) as Integer) as AmountInTransactionCurrencyCount,
      cast(COUNT(*) as Integer)                                                              as LineItemCount
}
WHERE I.IsCommitment = false
GROUP BY
  I.CompanyCode,
  I.FiscalYear,
  I.FiscalYearPeriod,
  CASE
    WHEN I.FinancialAccountType = 'D' THEN 'Customer'
    WHEN I.FinancialAccountType = 'K' THEN 'Supplier'
    ELSE I.FinancialAccountType
  END,
  I.GLAccount,
  I.Customer,
  I.Supplier,
  I.ProfitCenter,
  I.CostCenter,
  I.CompanyCodeCurrency,
  I.TransactionCurrency,
  I.DebitCreditCode,
  I.PostingDate,
  I.NetDueDate,
  I.ClearingDate,
  I.AccountingDocumentType,
  I.ChartOfAccounts,
  CASE
    WHEN I.NetDueDate IS NULL THEN 'Unknown'
    WHEN I.NetDueDate >= I.PostingDate THEN 'Current'
    WHEN cast((I.PostingDate - I.NetDueDate) as Integer) <= 30 THEN '1-30 days overdue'
    WHEN cast((I.PostingDate - I.NetDueDate) as Integer) <= 60 THEN '31-60 days overdue'
    WHEN cast((I.PostingDate - I.NetDueDate) as Integer) <= 90 THEN '61-90 days overdue'
    ELSE '90+ days overdue'
  END;
