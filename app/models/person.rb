class Person < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :first_name, length {maximum: 30 }
  validates :age, length: {greater_than: 18 }
  validates :last_name, exclusions: {"Sex", ""Star Wars" }
end
