class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.text :title
      t.text :description
      t.timestamps
    end
  end
end
