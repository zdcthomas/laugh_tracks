class Comedian < ActiveRecord::Base
  has_many :specials

  def self.average_age
    average(:age).to_f.round(2)
  end
end
