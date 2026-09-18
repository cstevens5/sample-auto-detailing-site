CREATE TABLE IF NOT EXISTS customer_vehicles (
    id UUID PRIMARY KEY,
    customer_id UUID NOT NULL REFERENCES customers (id) ON DELETE CASCADE,
    vehicle_id UUID REFERENCES vehicles (id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    created_by TEXT,
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    updated_by TEXT
);

CREATE UNIQUE INDEX IF NOT EXISTS
idx_customer_vehicles_customer_id_vehicle_id
ON customer_vehicles (customer_id, vehicle_id);