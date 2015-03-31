Rails.application.config.middleware.use
  provider :facebook, ENV["FB_KEY"], ENV["FB_SECRET"]
  provider :spotify, ENV["SPOTIFY_ID"], ENV["SPOTIFY_KEY"]
  provider :google_oauth2, ENV["GOOGLE_ID"], ENV["GOOGLE_SECRET"]
  provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"]
end
