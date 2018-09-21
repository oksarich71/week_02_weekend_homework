class Karaoke

  attr_reader :name
  attr_accessor :till


  def initialize(name)
    @name = name
    @till = 200
  end

  def sell_ticket(price)
    @till += price
  end

  

end #class end
