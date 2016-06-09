module FormHelper
  class ActionView::Helpers::FormBuilder
    def field(label, as: )
      @template.content_tag(:div, class: :form_group) { field_label(label) + field_input(label, as) + @template.tag(:br) }
    end

    def submit_button
      @template.content_tag(:div, class: :actions) { self.submit class: "btn btn-success" }
    end

    private

    def field_label(label)
      self.label label
    end

    def field_input(label, type)
      self.send field_type(type), label, class: "form-control"
    end

    def field_type(type)
      return :text_field if type == :text
      return :number_field if type == :number

      raise "Missing field_type"
      return false
    end
  end
end
