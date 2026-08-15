-- ==========================================
-- TBL-NEO-003: デッキの情報 (osbt_card_drop_rates)
-- ==========================================
CREATE TABLE public.osbt_card_drop_rates (
    area_id VARCHAR(10) NOT NULL,
    card_id VARCHAR(10) NOT NULL,
    drop_weight SMALLINT NOT NULL,
    PRIMARY KEY (area_id, card_id),
    FOREIGN KEY (area_id) REFERENCES public.osbt_m_areas(area_id),
    FOREIGN KEY (card_id) REFERENCES public.osbt_m_cards(card_id)
);

COMMENT ON TABLE public.osbt_card_drop_rates IS 'デッキの情報';
COMMENT ON COLUMN public.osbt_card_drop_rates.area_id IS 'エリアID (osbt_m_areasのarea_idを参照)';
COMMENT ON COLUMN public.osbt_card_drop_rates.card_id IS 'カードID (osbt_m_cardsのcard_idを参照)';
COMMENT ON COLUMN public.osbt_card_drop_rates.drop_weight IS 'カードの重み (カードの合計基準値：100)';