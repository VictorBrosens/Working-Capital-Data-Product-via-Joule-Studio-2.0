# Working Capital Data Product

A comprehensive, governed Working Capital data product covering Accounts Payable (DPO), Accounts Receivable (DSO, aging, collections), and Cash Conversion Cycle — enriched with full master data — as a foundation for working capital planning in SAP Analytics Cloud.

## Business Challenge

Build a reusable Working Capital data product that consolidates AP (Days Payable Outstanding), AR (Days Sales Outstanding, aging, overdue analysis), and Cash Conversion Cycle metrics, together with required master data such as company code, cost center, profit center, customer, and supplier including texts, attributes, and hierarchies. The data product will be consumed by SAP Analytics Cloud for working capital planning and analysis, primarily by Accounts Payable and Accounts Receivable teams.

## Business Goals & Success Criteria

| Metric | Baseline | Target | Timeline | Process / Capability | Source |
|--------|----------|--------|----------|----------------------|--------|
| Overdue AR amount | — | 20% reduction | 12 months | AR Collections Management | user |

## Key Milestones

- Data product built and validated against source data from SAP S/4HANA Cloud Private Edition
- Data product connected to SAP Analytics Cloud working capital planning model
- AP and AR teams can generate DSO, DPO, AR aging, and CCC reports from the data product

## Business Architecture (RBA)

### End-to-End Process

Finance (E2E)

### Process Hierarchy

```
Finance (E2E)
└── Invoice to Cash (generic)
    └── Process accounts receivables and collect payment (BPS-366)
        └── Process accounts receivable (AR)
└── Invoice to Pay (generic)
    └── Process accounts payables and release payment (BPS-334)
        └── Manage payables financing
        └── Process accounts payable (AP)
└── Manage Treasury (generic)
    └── Manage payment, cash and risk (BPS-414)
        └── Manage cash and working capital
```

### Summary

The working capital management challenge maps to three Finance E2E sub-processes: Invoice to Cash (AR collections, DSO), Invoice to Pay (AP, DPO, payables financing), and Manage Treasury (cash and working capital management). SAP S/4HANA Cloud Private Edition covers all three sub-processes as the primary system of record, with SAP Analytics Cloud as the optional analytics and planning layer.

## Fit Gap Analysis

| Requirement (business) | Standard asset(s) found | API ORD ID | MCP Server ORD ID | MCP Server Version | Webhook API ORD ID | Data Product ORD ID | Gap? | Notes / assumptions |
|------------------------|------------------------|------------|-------------------|--------------------|--------------------|---------------------|------|---------------------|
| AR transactions (DSO, aging, overdue) | SAP S/4HANA Cloud Private Edition – Open Item Management, Collections Management, Financial Analytics | — | — | — | — | `sap.s4com:dataProduct:EntryViewJournalEntry:v1` | No | Journal Entry is the primary AR ledger source |
| Customer invoice data (billing) | SAP S/4HANA Cloud Private Edition – Open Item Management, Settlement Management | — | — | — | — | `sap.s4com:dataProduct:BillingDocument:v1` | No | Billing Document covers customer invoices and credit/debit memos |
| AP transactions (DPO, payment cycles) | SAP S/4HANA Cloud Private Edition – Payment Processing, Open Item Management | — | — | — | — | `sap.s4com:dataProduct:SupplierInvoice:v1` | No | Supplier Invoice covers AP payables lifecycle |
| Cash Conversion Cycle calculation | SAP S/4HANA Cloud Private Edition – Cash and Liquidity Management, Treasury Analytics | — | — | — | — | `sap.s4com:dataProduct:EntryViewJournalEntry:v1` | No | CCC derived from DSO + DPO from journal entries |
| Company Code master data | SAP S/4HANA Cloud Private Edition | — | — | — | — | `sap.s4com:dataProduct:CompanyCode:v1` | No | Active data product available |
| Profit Center master data (with hierarchy) | SAP S/4HANA Cloud Private Edition | — | — | — | — | `sap.s4com:dataProduct:ProfitCenter:v1` | No | Active data product with hierarchy support |
| Cost Center master data | SAP S/4HANA Cloud Private Edition | — | — | — | — | `sap.s4com.afc:dataProduct:CostCenter:v1` | No | Available via AFC namespace; inactive status — may need verification |
| Customer master data (with texts/attributes) | SAP S/4HANA Cloud Private Edition | — | — | — | — | `sap.s4com:dataProduct:Customer:v1` | No | Active data product |
| Supplier master data (with texts/attributes) | SAP S/4HANA Cloud Private Edition | — | — | — | — | `sap.s4com:dataProduct:Supplier:v1` | No | Active data product |
| General Ledger Account master data | SAP S/4HANA Cloud Private Edition | — | — | — | — | `sap.s4com:dataProduct:GeneralLedgerAccount:v1` | No | Active data product |
| SAC working capital planning consumption | SAP Analytics Cloud – Financial Analytics, Treasury Analytics | — | — | — | — | — | No | SAC consumes via DPQuery; no custom integration needed |

### Key findings

- No existing data product covers the full working capital scope (AP + AR + CCC + master data) — a new derived data product must be created.
- All required transactional source data products (Entry View Journal Entry, Supplier Invoice, Billing Document) are **active** in the `sap.s4com` namespace on SAP S/4HANA Cloud Private Edition.
- All required master data products (Company Code, Profit Center, Customer, Supplier, General Ledger Account) are **active**.
- Cost Center data product exists in the `sap.s4com.afc` namespace with inactive status — this should be confirmed before use; the standard `sap.s4com:dataProduct:CostCenter:v1` is also available.
- Data product consumption by SAP Analytics Cloud is via DPQuery — no API or MCP server integration is required.
- Inventory data (Days Inventory Outstanding) was explicitly excluded; the CCC will be calculated from DSO + DPO only.

## Recommendations

### Derived Working Capital Data Product

#### Executive Summary

New CDS-derived data product combining AP, AR, and master data from S/4HANA

#### Recommended Solution

Create a new derived data product built via CDS transformation over the following confirmed source data products from SAP S/4HANA Cloud Private Edition:

**Transactional sources:**
- `sap.s4com:dataProduct:EntryViewJournalEntry:v1` — AR and AP journal entries (DSO, DPO, CCC calculations)
- `sap.s4com:dataProduct:BillingDocument:v1` — Customer invoices driving AR postings
- `sap.s4com:dataProduct:SupplierInvoice:v1` — Supplier invoices driving AP postings

**Master data sources:**
- `sap.s4com:dataProduct:CompanyCode:v1`
- `sap.s4com:dataProduct:ProfitCenter:v1`
- `sap.s4com:dataProduct:Customer:v1`
- `sap.s4com:dataProduct:Supplier:v1`
- `sap.s4com:dataProduct:GeneralLedgerAccount:v1`

The derived data product will expose:
- AR open items with aging buckets (current, 30, 60, 90+ days)
- DSO (Days Sales Outstanding) calculated metric
- AP open items with payment cycle tracking
- DPO (Days Payable Outstanding) calculated metric
- CCC (Cash Conversion Cycle = DSO − DPO) derived metric
- Full master data context: company code, profit center, customer, supplier, GL account — including texts and hierarchies

The data product will be consumed by SAP Analytics Cloud via DPQuery for working capital planning and reporting.

#### Problem Statement

AP and AR teams lack a single, governed data asset that combines payables, receivables, and cash cycle metrics with the required master data dimensions for planning in SAP Analytics Cloud. Current analysis relies on fragmented reports from individual source systems without a unified analytical view.

#### Affected User Roles

- Accounts Payable teams
- Accounts Receivable teams
- Finance controllers (secondary)

#### Important factors

##### Single source of truth for working capital metrics

Combining AP, AR, and master data into one governed data product eliminates fragmented reporting across multiple source systems and enables consistent KPI definitions (DSO, DPO, CCC) organization-wide.

##### Ready for SAP Analytics Cloud planning

The data product is designed to be consumed directly by SAC via DPQuery, enabling immediate use in financial planning models without additional integration effort.

##### Active source data products available

All three primary transactional source data products are active and available in the `sap.s4com` namespace — this significantly reduces implementation risk.

#### Potential risks

##### Cost Center data product status

The cost center data product (`sap.s4com.afc:dataProduct:CostCenter:v1` and `sap.s4com:dataProduct:CostCenter:v1`) shows inactive status. If cost center is required as a dimension, this should be verified before proceeding to specification.

##### CCC completeness

Days Inventory Outstanding was excluded from scope. The CCC derived metric (DSO − DPO) will be a simplified version. This is acceptable for AP/AR-focused planning but should be noted for future enrichment.

#### Recommended solution category

Data Product

#### Intent fit
92%
