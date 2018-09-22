class Karaoke

  attr_reader :name
  attr_accessor :till


  def initialize(name, guests = [])
    @name = name
    @till = 200
    @guests = guests

  end

  def sell_ticket(price)
    @till += price
  end

  def guest_buys_ticket_karaoke_takes_money
       @karaoke.sell_ticket(@room1.price)
       @guest1.remove_money(@room1.price)
  end


end #class end
