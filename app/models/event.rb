class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events  
  def as_json
    {
      title: title,
      description: description,
      start_time: start_time,
      end_time: end_time,
      complete: complete,
      hosted_by: hosted_by
    }
  end 
end
