class Cat < ApplicationRecord
  validates :birth_date, presence: true
  validates :color, presence: true,
    inclusion: { in: ['brown', 'white', 'black', 'calico', 'orange', 'hairless'],
    message: "thats not a valid color for a cat!" }
  validates :name, presence: true
  validates :sex, presence: true,
    inclusion: { in: ['M','F'], message: "Invalid cat gender"}

  def age
    days = (DateTime.now - self.birth_date).to_i
    days/365
  end
end
