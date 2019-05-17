class Province < ApplicationRecord
  self.primary_key = 'code'
  has_many :cities,:foreign_key => :provinceCode
  has_many :areas,:foreign_key => :provinceCode
  has_many :streets,:foreign_key => :provinceCode
  has_many :villages,:foreign_key => :provinceCode
end
