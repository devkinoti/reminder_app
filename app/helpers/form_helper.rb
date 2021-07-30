module FormHelper
  def errors_for(form,field)
    content_tag(:span, form.object.errors[field].try(:first), class: "help-block")
  end

  def form_group_for(form, field, &block)
    has_errors = form.object.errors[field].present?

    content_tag :div, class: "form-group #{'has-error' if has_errors}" do
      concat form.label(field, class: "control-label") + errors_for(form, field)
      concat capture(&block)
      

    end
  end
end