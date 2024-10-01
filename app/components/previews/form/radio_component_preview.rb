# frozen_string_literal: true

module Form
  class RadioComponentPreview < ViewComponent::Preview
    # This component is only for preview do not render in production use simple form instead
    # --------------------------------------------------------------------------------------
    # ```erb
    #   <%= f.input :attribute_name,
    #               as: :radio_buttons,
    #               wrapper: :radio_buttons,
    #               collection: :collection_name %>
    # ```
    #
    # @param required toggle
    # @param label text
    # @param hint text
    # @param error text
    # @param disabled toggle
    def playground(required: false, label: "Radio Buttons", hint: "This is an hint message", error: "This is an error message", disabled: false)
      render(Form::Radio::RadioComponent.new(required: required, label: label, hint: hint, error: error, disabled: disabled))
    end
  end
end
