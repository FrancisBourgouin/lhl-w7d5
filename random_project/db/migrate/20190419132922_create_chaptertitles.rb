class CreateChaptertitles < ActiveRecord::Migration
  def change
    create_table :chaptertitles do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
