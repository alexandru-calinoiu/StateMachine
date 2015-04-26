require_relative 'lamp_state_machine'

class Lamp
  attr_accessor :state, :brand, :voltage

  def turn_on
    state_machine.current_state.turn_on
  end

  def turn_off
    state_machine.current_state.turn_off
  end

  private

  def state_machine
    @state_machine ||= LampStateMachine.new(self)
  end

  def state
    @state ||= :off
  end
end
