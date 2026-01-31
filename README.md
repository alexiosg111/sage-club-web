# 🍙 SAGE Club Berlin

**Next.js + Supabase + Stripe Monorepo** – Das komplette Shop-, Events- & Admin-Ökosystem für Berlin\'s Szene-Club.

[![Code](https://img.shields.io/badge/Code-GitHub-black?logo=github)](https://github.com/alexiosg111/sage-club-web)
[![Tech](https://img.shields.io/badge/Tech-Next.js%2FTypeScript-blue?logo=next.js)](https://nextjs.org)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

---

## ⚡ Quick Start

### Option 1: Bash Setup (Schnellste Variante)

```bash
bash setup.sh
pnpm dev
```

### Option 2: Make Commands

```bash
make setup      # Setup + Dependencies
make docker-up  # Start Postgres + Redis
make dev        # Dev Server starten
```

### Option 3: Manual Setup

```bash
# 1. Dependencies
pnpm install

# 2. Environment
cp apps/web/.env.example apps/web/.env.local
# → Supabase & Stripe Keys eintragen

# 3. Dev Server
pnpm dev

# → http://localhost:3000✨
```

---

## 💫 Available Commands

```bash
# Development
pnpm dev        # Start dev server
pnpm build      # Build production
pnpm lint       # ESLint check

# Make targets (macOS/Linux)
make help       # Show all commands
make setup      # Complete setup
make docker-up  # Start Docker (Postgres + Redis)
make docker-down # Stop Docker
make clean      # Clean build cache
```

---

## 🛡️ Architecture

```
sage-club-web/
├─ apps/
│  └─ web/              # Next.js Frontend + API Routes
│     ├─ src/
│     │  ├─ app/           # Route Handlers + Pages
│     │  ├─ components/    # React Components
│     └─ .env.local      # Local credentials
├─ packages/
│  └─ database/       # Supabase Schema & Migrations
├─ Makefile          # Development commands
├─ docker-compose.yml # Local Postgres + Redis
└─ setup.sh          # Auto-setup script
```

---

## 📐 Tech Stack

- **Frontend**: Next.js 15+ (App Router, TypeScript)
- **Styling**: Tailwind CSS
- **Database**: Supabase (PostgreSQL)
- **Payment**: Stripe API
- **State**: Zustand + React Query
- **Forms**: React Hook Form + Zod
- **Dev**: pnpm Workspaces

---

## 🔐 Environment Setup

1. Kopiere `apps/web/.env.example` → `apps/web/.env.local`

2. Fülle folgende Keys aus:
   ```env
   NEXT_PUBLIC_SUPABASE_URL=https://...
   NEXT_PUBLIC_SUPABASE_ANON_KEY=...
   STRIPE_SECRET_KEY=sk_test_...
   ```

3. Fertig! 🚀

---

## 📚 Phase Breakdown

- **Phase 1-2**: Setup + Typen ✅
- **Phase 3**: Public Frontend (Shop, Events)
- **Phase 4**: Stripe Integration
- **Phase 5**: Admin Dashboard
- **Phase 6**: Security & Polish
- **Phase 7**: MVP Release

---

## 👤 Dev Profile

**Entwickler**: @alexiosg111  
**Location**: Berlin, Germany 🇩🇵

---

## 💼 License

MIT – Use freely for commercial projects

---

**Tipps:**
- 👋 Nutze `make help` für Commands
- 🛠️ Docker lokal? `make docker-up`
- 🔍 Issues? Checke `.env.local` Konfiguration
