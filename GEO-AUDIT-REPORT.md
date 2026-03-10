# GEO Audit Report: FinanceCraftedSheets

**URL:** https://villarrealwesley79-del.github.io/templates/
**Date:** March 9, 2026
**Business Type:** E-commerce (Digital Finance Templates)
**Pages Analyzed:** 25 (12 product pages, 3 guides, 10 utility/taxonomy pages)
**Tech Stack:** Hugo 0.155.3 (Static Site Generator) on GitHub Pages

---

## Composite GEO Score: 48/100 (Needs Improvement)

```
████████████████████░░░░░░░░░░░░░░░░░░░░  48/100
```

| Category | Weight | Score | Weighted | Status |
|----------|--------|-------|----------|--------|
| AI Citability & Visibility | 25% | 56/100 | 14.0 | Fair |
| Brand Authority Signals | 20% | 12/100 | 2.4 | Critical |
| Content Quality & E-E-A-T | 20% | 58/100 | 11.6 | Fair |
| Technical Foundations | 15% | 81/100 | 12.2 | Good |
| Structured Data | 10% | 34/100 | 3.4 | Poor |
| Platform Optimization | 10% | 46/100 | 4.6 | Fair |
| **COMPOSITE** | **100%** | | **48.2** | **Needs Improvement** |

---

## Executive Summary

FinanceCraftedSheets has a **strong technical foundation** (Hugo SSG, fast static pages, clean URLs, 100% crawler access) and **citation-ready guide content** (68/100 citability on guides). However, the site is critically undermined by:

1. **Near-zero brand presence** across all external platforms (12/100) — AI models cannot discover or verify the entity "FinanceCraftedSheets"
2. **Incomplete schema markup** (34/100) — Product schemas missing `image`, wrong author name, About page using wrong schema type
3. **No external citations** in content — zero outbound links to authoritative sources (Federal Reserve, CFPB, BLS)
4. **No customer reviews/testimonials** on an e-commerce site
5. **GitHub Pages subdomain** signals "personal project" rather than professional business

The site has strong *potential* but near-zero *actual* AI visibility today.

---

## AI Platform Readiness

| Platform | Score | Status | Key Gap |
|----------|-------|--------|---------|
| Google AI Overviews | 58/100 | Fair | No comparison tables, no review signals |
| Bing Copilot | 51/100 | Fair | No IndexNow, no Bing Webmaster Tools |
| Perplexity AI | 42/100 | Poor | Zero Reddit mentions, no original data |
| Google Gemini | 39/100 | Poor | No YouTube, no Knowledge Graph presence |
| ChatGPT Web Search | 38/100 | Poor | Zero entity recognition, no Wikipedia/LinkedIn |
| **Average** | **46/100** | **Fair** | |

**Strongest Platform:** Google AI Overviews — FAQ schema, question-based headings, comparison content
**Weakest Platform:** ChatGPT Web Search — zero entity recognition, no Wikipedia/Wikidata/LinkedIn presence

---

## AI Crawler Access: 100/100

All AI crawlers have full access. This is the site's strongest metric.

| Crawler | Platform | Status |
|---------|----------|--------|
| GPTBot | ChatGPT | Allowed |
| OAI-SearchBot | ChatGPT Web Search | Allowed |
| ChatGPT-User | ChatGPT | Allowed |
| ClaudeBot | Claude | Allowed |
| PerplexityBot | Perplexity | Allowed |
| Google-Extended | Gemini | Allowed |
| Googlebot | Google AI Overviews | Allowed |
| Bingbot | Bing Copilot | Allowed |
| Applebot-Extended | Apple Intelligence | Allowed |
| CCBot | Common Crawl | Allowed |

**robots.txt:** `User-agent: * / Allow: /` — maximally permissive. No explicit per-bot rules.
**llms.txt:** Present (needs link descriptions and companion `llms-full.txt`)

---

## Citability Analysis: 56/100

| Page | Score | Strongest Element |
|------|-------|-------------------|
| How to Pay Off Debt Guide | 71 | $20K multi-debt walkthrough with snowball vs. avalanche |
| 50/30/20 Budget Guide | 70 | $4,000 income breakdown + high-cost-city alternatives |
| Debt Payoff Calculator (Product) | 64 | FAQ answers, real-world example |
| Best Budget Templates 2026 | 63 | Situation-based recommendation table |

**Top Citation-Ready Blocks:**
1. $20,000 multi-debt payoff example with method comparison (75)
2. 50/30/20 rule definition + $4,000 income breakdown (74)
3. High-cost area ratio alternatives: 60/20/20, 55/25/20, 50/25/25 (72)
4. Snowball vs. avalanche comparison table (71)
5. Situation-based template recommendation matrix (68)

**Key Weakness:** Zero externally-sourced statistics across all pages. No Federal Reserve, BLS, IRS, or CFPB data cited.

---

## E-E-A-T Assessment: 58/100

| Dimension | Score | Evidence |
|-----------|-------|----------|
| Experience | 12/25 | Claims first-hand use ("started as my own spreadsheets") but no specific personal outcomes, before/after data, or real customer case studies |
| Expertise | 16/25 | MBA in Accounting (Texas A&M SA), AVP at regional bank, 5+ years FP&A — strong on paper but unverifiable (no LinkedIn profile linked) |
| Authoritativeness | 8/25 | Zero external citations inbound or outbound. No media mentions, no industry recognition. Site exists in isolation. |
| Trustworthiness | 20/25 | HTTPS, privacy policy (GDPR), terms of service, financial disclaimer, clear pricing. But no customer reviews, personal Gmail for contact. |

---

## Technical Audit: 81/100

| Area | Score | Status |
|------|-------|--------|
| Server-Side Rendering | 100/100 | Hugo SSG — full HTML, no JS dependency |
| URL Structure | 95/100 | Clean, hierarchical, consistent trailing slashes |
| Response & Status | 95/100 | All 200s, no redirect chains |
| Mobile Optimization | 85/100 | Responsive, proper viewport |
| Crawlability | 80/100 | Sitemap present (25 URLs). All lastmod dates identical |
| Core Web Vitals Risk | 80/100 | Low LCP/INP risk. Medium CLS risk: images missing width/height |
| Meta Tags | 78/100 | Missing og:image on non-product pages |
| Security Headers | 45/100 | GitHub Pages limitation: no CSP, X-Frame-Options |

**Key Technical Issues:**
- Images lack `width` and `height` attributes (CLS risk)
- Homepage title too short — just "FinanceCraftedSheets"
- Missing `og:image` on homepage, about, and guide pages
- All sitemap `lastmod` dates identical (2026-03-09)

---

## Schema Markup: 34/100

**18 schema blocks found across 9 pages. All JSON-LD, server-rendered.**

| Page Type | Schema Found | Key Issues |
|-----------|-------------|------------|
| Homepage | Organization | Logo uses favicon.ico (min 112x112px needed), only 1 sameAs (Etsy) |
| Product Pages | Product + FAQPage + BreadcrumbList | Missing `image` property (blocks rich results), no reviews/ratings, no category/SKU |
| Guide Pages | BlogPosting + BreadcrumbList | Author is "FinanceCraftedSheets" not "Wesley Villarreal", missing image |
| About Page | BlogPosting (WRONG) + BreadcrumbList | Should be AboutPage. Date shows `0001-01-01T00:00:00Z` (invalid) |
| Catalog Page | BreadcrumbList only | Missing ItemList schema for collection |

**Missing Schemas:**
- Person (for Wesley Villarreal with credentials)
- WebSite + SearchAction
- speakable property
- AboutPage
- ItemList (for catalog)
- AggregateRating (no reviews)

**sameAs Links:** Only 1 (Etsy). Missing: LinkedIn, YouTube, GitHub, Twitter/X, Wikidata (need 5+ for entity recognition).

---

## Brand Mention Presence: 12/100

| Platform | Status |
|----------|--------|
| Wikipedia | Absent |
| Wikidata | Absent |
| Reddit | Absent |
| YouTube | Absent |
| LinkedIn | Absent |
| Trustpilot / G2 / Capterra | Absent |
| NerdWallet / Investopedia | Absent |
| Etsy | Present (sales channel only) |

**"FinanceCraftedSheets" returns near-zero results across the web.** This is the #1 bottleneck for AI visibility.

---

## Content Quality: 58/100

| Metric | Value |
|--------|-------|
| Product page avg word count | ~700 words (short — target 1,000+) |
| Guide page avg word count | ~1,495 words (adequate — target 2,000+) |
| Readability (Flesch) | ~72-75 (Fairly Easy — appropriate) |
| External citations | 0 across entire site |
| Customer reviews | 0 |
| Images in guides | 0 |
| FAQs per product page | 7 (well-structured) |
| Internal links per page | ~7 average |
| Heading structure | Excellent — proper H1/H2/H3 hierarchy |

---

## Prioritized Action Plan

### Quick Wins (1-7 days) — Projected Score: 48 → 58

| # | Action | Impact | Effort |
|---|--------|--------|--------|
| 1 | **Fix author name in schema** — Change "FinanceCraftedSheets" to "Wesley Villarreal" with jobTitle, url, sameAs | High — fixes E-E-A-T across all platforms | 15 min |
| 2 | **Add `image` to Product schema** — Pull from `cover.image` front matter in `schema_json.html` | High — enables Google Product rich results | 10 min |
| 3 | **Add sameAs links** — LinkedIn, YouTube, GitHub, Twitter/X to Organization schema | High — entity recognition across all platforms | 15 min |
| 4 | **Fix About page schema** — Conditional in `schema_json.html` for AboutPage type | Medium — eliminates structured data error | 30 min |
| 5 | **Add explicit AI bot rules to robots.txt** — Named entries for GPTBot, ClaudeBot, PerplexityBot | Medium — signals intent to AI platforms | 10 min |
| 6 | **Add speakable to BlogPosting schema** — CSS selectors for title + first paragraph | Medium — improves voice AI extraction | 15 min |
| 7 | **Replace favicon.ico with proper logo** in Organization/publisher schema (min 112x112px) | Medium — fixes schema validation | 15 min |
| 8 | **Add descriptions to llms.txt links** — Include price and template type | Medium — improves AI indexing | 30 min |

### Medium-Term (1-4 weeks) — Projected Score: 58 → 68

| # | Action | Impact | Effort |
|---|--------|--------|--------|
| 9 | **Add authoritative outbound citations** to all 3 guide pages — Federal Reserve, CFPB, BLS, verified competitor pricing | Critical — lifts citability 10+ points | 3-4 hrs |
| 10 | **Add HTML comparison tables** to "Best Budget Templates 2026" — Tool, Cost, Customization, Data Ownership | High — AIO table extraction, Perplexity | 1 hr |
| 11 | **Create LinkedIn company page** + personal profile for Wesley Villarreal | High — entity verification for ChatGPT, Bing, Gemini | 2 hrs |
| 12 | **Register custom domain** (financecraftedsheets.com) — GitHub Pages supports this | High — brand authority across all platforms, ~$12/yr | 1-2 hrs |
| 13 | **Implement IndexNow protocol** — API key file + ping after deployment | High — Bing Copilot indexing in hours vs. weeks | 1 hr |
| 14 | **Add Bing Webmaster Tools verification** — `SiteVerificationTag` in `hugo.toml` | Medium — Bing Copilot direct submission | 30 min |
| 15 | **Add customer reviews/testimonials** — Embed Etsy reviews, add aggregateRating to Product schema | High — fills e-commerce trust gap | 2-3 hrs |
| 16 | **Complete llms-full.txt** with full page content | Medium — enables single-file AI ingestion | 2 hrs |
| 17 | **Add images/screenshots to guide pages** | Medium — content quality improvement | 2-3 hrs |

### Strategic (1-6 months) — Projected Score: 68 → 80+

| # | Action | Impact | Effort |
|---|--------|--------|--------|
| 18 | **Build Reddit presence** — Genuine contributions in r/personalfinance, r/FinancialPlanning, r/Frugal | Critical — brand discovery for Perplexity, ChatGPT | Ongoing |
| 19 | **Create YouTube channel** — 3-5 template walkthrough videos, embed on pages | High — Google Gemini ecosystem + multi-format signals | 10-15 hrs |
| 20 | **Create Wikidata entry** for FinanceCraftedSheets | High — entity recognition foundation for all platforms | 2 hrs |
| 21 | **Generate original data** — Survey customers, benchmark template setup times | High — creates uncopyable primary source content | 5-10 hrs |
| 22 | **Create 4-6 additional guides** — Net worth, freelancer taxes, investing basics, emergency funds | High — topical authority expansion | 8-12 hrs |
| 23 | **Seek external mentions** — Pitch to NerdWallet, Investopedia, finance blogs | Critical — establishes external authority | Ongoing |
| 24 | **Change author name in schema from brand to real person** everywhere consistently | High — E-E-A-T signal strength | 1 hr |

---

## Cross-Platform Synergies

Actions that improve multiple platforms simultaneously:

| Action | Platforms Impacted |
|--------|--------------------|
| LinkedIn company page + sameAs | ChatGPT, Bing Copilot, Gemini, Perplexity |
| Wikidata entry | ChatGPT, Gemini, Perplexity, AIO |
| Authoritative outbound citations | AIO, ChatGPT, Perplexity, Bing Copilot |
| YouTube channel with embeds | Gemini, AIO, Perplexity |
| Fix BlogPosting/Product schema | AIO, Bing Copilot, Gemini |
| Custom domain | All 5 platforms |

---

## Score Improvement Projections

| Actions Completed | Projected Score | Timeline |
|-------------------|----------------|----------|
| Quick Wins (#1-8) | 55-60/100 | 1 week |
| + Medium-Term (#9-17) | 65-70/100 | 1 month |
| + Strategic (#18-24) | 78-85/100 | 3-6 months |

---

## Key Insight

> **The site's content is citation-ready but discovery-blocked.** The guide content scores 68-71/100 for citability — well-structured, clear examples, quotable passages. The technical foundation is solid at 81/100. But with a Brand Authority score of 12/100, AI models have no path to discover this content. The #1 priority is building external brand presence on the platforms that feed AI training and retrieval systems (Reddit, YouTube, LinkedIn, review sites).

**Three highest-ROI actions:**
1. **Custom domain** — affects all 5 platforms, costs $12/year
2. **LinkedIn profile + expanded sameAs schema** — affects 4 platforms
3. **External citations in guide content** — affects 4 platforms

These three changes alone could move the GEO Score from **48 to ~58** within weeks.

---

## Files Referenced

| File | Changes Needed |
|------|---------------|
| `themes/PaperMod/layouts/partials/templates/schema_json.html` | Fix author name, add image to Product, add speakable, fix About page type, replace favicon logo |
| `hugo.toml` | Add sameAs links, fix author name, add Bing verification tag |
| `static/robots.txt` | Add explicit AI bot rules |
| `static/llms.txt` | Add link descriptions, create llms-full.txt |
| `content/guides/best-budget-templates-2026.md` | Add comparison tables, authoritative citations |
| `content/guides/how-to-pay-off-debt.md` | Add outbound citations to Federal Reserve, CFPB |
| `content/guides/50-30-20-budget-guide.md` | Add authoritative citations |

---

*Generated by GEO Audit Tool — March 9, 2026*
*Analyzed 25 pages across 5 parallel assessment dimensions*
*Methodology: 6-category weighted scoring — AI Citability (25%), Brand Authority (20%), Content Quality (20%), Technical Foundations (15%), Structured Data (10%), Platform Optimization (10%)*
