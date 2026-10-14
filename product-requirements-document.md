# Product Requirements Document (PRD)

**Title:** Working Capital Data Product  
**Date:** 2026-10-14  
**Owner:** Finance / Data Product Team  
**Solution Category:** Data Product

---

## Product Purpose & Value Proposition

**Elevator Pitch:**  
AP and AR teams today rely on fragmented reports spread across multiple source systems, with no single governed data asset that combines payables, receivables, and cash cycle metrics. This data product changes that — providing a unified, reusable analytical foundation for working capital planning in SAP Analytics Cloud.

**Business Need:**  
Accounts Payable and Accounts Receivable teams lack a consolidated, trusted data source for working capital analysis. DSO, DPO, AR aging, and Cash Conversion Cycle are calculated inconsistently across teams, leading to duplicate effort, conflicting numbers, and delayed insight. A governed data product built directly from SAP S/4HANA source data eliminates this fragmentation.

**Expected Value:**  
- 20% reduction in overdue AR within 12 months, enabled by timely and accurate aging and collections data
- Single source of truth for DSO, DPO, and CCC metrics across the organization
- Reduced time spent reconciling financial data for planning cycles in SAP Analytics Cloud

**Product Objectives (Prioritized):**
1. Expose accurate, governed AR and AP transactional data with aging and payment cycle analysis
2. Provide calculated working capital KPIs (DSO, DPO, CCC) ready for SAP Analytics Cloud consumption
3. Enrich transactional data with master data dimensions (company code, profit center, customer, supplier, GL account) including texts and hierarchies

---

## Business Metrics

| Metric | Baseline | Target | Timeline | Process / Capability | Source |
|--------|----------|--------|----------|----------------------|--------|
| Overdue AR amount | — | 20% reduction | 12 months | AR Collections Management | user |

---

## User Profiles & Personas

### Primary Persona: AR Specialist

Maria is a 34-year-old Accounts Receivable Specialist responsible for managing customer open items, running dunning processes, and reporting on DSO and overdue balances to her finance manager. She works in a medium-to-large enterprise with multiple company codes and runs her analysis weekly in SAP Analytics Cloud. Her biggest frustration is that overdue AR data is scattered — she manually reconciles aging reports from the ERP and exports to Excel before she can plan collection activities. She needs clean, pre-calculated aging buckets and DSO trends available directly in SAP Analytics Cloud without manual preparation.

**Goals:**
- Monitor AR aging and overdue amounts by customer, company code, and profit center
- Track DSO trends over time and compare against targets
- Identify customers driving the most overdue exposure

**Key Tasks:**
- Access AR open items with aging buckets (current, 30, 60, 90+ days) in SAC
- Filter by company code, customer, and profit center
- Drill down from CCC summary to individual AR items

---

### Secondary Persona: AP Specialist

Thomas is a 38-year-old Accounts Payable Specialist who manages supplier invoices, payment runs, and DPO reporting. He works closely with procurement and treasury to ensure payments are made on time while preserving cash. He currently pulls AP data from S/4HANA into Excel to calculate DPO and payment cycle metrics manually. He wants a standardized view of AP open items and payment cycles that he can use without re-building the logic each reporting cycle.

**Goals:**
- Monitor AP open items and pending payment obligations by supplier and company code
- Track DPO against payment terms and targets
- Understand the relationship between AP obligations and CCC

**Key Tasks:**
- Access AP open items with payment due dates and aging in SAC
- View DPO calculated metric by supplier and period
- Compare DPO and DSO side-by-side in CCC analysis

---

### Other User Types

- **Finance Controller**: Consumes consolidated CCC, DSO, and DPO at group/company code level for management reporting
- **Treasury Manager**: Uses CCC trend data for short-term liquidity planning

---

## Goals and Non-Goals

### Goals (In Scope)

- Expose AR open items with aging buckets (current, 30, 60, 90+ days) enriched with customer and company code master data
- Expose AP open items with payment due date tracking enriched with supplier and company code master data
- Provide calculated metrics: DSO, DPO, and Cash Conversion Cycle (CCC = DSO − DPO)
- Include master data dimensions with texts and hierarchies: company code, profit center, customer, supplier, GL account
- Enable consumption of the data product via DPQuery in SAP Analytics Cloud

### Non-Goals (Out of Scope)

- Days Inventory Outstanding (DIO) and inventory-based CCC extension — excluded by design; may be added in a future version
- Direct write-back to SAP S/4HANA from SAC (read-only data product)
- Custom UI or standalone analytics dashboard — consumption is via SAC
- Real-time / near-real-time data; batch refresh aligned to S/4HANA data product replication cadence

---

## Requirements

### Must-Have Requirements

**R1: AR Open Items with Aging**

- **Problem to Solve**: AR teams cannot access pre-calculated aging buckets in SAC; they rebuild them manually from ERP exports.
- **User Story**: As an AR Specialist, I need AR open items categorized into aging buckets (current, 1–30, 31–60, 61–90, 90+ days) so that I can prioritize collection activities without manual data preparation.
- **Acceptance Criteria**:
  - Given an AR open item exists in S/4HANA, when the data product is queried, then the item is returned with its overdue bucket classification and net due amount.
  - Given a customer has multiple open items, when the data product is filtered by customer, then all open items with their aging buckets are returned.
- **Maps to Objective**: Objective 1
- **Priority Rank**: 1

---

**R2: AP Open Items with Payment Due Date Tracking**

- **Problem to Solve**: AP teams manually calculate DPO and payment cycle metrics from ERP exports each reporting cycle.
- **User Story**: As an AP Specialist, I need AP open items with payment due dates and remaining days to due, so that I can monitor payment obligations and avoid late payments without manual data extraction.
- **Acceptance Criteria**:
  - Given a supplier invoice exists in S/4HANA, when the data product is queried, then the invoice is returned with its net due date, payment terms, and days until due.
  - Given payment has been made, the item is no longer returned as open.
- **Maps to Objective**: Objective 1
- **Priority Rank**: 2

---

**R3: DSO Calculated Metric**

- **Problem to Solve**: DSO is calculated inconsistently across teams using different formulas and date ranges.
- **User Story**: As an AR Specialist, I need a standardized DSO metric available in the data product so that I can track and report it consistently across periods and company codes.
- **Acceptance Criteria**:
  - Given AR transaction data and billing data are present, when the data product is consumed, then DSO is returned as a calculated metric using a standard formula (outstanding AR / daily revenue).
  - DSO is filterable by company code, profit center, and period.
- **Maps to Objective**: Objective 2
- **Priority Rank**: 3

---

**R4: DPO Calculated Metric**

- **Problem to Solve**: DPO is rebuilt manually by AP teams each reporting cycle with no consistent definition.
- **User Story**: As an AP Specialist, I need a standardized DPO metric available in the data product so that I can track payment performance and compare it against targets in SAC.
- **Acceptance Criteria**:
  - Given AP transaction data is present, when the data product is consumed, then DPO is returned as a calculated metric using a standard formula (outstanding AP / daily COGS).
  - DPO is filterable by company code, supplier, and period.
- **Maps to Objective**: Objective 2
- **Priority Rank**: 4

---

**R5: Cash Conversion Cycle (CCC) Derived Metric**

- **Problem to Solve**: The CCC is not available in any current system view; it must be assembled manually from DSO and DPO data.
- **User Story**: As a Finance Controller, I need the Cash Conversion Cycle (CCC = DSO − DPO) pre-calculated in the data product so that I can monitor cash efficiency without manual computation.
- **Acceptance Criteria**:
  - Given DSO and DPO are calculated, when the data product is consumed, then CCC = DSO − DPO is exposed as a derived metric.
  - CCC is available at company code level and can be trended over time.
- **Maps to Objective**: Objective 2
- **Priority Rank**: 5

---

**R6: Master Data Enrichment with Texts and Hierarchies**

- **Problem to Solve**: Transactional data without master data context (names, hierarchies) is not usable for SAC planning and reporting.
- **User Story**: As an AR or AP Specialist, I need transactional data enriched with company code, profit center, customer, supplier, and GL account descriptions and hierarchies so that I can filter and group analysis by meaningful dimensions in SAC.
- **Acceptance Criteria**:
  - Given a transactional item exists, when the data product is queried, then company code name, profit center hierarchy, customer name, supplier name, and GL account description are returned as dimensions.
  - Profit center hierarchy nodes are traversable for drill-down in SAC.
- **Maps to Objective**: Objective 3
- **Priority Rank**: 6

---

**R7: SAP Analytics Cloud Consumption via DPQuery**

- **Problem to Solve**: Without a properly exposed data product, SAC models must be built on raw ERP connections, which are fragile and ungovernaned.
- **User Story**: As an SAC planning model developer, I need the data product to be accessible via DPQuery so that I can connect it to SAC planning models without direct ERP integration.
- **Acceptance Criteria**:
  - Given the data product is deployed, when DPQuery is executed against it from SAC, then AR items, AP items, DSO, DPO, and CCC are returned correctly.
- **Maps to Objective**: Objectives 1, 2, 3
- **Priority Rank**: 7

---

## Solution Architecture

**Architecture Overview:**  
A new derived data product is built via CDS (Core Data Services) transformation on SAP S/4HANA Cloud Private Edition. It combines transactional AP and AR data with master data dimensions, exposes pre-calculated KPIs (DSO, DPO, CCC), and is published as a governed data product consumable by SAP Analytics Cloud via DPQuery.

**Key Components:**

- **Derived Data Product** — CDS-based transformation layer producing the Working Capital analytical entity
- **Transactional Source Data Products** — Entry View Journal Entry, Billing Document, Supplier Invoice (all active in `sap.s4com` namespace)
- **Master Data Source Data Products** — Company Code, Profit Center, Customer, Supplier, General Ledger Account
- **SAP Analytics Cloud** — Consumes the data product via DPQuery for planning and reporting

**Source Data Products:**

| Business Name | Data Product ORD ID | Status | Purpose |
|---|---|---|---|
| Entry View Journal Entry | `sap.s4com:dataProduct:EntryViewJournalEntry:v1` | Active | Primary AR and AP ledger — DSO, DPO, CCC |
| Billing Document | `sap.s4com:dataProduct:BillingDocument:v1` | Active | Customer invoices driving AR postings |
| Supplier Invoice | `sap.s4com:dataProduct:SupplierInvoice:v1` | Active | Supplier invoices driving AP postings |
| Company Code | `sap.s4com:dataProduct:CompanyCode:v1` | Active | Organizational master data dimension |
| Profit Center | `sap.s4com:dataProduct:ProfitCenter:v1` | Active | Controlling dimension with hierarchy |
| Customer | `sap.s4com:dataProduct:Customer:v1` | Active | Customer master data with texts |
| Supplier | `sap.s4com:dataProduct:Supplier:v1` | Active | Supplier master data with texts |
| General Ledger Account | `sap.s4com:dataProduct:GeneralLedgerAccount:v1` | Active | GL account dimension with descriptions |

**Integration Points:**

- SAP S/4HANA Cloud Private Edition → Working Capital Data Product: CDS transformation at data product layer
- Working Capital Data Product → SAP Analytics Cloud: DPQuery consumption (read-only)

---

## Milestones

### M1: Data Product Built and Source-Validated

- **Description**: The Working Capital data product is generated and its AR, AP, and master data entities are validated against source data in S/4HANA Cloud Private Edition.
- **Achieved when**: AR open items, AP open items, DSO, DPO, CCC, and all master data dimensions are queryable via DPQuery and match source system values within acceptable tolerance.
- **Log on achievement**: `M1.achieved: Working Capital data product deployed and source validation passed`
- **Log on miss**: `M1.missed: Data product deployment or source validation failed — review CDS entity mappings`

---

### M2: Connected to SAP Analytics Cloud

- **Description**: The data product is connected to an SAP Analytics Cloud working capital planning model via DPQuery.
- **Achieved when**: SAC model successfully queries AR items, AP items, DSO, DPO, and CCC from the data product and data renders correctly in at least one SAC story.
- **Log on achievement**: `M2.achieved: SAC working capital planning model connected to data product via DPQuery`
- **Log on miss**: `M2.missed: SAC connection to data product not established — check DPQuery configuration and data product publication status`

---

### M3: AP/AR Teams Generating Reports

- **Description**: AP and AR teams are actively using SAC to generate DSO, DPO, AR aging, and CCC reports from the data product.
- **Achieved when**: At least one AR aging report and one DPO trend report are operational in SAC and used by AP/AR teams in a regular reporting cycle.
- **Log on achievement**: `M3.achieved: AP/AR teams generating working capital reports from data product in SAC`
- **Log on miss**: `M3.missed: Teams not yet using SAC reports — assess adoption blockers`

---

## Risks, Assumptions, and Dependencies

### Risks

- **Cost Center data product inactive**: The Cost Center data product (`sap.s4com.afc:dataProduct:CostCenter:v1`) is currently inactive. If cost center is required as a dimension in a future iteration, this must be resolved before it can be included.
- **CCC simplified scope**: Days Inventory Outstanding was excluded. The CCC metric (DSO − DPO) is a simplified version; stakeholders should be informed it does not represent the full three-component CCC.
- **Data quality in source**: DSO and DPO calculations depend on consistent use of payment terms and due dates in S/4HANA. Incomplete or incorrectly maintained source data will affect metric accuracy.

### Assumptions

- All three transactional source data products (Entry View Journal Entry, Billing Document, Supplier Invoice) are actively replicated and available in the formation.
- SAP Analytics Cloud is licensed and configured to consume data products via DPQuery.
- The `sap.s4com` namespace data products reflect a complete and current view of AP and AR postings.

### Dependencies

- SAP S/4HANA Cloud Private Edition data product replication must be active and current.
- SAP Analytics Cloud environment must be available and integrated with the data product layer.
- Data product publication and governance tooling (SAP Business Data Cloud / Joule data product toolchain) must be available.

---

## Appendix

### Glossary

- **DSO (Days Sales Outstanding)**: Average number of days it takes to collect payment after a sale. Formula: (AR balance / Revenue) × Days in period.
- **DPO (Days Payable Outstanding)**: Average number of days a company takes to pay its suppliers. Formula: (AP balance / COGS) × Days in period.
- **CCC (Cash Conversion Cycle)**: DSO − DPO. Measures the net days of working capital tied up in the business cycle (lower = more efficient).
- **DPQuery**: SAP's data product query protocol used to consume data products from SAP Analytics Cloud and other consumers.
- **Aging Bucket**: Classification of open items by how long they have been outstanding (e.g., current, 1–30 days, 31–60 days, 61–90 days, 90+ days overdue).

### References

- SAP S/4HANA Cloud — Open Item Management (FI-AR/FI-AP)
- SAP Analytics Cloud — Data Product Consumption via DPQuery
- SAP Business Architecture Reference: Finance E2E — Invoice to Cash (BPS-366), Invoice to Pay (BPS-334), Manage Treasury (BPS-414)
