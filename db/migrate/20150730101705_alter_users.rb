class AlterUsers < ActiveRecord::Migration
  # DOES SAVE AN UP AND DOWN CONTEXT SO THAT IT 
  # HANDLES IT PROPERLY ON ROLLBACK AND CURRENT DB 
  # CAN CAUSE ISSUE IF MIGRATION IS NOT IRREVERSIBLE e.g REMOVING COLUMN   
  
  # def change
  # end
  
  # COMMING UP DB
  def up
    rename_table("users","admin_users")
    add_column("admin_users", "username",:string,:limit=> 20)
    change_column("admin_users", "email",:string, :limit => 25 )
    rename_column("admin_users", "password","hashed_password")
    
    add_index("admin_users", "username")
  end
  
  #   BACKWARD DB
  def down
    remove_index("admin_users", "username")
    rename_column("admin_users", "hashed_password","password")
    change_column("admin_users", "email",:string, default: "", null: false )
    remove_column("admin_users", "username")
    rename_table("admin_users","users")
  end
  
end
