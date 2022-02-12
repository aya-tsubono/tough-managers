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
      it 'introducer_nameが50文字を超えると登録できない' do
        @case.introducer_name = 'a' * 51
        @case.valid?
        expect(@case.errors.full_messages).to include('Introducer name is too long (maximum is 50 characters)')
      end
      it 'case_nameが50文字を超えると登録できない' do
        @case.case_name = 'a' * 51
        @case.valid?
        expect(@case.errors.full_messages).to include('Case name is too long (maximum is 50 characters)')
      end
      it 'ageが50文字を超えると登録できない' do
        @case.age = 'a' * 51
        @case.valid?
        expect(@case.errors.full_messages).to include('Age is too long (maximum is 50 characters)')
      end
      it 'addressが50文字を超えると登録できない' do
        @case.address = 'a' * 51
        @case.valid?
        expect(@case.errors.full_messages).to include('Address is too long (maximum is 50 characters)')
      end
      it 'handicap_levelが500文字を超えると登録できない' do
        @case.handicap_level = 'a' * 501
        @case.valid?
        expect(@case.errors.full_messages).to include('Handicap level is too long (maximum is 500 characters)')
      end
      it 'medical_conditionが500文字を超えると登録できない' do
        @case.medical_condition = 'a' * 501
        @case.valid?
        expect(@case.errors.full_messages).to include('Medical condition is too long (maximum is 500 characters)')
      end
      it 'care_conditionが500文字を超えると登録できない' do
        @case.care_condition = 'a' * 501
        @case.valid?
        expect(@case.errors.full_messages).to include('Care condition is too long (maximum is 500 characters)')
      end
      it 'costが500文字を超えると登録できない' do
        @case.cost = 'a' * 501
        @case.valid?
        expect(@case.errors.full_messages).to include('Cost is too long (maximum is 500 characters)')
      end
      it 'locationが500文字を超えると登録できない' do
        @case.location = 'a' * 501
        @case.valid?
        expect(@case.errors.full_messages).to include('Location is too long (maximum is 500 characters)')
      end
      it 'remarksが500文字を超えると登録できない' do
        @case.remarks = 'a' * 501
        @case.valid?
        expect(@case.errors.full_messages).to include('Remarks is too long (maximum is 500 characters)')
      end
    end
  end
end
