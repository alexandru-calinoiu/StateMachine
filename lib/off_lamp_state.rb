require_relative 'lamp_state_machine'

class OffLampState < Aquam::State
  use_machine ::LampStateMachine

  def turn_on
    @object.state = :on
  end
end