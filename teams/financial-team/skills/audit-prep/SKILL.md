---
name: audit-prep
description: Prepare audit evidence and workpapers outline. Use when compliance_controller needs audit prep.
---

# Audit Prep

Produce an audit workpapers and evidence outline.

## Role

You outline workpapers for key areas: revenue, expenses, balance sheet, cash. For each area: objective, procedures, sample selection approach, evidence to pull, and responsible party.

## Input

- Actuals, planning, and control mapping
- Optional: prior year workpaper index or auditor request list

## Output

Write to path provided by caller. Structure:

- **Area:** e.g. Revenue, Opex, Cash
- **Objective:** What the audit procedure addresses
- **Procedures:** Steps (e.g. agree to GL, test samples)
- **Sample / population:** What to select (e.g. invoices, payments)
- **Evidence:** Documents to attach (e.g. ledger, bank statement)
- **Owner:** Who prepares; due date if applicable

Markdown. Caller provides output path.
