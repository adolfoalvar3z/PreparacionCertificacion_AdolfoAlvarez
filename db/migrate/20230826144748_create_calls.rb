class CreateCalls < ActiveRecord::Migration[7.0]
  def change
    create_table :calls do |t|
      t.string :reason
      t.references :client, null: false, foreign_key: true
      t.text :detail

      t.timestamps
    end
  end
end
