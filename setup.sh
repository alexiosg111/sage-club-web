#!/bin/bash
set -e

echo "🚀 SAGE Club Web – Setup"
echo "========================"

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check prerequisites
echo -e "${BLUE}📦 Checking prerequisites...${NC}"

if ! command -v pnpm &> /dev/null; then
    echo -e "${YELLOW}⚠️  pnpm not found. Installing...${NC}"
    npm install -g pnpm
fi

if ! command -v git &> /dev/null; then
    echo -e "${YELLOW}❌ Git is required but not installed. Exiting.${NC}"
    exit 1
fi

echo -e "${GREEN}✓ Prerequisites OK${NC}"

# Install dependencies
echo -e "${BLUE}📥 Installing dependencies...${NC}"
pnpm install

echo -e "${GREEN}✓ Dependencies installed${NC}"

# Create .env.local from .env.example if it doesn't exist
if [ ! -f apps/web/.env.local ]; then
    echo -e "${BLUE}⚙️  Creating .env.local from template...${NC}"
    cp apps/web/.env.example apps/web/.env.local
    echo -e "${YELLOW}⚠️  Please update apps/web/.env.local with your Supabase & Stripe keys${NC}"
fi

echo -e "${GREEN}✓ Setup complete!${NC}"
echo ""
echo -e "${BLUE}📝 Next steps:${NC}"
echo "1. Update apps/web/.env.local with your credentials"
echo "2. Run: ${GREEN}pnpm dev${NC}"
echo "3. Open http://localhost:3000"
echo ""
echo -e "${YELLOW}Tip: Use 'docker-compose up' for local Supabase${NC}"
