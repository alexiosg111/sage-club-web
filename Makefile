.PHONY: help setup install dev docker-up docker-down clean

help:
	@echo "SAGE Club Web - Available Commands"
	@echo ""
	@echo "Development:"
	@echo "  make setup        - Complete setup (pnpm install + env file)"
	@echo "  make install      - Install dependencies"
	@echo "  make dev          - Start development server"
	@echo ""
	@echo "Docker:"
	@echo "  make docker-up    - Start Docker containers (Postgres + Redis)"
	@echo "  make docker-down  - Stop Docker containers"
	@echo ""
	@echo "Maintenance:"
	@echo "  make clean        - Clean all build artifacts and cache"
	@echo "  make lint         - Run linter"

settup:
	@bash ./setup.sh

install:
	@echo "⚙️  Installing dependencies..."
	@pnpm install

dev:
	@echo "🚀 Starting development server..."
	@pnpm dev

docker-up:
	@echo "📄 Starting Docker containers..."
	@docker-compose up -d
	@echo "✓ Postgres running on localhost:5432"
	@echo "✓ Redis running on localhost:6379"

docker-down:
	@echo "📅 Stopping Docker containers..."
	@docker-compose down
	@echo "✓ Containers stopped"

clean:
	@echo "🗑️  Cleaning build artifacts..."
	@rm -rf node_modules .next dist
	@rm -rf apps/*/node_modules apps/*/.next
	@echo "✓ Clean complete"

lint:
	@echo "📝 Running linter..."
	@pnpm lint
