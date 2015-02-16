helpers do

  def auth_login_user hash
    user = User.find_by_email(hash[:email])  
    if user
      session[:auth_user_id]= user.id
    else
      session.delete :auth_user_id
    end  
  end  

  def auth_authenticated?
    !session[:auth_user_id].blank?
  end

  def auth_logout!
    session.delete :auth_user_id
  end

  def auth_authenticate!
    return if auth_authenticated?
    auth_set_redirect_url
    redirect '/login'
  end

  def auth_save_login_redirect_url
    session.delete :auth_login_redirect_url
    if request.get? && request.query_string.blank?
      session[:auth_login_redirect_url] = request.path
    end
  end

  def auth_do_login_redirect!
    flash[:notice] = "Welcome back!"
    redirect session[:auth_login_redirect_url] unless session[:auth_login_redirect_url].blank?
    redirect '/'
  end

  def auth_do_logout_redirect!
    flash[:notice] = "You signed out!"
    redirect '/'
  end

end
