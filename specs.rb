$LOAD_PATH.unshift File.expand_path('..', __FILE__)
require 'quiz'

describe "Ruby 101 Quiz" do
  let(:vehicle)    { Vehicle.new }
  let(:car)        { Car.new }
  let(:motorcycle) { Motorcycle.new }
  let(:helicopter) { Helicopter.new }

  describe "vehicles" do
    it "uses a symbol for color" do
      vehicle.color = 'orange'
      expect(vehicle.color).to eq :orange
    end
  end

  describe "motocycles" do
    it "has no doors" do
      expect(motorcycle.doors).to be_zero
    end

    it "has two wheels" do
      expect(motorcycle.wheels).to eq 2
    end
  end

  describe "helicopters" do
    it "can be flown" do
      expect(helicopter).to be_flyable
    end
  end

  describe TheWorld do
    let(:world) { $world }

    describe "jeep" do
      let(:jeep) { world.jeep }

      it "is black" do
        expect(jeep.color).to eq :black
      end

      it "is a 2014" do
        expect(jeep.year).to eq 2014
      end

      it "has 4 doors" do
        expect(jeep.doors).to eq 4
      end
    end

    describe "motorcycle" do
      let(:motorcycle) { world.motorcycle }

      it "is :chrome in color" do
        expect(motorcycle.color).to eq :chrome
      end
    end

    describe "students" do
      it "has a student" do
        expect(world.student).to be_a String
      end
    end
  end
end

