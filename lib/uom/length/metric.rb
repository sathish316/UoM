require 'uom/unit_extender'

module Uom
  module Length
    module Metric
      include Uom::UnitExtender

      def self.conversion_factors
        {
          [:km, :kilometer] => 1000,
          [:m, :meter] => 1,
          :decimeter => 0.1,
          [:centimeter, :cm] => 0.01,
          [:millimeter, :mm] => 1e-3,
          [:micrometer, :micron] => 1e-6,
          [:nanometer, :nm] => 1e-9,
          :angstrom => 1e-12
        }
      end

    end
  end
end
