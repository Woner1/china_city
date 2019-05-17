class CreateProvinces < ActiveRecord::Migration[5.2]
  def change
    create_table :provinces,id: false  do |t|
      t.string :code,primary_key: true
      t.string :name

      t.timestamps
    end
  end
end
