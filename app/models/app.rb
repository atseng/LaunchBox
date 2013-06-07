class App < ActiveRecord::Base
  attr_accessible :codebase_url, :email, :name, :props, :url, :description
  has_many :comments
  has_many :props
  validates_presence_of :name, :email, :url, :codebase_url, :description
  validates_format_of :email, :with => /@/
end
