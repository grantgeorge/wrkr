DeviseTokenAuth.setup do |config|
  # By default the authorization headers will change after each request. The
  # client is responsible for keeping track of the changing tokens. Change
  # this to false to prevent the Authorization header from changing after
  # each request.
  config.change_headers_on_each_request = true

  # By default, users will need to re-authenticate after 2 weeks. This setting
  # determines how long tokens will remain valid after they are issued.
  config.token_lifespan = 4.weeks

  # Sometimes it's necessary to make several requests to the API at the same
  # time. In this case, each request in the batch will need to share the same
  # auth token. This setting determines how far apart the requests can be while
  # still using the same auth token.
  config.batch_request_buffer_throttle = 5.seconds

  # This route will be the prefix for all oauth2 redirect callbacks. For
  # example, using the default '/omniauth', the github oauth2 provider will
  # redirect successful authentications to '/omniauth/github/callback'
  config.omniauth_prefix = '/omniauth'

  # By defult sending current password is not needed for the password update.
  # Uncomment to enforce current_password param to be checked before all
  # attribute updates. Set it to :password if you want it to be checked only if
  # password is updated.
  # config.check_current_password_before_update = :attributes

  # By default this value is expected to be sent by the client so that the API
  # knows where to redirect users after successful email confirmation. If this
  # param is set, the API will redirect to this value when no value is provided
  # by the client.
  config.default_confirm_success_url = nil

  # By default this value is expected to be sent by the client so that the API
  # knows where to redirect users after successful password resets. If this
  # param is set, the API will redirect to this value when no value is provided
  # by the client.
  config.default_password_reset_url = nil

  # As an added security measure, you can limit the URLs to which the API will
  # redirect after email token validation (password reset, email confirmation,
  # etc.). This value should be an array containing exact matches to the client
  # URLs to be visited after validation.
  config.redirect_whitelist = nil

  # By default, only Bearer Token authentication is implemented out of the box.
  # If, however, you wish to integrate with legacy Devise authentication, you
  # can do so by enabling this flag. NOTE: This feature is highly experimental!
  # config.enable_standard_devise_support = false

  # By default, old tokens are not invalidated when password is changed. Enable
  # this option if you want to make passwords updates to logout other devices.
  # config.remove_tokens_after_password_reset = false
end
