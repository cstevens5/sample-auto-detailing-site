CREATE TABLE IF NOT EXISTS customers (
    id UUID NOT NULL PRIMARY KEY,
    email TEXT NOT NULL,
    phone_number TEXT NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    created_by TEXT,
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    updated_by TEXT,

    UNIQUE (email, phone_number)
);

CREATE INDEX IF NOT EXISTS idx_customers_id ON customers (id);