# As a customer,
# I want to estimate the cost of renting four bikes
#   for a week
# So that I know how much money I will need to pay

require_relative 'bmx_bike'
require_relative 'road_bike'
require_relative 'mountain_bike'
require_relative 'price_calculator'
require_relative 'tail_pack'
require_relative 'pannier'
require_relative 'roll_pack'

tail_pack = TailPack.new()
pannier_1 = Pannier.new()
pannier_2 = Pannier.new()
panniers = [pannier_1, pannier_2]
roll_pack = RollPack.new()

bikes = [
  BmxBike.new(tail_pack),
  RoadBike.new(panniers),
  MountainBike.new(roll_pack),
  MountainBike.new(roll_pack)
]

total = PriceCalculator.new(bikes)

puts "Total price: #{total.order_price}"
