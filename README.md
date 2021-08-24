# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :messages


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       |                                |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :user

## chats テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       |                                |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :user



## アプリケーション概要 
1. ユーザー登録をすればチャット機能を用いてコミニケーションが取れるアプリ
2. チャット機能の他に画像も載せることができる

## URL	デプロイ済みのURLを記述。デプロイが済んでいない場合は、デプロイが完了次第記述すること。
[https://second-app36240.herokuapp.com/](URL)

## テスト用アカウント	
1. メールアドレス 08062151874@icloud.com
2. パスワード    11111q

## 利用方法	
1. ユーザーの新規登録または登録を済ませているユーザーはログインを行い <br>
   ログインボタンでチャットページに遷移
   チャットページで書き込みたい内容また載せたい画像等があれば各個人のフォルダから選択をし<br>
   送信ボタンを押せばチャットページに載せることができる

