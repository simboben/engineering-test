# frozen_string_literal: true
ActiveModel::Serializer.config.key_transform = :camel_lower

if Rails.env.production?
  ActiveSupport::Notifications.unsubscribe(ActiveModelSerializers::Logging::RENDER_EVENT)
end
