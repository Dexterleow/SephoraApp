class CreateSubSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_subcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
