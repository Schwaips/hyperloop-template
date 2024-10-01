# frozen_string_literal: true

module Form
  module Input
    class InputComponent < ViewComponent::Base
      def initialize(type: 'string', # rubocop:disable Metrics/ParameterLists
                     required: false,
                     label: nil,
                     hint: nil,
                     placeholder: nil,
                     error: nil,
                     disabled: false)
        super

        @type = type
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
