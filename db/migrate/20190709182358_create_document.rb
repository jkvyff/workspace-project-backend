class CreateDocument < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :extension
      t.text :content

      t.timestamps
    end
  end
end
