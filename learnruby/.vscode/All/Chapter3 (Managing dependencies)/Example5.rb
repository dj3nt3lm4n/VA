#GearWrapper allows your application to create a new
#instance of Gear using an options hash

#when Gear is part of an external interface
module SomeFramework
  class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring,cog, wheel)
      @chainring = chainring
      @cog       = cog
      @wheel     = wheel
    end

    def gear_inches
      ratio * wheel.diameter
    end
   
    def ratio
      chainring / cog.to_f
    end

    end

    class Wheel
      attr_reader :rim, :tire
      def initialize(rim, tire)
        @rim    = rim
        @tire   = tire
      end
    
      def diameter
        rim + (tire * 2)
      end
    end


# wrap the interface to protect yourself from changes
    module GearWrapper
      def self.gear(args)
        SomeFramework::Gear.new(args[:chainring],
                                args[:cog],
                                args[:wheel])
        end
      end

    end
# you can create a new gear using an arguments hash.
GearWrapper.gear(
      :chainring => 52,
      :cog       => 11,
      :wheel     => wheel.new(26,1.5)).gear_inches
#Using a module here lets you define a separate and 
#distinct object to which you can send the gear message