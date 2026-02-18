#!/bin/bash
# ============================================
# FinanceCraftedSheets Blog Pre-Publish Audit
# Run before every git push to catch issues
# Usage: ./scripts/blog-audit.sh
# ============================================

POSTS_DIR="content/posts"
ERRORS=0
WARNINGS=0

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}  FinanceCraftedSheets Blog Audit${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# ---- CHECK 1: Placeholder/fake links ----
echo -e "${BLUE}[1/5] Checking for placeholder links...${NC}"
PLACEHOLDER_PATTERNS=(
  "your-shop-url"
  "example.com"
  "yoursite.com"
  "XXXXXXXXXX"
  "listing/123456"
  "listing/987654"
  "listing/456789"
  "listing/321098"
  "listing/654321"
  "TODO"
  "FIXME"
  "placeholder"
)

for pattern in "${PLACEHOLDER_PATTERNS[@]}"; do
  matches=$(grep -rn "$pattern" "$POSTS_DIR" --include="*.md" 2>/dev/null)
  if [ -n "$matches" ]; then
    echo -e "${RED}  ❌ PLACEHOLDER found: '$pattern'${NC}"
    echo "$matches" | while read line; do echo "     $line"; done
    ERRORS=$((ERRORS + 1))
  fi
done

# ---- CHECK 2: Articles with no Etsy link ----
echo -e "${BLUE}[2/5] Checking for missing Etsy links...${NC}"
for f in "$POSTS_DIR"/*.md; do
  has_etsy=$(grep -c "etsy.com" "$f" 2>/dev/null || echo "0")
  if [ "$has_etsy" = "0" ]; then
    echo -e "${YELLOW}  ⚠️  No Etsy link: $(basename $f)${NC}"
    WARNINGS=$((WARNINGS + 1))
  fi
done

# ---- CHECK 3: Generic shop links (should be specific listings) ----
echo -e "${BLUE}[3/5] Checking for generic shop links...${NC}"
generic=$(grep -rn "etsy.com/shop/FinanceCraftedSheets\"" "$POSTS_DIR" --include="*.md" 2>/dev/null)
if [ -n "$generic" ]; then
  echo -e "${YELLOW}  ⚠️  Generic shop links (consider specific listing URLs):${NC}"
  echo "$generic" | while read line; do echo "     $line"; done
  WARNINGS=$((WARNINGS + 1))
fi

# ---- CHECK 4: Hugo build check ----
echo -e "${BLUE}[4/5] Running Hugo build check...${NC}"
build_output=$(hugo --minify 2>&1)
build_exit=$?
if [ $build_exit -ne 0 ]; then
  echo -e "${RED}  ❌ Hugo build FAILED:${NC}"
  echo "$build_output"
  ERRORS=$((ERRORS + 1))
else
  pages=$(echo "$build_output" | grep "pages" | grep -o '[0-9]* pages' | head -1)
  echo -e "${GREEN}  ✅ Hugo build passed ($pages)${NC}"
fi

# ---- CHECK 5: Required pages exist ----
echo -e "${BLUE}[5/5] Checking required pages...${NC}"
REQUIRED_PAGES=("content/about.md" "content/privacy.md" "content/contact.md" "content/disclaimer.md" "content/terms.md")
for page in "${REQUIRED_PAGES[@]}"; do
  if [ -f "$page" ]; then
    echo -e "${GREEN}  ✅ $(basename $page)${NC}"
  else
    echo -e "${RED}  ❌ MISSING: $page${NC}"
    ERRORS=$((ERRORS + 1))
  fi
done

# ---- SUMMARY ----
echo ""
echo -e "${BLUE}========================================${NC}"
if [ $ERRORS -gt 0 ]; then
  echo -e "${RED}  AUDIT FAILED — $ERRORS error(s), $WARNINGS warning(s)${NC}"
  echo -e "${RED}  Fix errors before publishing!${NC}"
  echo -e "${BLUE}========================================${NC}"
  exit 1
elif [ $WARNINGS -gt 0 ]; then
  echo -e "${YELLOW}  AUDIT PASSED WITH WARNINGS — $WARNINGS warning(s)${NC}"
  echo -e "${YELLOW}  Review warnings before publishing.${NC}"
  echo -e "${BLUE}========================================${NC}"
  exit 0
else
  echo -e "${GREEN}  ✅ AUDIT PASSED — All checks clean!${NC}"
  echo -e "${BLUE}========================================${NC}"
  exit 0
fi
