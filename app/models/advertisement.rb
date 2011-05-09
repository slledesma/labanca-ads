class Advertisement < ActiveRecord::Base
  belongs_to:user
  validates :price, :numericality=>{:greater_than=>0}
  scope :expensive, where("price >= 500")
  scope :regular, where(:price => (100..500))
  scope :cheap, where("price <= 100")
  scope :by_price, order(:price)    

  before_save :capitalize_title

## para editar el setter
#  def title=(value)
#    write_attribute(:title, value.capitalize)
#  end

  private 
   def capitalize_title
     logger.debug "Estoy en capitalize_title"
     self.title = title.capitalize
   end

end
