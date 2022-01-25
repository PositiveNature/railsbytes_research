class CreateScaffoldResources < ActiveRecord::Migration[6.0]
  def change
    create_table :scaffold_resources do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
