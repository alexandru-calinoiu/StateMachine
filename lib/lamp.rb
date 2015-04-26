class Lamp
  attr_accessor :state, :brand, :voltage

  def turn_on
    fail 'already on' if state == :on

    @state = :on
  end

  def turn_off
    fail 'already off' if state == :off

    @state = :off
  end
end
