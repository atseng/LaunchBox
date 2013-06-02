class App < ActiveRecord::Base
  attr_accessible :codebase_url, :email, :name, :props, :url
end
