-- +goose Up
CREATE TABLE IF NOT exists products (
    id BIGSERIAL primary KEY,
    name TEXT NOT NULL,
    price_in_cents INTEGER NOT NULL CHECK (price_in_cents >= 0),
    quantity INTEGER NOT NULL DEFAULT 0,
    created_at timestamp NOT NULL DEFAULT now()
);
-- +goose Down
DROP TABLE IF EXISTS products;