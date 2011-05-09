class Advertisement < ActiveRecord::Base
  EXPENSIVE_LIMIT = 5000

  belongs_to:user
  validates :price, :numericality=>{:greater_than=>0}
  scope :expensive, where("price >= 500")
  scope :regular, where(:price => (100..500))
  scope :cheap, where("price <= 100")
  scope :by_price, order(:price)    

  after_save :email_the_user

## para editar el setter
   def title=(value)
     write_attribute(:title, value.capitalize)
   end

 private

   def email_the_user
     Notifications.too_expensive(self).deliver if price >= EXPENSIVE_LIMIT
   end

#  private 
#   def capitalize_title
#     logger.debug "Estoy en capitalize_title"
#     self.title = title.capitalize
#   end

end
