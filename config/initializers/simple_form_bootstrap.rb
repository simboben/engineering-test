# frozen_string_literal: true
# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.error_notification_class = "alert alert-danger"
  config.button_class = "btn btn-primary"
  config.boolean_label_class = nil

  config.wrappers :vertical_form, tag: "div", class: "form-group", error_class: "has-danger" do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: "control-label"

    b.use :input, class: "form-control"
    b.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
    b.use :hint,  wrap_with: { tag: "small", class: "form-text text-muted" }
  end

  config.wrappers :onboarding_form, tag: "div", class: "form-group", error_class: "has-danger" do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: "control-label"

    b.use :hint,  wrap_with: { tag: "div", class: "form-text" }
    b.use :input, class: "form-control"
    b.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
  end

  config.wrappers :vertical_file_input, tag: "div", class: "form-group", error_class: "has-danger" do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :readonly
    b.use :label, class: "control-label"

    b.use :input
    b.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
    b.use :hint,  wrap_with: { tag: "small", class: "form-text text-muted" }
  end

  config.wrappers :vertical_boolean, tag: "div", class: "form-group", error_class: "has-danger" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: "div", class: "checkbox" do |ba|
      ba.use :label_input
    end

    b.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
    b.use :hint,  wrap_with: { tag: "small", class: "form-text text-muted" }
  end

  config.wrappers :vertical_radio_and_checkboxes, tag: "div", class: "form-group", error_class: "has-danger" do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: "control-label"

    b.wrapper tag: "div" do |ba|
      ba.use :input
    end

    b.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
    b.use :hint,  wrap_with: { tag: "small", class: "form-text text-muted" }
  end

  config.wrappers :horizontal_form, tag: "div", class: "form-group row", error_class: "has-danger" do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: "col-12 col-md-4 control-label col-form-label"

    b.wrapper tag: "div", class: "col-12 col-md-8" do |ba|
      ba.use :input, class: "form-control"
      ba.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
      ba.use :hint,  wrap_with: { tag: "small", class: "form-text text-muted" }
    end
  end

  config.wrappers :horizontal_file_input, tag: "div", class: "form-group", error_class: "has-danger" do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :readonly
    b.use :label, class: "col-3 control-label"

    b.wrapper tag: "div", class: "col-9" do |ba|
      ba.use :input
      ba.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
      ba.use :hint,  wrap_with: { tag: "small", class: "form-text text-muted" }
    end
  end

  config.wrappers :horizontal_boolean, tag: "div", class: "form-group", error_class: "has-danger" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: "div", class: "offset-4 col-8" do |wr|
      wr.wrapper tag: "div", class: "checkbox" do |ba|
        ba.use :label_input
      end

      wr.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
      wr.use :hint,  wrap_with: { tag: "small", class: "form-text text-muted" }
    end
  end

  config.wrappers :horizontal_radio_and_checkboxes, tag: "div", class: "form-group row", error_class: "has-danger" do |b|
    b.use :html5
    b.optional :readonly

    b.use :label, class: "col-4 control-label"

    b.wrapper tag: "div", class: "col-8" do |ba|
      ba.use :input
      ba.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
      ba.use :hint,  wrap_with: { tag: "small", class: "form-text text-muted" }
    end
  end

  config.wrappers :inline_form, tag: "div", class: "form-group", error_class: "has-danger" do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: "sr-only"

    b.use :input, class: "form-control"
    b.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
    b.use :hint,  wrap_with: { tag: "small", class: "form-text text-muted" }
  end

  config.wrappers :multi_select, tag: "div", class: "row form-group", error_class: "has-danger" do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: "col-4 control-label"

    b.wrapper tag: "div", class: "col-8" do |ba|
      ba.wrapper tag: "div", class: "form-inline" do |bb|
        bb.use :input, class: "form-control"
        bb.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
        bb.use :hint,  wrap_with: { tag: "small", class: "form-text text-muted" }
      end
    end
  end

  config.wrappers :horizontal_date_select, tag: "div", class: "form-group", error_class: "has-danger" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: "div", class: "form-inline" do |bb|
      bb.use :input, class: "form-control"
      bb.use :error, wrap_with: { tag: "div", class: "form-control-feedback" }
      bb.use :hint,  wrap_with: { tag: "small", class: "form-text text-muted" }
    end
  end

  # Wrappers for forms and inputs using the Bootstrap toolkit.
  # Check the Bootstrap docs (http://getbootstrap.com)
  # to learn about the different styles for forms and inputs,
  # buttons and other elements.
  config.default_wrapper = :horizontal_form
  config.wrapper_mappings = {
    check_boxes: :vertical_radio_and_checkboxes,
    radio_buttons: :vertical_radio_and_checkboxes,
    file: :vertical_file_input,
    boolean: :horizontal_radio_and_checkboxes,
    datetime: :multi_select,
    date: :multi_select,
    time: :multi_select
  }
end
