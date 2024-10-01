# frozen_string_literal: true

module Form
  module Password
    class PasswordComponent < ViewComponent::Base
      def initialize(required: false, # rubocop:disable Metrics/ParameterLists
                     label: nil,
                     hint: nil,
                     placeholder: nil,
                     error: nil,
                     disabled: false)
        super

        @label = label
        @placeholder = placeholder
        @required = required
        @hint = hint
        @error = error
        @disabled = disabled
      end
    end
  end
end
