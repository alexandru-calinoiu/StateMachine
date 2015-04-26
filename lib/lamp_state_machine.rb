require 'aquam'

class LampStateMachine < Aquam::Machine
  require_relative 'on_lamp_state'
  require_relative 'off_lamp_state'


  state :on, OnLampState
  state :off, OffLampState

  event :turn_on do
    transition from: :off, to: :on
  end

  event :turn_off do
    transition from: :on, to: :off
  end

end