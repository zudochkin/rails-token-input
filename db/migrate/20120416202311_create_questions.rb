class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.integer :questionable_id
      t.string :questionable_type

      t.timestamps
    end
  end
end
