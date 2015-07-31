class CreateAdminUsersPagesJoin < ActiveRecord::Migration
  # THIS TABLE IS REQUIRED AS A PATCH FOR MANY TO MANY RELATION BETWEEN 
  # AdminUser and Page
  # has_and_belong_to_many
  
  # It stores only foreign keys of the table no promary key 
  # of its own hence supressed it generation
  # :id => false  
  
  # NOTE: JOIN TABLE NAME
  # admin_users_pages 
  # alphabetically arranged table name comes first RAILS CONVENTIONS
  
  # CAN BE CUSTOM NAME ALSO
  # Then Care has to be taken in Model for telling the custom table name on both sides of relationship
  # e.g. 
  # has_and_belongs_to_many :admin_user, join_table: "CustomJoinTableName"
  # has_and_belongs_to_many :pages, join_table: "CustomJoinTableName"  

  def change
    create_table :admin_users_pages, :id=> false do |t|
      t.integer "admin_user_id"
      t.integer "page_id"
    end
    add_index :admin_users_pages, [:admin_user_id, :page_id]
  end
end
