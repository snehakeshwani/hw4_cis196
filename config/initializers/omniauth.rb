OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '631713886879310', '7c16a1c36af660ce143726de198ef7ce'
end

OmniAuth.setup do |config|
	config.mailer_sender = "tasks@example.com"
end