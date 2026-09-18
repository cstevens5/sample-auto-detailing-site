CREATE TABLE IF NOT EXISTS before_after_entries (
    id UUID PRIMARY KEY,
    before_image_id UUID REFERENCES images (id),
    before_text TEXT,
    after_image_id UUID REFERENCES images (id),
    after_text TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    created_by TEXT,
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    updated_by TEXT
);