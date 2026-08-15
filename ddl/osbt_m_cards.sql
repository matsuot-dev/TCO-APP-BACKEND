-- ==========================================
-- TBL-NEO-002: カードマスタ (osbt_m_cards)
-- ==========================================
CREATE TABLE public.osbt_m_cards (
    card_id VARCHAR(10) NOT NULL,
    card_name VARCHAR(50) NOT NULL,
    card_desc TEXT NOT NULL,
    card_img TEXT NOT NULL,
    atk_flg BOOLEAN NOT NULL,
    def_flg BOOLEAN NOT NULL,
    item_flg BOOLEAN NOT NULL,
    cost_oxy SMALLINT,
    atk SMALLINT,
    def SMALLINT,
    hel SMALLINT,
    effect_type SMALLINT,
    PRIMARY KEY (card_id),
    UNIQUE (card_name)
);

COMMENT ON TABLE public.osbt_m_cards IS 'カードの情報';
COMMENT ON COLUMN public.osbt_m_cards.card_id IS 'カードID';
COMMENT ON COLUMN public.osbt_m_cards.card_name IS 'カード名';
COMMENT ON COLUMN public.osbt_m_cards.card_desc IS 'カード効果の説明';
COMMENT ON COLUMN public.osbt_m_cards.card_img IS 'カード写真';
COMMENT ON COLUMN public.osbt_m_cards.atk_flg IS '攻撃フラグ';
COMMENT ON COLUMN public.osbt_m_cards.def_flg IS '防御フラグ';
COMMENT ON COLUMN public.osbt_m_cards.item_flg IS 'アイテムフラグ';
COMMENT ON COLUMN public.osbt_m_cards.cost_oxy IS '消費酸素';
COMMENT ON COLUMN public.osbt_m_cards.atk IS '攻撃力';
COMMENT ON COLUMN public.osbt_m_cards.def IS '防御力';
COMMENT ON COLUMN public.osbt_m_cards.hel IS '回復力';
COMMENT ON COLUMN public.osbt_m_cards.effect_type IS '状態区分 (01:毒(毎ターン1ダメージ))';
