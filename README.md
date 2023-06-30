# テーブル設計

## usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_one :option, dependent: :destroy
- has_many :records, dependent: :destroy

## recordsテーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| price       | integer    | null: false                    |
| time_minute | integer    | null: false                    |
| content     | string     | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## optionsテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| goal     | string     |                                |
| goal_day | date       |                                |
| rate     | integer    |                                |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user