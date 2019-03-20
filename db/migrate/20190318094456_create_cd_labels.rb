class CreateCdLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :cd_labels do |t|

      t.string :label_name
      t.timestamps
    end
  end
end
