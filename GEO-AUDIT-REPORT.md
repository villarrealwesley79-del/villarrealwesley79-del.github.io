# GEO Audit Report: FinanceCraftedSheets

**URL:** https://villarrealwesley79-del.github.io/
**Date:** March 9, 2026
**Business Type:** E-commerce (Digital Products — Spreadsheet Templates)
**Pages Analyzed:** 18 (from sitemap)
**Framework:** Hugo (PaperMod theme) on GitHub Pages

---

## Composite GEO Score: 35/100 — Poor

```
AI Citability & Visibility  [========--------------------------]  43/100  (25%)
Brand Authority Signals      [=--------------------------------]   5/100  (20%)
Content Quality & E-E-A-T    [======---------------------------]  29/100  (20%)
Technical Foundations         [==================---------------]  76/100  (15%)
Structured Data              [======---------------------------]  28/100  (10%)
Platform Optimization         [========-------------------------]  34/100  (10%)
```

| Category | Score | Weight | Weighted |
|----------|-------|--------|----------|
| AI Citability & Visibility | 43/100 | 25% | 10.75 |
| Brand Authority Signals | 5/100 | 20% | 1.00 |
| Content Quality & E-E-A-T | 29/100 | 20% | 5.80 |
| Technical Foundations | 76/100 | 15% | 11.40 |
| Structured Data | 28/100 | 10% | 2.80 |
| Platform Optimization | 34/100 | 10% | 3.40 |
| **COMPOSITE** | | **100%** | **35.15** |

---

## Executive Summary

FinanceCraftedSheets has a **solid technical foundation** (Hugo SSG, fast static pages, clean URLs, permissive robots.txt) but is severely undermined by **thin content, zero brand authority, anonymous authorship, and incomplete schema markup**. The site is virtually invisible to AI search engines because:

1. **No AI model has training data that references this brand** (0 mentions on Reddit, YouTube, Wikipedia, LinkedIn, etc.)
2. **Content is too thin to cite** (~200 words per product page, no original data or expert insights)
3. **YMYL financial content has no E-E-A-T signals** (no named author, no credentials, no privacy policy)
4. **Schema markup is incomplete** (Product schemas missing images, BlogPosting misapplied, minimal sameAs)

The `villarrealwesley79-del.github.io` domain signals "personal project" rather than a professional business, dragging down authority across all platforms.

---

## AI Platform Readiness

| Platform | Score | Status |
|----------|-------|--------|
| Google AI Overviews | 38/100 | Poor |
| Bing Copilot | 38/100 | Poor |
| ChatGPT Web Search | 32/100 | Poor |
| Google Gemini | 30/100 | Poor |
| Perplexity AI | 28/100 | Critical |

**No platform currently has a reason to cite this site over established competitors** (NerdWallet, Investopedia, The Balance Money).

---

## AI Crawler Access

| Crawler | Status |
|---------|--------|
| Googlebot | Allowed |
| GPTBot (OpenAI) | Allowed |
| ChatGPT-User | Allowed |
| OAI-SearchBot | Allowed |
| ClaudeBot (Anthropic) | Allowed |
| PerplexityBot | Allowed |
| Google-Extended | Allowed |
| Bytespider (ByteDance) | Allowed |
| CCBot (Common Crawl) | Allowed |
| Applebot-Extended | Allowed |
| Meta-ExternalAgent | Allowed |

**Crawler Access: 100/100** — All AI crawlers are permitted. This is the strongest signal on the site. However, none of these crawlers are explicitly named in robots.txt (only `User-agent: *` wildcard). Adding explicit rules would signal intentional participation.

---

## Detailed Findings by Category

### 1. AI Citability & Visibility (43/100)

| Sub-Component | Score |
|---------------|-------|
| Citability Scoring | 34/100 |
| AI Crawler Access | 100/100 |
| llms.txt | 50/100 |
| Brand Mentions | 5/100 |

**Key Issues:**
- No content block reaches citation-ready threshold (70+)
- FAQ answers cover commodity definitions available from thousands of higher-authority sources
- No original data, long-form educational content, or expert insights
- llms.txt exists but has formatting issues (plain URLs instead of markdown links, missing blockquote description)
- **Zero brand mentions** on any platform AI models use for citations

### 2. Brand Authority Signals (5/100)

**Critical weakness.** FinanceCraftedSheets has zero presence on:
- Reddit, YouTube, Wikipedia, LinkedIn, Medium, Quora, GitHub, industry forums
- The domain itself may not be indexed by Google
- AI models have essentially no training data referencing this brand
- The only external presence is the Etsy shop

### 3. Content Quality & E-E-A-T (29/100)

| E-E-A-T Dimension | Score |
|--------------------|-------|
| Experience | 3/25 |
| Expertise | 5/25 |
| Authoritativeness | 4/25 |
| Trustworthiness | 10/25 |

**Key Issues:**
- **Word count critically thin**: ~200 words per product page (minimum should be 800-1,500)
- **No named author or credentials** — brand name "FinanceCraftedSheets" used as author
- **No privacy policy** despite using Google Analytics (GDPR/CCPA compliance issue)
- **No customer reviews or testimonials**
- **Content shows AI generation patterns**: identical structure across all pages, generic phrasing, no specific examples or real numbers
- **Zero external citations** to authoritative financial sources
- **Duplicate H1 tags** on most pages (PaperMod theme + Markdown heading conflict)
- All 12+ pages published on same date (bulk launch signal)

### 4. Technical Foundations (76/100)

| Component | Score | Status |
|-----------|-------|--------|
| Server-Side Rendering | 100/100 | PASS |
| URL Structure | 90/100 | PASS |
| Response & Status | 90/100 | PASS |
| Mobile Optimization | 85/100 | PASS |
| Meta Tags & Indexability | 72/100 | WARN |
| Core Web Vitals Risk | 70/100 | WARN |
| Crawlability | 62/100 | WARN |
| Additional Checks | 55/100 | WARN |
| Security Headers | 35/100 | FAIL |

**Strengths:**
- Hugo SSG generates fully static HTML — all content visible to all crawlers without JS
- Clean URL structure with descriptive slugs
- Mobile-optimized responsive design
- Proper canonical tags and meta robots
- HTTPS with HSTS

**Issues:**
- **Empty og:image** on all pages (PaperMod expects `cover.image`, front matter uses `images:`)
- **Empty keywords meta tags** on product pages (template mismatch)
- **Empty taxonomy pages** (`/categories/`, `/tags/`) in sitemap
- **Orphaned blog posts** from before site pivot (off-brand content)
- **Security headers missing** (CSP, X-Frame-Options, etc.) — GitHub Pages limitation
- **Product images lack width/height** attributes (CLS risk)
- **Homepage title too generic** ("FinanceCraftedSheets" — no keywords)

### 5. Structured Data (28/100)

| Schema | Status | Issue |
|--------|--------|-------|
| Organization | Partial | Only 1 sameAs (Etsy), favicon.ico as logo, no @id |
| Product | Partial | Present on all 11 templates but **missing `image`** (blocks rich results) |
| BreadcrumbList | Partial | Missing Home as root, some pages missing `item` URLs |
| BlogPosting | Misapplied | Applied to product pages (wrong type), About page has date `0001-01-01` |
| WebSite + SearchAction | Missing | Not present |
| FAQPage | Missing | FAQ content exists but not marked up |
| ItemList | Missing | Templates listing has no catalog schema |
| speakable | Missing | Not present anywhere |
| Person (author) | Missing | Brand used as Person type author |

### 6. Platform Optimization (34/100)

**Cross-platform weaknesses:**
- No question-based headings for Google AI Overviews answer extraction
- No community validation signals for Perplexity
- Entity invisible to ChatGPT (zero cross-platform presence)
- No YouTube/Google ecosystem presence for Gemini
- No IndexNow or Bing Webmaster Tools for Copilot
- No Open Graph / Twitter Card images

---

## Prioritized Action Plan

### Quick Wins (Low Effort, High Impact) — Do This Week

| # | Action | Impact | Effort |
|---|--------|--------|--------|
| 1 | **Add `image` to all Product schemas** — reference existing screenshots | Enables Product rich results on all 11 pages | 30 min |
| 2 | **Fix og:image** — add `cover.image` to front matter or fix PaperMod partial | Fixes social sharing and AI previews | 30 min |
| 3 | **Add FAQPage schema** to all product pages (FAQ content already exists) | AI models can extract Q&A pairs | 1 hr |
| 4 | **Remove BlogPosting from product pages** — override schema partial | Eliminates conflicting type signals | 1 hr |
| 5 | **Fix About page date** — add `date: 2026-03-09` to front matter | Fixes invalid `0001-01-01` in schema | 5 min |
| 6 | **Fix duplicate H1 tags** — remove `# Heading` from Markdown content | Proper heading hierarchy | 30 min |
| 7 | **Remove empty taxonomy pages** from sitemap or disable unused taxonomies | Eliminates thin content signals | 15 min |
| 8 | **Add Privacy Policy page** — legally required with Google Analytics | GDPR/CCPA compliance + trust signal | 1 hr |
| 9 | **Improve homepage title** — "Finance Spreadsheet Templates for Excel & Google Sheets \| FinanceCraftedSheets" | Better search visibility | 5 min |
| 10 | **Fix BreadcrumbList** — add Home as root, ensure all items have URLs | Proper navigation schema | 30 min |

### Medium-Term (1-4 Weeks)

| # | Action | Impact | Effort |
|---|--------|--------|--------|
| 11 | **Register custom domain** (e.g., `financecraftedsheets.com`) | Major authority boost across all platforms | 2 hrs |
| 12 | **Expand product pages to 800-1,500 words** with real examples, annotated screenshots, step-by-step guides | Content quality + citability | 2-3 days |
| 13 | **Create LinkedIn company page** and add to Organization sameAs | Entity recognition for ChatGPT + Bing | 1 hr |
| 14 | **Add WebSite + SearchAction schema** to homepage | Sitelinks search box eligibility | 30 min |
| 15 | **Add explicit AI bot rules** to robots.txt (GPTBot, ClaudeBot, PerplexityBot, etc.) | Signal intentional AI participation | 15 min |
| 16 | **Add Open Graph + Twitter Card meta tags** with images | Better previews across all platforms | 1 hr |
| 17 | **Implement IndexNow** for Bing Copilot | Instant indexing on content updates | 2 hrs |
| 18 | **Establish real author identity** — named founder with credentials and bio | E-E-A-T for YMYL content | 2 hrs |
| 19 | **Add comparison table** to `/templates/` listing page | Google AIO table extraction | 1 hr |
| 20 | **Fix llms.txt** — use markdown link format, add blockquote description | Proper llms.txt spec compliance | 30 min |

### Strategic (1-3 Months)

| # | Action | Impact | Effort |
|---|--------|--------|--------|
| 21 | **Build Reddit presence** — value-first posts in r/personalfinance, r/budgeting, r/excel | Perplexity citations + brand authority | Ongoing |
| 22 | **Create YouTube channel** with 5-10 template walkthrough videos | Google Gemini + embedded media | 2-4 weeks |
| 23 | **Publish 10-20 educational blog posts** (1,500-2,500 words each) | Topical authority + organic traffic | 4-8 weeks |
| 24 | **Create original data content** (e.g., "We analyzed 500 budgets...") | Primary source citations | 1 week |
| 25 | **Collect and display customer testimonials** from Etsy reviews | Social proof + trust | Ongoing |

---

## Scoring Methodology

| Category | Weight | Measured By |
|----------|--------|-------------|
| AI Citability & Visibility | 25% | Passage scoring, answer block quality, AI crawler access |
| Brand Authority Signals | 20% | Mentions on Reddit, YouTube, Wikipedia, LinkedIn; entity presence |
| Content Quality & E-E-A-T | 20% | Expertise signals, original data, author credentials |
| Technical Foundations | 15% | SSR, Core Web Vitals, crawlability, mobile, security |
| Structured Data | 10% | Schema completeness, JSON-LD validation, rich result eligibility |
| Platform Optimization | 10% | Platform-specific readiness (Google AIO, ChatGPT, Perplexity) |

---

## What "Good" Looks Like

After implementing the Quick Wins and Medium-Term actions, the projected GEO Score would rise from **35 to approximately 55-65/100**. To reach 75+, the strategic content and brand-building actions are essential.

**Key benchmark:** No AI platform will consistently cite this site until:
1. Product pages have 800+ words of unique, expert-attributed content
2. The brand has 5+ genuine mentions on external platforms
3. A custom domain replaces the GitHub Pages subdomain
4. Schema markup includes complete Product schemas with images

---

*Generated by GEO Audit Tool — March 9, 2026*
*Analyzed 18 pages across 5 parallel assessment dimensions*
