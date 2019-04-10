class CreateAnagramas < ActiveRecord::Migration[5.2]
  def change
    create_table :anagramas do |t|
      t.text :wordA
      t.text :wordB
      t.boolean :isAnagrama
      
      t.timestamps
    end
  end
end
