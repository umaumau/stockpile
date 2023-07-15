require 'rails_helper'

RSpec.describe User, type: :model do
  describe '新規登録' do
    context '新規登録できるとき' do
      it 'emailとpasswordが存在する' do
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'emailが空' do
      end
      it 'emailが重複している' do
      end
      it 'emailに@を含んでいない' do
      end
      it 'passwordが空' do
      end
      it 'passwordが5文字以下' do
      end
      it 'passwordと確認用passwordが不一致' do
      end
      it 'passwordが129文字以上' do
      end
    end
  end
end
