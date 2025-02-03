Rails.application.config.after_initialize do
  ActiveStorage::Current.url_options = {
    host: 'http://localhost:3000' # Change this for production
  }
end
