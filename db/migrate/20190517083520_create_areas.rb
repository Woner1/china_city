class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas,id: false  do |t|
      t.string :code,primary_key: true
      t.string :name
      t.string :cityCode,index: true,foreign_key: true
      t.string :provinceCode,index: true,foreign_key: true

      t.timestamps
    end

  end
end
