class Guest

  attr_reader :name
  attr_accessor :money


  def initialize(name, money)
    @name = name
    @money = money
  end

  def remove_money(price)
    @money -= price
  end





end #class end
