---
title: "How to Build a Rolling 13-Month Budget in Excel (Step-by-Step)"
date: 2026-02-25
draft: false
tags: ["Excel", "Budget Templates", "Financial Planning", "Budgeting Tools"]
categories: ["Budgeting", "Excel Tutorials"]
description: "Build a rolling 13-month budget in Excel. Track actual vs. projected spending month-by-month with automatic formulas. Includes step-by-step setup and formula references."
---

A rolling 13-month budget keeps one month ahead of reality. When January closes, you drop it and add February of next year. This prevents the "we're planning in November for January next year" problem that kills budgets.

Most people build annual budgets, watch them collect dust by March, then scramble when reality doesn't match projections. A rolling 13-month model forces continuous planning. You're always forecasting 12 months out, always comparing actuals to forecasts, always staying in control.

Here's how to build one in Excel.

## Why 13 Months Beats 12

A 12-month budget is a snapshot. It ends. You finish December and start over in January with no context. A 13-month budget overlaps. Month 13 is always the next month beyond your current planning horizon. This creates continuity.

You also catch seasonal patterns immediately. If January is your slow month, you see it every time you look at the past 13 months of data. Budget for it. If December revenue spikes, plan for it. Rolling data prevents surprises.

## The Core Structure

Your rolling budget has three main sections:

1. **Actuals** — Real numbers from the past 1-12 months
2. **Forecast** — Your projection for the upcoming 1-13 months
3. **Variance** — The difference between actual and forecast (where insights live)

You'll need columns for:
- Month (date or month/year label)
- Category (income, expenses, subcategories)
- Actual (linked to real data or manually entered)
- Forecast (your projection)
- Variance (Actual - Forecast, or as a percentage)

## Step 1: Set Up the Date Structure

Start in column A with your month labels. Use a consistent format.

**Column A:**
```
Month
Jan 2026
Feb 2026
Mar 2026
...
Jan 2027
```

Use Excel's `TEXT()` function to auto-generate these if you prefer:

```excel
=TEXT(DATE(2026,1,1),"MMM YYYY")
```

For a rolling structure, the first month is always "today" and the last month is "today + 13 months." You'll update this quarterly or when a month closes.

**Pro tip:** Use a separate cell to define your "start month" (e.g., `$A$1 = TODAY()`). Reference it for all date calculations. When January closes, change that one cell and every month label updates.

## Step 2: Create Your Income Categories

List every revenue stream. Be specific. "Sales" tells you nothing. "Product Sales," "Consulting Revenue," "Affiliate Income" — these matter for variances.

**Columns B, C, D (Income Section):**

```
Category          Actual    Forecast  Variance
Product Sales     [data]    [proj]    =B-C
Consulting        [data]    [proj]    =B-C
Affiliate Income  [data]    [proj]    =B-C
Total Income      =SUM()    =SUM()    =B-C
```

For actuals, you have two options:
1. Link directly to your accounting software (if it exports to Excel)
2. Manually enter from your records

Link when you can. Manual entry when you must. But enter once, not twice.

The forecast column is where your planning happens. Be conservative here. Use historical averages as a baseline, then adjust for known changes.

## Step 3: Build the Expense Categories

Use the same structure for expenses. Segment by fixed vs. variable costs.

**Fixed costs don't change month-to-month:**
- Rent
- Payroll
- Insurance
- Subscriptions

**Variable costs fluctuate:**
- Materials
- Utilities
- Marketing
- Shipping

Here's the key: forecast fixed costs identically for every month (they shouldn't move). Forecast variable costs based on revenue or seasonal patterns.

**Example formula for variable cost forecasts:**

If your "Materials" cost is 35% of sales, use:
```excel
=Product_Sales * 0.35
```

If it varies seasonally, adjust the percentage month-by-month based on historical data.

## Step 4: Add Variance Analysis

Variance tells you where you're wrong. That's the gold.

**Simple variance:**
```excel
=Actual - Forecast
```

**Percentage variance (more useful):**
```excel
=(Actual - Forecast) / Forecast
```

A -10% variance means you spent 10% less than budgeted. A +15% variance means you spent 15% more. Anything outside ±5% deserves investigation.

Create a second variance column that flags outliers:
```excel
=IF(ABS((Actual-Forecast)/Forecast)>0.05,"Review","OK")
```

Now you have a review checklist every month. Why did Product Sales come in 12% below forecast? Why is Utilities running 22% over?

## Step 5: Rolling the Budget Forward

Every month, you do four things:

1. **Enter actuals** for the month that just closed
2. **Drop the oldest month** from your view (it's archived, not deleted)
3. **Add the new 13th month** to your forecast
4. **Review variances** and update remaining forecasts based on what you learned

The easiest way to automate this:

Create a summary that always shows the same "13 rows" of data. Behind the scenes, your data table has 24+ rows. A named range or filter always shows the rolling 13.

**Using a named range:**

1. Create your full data table (24 rows of months)
2. Define `OFFSET()` to dynamically select only the current 13 months:
```excel
RollingData = OFFSET($A$1, [calculated_starting_row], 0, 13, [columns])
```

Set the starting row to automatically move when you add new data.

## Step 6: Create a Dashboard View

Your raw budget table is useful. Your dashboard is essential.

Pull out key metrics:

- **Total Monthly Revenue** (actual vs. forecast for current month and next 3)
- **Total Monthly Expenses** (same breakdown)
- **Operating Margin** (Revenue - Expenses / Revenue)
- **Variance Trend** (is your forecasting getting better or worse?)

Use sparklines to show trends:
```excel
=SPARKLINE(range)
```

Use conditional formatting to highlight variances:
- Green if within ±5%
- Yellow if ±5% to ±10%
- Red if outside ±10%

Now you see problems immediately. No reading required. Just color.

## Step 7: Link to Real Data (Optional but Powerful)

If your accounting system exports to Excel, automate the actuals.

**Example (QuickBooks to Excel):**
1. Export profit & loss statement as CSV
2. Use `VLOOKUP()` or `INDEX/MATCH` to pull account balances into your budget
3. Set it to refresh monthly

This eliminates manual data entry and transcription errors.

If you use Wave, Xero, or Stripe, they all have export options. Even basic bank CSV exports can feed into this.

## Real-World Example: A Solopreneur's Rolling Budget

Let's say you run an Etsy shop selling Excel templates (like those available at the [FinanceCraftedSheets Etsy shop](https://www.etsy.com/shop/FinanceCraftedSheets)). Your rolling 13-month budget looks like this:

**Income:**
- Etsy Sales: $3,200 forecast / $2,950 actual = -8% variance
- Affiliate Commissions: $400 forecast / $310 actual = -22% variance (needs review)

**Expenses:**
- Etsy Fees: $480 forecast / $442 actual = -8% (proportional to sales drop)
- Server & Tools: $150 forecast / $150 actual = 0% (fixed)
- Marketing: $500 forecast / $620 actual = +24% (over budget, review spend)

**Margin:** 52% forecast / 55% actual = +3% (actually better than planned due to lower Etsy fees)

You see immediately that affiliate commissions underperformed (marketing problem?) and paid ads are running hot (worth it or waste?). These conversations inform next month's forecast.

## Common Mistakes to Avoid

**Forecasting too optimistically.** You want growth, but budgets aren't wishes. Use historical data + growth rate, not hope.

**Not reviewing variances.** A variance you don't investigate is data you're ignoring. Review every month. Ask why.

**Mixing actual and forecast in the same column.** Keep them separate. Combine them visually on a dashboard, but never in your source data.

**Updating the past.** Once a month closes, its actual should be locked. Don't adjust historical actuals to match forecast. That's how you lose trust in your data.

**Forgetting to drop the old month.** After 13 months of entries, you'll have 25 rows. Manually delete the oldest month quarterly. Or automate it with a formula that hides rows outside your 13-month window.

## Tools Beyond Excel

If your budget grows beyond a few categories, consider:

- **Google Sheets** (same formulas, better for collaboration)
- **Dedicated budgeting software** (YNAB, Pulumi, Monarch Money)
- **Business accounting platforms** (QuickBooks, Xero)

But Excel works. A rolling budget in Excel costs nothing, requires no new logins, and gives you complete control.

## Rolling Your Budget Works

A rolling 13-month budget in Excel keeps you ahead of reality. You're always forecasting 12 months out. Actuals land every month. Variances guide adjustments. You see patterns, catch problems, and make better decisions.

Build it once. Spend 30 minutes per month rolling it forward and reviewing variances. That's enough to stay in control.

The templates at FinanceCraftedSheets include rolling budget examples if you want a head start. But the version you build yourself will teach you more.

Start with a simple structure. Add complexity only when you understand the basics. A rolling budget that you use beats a perfect budget that sits unopened.
