# frozen_string_literal: true

SimpleForm.setup do |config|

  config.wrappers :default, class: "form__wrapper--default" do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: "label"
    b.use :input, class: "input"
    b.use :hint,  wrap_with: { tag: :span, class: "label label--hint" }
    b.use :error, wrap_with: { tag: :span, class: "label label--error" }
  end

  config.wrappers :password do |b|
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: "label"
    b.wrapper tag: :div, class: "input input--with-icon password" do |ba|
      ba.use :input, class: "input input--ghost", data: { "form--password--password-component_target": "input" }
    end
    b.use :hint,  wrap_with: { tag: :span, class: "label label--hint" }
    b.use :error, wrap_with: { tag: :span, class: "label label--error" }
  end

  config.wrappers :checkbox, class: "label form__wrapper--checkbox" do |b|
    b.use :input, class: "checkbox"
    b.use :label, class: "label"
    b.use :hint,  wrap_with: { tag: :span, class: "label label--hint" }
    b.use :error, wrap_with: { tag: :span, class: "label label--error" }
  end

  config.wrappers :check_boxes, class: "form__wrapper--default" do |b|
    b.use :label, class: "label"
    b.use :hint,  wrap_with: { tag: :span, class: "label label--hint" }
    b.wrapper tag: :div, class: "form__wrapper--checkboxes label mt-4" do |ba|
      ba.use :input, class: "checkboxes"
    end
    b.use :error, wrap_with: { tag: :span, class: "label label--error" }
  end

  config.wrappers :switch, class: "form__wrapper--switch" do |b|
    b.use :input, class: "switch"
    b.use :label, class: "label"
    b.use :hint,  wrap_with:{ tag: :span, class: "label label--hint" }
    b.use :error, wrap_with: { tag: :span, class: "label label--error" }
  end

  config.wrappers :radio_buttons, class: "form__wrapper--default" do |b|
    b.use :label, class: "label"
    b.use :hint,  wrap_with:{ tag: :span, class: "label label--hint" }
    b.wrapper tag: :div, class: "form__wrapper--radio_buttons label mt-4" do |ba|
      ba.use :input, class: "radio_buttons"
    end
    b.use :error, wrap_with: { tag: :span, class: "label label--error" }
  end

  config.button_class = 'btn btn--primary btn--full btn--load'

  config.default_wrapper = :default
  config.boolean_style = :nested

  # Series of attempts to detect a default label method for collection.
  # config.collection_label_methods = [ :to_label, :name, :title, :to_s ]

  # Series of attempts to detect a default value method for collection.
  # config.collection_value_methods = [ :id, :to_s ]

  # You can wrap a collection of radio/check boxes in a pre-defined tag, defaulting to none.
  # config.collection_wrapper_tag = nil

  # You can define the class to use on all collection wrappers. Defaulting to none.
  # config.collection_wrapper_class = nil

  # You can wrap each item in a collection of radio/check boxes with a tag,
  # defaulting to :span.
  config.item_wrapper_tag = nil

  # You can define a class to use in all item wrappers. Defaulting to none.
  # config.item_wrapper_class = nil

  # How the label text should be generated altogether with the required text.
  # config.label_text = lambda { |label, required, explicit_label| "#{required} #{label}" }

  # You can define the class to use on all labels. Default is nil.
  # config.label_class = nil

  # You can define the default class to be used on forms. Can be overridden
  # with `html: { :class }`. Defaulting to none.
  config.default_form_class = "form__wrapper"

  # You can define which elements should obtain additional classes
  config.generate_additional_classes_for = []

  # Whether attributes are required by default (or not). Default is true.
  # config.required_by_default = true

  # Tell browsers whether to use the native HTML5 validations (novalidate form option).
  # These validations are enabled in SimpleForm's internal config but disabled by default
  # in this configuration, which is recommended due to some quirks from different browsers.
  # To stop SimpleForm from generating the novalidate option, enabling the HTML5 validations,
  # change this configuration to true.
  config.browser_validations = false

  # Custom mappings for input types. This should be a hash containing a regexp
  # to match as key, and the input type that will be used when the field name
  # matches the regexp as value.
  # config.input_mappings = { /count/ => :integer }

  # Custom wrappers for input types. This should be a hash containing an input
  # type as key and the wrapper that will be used for all inputs with specified type.
  # config.wrapper_mappings = { string: :prepend }

  # Namespaces where SimpleForm should look for custom input classes that
  # override default inputs.
  # config.custom_inputs_namespaces << "CustomInputs"

  # Default priority for time_zone inputs.
  # config.time_zone_priority = nil

  # Default priority for country inputs.
  # config.country_priority = nil

  # When false, do not use translations for labels.
  # config.translate_labels = true

  # Automatically discover new inputs in Rails' autoload path.
  # config.inputs_discovery = true

  # Cache SimpleForm inputs discovery
  # config.cache_discovery = !Rails.env.development?

  # Default class for inputs
  # config.input_class = nil

  # Define the default class of the input wrapper of the boolean input.
  config.boolean_label_class = nil

  # Defines if the default input wrapper class should be included in radio
  # collection wrappers.
  config.include_default_input_wrapper_class = false

  # Defines which i18n scope will be used in Simple Form.
  # config.i18n_scope = 'simple_form'

  # Defines validation classes to the input_field. By default it's nil.
  # config.input_field_valid_class = 'is-valid'
  # config.input_field_error_class = 'is-invalid'
end