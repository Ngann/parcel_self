require('rspec')
require('parcel')

describe(Parcel) do
  describe("#volume") do
    it("returns the volume of the parcel") do
      test_parcel = Parcel.new(10, 15, 5, 30)
      expect(test_parcel.volume()).to(eq(750))
    end
  end
  describe("#cost_to_ship") do
    it("returns the volume of the parcel") do
      test_parcel = Parcel.new(10, 15, 5, 30)
      expect(test_parcel.cost_to_ship()).to(eq(20))
    end
  end

end
