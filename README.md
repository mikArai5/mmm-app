# アプリ名：　
mieeer

#　概要
日常の収支状況を把握できる
wishlistでお金を使いたいものを把握できる

# 制作背景
お金の管理が苦手で毎月収入額とほぼ同じ額支出してしまっているため
まずは何に使っているのか・どんなカテゴリーに対しての支出が多いのか
今何が欲しいと思っていてそれがいくらくらいの出費になるのか
把握したいと思ったため。それにより無駄遣いに気が付けたり
欲しいものを買うためのモチベーションにつなげて行きたいと思い
このアプリを作ることを決めた。

# DEMO

https://gyazo.com/99a869119e58d51b7d558222cfeb8745

# 実装予定の内容
カード分割払いの支払スケジュール管理機能


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

