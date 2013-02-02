class Secret < ActiveRecord::Base
  attr_accessible :body, :photo, :user_id
  belongs_to :user
end
