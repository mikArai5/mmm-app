require 'rails_helper'
RSpec.describe Detail, type: :model do
  before do
    @detail = FactoryBot.build(:detail)
  end

  describe "収支詳細入力" do
    context '詳細登録ができるとき' do
      it '全ての項目が正しく入力されているとき' do
        expect(@detail).to be_valid
      end
    end
    context "詳細登録できないとき" do
      it "項目が空だと登録できない" do
        @detail.item_name = ''
        @detail.valid?
        expect(@detail.errors.full_messages).to include "Item name can't be blank"
      end
      it "収支を選択しないと登録できない" do
        @detail.incomes_or_expenses_id = 1
        @detail.valid?
        expect(@detail.errors.full_messages).to include "Incomes or expenses Select"
      end
      it "カテゴリーを選択しないと登録できない" do
        @detail.category_id = 1
        @detail.valid?
        expect(@detail.errors.full_messages).to include "Category Select"
      end
      it "日にちを選択しないと登録できない" do
        @detail.day = ''
        @detail.valid?
        expect(@detail.errors.full_messages).to include "Day can't be blank"
      end
      it "値段を入力しないと登録できない" do
        @detail.price = ''
        @detail.valid?
        expect(@detail.errors.full_messages).to include "Price can't be blank"
      end
      it '価格が半角数字でないと投稿できない' do
        @detail.price = 'price'
        @detail.valid?
        expect(@detail.errors.full_messages).to include "Price Half-width number"
      end
      it '価格が全角では登録できない' do
        @detail.price = '１０００'
        @detail.valid?
        expect(@detail.errors.full_messages).to include "Price Half-width number"
      end
      it '価格が半角英数混合では登録できない' do
        @detail.price = '111aaa'
        @detail.valid?
        expect(@detail.errors.full_messages).to include "Price Half-width number"
      end
      it "支払い方法を選択しないと登録できない" do
        @detail.payment_methods_id = 1
        @detail.valid?
        expect(@detail.errors.full_messages).to include "Payment methods Select"
      end
      it "支払回数を選択しないと登録できない" do
        @detail.number_of_time_id = 1
        @detail.valid?
        expect(@detail.errors.full_messages).to include "Number of time Select"
      end
    end
  end
end
