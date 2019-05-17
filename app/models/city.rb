class City < ApplicationRecord
  self.primary_key = 'code'
  belongs_to :province,:foreign_key => :provinceCode
  has_many :areas,:foreign_key => :cityCode
  has_many :streets,:foreign_key => :cityCode
  has_many :villages,:foreign_key => :cityCode
end
