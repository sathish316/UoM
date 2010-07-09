module Uom
  module UnitExtender

    def self.included(unit_type)
      unit_type.instance_eval do

        def included(base)
          conversion_factors.each do |units, factor|
            [units].flatten.each do |unit|
              define_method unit do
                self.to_f * factor
              end
            end
          end
        end

      end
    end

  end
end
