# TaskShareのER図

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    |  text  | null: false |
| occupation |  text  | null: false |
| position   |  text  | null: false |

### Association

- has_many :tasks

## tasks テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| title            | string     | null: false                    |
| matter           | text       | null: false                    |
| status_id        | integer    | null: false                    |
| scheduled_date   | date       | null: false                    |
| completion_date  | date       | null: false                    |
| progress_id      | integer    | null: false                    |
| flag_id          | integer    | null: false                    |
| supplement       | text       |                                |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user