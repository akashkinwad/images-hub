class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :tagline
      t.references :user, foreign_key: true
      t.references :album, foreign_key: true
    end
  end
end
