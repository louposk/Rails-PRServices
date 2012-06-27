module ApplicationHelper
	
	# Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Project Team Web Services"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  

  #Updates the status using the renewal date. Is show the icon
  def status(controller,id,date)
    @controller = controller.find(id)
    @now = Date.today

    @days_passed = ( @controller.renewal - @now).to_i

    if @days_passed.between?(1, 31)
      if @controller.update_attributes(:status => "expires")
        @icon = "icon-exclamation-sign"
      end

    elsif @days_passed < 0
      if @controller.update_attributes(:status => "expired")
        @icon = "icon-remove"
      end
    else
       if @controller.update_attributes(:status => "active")
        @icon = "icon-ok"
      end
    end

    return @icon
      
  end
end
