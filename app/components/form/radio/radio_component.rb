# frozen_string_literal: true

module Form
  module Radio
    class RadioComponent < ViewComponent::Base
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
