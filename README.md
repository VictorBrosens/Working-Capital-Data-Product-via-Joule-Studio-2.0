# Working Capital Data Product

A derived analytical data product that consolidates Accounts Payable (AP) and Accounts Receivable (AR) transactional data from SAP S/4HANA Cloud Private Edition with master data dimensions, exposing pre-calculated working capital KPIs for planning in SAP Analytics Cloud.

---

## What It Does

This data product gives AP and AR teams a single, governed source of working capital data — eliminating the need to manually reconcile ERP exports before planning. It exposes:

| Metric | Description |
|---|---|
| **AR Open Items** | Customer receivables grouped by aging bucket (Current / 1–30 / 31–60 / 61–90 / 90+ days overdue) |
| **AP Open Items** | Supplier payables grouped by net due date and clearing date |
| **Days Sales Outstanding (DSO)** | Pre-calculable from AR amounts and posting dates |
| **Days Payable Outstanding (DPO)** | Pre-calculable from AP amounts and net due dates |
| **Cash Conversion Cycle (CCC)** | Derived as DSO − DPO |

---

## Business Goal

> Reduce overdue AR by **20% within 12 months** through better visibility and planning in SAP Analytics Cloud.

**Target users:** Accounts Payable Specialists · Accounts Receivable Specialists · Finance Controllers

---

## Source Data Products

All sources are active SAP S/4HANA Cloud Private Edition data products:

| Data Product | ORD ID | Purpose |
|---|---|---|
| Entry View Journal Entry | `sap.s4com:dataProduct:EntryViewJournalEntry:v1` | Primary AR/AP ledger source |
| Billing Document | `sap.s4com:dataProduct:BillingDocument:v1` | Customer invoice data |
| Supplier Invoice | `sap.s4com:dataProduct:SupplierInvoice:v1` | Supplier invoice data |
| Company Code | `sap.s4com:dataProduct:CompanyCode:v1` | Master data dimension |
| Profit Center | `sap.s4com:dataProduct:ProfitCenter:v1` | Master data dimension |
| Customer | `sap.s4com:dataProduct:Customer:v1` | Master data dimension |
| Supplier | `sap.s4com:dataProduct:Supplier:v1` | Master data dimension |
| General Ledger Account | `sap.s4com:dataProduct:GeneralLedgerAccount:v1` | Master data dimension |

---

## Key Dimensions

| Dimension | Description |
|---|---|
| `CompanyCode` | Legal entity |
| `FiscalYearPeriod` | Combined fiscal year and period (YYYY/PPP) |
| `FinancialAccountType` | `Customer` (AR) or `Supplier` (AP) |
| `Customer` | Customer number |
| `Supplier` | Supplier number |
| `ProfitCenter` | Profit center |
| `CostCenter` | Cost center |
| `GLAccount` | General ledger account |
| `AgingBucket` | Current / 1–30 / 31–60 / 61–90 / 90+ days overdue |
| `NetDueDate` | Payment due date |
| `ClearingDate` | Date the item was cleared |
| `CompanyCodeCurrency` | Currency of the company code |
| `TransactionCurrency` | Original transaction currency |

## Key Measures

| Measure | Description |
|---|---|
| `TotalAmountInCompanyCodeCurrency` | Aggregated amount in company code currency |
| `TotalAmountInTransactionCurrency` | Aggregated amount in transaction currency |
| `LineItemCount` | Number of journal entry line items |

---

## Solution Files

```
assets/
└── working-capital-data-product/
    ├── WorkingCapital.dpd      ← Data product interop definition (deploy this)
    ├── transformation.cds      ← CDS cube transformation
    └── asset.yaml              ← Asset descriptor with source dependencies
solution.yaml                   ← Solution manifest
intent.md                       ← Intent analysis document
product-requirements-document.md ← Product requirements document
```

---

## Consumption

This data product is consumed by **SAP Analytics Cloud** via **DPQuery**. No additional integration is required — connect it directly to an SAC planning model or story.

---

## Deployment

The `WorkingCapital.dpd` file must be registered in **SAP Business Data Cloud** by your BDC platform administrator. The file is located at:

```
assets/working-capital-data-product/WorkingCapital.dpd
```

Hand this file to your BDC administrator or SAP account team for registration into your BDC formation. Once registered, the data product will be available for activation in the BDC Cockpit and consumption from SAP Analytics Cloud.

---

## Authorization

Authorization policies (AMS) are applied to 18 dimensions including:
- Company Code, Profit Center, Cost Center
- Customer, Supplier
- G/L Account, Chart of Accounts
- Posting Date, Net Due Date, Aging Bucket
- Fiscal Year, Fiscal Period

Access is governed through the SAP Authorization Management Service (AMS) — no additional security configuration is required at the data product level.
