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
    
  end
end
