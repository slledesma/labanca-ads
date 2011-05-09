class Advertisement < ActiveRecord::Base
  belongs_to:user
  validates :price, :numericality=>{:greater_than=>0}
  scope :expensive, where("price >= 500")
  scope :regular, where(:price => (100..500))
  scope :cheap, where("price <= 100")  

end
