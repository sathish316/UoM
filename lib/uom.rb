require 'uom/to_meter'

class Fixnum
  include Uom::ToMeter

end

class Float
  include Uom::ToMeter

  def method_missing(m,*args)
    if m.to_s =~ /to\_(\w+)/
      conversion_factor = 1.send($1)
      to_f / conversion_factor
    else
      super
    end
  end
end
