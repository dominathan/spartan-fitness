Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV["FB_KEY"], ENV["FB_SECRET"]
    {
      :scope => "public_profile, email, user_friends",
      :display => "popup"
    }

  provider :spotify, ENV["SPOTIFY_ID"], ENV["SPOTIFY_KEY"]
    {
      :scope => "playlist-read-private, playlist-modify-public, playlist-modify-private"
    }
  provider :google_oauth2, ENV["GOOGLE_ID"], ENV["GOOGLE_SECRET"]
    {
      :scope => "email, profile",
      :prompt => "select_account",
      :image_aspect_ratio => "original"
    }
  provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"]
    {
      :secure_image_url => 'true',
      :image_size => 'original',
      :authorize_params => {
        :force_login => 'true'
      }
    }

end
