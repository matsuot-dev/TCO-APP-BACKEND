# TBL-DYN-001: 対戦状況 (osbt_game_rooms)
aws dynamodb create-table \
    --table-name osbt_game_rooms \
    --attribute-definitions AttributeName=matching_id,AttributeType=S \
    --key-schema AttributeName=matching_id,KeyType=HASH \
    --billing-mode PAY_PER_REQUEST