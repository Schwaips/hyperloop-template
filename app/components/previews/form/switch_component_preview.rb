# frozen_string_literal: true

module Form
  class SwitchComponentPreview < ViewComponent::Preview
  # This component is only for preview do not render in production use simple form instead
  # --------------------------------------------------------------------------------------
  # ```erb
  #   <%= f.input :attribute_name,
  #               as: :boolean,
  #               wrapper: :switch %>
  # ```
  #
  # @param required toggle
  # @param label text
  # @param hint text
  # @param error text
  # @param disabled toggle
  def playground(required: false, label: "Switch", hint: "This is an hint message", error: "This is an error message", disabled: false)
      render(Form::Switch::SwitchComponent.new(required: required, label: label, hint: hint, error: error, disabled: disabled))
    end
  end
end
