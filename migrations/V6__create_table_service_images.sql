CREATE TABLE IF NOT EXISTS service_images (
    id UUID PRIMARY KEY,
    service_id UUID REFERENCES services (id),
    image_id UUID REFERENCES images (id),
    created_at TIMESTAMPTZ DEFAULT NOW(),
    created_by TEXT,
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    updated_by TEXT
);