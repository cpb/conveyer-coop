FactoryBot.define do
  factory :profile do
    address { "123 User Address"}
    postal_code { "H0H 0H0" }
    city
    user
  end
end
