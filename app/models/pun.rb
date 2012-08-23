class Pun < ActiveRecord::Base
  attr_accessible :content, :user_id
end

class Pun < ActiveRecord::Base
  belongs_to :user
  
  validates :content,  :length => { :maximum => 140 }
end

