class Cat < ApplicationRecord
  # @@valid_colors = ["yellow", "black", "white", "grey"]
  VALID_COLORS = ["yellow", "black", "white", "grey"]

  validates :birth_date, :name, :description, presence: true
  validates :color, presence: true, inclusion: {in: VALID_COLORS }
  validates :sex, presence: true, inclusion: {in: %w(M F),
    message: "%{value} needs to be M/F"}


end
