# テーブル設計

## users テーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |


### Association
- has_one :details
- has_many :wishlist


## details テーブル
| Column              | Type            | Options                        |
| ------------------- | --------------- | ------------------------------ |
| item_name           | string          | null: false                    |
| memo                | text            |                                |
| incomes_or_expenses | integer         | null: false                    |
| category            | integer         | default: "", null: false       |
| day                 | datetime        | null: false                    |
| price               | integer         | null: false                    |
| payment_methods     | integer         | null: false                    |
| number_of_time      | integer         | null: false                    |
| per_time            | integer         | null: false                    |
| user                | references      | null: false, foreign_key: true |

### Association
- belongs_to :user

## wishlists テーブル
| Column        | Type            | Options                        |
| ------------- | --------------- | ------------------------------ |
| name          | string          | null: false                    |
| price         | integer         | null: false,                   |
| memo          | text            |                                |

### Association
- belongs_to :user

