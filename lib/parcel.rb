class Parcel


  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
    @length * @width * @height
  end

  def weight_cost
    weight_bucket = Hash.new()
    weight_bucket.store(1..10, 10)
    weight_bucket.store(11..20, 15)
    weight_bucket.store(21..30, 20)
    weight_bucket.store(31..40, 25)
    weight_bucket.store(41..50, 30)
    weight_bucket.store(51..60, 35)
    weight_bucket.store(61..1000, 50)

    @weight_bucket = weight_bucket.select {|key| key === @weight}.values.first
  end

  def ship_cost
    ship_bucket = Hash.new()
    ship_bucket.store("Ground", 10)
    ship_bucket.store("Two Day", 15)
    ship_bucket.store("Overnight", 20)
    @ship_bucket = ship_bucket.select {|key| key === @ship_type}.values.first
  end

  def cost_to_ship
    weight_cost
  end

end
