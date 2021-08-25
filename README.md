## アプリケーション概要 
1. ユーザー登録をすればチャット機能を用いてコミニケーションが取れるアプリ
2. チャット機能の他に画像も載せることができる
3. メモの部屋を選べばメモがかける(メモの部屋は書いた本人のメモしか反映されない)

## URL	
[https://second-app36240.herokuapp.com/](URL)

## テスト用アカウント	
1. メールアドレス 08062151874@icloud.com
2. パスワード    11111q

## 利用方法	
1. ユーザーの新規登録または登録を済ませているユーザーはログインを行い <br>
2. ログインボタンでチャットページに遷移<br>
3. チャットページで書き込みたい内容また載せたい画像等があれば各個人のフォルダから選択をし<br>
4. 送信ボタンを押せばチャットページに載せることができる

### 新規登録 ログイン
[![Image from Gyazo](https://i.gyazo.com/d084cd0535c51b55a8fa64d219e7ea63.png)](https://gyazo.com/d084cd0535c51b55a8fa64d219e7ea63)
[![Image from Gyazo](https://i.gyazo.com/d26b50d3f54f33eed3a6b381bd0c263d.png)](https://gyazo.com/d26b50d3f54f33eed3a6b381bd0c263d)
1. ユーザーの新規登録または登録を済ませているユーザーはログインを行う

[![Image from Gyazo](https://i.gyazo.com/3ce74748e3b3050fe64a686233ea1750.gif)](https://gyazo.com/3ce74748e3b3050fe64a686233ea1750)
2. ログインボタンでチャットページに遷移

### ログイン後のトップ画面
[![Image from Gyazo](https://i.gyazo.com/86715e4980dee266d293fa0a628811fe.png)](https://gyazo.com/86715e4980dee266d293fa0a628811fe)

### ページを遷移
[![Image from Gyazo](https://i.gyazo.com/6a9889d50782990a2320691fbfd6dbea.gif)](https://gyazo.com/6a9889d50782990a2320691fbfd6dbea)

### チャットを記入後送信ボタンを押せば反映される
[![Image from Gyazo](https://i.gyazo.com/62ae7a33c010f9a8c36f746aada6d8a4.gif)](https://gyazo.com/62ae7a33c010f9a8c36f746aada6d8a4)
<br>
<br>
<br>
## 工夫した点
1.書き込める部屋を3つ作りました<br>
2.メモの部屋は自分にしか見えないように制限をかけました

<br>
<br>
<br>


## 使用技術(開発環境)

### バックエンド
Ruby, Ruby on Rails

### フロントエンド
Html, css

### フロントエンド
Html, css

### データベース
MYSQL SequelPro
### インフラ
heroku

### ソース管理
GitHub, GitHubDesktop

### エディタ
VSCode


<br>
<br>
<br>


# 課題や今後実装したい機能 
1.メモを削除できる機能<br>
2.送信した画像が枠が小さいので見えづらい






## テーブル設計

### users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :messages


### messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       |                                |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :user

### chats テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       |                                |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :user

### memos テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       |                                |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :user