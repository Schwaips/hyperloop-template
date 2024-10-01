# frozen_string_literal: true

module Form
  module Switch
    class SwitchComponent < ViewComponent::Base
      def initialize(required: false,
                     label: nil,
                     hint: nil,
                     error: nil,
                     disabled: false)
        super

        @label = label
        @required = required
        @hint = hint
        @error = error
        @disabled = disabled
      end
    end
  end
end
