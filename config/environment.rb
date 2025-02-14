# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
    config.action_mailer.delivery_method = :smtp

    config.action_mailer.smtp_settings = {
        address: "smtp.gmail.com",
        port: 487,
        domain: "domain.of.sender.net",
        authentication: "plain",
        user_name: "dave",
        password: "secret",
        enable_starttls_auto: true
    }
end
