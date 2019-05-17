class CreateVillages < ActiveRecord::Migration[5.2]
  def change
    create_table :villages,id: false  do |t|
      t.string :code,primary_key: true
      t.string :name
      t.string :areaCode,foreign_key: true,index: true
      t.string :provinceCode,foreign_key: true,index: true
      t.string :cityCode,foreign_key: true,index: true
      t.string :streetCode,foreign_key: true,index: true

      t.timestamps
    end
  end
end
