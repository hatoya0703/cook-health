# Name（リポジトリ/プロジェクト/OSSなどの名前）
CookHealth

# DEMO

# Deployment
Preparing to deploy …

# Features
This application is my portfolio. 

You can post and view recipes. 
The recipe clearly states the nutrition you can get, so you can be healthy. 

# Main technologies used
* Ruby
* Ruby on Rails
* JavaScript(JQuery)
* Git(only CLI)
* AWS

# Git Hub URL
https://github.com/hatoya0703/cook-health

# Main function

* post your recipe
* complex recipe search(keys : title, tags, nutrient, category)
* add recipe to your favorites
* post comment to recipe

# Note

Appearance and some features are currently being implemented , sorry.

# Author

* Hayato Fukishima

# model&table design

## users table
| Column             | Type    | Options                 |
| ------------------ | ------- | ----------------------- |
| nickname           | string  | null: false             |
| email              | string  | null: false unique:true |
| encrypted_password | string  | null: false             |

## user model association
- has_many :recipes
- has_many :comments
- has_many :comment_recipes, through: :comments, source: :recipe
- has_many :favorites
- has_many :favorite_recipes, through: :favorites, source: :recipe

## recipes table(レシピ)
| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| title       | string     | null: false                   |
| category_id | integer    | null: false                   |
| description | text       | null: false                   |
| content     | text       | null: false                   |
| user        | references | null: false foreign_key: true |

## recipe model association
- belongs_to :user
- has_many :ingredients
- has_many :comments
- has_many :users, through: :comments
- has_many :favorites
- has_many :favorite_users, :through: favorites, source: :user
- has_many :recipe_tags
- has_many :tags, through: :recipe_tags
- has_many :recipe_nutrients
- has_many :nutrients, through: :recipe_nutrients

## ingredients table（レシピの材料）
| Column   | Type       | Options                       |
| -------- | ---------- | ----------------------------- |
| material | string     | null: false                   |
| quantity | string     | null: false                   |
| recipe   | references | null: false foreign_key: true |

## ingredient model association
- belongs_to :recipe

## comments table
| Column          | Type       | Options                       |
| --------------- | ---------- | ----------------------------- |
| comment_content | text       | null: false                   |
| user            | references | null: false foreign_key: true |
| recipe          | references | null: false foreign_key: true |

## comment model association
- belongs_to :user
- belongs_to :recipe

## favorites table
| Column | Type       | Options                       |
| ------ | ---------- | ----------------------------- |
| user   | references | null: false foreign_key: true |
| recipe | references | null: false foreign_key: true |

## favorite model association
- belongs_to :user
- belongs_to :recipe

## nutrients table
| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| nutrient_name    | string | null: false |
| nutrient_content | text   | null: false |

## nutrient model association
- has_many :recipe_nutrients
- has_many :recipes through: :recipe_nutrients

## recipe_nutrients table
| Column   | Type      | Options                       |
| -------- | --------- | ----------------------------- |
| recipe   | reference | null: false foreign_key: true |
| nutrient | reference | null: false foreign_key: true |

## recipe nutrient model association
- belongs_to: recipe
- belongs_to: nutrient

## tags table association
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| tag_name | string | null: false |

## tag table association
- has_many: recipe_tag
- has_many: recipes belongs_to :recipe_tag

## recipe_tags table
| Column  | Type      | Options                       |
| ------- | --------- | ----------------------------- |
| recipe  | reference | null: false foreign_key: true |
| tag     | reference | null: false foreign_key: true |

## recipe tag model association
- belongs_to: recipe
- belongs_to: tag