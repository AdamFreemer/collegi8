class CreateAttributes < ActiveRecord::Migration[6.1]
  def change
    create_table :attributes do |t|
      t.string :name
      t.boolean :objective
      t.boolean :subjective
      t.text :description

      t.timestamps
    end
  end
end
