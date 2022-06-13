class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: true
  validate :annual_revenue, :over

  validate :mens_apparel, :must_have
  validate :womens_apparel, :must_have

  def over 
    num = annual_revenue>0? true:false
    if num
    errors.add(:annual_revenue, 'Must be over 0')
    end
  end

  def must_have
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, ' Must be set to true')
      errors.add(:womens_apparel, ' Must be set to true')
    end
  end

end
