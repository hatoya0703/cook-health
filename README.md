# README

# model&table design

## users table
| Column             | Type    | Options                 |
| ------------------ | ------- | ----------------------- |
| nickname           | string  | null: false             |
| email              | string  | null: false unique:true |
| encrypted_password | string  | null: false             |

## User model association
has_many :recipes
has_many :comments
has_many :likes

## recipes table(レシピ)
| Column  | Type       | Options                       |
| ------- | ---------- | ----------------------------- |
| title   | string     | null: false                   |
| content | text       | null: false                   |
| user    | references | null: false foreign_key: true |

## Recipe model association
belongs_to :user
has_one :ingredient
has_many :foods_recipes
has_many :foods, belongs_to :foods_recipes
has_many :comments
has_many :likes
has_many :recipes_tags
has_many :tags, belongs_to :recipes_tags

## ingredients table（レシピの材料）
| Column   | Type       | Options                       |
| -------- | ---------- | ----------------------------- |
| material | string     | null: false                   |
| quantity | string     | null: false                   |
| recipe   | references | null: false foreign_key: true |

## Ingredient model association
belongs_to :recipe

## foods table（レシピに使う主な材料）
| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| food_name    | string | null: false |
| food_content | text   | null: false |

## Food model association
has_many :foods_recipes
has_many :recipes belongs_to :foods_recipes
has_many :foods_nutrients
has_many :nutrients belongs_to :food_nutrients

## nutrients table
| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| nutrient_name    | string | null: false |
| nutrient_content | text   | null: false |

## Nutrient model association
has_many :foods_nutrients
has_many :foods belongs_to :food_nutrients

## tags table association
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| tag_name | string | null: false |

## main_foods_nutrients table
has_many: recipes_tags
has_many: recipes belongs_to :recipes_tags