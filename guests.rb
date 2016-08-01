

class Guest
  attr_reader :name
  attr_accessor :cash

  def initialize(full_name, cash)
    @name = full_name
    @cash = cash
  end

  def can_afford?(price)
    return true if @cash>=price
    return false
  end



end