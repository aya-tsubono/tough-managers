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
      it 'state_idが空では登録できない' do
        @case.state_id = ''
        @case.valid?
        expect(@case.errors.full_messages).to include("State is not a number")
      end
      it 'case_nameが空では登録できない' do
        @case.case_name = ''
        @case.valid?
        expect(@case.errors.full_messages).to include("Case name can't be blank")
      end
      it 'household_idが空では登録できない' do
        @case.household_id = ''
        @case.valid?
        expect(@case.errors.full_messages).to include("Household is not a number")
      end
      it 'place_idが空では登録できない' do
        @case.place_id = ''
        @case.valid?
        expect(@case.errors.full_messages).to include("Place is not a number")
      end
      it 'economic_status_idが空では登録できない' do
        @case.economic_status_id = ''
        @case.valid?
        expect(@case.errors.full_messages).to include("Economic status is not a number")
      end
      it 'care_level_idが空では登録できない' do
        @case.care_level_id = ''
        @case.valid?
        expect(@case.errors.full_messages).to include("Care level is not a number")
      end
      it 'userが紐付いていないと保存できない' do
        @case.user = nil
        @case.valid?
        expect(@case.errors.full_messages).to include('User must exist')
      end
    end
  end
end
