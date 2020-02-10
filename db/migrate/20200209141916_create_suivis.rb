class CreateSuivis < ActiveRecord::Migration[5.2]
  def change
    create_table :suivis do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :projet, index: true, foreign_key: true
      t.string :color, default:'blue', presence: true

      t.timestamps
    end
  end
end
