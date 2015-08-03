class AdminUser < ActiveRecord::Base
  
  #WAY 1
  # SINCE THE TABLE NAME IS CHANGED IN MIGRATION
  #  self.table_name = "admin_users"
  
  # WAY 2
  # MODIFT THE CLASS NAME AND FILE NAME OF USER.RB TO AdminUser and admin_user.rb
  
  has_and_belongs_to_many :pages  
  has_many :section_edits
   has_many :sections , :through => :section_edits
     
end
