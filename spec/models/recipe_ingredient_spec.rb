require 'rails_helper'

RSpec.describe RecipeIngredient, type: :model do
  describe "レシピ投稿" do
    before do
      @user = FactoryBot.create(:user)
      @tag = FactoryBot.create(:tag)
      @nutrient = FactoryBot.create(:nutrient)
      @recipe = FactoryBot.build(:recipe_ingredient)
      @recipe.images = fixture_file_upload("/files/test.png")
      @recipe.user_id = @user.id
      @recipe.nutrient_ids = @nutrient.id
    end

    context "レシピが投稿できる時" do
      it "title,content,category_id,description,material,quantity,images,user_id,nutrient_idsがあれば投稿できる" do
        expect(@recipe).to be_valid
      end

      it "tag_idsがなくても投稿できる" do
        @recipe.tag_ids = ""
        expect(@recipe).to be_valid
      end

      it "tag_idsが複数あっても投稿できる" do
        @tags = FactoryBot.create_list(:tag, 2)
        @recipe.tag_ids = @tags.map(&:id)
        expect(@recipe).to be_valid
      end

      it "nutrient_idsが複数あっても投稿できる" do
        @nutrients =  FactoryBot.create_list(:nutrient, 2)
        @recipe.nutrient_ids = @nutrients.map(&:id)
        expect(@recipe).to be_valid
      end
    end

    context "レシピが投稿できない時" do
      it "titleが空では登録できない" do
        @recipe.title = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Title can't be blank"
      end

      it "titleが21文字以上では登録できない" do
        @recipe.title = Faker::String.random(length: 21)
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Title is too long (maximum is 20 characters)"
      end

      it "contentが空では登録できない" do
        @recipe.content = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Content can't be blank"
      end

      it "contentが空では登録できない" do
        @recipe.content = Faker::String.random(length: 1001)
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Content is too long (maximum is 1000 characters)"
      end

      it "category_idが空では登録できない" do
        @recipe.category_id = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Category can't be blank"
      end

      it "titleが空では登録できない" do
        @recipe.title = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Title can't be blank"
      end

      it "descripionが空では登録できない" do
        @recipe.description = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Description can't be blank"
      end

      it "descriptionが空では登録できない" do
        @recipe.description = Faker::String.random(length: 1001)
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Description is too long (maximum is 1000 characters)"
      end

      it "materialが空では登録できない" do
        @recipe.material = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Material can't be blank"
      end

      it "quantityが空では登録できない" do
        @recipe.quantity = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Quantity can't be blank"
      end

      it "titleが空では登録できない" do
        @recipe.title = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Title can't be blank"
      end

      it "imagesが空では登録できない" do
        @recipe.images = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Images can't be blank"
      end

      it "nutrient_idが空では登録できない" do
        @recipe.nutrient_ids = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Nutrient ids can't be blank"
      end

      it "user_idが空では登録できない" do
        @recipe.user_id = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "User can't be blank"
      end
    end
  end
end
