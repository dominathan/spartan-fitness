Rails.application.config.middleware.use
  provider :facebook, ENV["FB_KEY"], ENV["FB_SECRET"]
  end
end
Rails.application.config.middleware.use
  provider :spotify, ENV["SPOTIFY_ID"], ENV["SPOTIFY_KEY"]
  end
end
Rails.application.config.middleware.use
  provider :google_oauth2, ENV["GOOGLE_ID"], ENV["GOOGLE_SECRET"]
  end
end
Rails.application.config.middleware.use
  provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"]
  end
end
