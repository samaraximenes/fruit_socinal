FactoryBot.define do
    factory :fruit do 
        name {Faker::Food.fruits}
        carbohydrates {Faker::Number.number(digits: 3)}
        protein {Faker::Number.number(digits: 3)}
        fat {Faker::Number.decimal(l_digits: 2, r_digits: 2)}
    end
end