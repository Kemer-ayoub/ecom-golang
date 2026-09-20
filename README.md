# ecom-golang# Ecom API

A REST API for an e-commerce backend, written in Go.

## Stack

- Go with chi (router)
- PostgreSQL 16 (Docker)
- pgx (driver)
- sqlc (type-safe query generation)
- goose (migrations)

## Getting started

### Prerequisites

- Go 1.22+
- Docker Desktop
- goose and sqlc installed

### Setup

```bash
# 1. Start Postgres
docker compose up -d

# 2. Configure environment
cp .env.example .env

# 3. Run migrations
goose up

# 4. Start the server
go run ./cmd
```

The API listens on `http://localhost:8080`.

## Endpoints

| Method | Path        | Description        |
|--------|-------------|--------------------|
| GET    | /health     | Health check       |
| GET    | /products   | List all products  |

## Project structure

```
cmd/                     entrypoint and server setup
internal/
  adapters/postgresql/   migrations and sqlc-generated code
  products/              product handlers and service
  orders/                order handlers and service
  json/                  JSON response helpers
  env/                   environment helpers
```