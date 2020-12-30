module MainHelper
  def is_login_page?
    controller_name == 'user' && action_name == 'login'
  end
end
