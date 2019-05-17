class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities,id: false  do |t|
      t.string :code,primary_key: true
      t.string :name
      t.string :provinceCode,foreign_key: true

      t.timestamps
    end

    # add_index :cities,:provinceCode
    # add_foreign_key :cities,:provinces,:provinceCode
  end
end
