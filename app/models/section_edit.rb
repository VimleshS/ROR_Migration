class SectionEdit < ActiveRecord::Base
  
  # belongs_to :admin_user
  
  # SEPECIFY :foreign_key for custom key
  belongs_to :editor, class_name: "AdminUser", :foreign_key => :admin_user_id 
  
  # belongs_to :editor, class_name: "AdminUser"
  belongs_to :section
end
