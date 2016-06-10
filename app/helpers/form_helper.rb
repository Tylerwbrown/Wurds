module FormHelper
  class ActionView::Helpers::FormBuilder
    def field(label, as: :text)
      @template.content_tag(:div, class: :form_group) { self.label(label) + field_input(label, as) + @template.tag(:br) }
    end

    def submit_button
      self.submit class: "btn btn-success btn-lg btn-block"
    end

    private

    def field_input(label, type)
      self.send field_type(type), label, class: "form-control"
    end

    def field_type(type)
      return :text_field if type == :text
      return :number_field if type == :number
      return :password_field if type == :password

      raise "Missing field_type"
      return false
    end
  end
end
