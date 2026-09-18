CREATE TABLE IF NOT EXISTS services (
    id UUID PRIMARY KEY,
    service_name TEXT NOT NULL,
    price NUMERIC(10, 2),
    created_at TIMESTAMPTZ DEFAULT NOW(),
    created_by TEXT,
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    updated_by TEXT
);

CREATE INDEX IF NOT EXISTS idx_services_id
ON services (id);