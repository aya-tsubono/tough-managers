
# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| name               | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |

### Association

- has_many :cases


## cases テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| date               | date       | null: false                    |
| state_id           | integer    | null: false                    |
| introducer_id      | integer    | null: false                    |
| introducer_name    | string     | null: false                    |
| case_name          | string     | null: false                    |
| age                | string     | null: false                    |
| address            | string     | null: false                    |
| household_id       | integer    | null: false                    |
| place_id           | integer    | null: false                    |
| economic_status_id | integer    | null: false                    |
| care_level_id      | integer    | null: false                    |
| handicap_level_id  | integer    | null: false                    |
| cost               | string     | null: false                    |
| location           | string     | null: false                    |
| medical_condition  | text       | null: false                    |
| care_condition     | text       | null: false                    |
| remarks            | text       | null: false                    |
| move_in_date       | date       | null: false                    |
| main_fee           | integer    | null: false                    |
| other_fee          | integer    | null: false                    |
| home_name          | string     | null: false                    |
| user_id            | references | null: false, foreign_key: true |

### Association

- has_many :memos
- belongs_to :user


## memos テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| content     | text       | null: false                    |
| user_id     | references | null: false, foreign key: true |

### Association

- belongs_to :case