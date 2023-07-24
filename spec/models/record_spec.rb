require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @record = FactoryBot.build(:record)
  end

  describe '記録登録' do
    context '記録登録できるとき' do
      it '必要な情報が存在する' do
        expect(@record).to be_valid
      end 
    end
    context '記録登録できないとき' do
      it 'contentが空' do
        @record.content = ''
        @record.valid?
        expect(@record.errors.full_messages).to include('Contentを入力してください')
      end
      it 'priceとtime_minuteが空' do
        @record.price = ''
        @record.time_minute = ''
        @record.valid?
        expect(@record.errors.full_messages).to include('Priceを入力してください', 'Time minuteを入力してください')
      end
      it 'rateが空' do
        @record.rate = ''
        @record.valid?
        expect(@record.errors.full_messages).to include('Rateを入力してください')
      end
      it 'userが紐づいてない' do
        @record.user = nil
        @record.valid?
        expect(@record.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
