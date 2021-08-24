class CreatePoems < ActiveRecord::Migration[6.1]
  def change
    create_table :poems do |t|
      t.belongs_to :author, foreign_key: true
      t.string :title
      t.text :content
    end
  end
end
