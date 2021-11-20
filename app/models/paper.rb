class Paper < ApplicationRecord
    has_and_belongs_to_many :authors

    scope :from_year, ->(year) { where("year = ?", year) if year.present?}

    validates :title, :venue, :year, presence: true
    validates :year, numericality: {only_integer: true}
end
