# frozen_string_literal: true

# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  # config.secret_key = 'fe19fb5680d19a0e34b9af5ec7a7195671076a57d264d2c5bae52a
  # 19dc3ba0609e6649ea8765a9cdce94258baa77e04a574ac10870ddad465697f028b134fbe7'

  # ==> Controller configuration
  # config.parent_controller = 'DeviseController'

  # ==> Mailer Configuration
  config.mailer_sender = 'please-change-me-at-config-initializers-devise
  @example.com'

  # config.mailer = 'Devise::Mailer'

  # config.parent_mailer = 'ActionMailer::Base'

  # ==> ORM configuration
  require 'devise/orm/active_record'

  # ==> Configuration for any authentication mechanism
  # Configure which keys are used when authenticating a user. The default is
  # just :email. You can configure it to use [:username, :subdomain]
  # config.authentication_keys = [:email]

  # Configure parameters from the request object used for authentication.
  # config.request_keys = []

  # Configure which authentication keys should be case-insensitive.
  config.case_insensitive_keys = [:email]

  # Configure which authentication keys should have whitespace stripped.
  config.strip_whitespace_keys = [:email]

  # Tell if authentication through request.params is enabled. True by default.
  # config.params_authenticatable = true

  # Tell if authentication through HTTP Auth is enabled. False by default.
  # config.http_authenticatable = false

  # If 401 status code should be returned for AJAX requests. True by default.
  # config.http_authenticatable_on_xhr = true

  # The realm used in Http Basic Authentication. 'Application' by default.
  # config.http_authentication_realm = 'Application'

  # It will change confirmation, password recovery and other workflows
  # to behave the same regardless if the e-mail provided was right or wrong.
  # Does not affect registerable.
  # config.paranoid = true

  # By default Devise will store the user in session. You can skip storage for
  # particular strategies by setting this option.
  config.skip_session_storage = [:http_auth]

  # config.clean_up_csrf_token_on_authentication = true

  # When false, Devise will not attempt to reload routes on eager load.
  # config.reload_routes = true

  # ==> Configuration for :database_authenticatable
  # For bcrypt, this is the cost for hashing the password and defaults to 11. If
  config.stretches = Rails.env.test? ? 1 : 11

  # config.pepper = 'ff8973ef705d73034bd2408b28bcc2249f40bbcd7b8bfa553a2b8c3bbb
  # 518de933a46e671c537515b1555097ed88bfcb1226ec68042d37bfda36f19dcd79e7b0'

  # Send a notification to the original email when the user's email is changed.
  # config.send_email_changed_notification = false

  # Send a notification email when the user's password is changed.
  # config.send_password_change_notification = false

  # ==> Configuration for :confirmable
  # config.allow_unconfirmed_access_for = 2.days

  # config.confirm_within = 3.days

  config.reconfirmable = true

  # config.confirmation_keys = [:email]

  # config.remember_for = 2.weeks

  config.expire_all_remember_me_on_sign_out = true

  # config.extend_remember_period = false

  # config.rememberable_options = {}

  # ==> Configuration for :validatable
  config.password_length = 6..128

  # Email regex used to validate email formats.
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  # config.timeout_in = 30.minutes

  # :failed_attempts = Locks an account after a number of failed attempts
  # :none            = No lock strategy. You should handle locking by yourself.
  # config.lock_strategy = :failed_attempts

  # config.unlock_keys = [:email]

  # :email = Sends an unlock link to the user email
  # :time  = Re-enables login after a certain amount of time
  # (see :unlock_in below)
  # :both  = Enables both strategies
  # :none  = No unlock strategy. You should handle unlocking by yourself.
  # config.unlock_strategy = :both

  # config.maximum_attempts = 20

  # config.unlock_in = 1.hour

  # config.last_attempt_warning = true

  # Defines which key will be used when recovering the password for an account
  # config.reset_password_keys = [:email]

  config.reset_password_within = 6.hours

  # config.sign_in_after_reset_password = true

  # ==> Configuration for :encryptable
  # Require the `devise-encryptable` gem when using anything other than bcrypt
  # config.encryptor = :sha512

  # ==> Scopes configuration
  # Turn scoped views on. Before rendering "sessions/new", it will first check
  # for "users/sessions/new". It's turned off by default because it's slower if
  # you are using only default views.
  # config.scoped_views = false

  # config.default_scope = :user

  # Set this configuration to false if you want /users/sign_out to sign out
  # config.sign_out_all_scopes = true

  # Lists the formats that should be treated as navigational. Formats like
  # :html, should redirect to the sign in page when the user does not have
  # access, but formats like :xml or :json, should return 401.
  # If you have any extra navigational formats, like :iphone or :mobile, you
  # should add them to the navigational formats lists.
  # The "*/*" below is required to match Internet Explorer requests.
  # config.navigational_formats = ['*/*', :html]
  # The default HTTP method used to sign out a resource. Default is :delete.
  config.sign_out_via = :delete

  # ==> OmniAuth
  # config.omniauth :github, 'APP_ID', 'APP_SECRET', scope: 'user,public_repo'

  # ==> Warden configuration
  # If you want to use other strategies, that are not supported by Devise:
  # config.warden do |manager|
  #   manager.intercept_401 = false
  #   manager.default_strategies(scope: :user).unshift :some_external_strategy
  # end

  # ==> Mountable engine configurations
  # The following options are available, assuming the engine is mounted as:
  #     mount MyEngine, at: '/my_engine'
  # The router that invoked `devise_for`, in the example above, would be:
  # config.router_name = :my_engine
  # When using OmniAuth, Devise cannot automatically set OmniAuth path,
  # so you need to do it manually. For the users scope, it would be:
  # config.omniauth_path_prefix = '/my_engine/users/auth'

  # ==> Turbolinks configuration
  # If your app is using Turbolinks, Turbolinks::Controller
  # needs to be included to make redirection work correctly:
  # ActiveSupport.on_load(:devise_failure_app) do
  #   include Turbolinks::Controller
  # end

  # ==> Configuration for :registerable
  # config.sign_in_after_change_password = true
end
