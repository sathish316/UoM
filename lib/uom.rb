require 'uom/length/metric'

class Numeric
  include Uom::Length::Metric

  def method_missing(m,*args)
    if m.to_s =~ /to\_(\w+)/ and self.respond_to?($1)
      conversion_factor = 1.send($1)
      to_f / conversion_factor
    else
      super
    end
  end
end
