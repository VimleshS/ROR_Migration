class Page < ActiveRecord::Base
  belongs_to :subject
  
  
  # has_and_belongs_to_many :admin_user
  # OR
  # has_and_belongs_to_many :admin_user, :join_table => "admin_users_pages"
  # Overriding table name with some relation
  # editor is descriptor name
  has_and_belongs_to_many :editor, :class_name => "AdminUser"
   
end
