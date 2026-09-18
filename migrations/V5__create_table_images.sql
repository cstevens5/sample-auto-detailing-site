CREATE TABLE IF NOT EXISTS images (
    id UUID PRIMARY KEY,
    object_key TEXT NOT NULL,
    bucket TEXT  NOT NULL,
    version_id TEXT,
    content_type TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    created_by TEXT,
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    updated_by TEXT,

    UNIQUE (bucket, object_key)
    
);