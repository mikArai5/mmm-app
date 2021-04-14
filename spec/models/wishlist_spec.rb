require 'rails_helper'

RSpec.describe Wishlist, type: :model do
  before do
    @wishlist = FactoryBot.build(:wishlist)
  end

  describe 'wishlist投稿' do
    context 'wishlist投稿ができるとき' do
      it '全ての項目が正しく入力されているとき' do
        expect(@wishlist).to be_valid
      end
    end
    context 'wishlist投稿ができないとき' do
      it '画像がなければ投稿できない' do
        @wishlist.image = nil
        @wishlist.valid?
        expect(@wishlist.errors.full_messages).to include "Image can't be blank"
      end
      it '名前が空では投稿できない' do
        @wishlist.name = ''
        @wishlist.valid?
        expect(@wishlist.errors.full_messages).to include "Name can't be blank"
      end
      it '価格が空では投稿できない' do
        @wishlist.price = ''
        @wishlist.valid?
        expect(@wishlist.errors.full_messages).to include "Price can't be blank"
      end
      it '価格が半角数字でないと投稿できない' do
        @wishlist.price = 'price'
        @wishlist.valid?
        expect(@wishlist.errors.full_messages).to include "Price Half-width number"
      end
      it '価格が全角では登録できない' do
        @wishlist.price = '１０００'
        @wishlist.valid?
        expect(@wishlist.errors.full_messages).to include "Price Half-width number"
      end
      it '価格が半角英数混合では登録できない' do
        @wishlist.price = '111aaa'
        @wishlist.valid?
        expect(@wishlist.errors.full_messages).to include "Price Half-width number"
      end
    end
  end
end
