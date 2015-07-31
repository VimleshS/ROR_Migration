class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string "name", limit: 25
      t.integer "position"
      t.boolean "visible", default: false
      t.string "content_type"
      t.text "content"
      
      # References
      t.integer "page_id"

      t.timestamps null: false
    end
    
    add_index(:sections, "page_id")
  end
end
