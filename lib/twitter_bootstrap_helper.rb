module TwitterBootstrapHelper
	def bootstrap_alert_class(alert_type)

    case alert_type.to_sym
      when :notice; return 'alert-success'
      when :alert; return 'alert-danger'
    end

    return "alert-#{alert_type}"
  end

  def button(value, path, params = { size: :lg })
    size = params[:size] || :lg

    values = params.except(:size).merge({ class: "btn btn-primary btn-#{size} #{params[:class]}" } )

    link_to value, path, values
  end

  def carousel_active_class(element, array) 
    array.first == element ? 'active' : ''
  end
end