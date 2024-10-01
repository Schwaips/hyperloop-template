# frozen_string_literal: true

module Form
  class InputComponentPreview < ViewComponent::Preview
    # This component is only for preview do not render in production use simple form instead
    # --------------------------------------------------------------------------------------
    # ```erb
    # <%= f.input :attribute_name %>
    # ```
    #
    # @param type select { choices: ['string', 'email', 'url', 'tel', 'search', 'text', 'file', 'integer' ] }
    # @param required toggle
    # @param label text
    # @param placeholder text
    # @param hint text
    # @param error text
    # @param disabled toggle
    def playground(type: 'string', required: false, label: "Input", hint: "This is an hint message", placeholder: nil, error: "This is an error message", disabled: false)
      render(Form::Input::InputComponent.new(type: type, required: required, label: label, hint: hint, placeholder: placeholder, error: error, disabled: disabled))
    end
  end
end
