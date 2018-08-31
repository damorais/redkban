module FormHelper
    def errors_for(form, field)

        if form.object and form.object.errors[field].any?
            content_tag(:div, form.object.errors[field].try(:first), class: ' small')
        end
    end
end