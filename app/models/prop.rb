class Prop < ActiveRecord::Base
  attr_accessible :app_id
  belongs_to :app
end
