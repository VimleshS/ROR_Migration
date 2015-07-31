class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.string "name", limit: 25
      t.integer "permalink"
      t.integer "position"
      t.boolean "visible", default: false
      
       t.timestamps null: false
    end
    
    add_index(:pages, "permalink")
    
    # Adds foreign key & sets indexes  
    # subject_id in pages table
    add_reference :pages, :subject, index: true, foreign_key: true 
    
    # OR USE IT AS
    #     create_table
    # t.integer "subject_id"
    # add_index(:pages, "subject_id") 
  end
  
  
  def down
    drop_table :pages
  end
end
