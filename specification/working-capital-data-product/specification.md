# Specification: working-capital-data-product

> **Guidelines**: Read [guidelines-data-product.md](../guidelines-data-product.md) before executing ANY tasks below. Follow all constraints described there throughout execution.

## Basic Setup

- [x] Read `product-requirements-document.md` and `intent.md` to load full context before starting
- [x] Run `pwd` and store the output as `working_directory`
- [x] Invoke the `data-product` skill starting from **Step 1a** — search and source DP selection were completed during intent-analysis; do not re-run them. The confirmed source data products are listed in the Data Dependencies section below.

## Data Dependencies

The following source data products were confirmed during intent-analysis. Pass these as the input DP selection already in context when invoking the `data-product` skill:

**Transactional sources:**
- `sap.s4com:dataProduct:EntryViewJournalEntry:v1` — AR and AP journal entries (primary source for DSO, DPO, CCC)
- `sap.s4com:dataProduct:BillingDocument:v1` — Customer invoices driving AR postings
- `sap.s4com:dataProduct:SupplierInvoice:v1` — Supplier invoices driving AP postings

**Master data sources:**
- `sap.s4com:dataProduct:CompanyCode:v1` — Company code organizational dimension
- `sap.s4com:dataProduct:ProfitCenter:v1` — Profit center dimension with hierarchy
- `sap.s4com:dataProduct:Customer:v1` — Customer master data with texts and attributes
- `sap.s4com:dataProduct:Supplier:v1` — Supplier master data with texts and attributes
- `sap.s4com:dataProduct:GeneralLedgerAccount:v1` — GL account dimension with descriptions

All source data products are in the `sap.s4com` namespace, tenant `fa163ed0-50b9-1fd1-99c9-3bfc7e7a4000` (SAP S/4HANA Cloud Private Edition).

## Step 1a — Properties Approval

- [ ] Propose the following data product properties for user approval:
  - **Business Name (title):** Working Capital
  - **Technical Name (name):** WorkingCapital
  - **Short Description:** Consolidated working capital data product covering Accounts Payable, Accounts Receivable, and Cash Conversion Cycle metrics with full master data enrichment
  - **Description:** A derived analytical data product that consolidates AP and AR transactional data from SAP S/4HANA Cloud Private Edition with master data dimensions to expose pre-calculated working capital KPIs — Days Sales Outstanding (DSO), Days Payable Outstanding (DPO), and Cash Conversion Cycle (CCC = DSO − DPO) — together with AR open items by aging bucket and AP open items by payment due date. Designed for consumption by SAP Analytics Cloud via DPQuery for working capital planning. Business context: intended for Accounts Payable and Accounts Receivable teams to reduce overdue AR and standardize working capital reporting.
- [ ] Wait for user approval of properties before proceeding to Step 1b

## Step 1b — Session Initialization

- [ ] Run `init_session.js` to create the session folder under `assets/working-capital-data-product/work/`
- [ ] Compute Base36 namespace for the derived data product
- [ ] Write `.ddp_metadata.json` with approved properties and source DP ORD IDs

## Step 2 — Fetch CSN and Build Graph

- [ ] Run `jl data-product fetch-and-prepare` for each source data product, starting with the primary transactional source (`sap.s4com:dataProduct:EntryViewJournalEntry:v1`)
- [ ] Compile all fetched CSN definitions to CDS
- [ ] Build the CSN graph covering all 8 source data products
- [ ] Confirm the graph includes: journal entry items, billing document items, supplier invoice items, company code, profit center, customer, supplier, and GL account entities

## Step 3 — Schema Exploration and Analytical Cube Design

- [ ] Explore the combined CSN graph to identify attributes relevant to working capital analysis
- [ ] Detect and plan the following enrichments:

  **AR (Accounts Receivable) cube:**
  - AR open item amount and currency (from journal entry / billing document)
  - Document due date and posting date (for aging calculation)
  - Aging bucket classification: Current, 1–30 days, 31–60 days, 61–90 days, 90+ days
  - Customer key (association to Customer master)
  - Company code key (association to CompanyCode master)
  - Profit center key (association to ProfitCenter master)
  - GL account key (association to GeneralLedgerAccount master)

  **AP (Accounts Payable) cube:**
  - AP open item amount and currency (from journal entry / supplier invoice)
  - Invoice due date, net payment date, and posting date
  - Days until due (derived: due date − today)
  - Supplier key (association to Supplier master)
  - Company code key
  - Profit center key
  - GL account key

  **Calculated KPIs (measures):**
  - DSO (Days Sales Outstanding): (AR balance / Revenue) × Days in period
  - DPO (Days Payable Outstanding): (AP balance / COGS or Revenue) × Days in period
  - CCC (Cash Conversion Cycle): DSO − DPO

  **Master data dimensions (with texts and hierarchies):**
  - Company Code: code and name
  - Profit Center: code, name, and hierarchy nodes
  - Customer: ID, name, customer group
  - Supplier: ID, name, supplier group
  - GL Account: account number and description

- [ ] Build the analytical cube view as a CDS transformation that joins transactional and master data entities
- [ ] Ensure AR and AP facts are modelled as separate fact tables or a combined unified fact with a transaction type dimension

## Step 4 — CDS Self-Check

- [ ] Run the slimmed pre-check on the CDS transformation view
- [ ] Execute 3 correctness passes:
  1. Structural correctness (joins, associations, key fields)
  2. Syntax correctness (valid CDS constructs, no deprecated annotations)
  3. SparkMV rules compliance (materialized view compatibility)
- [ ] Resolve any issues found before proceeding to Step 5
- [ ] Do not surface CDS internals to the user unless asked

## Step 5 — Generate Interop Definition

- [ ] Run `jl data-product generate-interop` to produce the interoperability definition
- [ ] Confirm the interop definition exposes:
  - AR open items entity with aging bucket attributes
  - AP open items entity with due date attributes
  - DSO, DPO, CCC as measures
  - All master data dimensions with texts
  - Profit center hierarchy
- [ ] Validate the interop definition is well-formed before proceeding

## Step 6 — Setup Solution

- [ ] Invoke the `setup-solution` skill to create `solution.yaml` and `asset.yaml` for the `working-capital-data-product` asset
- [ ] Confirm `assets/working-capital-data-product/asset.yaml` is created and valid

## Step 7 — Iterative Refinement

- [ ] Present the data product definition to the user for review
- [ ] Allow the user to request changes to:
  - Attribute selection (add/remove columns)
  - Aging bucket thresholds
  - KPI calculation formulas (DSO, DPO, CCC)
  - Master data dimension depth
- [ ] Apply any requested refinements via surgical edits to `transformation.cds` (never overwrite the entire file)
- [ ] Re-run Step 4 CDS self-check after each refinement
- [ ] Repeat until the user explicitly approves the final definition

## Step 7b — Data Preview

- [ ] Extract the `target` and `transformation` sections from the interop definition (DPD)
- [ ] Generate a mock data preview showing representative rows for:
  - AR open items with aging buckets
  - AP open items with due dates
  - DSO, DPO, CCC calculated values
  - Sample master data dimension values (company code, profit center, customer, supplier)
- [ ] Present the preview to the user for validation

## Acceptance Criteria

- [ ] AR open items are exposed with aging bucket classification (current, 1–30, 31–60, 61–90, 90+ days)
- [ ] AP open items are exposed with net due date and days until due
- [ ] DSO metric is queryable by company code, profit center, and period
- [ ] DPO metric is queryable by company code, supplier, and period
- [ ] CCC (= DSO − DPO) is exposed as a derived measure
- [ ] Company code, profit center, customer, supplier, and GL account dimensions are available with texts
- [ ] Profit center hierarchy is traversable
- [ ] Data product is consumable via DPQuery in SAP Analytics Cloud
- [ ] `solution.yaml` and `asset.yaml` are present and valid
