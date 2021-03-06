class User < ApplicationRecord
  has_secure_password
  has_many :user_events
  has_many :events, through: :user_events

  def as_json
    {
      first_name: first_name,
      last_name: last_name,
      email: email,
      bio: bio,
      location: location, 
      events: self.events.as_json
    }
  end 
end
