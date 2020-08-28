puts 'starting seeds'

5.times do |i|
    # i = 0
    # i = 2
    # ... i = 4
    product = Product.create!(name: Faker::Company.name, tagline: Faker::Company.catch_phrase)
    puts "Created product number: #{i}: name: #{product.name}"
end

puts 'seed finished'