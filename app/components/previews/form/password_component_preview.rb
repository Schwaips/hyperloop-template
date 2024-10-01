# frozen_string_literal: true

module Form
  class PasswordComponentPreview < ViewComponent::Preview
    # This component is only for preview do not render in production use simple form instead
    # --------------------------------------------------------------------------------------
    # ```erb
    # <%= f.input :attribute_name,
    #             as: :password,
    #             wrapper: :password,
    #             wrapper_html: {
    #               class: "form__wrapper--default",
    #               data: {
    #                 controller: "form--password--password-component",
    #                 "form--password--password-component_svg_eye_value": svg_tag('eye'),
    #                 "form--password--password-component_svg_eye_slash_value": svg_tag('eye-slash')
    #               }
    #             } %>
    # ```
    #
    # @param required toggle
    # @param label text
    # @param placeholder text
    # @param hint text
    # @param error text
    # @param disabled toggle
    def playground(required: false, label: "Password", hint: "This is an hint message", placeholder: nil, error: "This is an error message", disabled: false)
      render(Form::Password::PasswordComponent.new(required: required, label: label, hint: hint, placeholder: placeholder, error: error, disabled: disabled))
    end
  end
end
