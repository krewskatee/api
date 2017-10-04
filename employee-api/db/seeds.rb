employee_ids = Employee.pluck(:id)

employee_ids.each do |id|
  rand(0..3).times do
    Address.create!(
                    address_1: Faker::Address.street_address,
                    address_2: Faker::Address.secondary_address,
                    city: Faker::Address.city,
                    state: Faker::Address.state,
                    zip: Faker::Address.zip_code,
                    employee_id: id
                    )
  end
end
