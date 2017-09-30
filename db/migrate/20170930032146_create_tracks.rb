class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :commenter
      t.string :date
      t.text :body
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
