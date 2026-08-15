-- ==========================================
-- TBL-NEO-001: エリアマスタ (osbt_m_areas)
-- ==========================================
CREATE TABLE public.osbt_m_areas (
    area_id VARCHAR(10) NOT NULL,
    area_name VARCHAR(50) NOT NULL,
    area_desc TEXT NOT NULL,
    area_image TEXT NOT NULL,
    hp SMALLINT NOT NULL,
    oxy SMALLINT NOT NULL,
    PRIMARY KEY (area_id),
    UNIQUE (area_name),
    UNIQUE (area_image)
);

COMMENT ON TABLE public.osbt_m_areas IS '地域の情報';
COMMENT ON COLUMN public.osbt_m_areas.area_id IS 'エリアID';
COMMENT ON COLUMN public.osbt_m_areas.area_name IS 'エリア名';
COMMENT ON COLUMN public.osbt_m_areas.area_desc IS 'エリア説明';
COMMENT ON COLUMN public.osbt_m_areas.area_image IS 'エリア写真';
COMMENT ON COLUMN public.osbt_m_areas.hp IS '初期体力';
COMMENT ON COLUMN public.osbt_m_areas.oxy IS '初期酸素';
