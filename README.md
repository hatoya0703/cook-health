# **README(日本語版)**

# アプリケーション名

CookHealth

# デモ画面

# デプロイURL
- URL:http://18.177.11.155
- AWSにてデプロイしました。

# アプリの趣旨
このアプリケーションは私のポートフォリオです。

レシピを投稿したり閲覧することができます。
レシピには摂取できる栄養が明示してあるので、健康を考慮することができます。

# 使用した主な技術
- HTML
- CSS(SCSS)
- Ruby
- Ruby on Rails
- JavaScript(JQuery)
- Git(GUIは不使用)
- AWS(EC2,S3)
- Capistrano

# GitHubのURL
https://github.com/hatoya0703/cook-health

# 閲覧用ユーザー

- ゲストユーザーにてログインしてください。ログインするためのリンクはヘッダーに設置してあります。


# 主な機能

- レシピ投稿機能
- 複雑な検索機能(検索キー : レシピ名,タグ,栄養,カテゴリー)
- レシピお気に入り登録機能
- コメント投稿機能

# アプリケーションの特徴
## SPAを意識し、画面遷移をせずとも多くの機能を使用できるように実装しました。<br><br>
### **具体的な機能及び設計**<br><br>
#### *トップページ*
- ページネーション機能と無限スクロール機能を組み合わせ、レシピの一覧を、処理負荷を抑えながら１ページで表示する機能を実装しました。
#### *サイドバー（複数条件での検索）*
- 栄養について知らないものがあったとき、解説ページに遷移しなくても概要が分かるように、マウスオーバーすることで一言コメントを非同期にて表示する機能を実装しました。
#### *レシピ投稿ページ*
- お気に入り登録及び解除は、非同期で反映されます。
- コメント投稿したとき、非同期で反映されます。

# 実装中機能
- レシピの作り方を段階的登録できる機能（手順１=>手順２=>…）
- レシピの材料と分量のカラムをもつ、新たなテーブルを作成予定
- 外観のアップデート
<br><br><br>
# **README(English ver.)**


# Name

CookHealth

# DEMO

# Deployment
- URL:http://18.177.11.155
- Deployed by AWS

# Features
This application is my portfolio. 

You can post and view recipes. 
The recipe clearly states the nutrition you can get, so you can consider your health. 

# Main technologies used
- HTML
- CSS(SCSS)
- Ruby
- Ruby on Rails
- JavaScript(JQuery)
- Git(only CLI)
- AWS(EC2,E3)
- Capistrano

# Application strengths

## With SPA in mind, we have implemented it so that many functions can be used without screen transitions.

### **Specific functions and design**

#### *Top page*
- By combining the pagination function and the infinite scroll function, we have implemented a function to display the recipe list on one page while reducing the processing load.

#### *Side bar*
- We have implemented a function to display a single comment asynchronously by hovering the mouse so that you can understand the outline without transitioning to the explanation page when there is something you do not know about nutrition.

#### *Post recipe page*
- Favorite registration and cancellation are reflected asynchronously.
- When you post a comment, it will be reflected asynchronously. 


# GitHub URL
https://github.com/hatoya0703/cook-health

# Main function

- post your recipe
- complex recipe search(keys : title, tags, nutrient, category)
- add recipe to your favorites
- post comment to recipe

# Browsing user

- Please log in as a guest user. A link to log in is provided in the header.


# Features being implemented
- A function that allows you to register how to make recipes step by step
- I plan to create a new table with recipe ingredients and quantities in columns
- Appearance update