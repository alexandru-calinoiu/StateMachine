require_relative 'lamp_state_machine'

class OnLampState < Aquam::State
  use_machine ::LampStateMachine

  def turn_off
    @object.state = :off
  end
end