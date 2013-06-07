class Prop < ActiveRecord::Base
  attr_accessible :app_id
  belongs_to :app

  validates_presence_of :app_id
end