class CreateMyTemplates < ActiveRecord::Migration
  def change
    create_table :my_templates do |t|
      t.text :name
      t.string :type
      t.text :body

      t.timestamps
    end
  end
end
