class Seed

Product.destroy_all

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    7.times do |i|
      Product.create!(name: Faker::Food.unique.dish, price: rand(10...100), image: Faker::Avatar.image)
    end
  end
end

Seed.begin
p "Created #{Product.count} products"
