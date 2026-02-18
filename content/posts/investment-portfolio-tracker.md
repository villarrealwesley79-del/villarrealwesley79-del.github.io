+++
title = "How to Track Your Investment Portfolio in Google Sheets (Without Paying for an App)"
date = "2026-02-18"
description = "Skip the $50/month portfolio apps. Here's how to build a complete investment tracker in Google Sheets — stocks, ETFs, crypto, retirement accounts, dividends, and more."
tags = ["investing", "portfolio tracking", "Google Sheets", "personal finance", "spreadsheets"]
ShowToc = true
+++

Managing investments across multiple platforms creates blind spots. Robinhood doesn't know what's in your 401(k). Your brokerage doesn't know about your crypto. And no app shows you the full picture without charging a monthly fee or asking for API access to your accounts.

Google Sheets solves all of this. Here's how to build a tracker that handles stocks, ETFs, crypto, and retirement accounts in one place — free, private, and fully customizable.

## Why Paid Tracking Apps Fall Short

### They're Expensive
Premium portfolio apps run $10-50/month. That's $120-600/year to see data you already own. Several popular apps have also shut down mid-subscription with no refund.

### They're a Privacy Risk
60% of finance apps share data with third parties per their own privacy policies. Connecting an app via API grants full read access to your portfolio — transaction history, balances, everything.

### They Don't Fit Your Situation
Can't track non-standard assets (REITs, private equity, real estate equity). Poor support for inherited accounts. No flexibility to add custom fields that matter to your specific situation.

## What to Track

At minimum, your portfolio tracker should capture:

- **Holdings**: Ticker/asset name, account, quantity, average cost basis
- **Current value**: Price × quantity (can use `GOOGLEFINANCE()` for live stock prices)
- **Gain/loss**: Unrealized (on paper) and realized (sold positions)
- **Dividends**: Income received per holding
- **Asset allocation**: % by type (stocks, bonds, cash, real estate, crypto)
- **Account breakdown**: Taxable vs. tax-advantaged

## Building the Tracker in Google Sheets

### Core Sheet Structure

Create these tabs:
1. **Holdings** — Master list of current positions
2. **Transactions** — Every buy, sell, and dividend
3. **Dashboard** — Visual summary with charts

### Essential Formulas

**Live stock price (Google Sheets only):**
```excel
=GOOGLEFINANCE("AAPL", "price")
```

**Current value of a position:**
```excel
=Quantity * GOOGLEFINANCE(Ticker, "price")
```

**Unrealized gain/loss:**
```excel
=(Current Price - Avg Cost) * Quantity
```

**Weighted average cost basis:**
```excel
=SUMPRODUCT(purchase_quantities, purchase_prices) / SUM(purchase_quantities)
```

**Total return (using XIRR for accuracy):**
```excel
=XIRR(cash_flows, dates)
```

### Asset Allocation Chart

Use a `QUERY` to summarize by asset type, then build a pie chart:
```excel
=QUERY(Holdings!A:E, "SELECT A, SUM(D) GROUP BY A LABEL SUM(D) 'Value'")
```

## Tracking Different Asset Types

### Stocks and ETFs
Use `GOOGLEFINANCE()` for automatic price updates. Add a "Last Updated" timestamp with `=NOW()` so you know when data refreshed.

### Crypto
Google Finance doesn't cover crypto. Options:
- Manual update (pull price from CoinMarketCap weekly)
- Use `IMPORTDATA()` with a free crypto API endpoint
- Track in a separate "Crypto" tab and link to the main dashboard

### Retirement Accounts (401k, IRA)
Log your balance monthly rather than tracking individual holdings. Most 401(k) plans don't give you ticker-level data anyway. Track:
- Current balance
- YTD contributions
- Employer match received
- Estimated balance at retirement (use FV formula)

### Dividends
Create a Dividends tab with date, ticker, amount, and account. Sum by year for tax reporting. This saves hours at tax time.

## Real-World Example Portfolio

| Ticker | Qty | Avg Cost | Current | Gain/Loss | % of Portfolio |
|---|---|---|---|---|---|
| AAPL | 150 | $145.32 | $192.45 | +$7,069 | 28% |
| VTI | 80 | $210.00 | $245.30 | +$2,824 | 19% |
| BTC | 0.85 | $32,000 | $45,600 | +$11,560 | 37% |
| VXUS | 60 | $58.00 | $62.10 | +$246 | 4% |
| Cash | — | — | — | — | 12% |

## Common Tracking Mistakes

1. **Not tracking cost basis** — You'll need this for taxes when you sell
2. **Ignoring fees** — Brokerage fees and fund expense ratios eat real returns
3. **Only tracking winners** — Track everything or your allocation picture is wrong
4. **No rebalancing triggers** — Set a rule (e.g., rebalance when any asset class drifts 5%+)

## Troubleshooting Common Google Sheets Issues

**GOOGLEFINANCE() returns an error or stops updating**
This happens when the ticker symbol changes, a company goes private, or Google's data feed has a delay. Fix: check the exact ticker on Google Finance, use a backup formula like `IMPORTXML()` for stubborn cases, or manually enter the price until the feed recovers.

**Stock got delisted or acquired**
Replace `GOOGLEFINANCE()` with the acquisition price and mark the position as "closed." Move it to your Transactions tab so your cost basis history stays intact.

**Multi-currency portfolios**
Use `=GOOGLEFINANCE("CURRENCY:USDEUR")` to pull live exchange rates. Create a "FX Rates" tab and reference it in your Holdings sheet so all values convert to your base currency automatically.

**Sheet runs slow with many tickers**
GOOGLEFINANCE calls run on Google's servers but can lag with 50+ tickers. Fix: group all your `GOOGLEFINANCE()` pulls onto one "Prices" tab, then reference that tab from your Holdings sheet — one lookup per ticker instead of many.

## Key Takeaways

1. Manual tracking builds real financial literacy — you notice things apps don't surface
2. Google Sheets is free, private, and more flexible than any paid app
3. `GOOGLEFINANCE()` handles automatic stock price updates for you
4. Track cost basis from day one — it saves significant headaches at tax time
5. One unified view beats logging into four different platforms every time

---

**Skip building it from scratch.** The **[Investment Portfolio Tracker](https://financecraftedsheets.etsy.com/listing/4454775765)** on Etsy has all the formulas pre-built — automatic gain/loss calculations, dividend tracking, multi-account support, and a dashboard that updates as you enter data.
