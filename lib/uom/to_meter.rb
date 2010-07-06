module Uom

  module ToMeter

    def kilometer
      self.to_f * 1000.0
    end

    alias_method :km,:kilometer

    def meter
      self.to_f * 1
    end

    alias_method :m, :meter

    def decimeter
      self.to_f * 0.1
    end

    def centimeter
      self.to_f * 1e-2
    end

    alias_method :cm, :centimeter

    def millimeter
      self.to_f * 1e-3
    end

    alias_method :mm, :millimeter

    def micrometer
      self.to_f * 1e-6
    end

    alias_method :micron, :micrometer

    def nanometer
      self.to_f * 1e-9
    end

    alias_method :nm, :nanometer

    def angstrom
      self.to_f * 1e-12
    end
  end

end
