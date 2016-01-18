class User < ActiveRecord::Base

  def self.find_or_create_from_omniauth(auth_hash)
    user = self.find_by(uid: auth_hash["uid"], provider: auth_hash["provider"])
    if !user.nil?
      # User found, continue on with your life
      return user
    else
      # Create a new user
      user = User.new
      user.uid        = auth_hash["uid"]
      user.provider   = auth_hash["provider"]
      user.username   = auth_hash["info"]["name"]
      user.email      = auth_hash["info"]["email"]
      user.avatar_url = auth_hash["info"]["image"]
    end
    if user.save
      return user
    else
      return nil
    end
  end

  def is_riley?
    if self == User.find_by(uid: "13241167", username: "Riley Spicer")
      return true
    else
      return false
    end
  end

end
