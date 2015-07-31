class CreateUsers < ActiveRecord::Migration
  # def change
  #COMMING UP DB   
  def up
    create_table :users do |t|
      
      # LONG FORM OF DECLARING AND USING USED MOSTLY IN COLUMNS DEFINATIONS
      t.column "first_name", :string, limit: 25
      
      # SHORT FORM OF DEFINATION
      t.string "last_name", limit: 25
      t.string "email", default: "", null: false
      t.string "password", limit: 40
      
      
      # t.datetime "created_at"
      # t.datetime "updated_at"
      t.timestamps null: false
    end
  end
  
#   BACKWARD DB
  def down
    drop_table :users
  end
end
