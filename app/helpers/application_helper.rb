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
end
