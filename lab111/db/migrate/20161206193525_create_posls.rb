class CreatePosls < ActiveRecord::Migration[5.0]
  def change
    create_table :posls do |t|
      t.string :inputed
      t.string :all
      t.integer :kolvo
      t.string :max_p

      t.timestamps
    end
  end
end
