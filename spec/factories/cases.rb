FactoryBot.define do
  factory :case do
    date { Faker::Date.backward }
    state_id  { Faker::Number.between(from: 1, to: 7) }
    introducer_id  { Faker::Number.between(from: 1, to: 6) }
    introducer_name  { Faker::Name.name }
    case_name  { Faker::Name.name }
    age  { Faker::Lorem.sentence }
    address  { Faker::Lorem.sentence }
    household_id  { Faker::Number.between(from: 1, to: 3) }
    place_id  { Faker::Number.between(from: 1, to: 4) }
    economic_status_id  { Faker::Number.between(from: 1, to: 4) }
    care_level_id  { Faker::Number.between(from: 1, to: 9) }
    handicap_level  { Faker::Lorem.sentence }
    cost  { Faker::Lorem.sentence }
    location  { Faker::Lorem.sentence }
    medical_condition  { Faker::Lorem.sentence }
    care_condition  { Faker::Lorem.sentence }
    remarks  { Faker::Lorem.sentence }
    move_in_date  { Faker::Date.backward }
    main_fee  { Faker::Number.between(from: 0, to: 9_999_999) }
    other_fee  { Faker::Number.between(from: 0, to: 9_999_999) }
    home_name  { Faker::Lorem.sentence }

    association :user
  end
end
