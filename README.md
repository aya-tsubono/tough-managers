
# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| user_name          | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |

### Association

- has_many :cases


## cases テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| date               | date       | null: false                    |
| state_id           | integer    | null: false                    |
| introducer_id      | integer    |                                |
| introducer_name    | string     |                                |
| case_name          | string     | null: false                    |
| age                | string     |                                |
| address            | string     |                                |
| household_id       | integer    | null: false                    |
| place_id           | integer    | null: false                    |
| economic_status_id | integer    | null: false                    |
| care_level_id      | integer    | null: false                    |
| handicap_level_id  | integer    | null: false                    |
| cost               | string     |                                |
| location           | string     |                                |
| medical_condition  | text       |                                |
| care_condition     | text       |                                |
| remarks            | text       |                                |
| move_in_date       | date       |                                |
| main_fee           | integer    |                                |
| other_fee          | integer    |                                |
| home_name          | string     |                                |
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