require 'spec_helper'

RSpec.describe Lamp do
  let(:lamp) { Lamp.new }

  its(:state) { is_expected.to be :off }

  describe :turn_on do
    before { lamp.turn_on }

    subject { lamp }

    its(:state) { is_expected.to be :on }
  end

  describe :turn_off do
    before { lamp.turn_off }

    subject { lamp }

    its(:state) { is_expected.to be :off }
  end
end
