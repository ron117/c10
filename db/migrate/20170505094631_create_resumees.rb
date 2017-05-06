class CreateResumees < ActiveRecord::Migration[5.0]
  def change
    create_table :resumees do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.text :address
      t.string :phone
      t.boolean :gender
      t.string :qualification
      t.float :experience
      t.text :projects
      t.string :hobbies
      t.text :known_programming_languages

      t.timestamps
    end
  end
end
