class Subject < ActiveRecord::Base
  # has_one :page
  has_many :pages
end
