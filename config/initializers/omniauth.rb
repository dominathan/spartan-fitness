Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV["FB_KEY"], ENV["FB_SECRET"], :provider_ignores_state => true
    {
      :scope => "public_profile, email, user_friends",
      :display => "popup"
    }

  provider :spotify, ENV["SPOTIFY_ID"], ENV["SPOTIFY_KEY"], :provider_ignores_state => true
    {
      :scope => "playlist-read-private, playlist-modify-public, playlist-modify-private"
    }
  provider :google_oauth2, ENV["GOOGLE_ID"], ENV["GOOGLE_KEY"], :provider_ignores_state => true
    {
      :scope => "email, profile",
      :prompt => "select_account",
      :image_aspect_ratio => "original",
      :response_type => "code",
      :client_id => "GOOGLE_ID",
      :approval_prompt => "auto",
      :include_granted_scopes => "true",
      :access_type => "online"
    }
  provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"], :provider_ignores_state => true
    {
      :secure_image_url => 'true',
      :image_size => 'original',
      :authorize_params => {
        :force_login => 'true'
      }
    }

end
