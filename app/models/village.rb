class Village < ApplicationRecord
  self.primary_key = 'code'
  belongs_to :province,:foreign_key => :provinceCode
  belongs_to :city,:foreign_key => :cityCode
  belongs_to :area,:foreign_key => :areaCode
  belongs_to :street,:foreign_key => :streetCode
end
