require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    before do
      @user = FactoryBot.build(:user)
    end

    context '正常に登録できる時' do
      it 'nickname,email,passwordを入力すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context '登録できない時' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Nickname can't be blank"
      end
      it 'emailが空では登録できない' do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end
      it 'emailに@が含まれていないと登録できない' do
        @user.email = @user.email.sub(/@/,'')
        @user.valid?
        expect(@user.errors.full_messages).to include "Email is invalid"
      end
      it 'emailにひらがなが含まれていると登録できない' do
        @user.email = "テスト@mail.com"
        @user.valid?
        expect(@user.errors.full_messages).to include "Email is invalid"
      end
      it 'emailに漢字が含まれていると登録できない' do
        @user.email = "試験@mail.com"
        @user.valid?
        expect(@user.errors.full_messages).to include "Email is invalid"
      end
      it '既に使用されているemailでは登録できない' do
        @user2 = FactoryBot.build(:user)
        @user2.email = @user.email
        @user2.save
        @user.valid?
        expect(@user.errors.full_messages).to include "Email has already been taken"
      end
      it 'passwordが空では登録できない' do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end

      it 'passwordが5文字以下では登録できない' do
        @user.password = "pass1"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include "Password is too short (minimum is 6 characters)"
      end

      it 'passwordが21文字以上では登録できない' do
        @user.password = "password1234567891234"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include "Password is too long (maximum is 20 characters)"
      end

      it 'passwordが英語のみでは登録できない' do
        @user.password = "abcdefghigk"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include "Password is invalid"
      end

      it 'passwordが数字だけでは登録できない' do
        @user.password = Faker::Number.number(digits: 20)
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include "Password is invalid"
      end

      it 'passwordにひらがなが含まれていると登録できない' do
        @user.password = "ぱすわーどpass1234"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include "Password is invalid"
      end

      it 'passwordにカタカナが含まれていると登録できない' do
        @user.password = "パスワードpass1234"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include "Password is invalid"
      end

      it 'passwordに漢字が含まれていると登録できない' do
        @user.password = "暗号pass1234"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include "Password is invalid"
      end
      it 'passwordとpassword_confirmationが一致していなければ登録できない' do
        @user.password_confirmation = "1234password"
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
    end
  end
end
