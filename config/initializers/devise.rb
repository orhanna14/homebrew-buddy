# frozen_string_literal: true

Devise.setup do |config|
  # config.secret_key = 'fe19fb5680d19a0e34b9af5ec7a7195671076a57d264d2c5bae52a
  # 19dc3ba0609e6649ea8765a9cdce94258baa77e04a574ac10870ddad465697f028b134fbe7'

  config.mailer_sender = 'please-change-me-at-config-initializers-devise
  @example.com'

  require 'devise/orm/active_record'

  # ==> Configuration for any authentication mechanism
  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 11

  # config.pepper = 'ff8973ef705d73034bd2408b28bcc2249f40bbcd7b8bfa553a2b8c3bbb
  # 518de933a46e671c537515b1555097ed88bfcb1226ec68042d37bfda36f19dcd79e7b0'

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete
end
