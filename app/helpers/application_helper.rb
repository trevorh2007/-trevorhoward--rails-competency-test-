module ApplicationHelper
	def login_helper style = ''
		if !user_signed_in?
    	(link_to "Sign Up", new_user_registration_path, class: "#{style} nav-item") +
      " / ".html_safe +
      (link_to "Login", new_user_session_path, class: "#{style} nav-item")
    else
      link_to "Logout", destroy_user_session_path, :method => :delete, class: style
    end 
  end

	def alerts
    alert = flash[:alert]
    error = flash[:error]
    notice = flash[:notice]
    success = flash[:success]

    if alert
      js add_gritter(alert, title: "Trevor Howard Rails", sticky: false, image: :warning)
    elsif error
      js add_gritter(error, title: "Trevor Howard Rails", sticky: false, image: :error)      
    elsif success
      js add_gritter(success, title: "Trevor Howard Rails", sticky: false, image: :success)
    else notice
      js add_gritter(notice, title: "Trevor Howard Rails", sticky: false, image: "assets/notice.png")
    end
    
  end
end
