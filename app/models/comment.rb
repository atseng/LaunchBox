class Comment < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :text, :app_id
  belongs_to :app

  validates_presence_of :email, :first_name, :last_name, :text
end
