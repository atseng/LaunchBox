class App < ActiveRecord::Base
  attr_accessible :codebase_url, :email, :name, :props, :url
  has_many :comments

  validates_presence_of :name, :email, :url, :codebase_url
  validates_format_of :email, :with => /@/
end
