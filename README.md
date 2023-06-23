# テーブル設計

## usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_one :option, dependent: :destroy
- has_many :stockpiles, dependent: :destroy

## stockpilesテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| price   | integer    | null: false                    |
| time    | integer    | null: false                    |
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## optionsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| goal   | string     |                                |
| limit  | date       |                                |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user