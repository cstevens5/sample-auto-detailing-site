CREATE TABLE IF NOT EXISTS vehicles (
    id UUID NOT NULL PRIMARY KEY,
    vehicle_type TEXT NOT NULL,
    make TEXT NOT NULL,
    model TEXT NOT NULL,
    license_number TEXT UNIQUE,
    color TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    created_by TEXT,
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    updated_by TEXT
);

CREATE INDEX IF NOT EXISTS idx_vehicles_id
ON vehicles (id);