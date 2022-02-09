require 'rails_helper'

RSpec.describe Case, type: :model do
  before do
    @case = FactoryBot.build(:case)
  end

  describe 'case登録' do
    context '登録できる場合' do
      it '必須項目を正しく入力すれば登録できる' do
        expect(@case).to be_valid
      end
    end
    context '登録できない場合' do
      it 'dateが空では登録できない' do
        @case.date = ''
        @case.valid?
        expect(@case.errors.full_messages).to include("Date can't be blank")
      end
    end
  end
end
