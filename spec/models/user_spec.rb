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
        
      end
      it 'emailが空では登録できない' do
        
      end
      it 'emailに@が含まれていないと登録できない' do
        
      end
      it 'emailにひらがなが含まれていると登録できない' do
        
      end
      it 'emailに漢字が含まれていると登録できない' do
        
      end
      it '既に使用されているemailでは登録できない' do
        
      end
      it 'passwordが空では登録できない' do
        
      end
      it 'password_confirmationが空では登録できない' do
        
      end
      it 'passwordが5文字以下では登録できない' do
        
      end
      it 'passwordが21文字以上では登録できない' do
        
      end
      it 'passwordが英語のみでは登録できない' do

      end
      it 'passwordが数字だけでは登録できない' do
        
      end
      it 'passwordにひらがなが含まれていると登録できない' do

      end
      it 'passwordに漢字が含まれていると登録できない' do
        
      end
      it 'passwordとpassword_confirmationが一致していなければ登録できない' do
        
      end
    end
  end
end
