require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe '新規登録' do
    context '新規登録できるとき' do
      it 'emailとpasswordが存在する' do
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'emailが空' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールを入力してください')
      end
      it 'emailが重複している' do
        @user.save
        user = FactoryBot.build(:user, password: 'cccccc', password_confirmation: 'cccccc')
        user.valid?
        expect(user.errors.full_messages).to include('Eメールはすでに存在します')
      end
      it 'emailに@を含んでいない' do
        @user.email = 'aaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールは不正な値です')
      end
      it 'passwordが空' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードを入力してください')
      end
      it 'passwordが5文字以下' do
        @user.password = 'aaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end
      it 'passwordと確認用passwordが不一致' do
        @user.password_confirmation = 'tttttttttt'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end
      it 'passwordが129文字以上' do
        @user.password = 't' * 129
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは128文字以内で入力してください')
      end
    end
  end
end