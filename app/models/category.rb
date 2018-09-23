# == Schema Information
#
# Table name: venues
#
#  id          :integer          not null, primary key
#  description :string
#  name        :string
#

class Category < ApplicationRecord
  has_many :activities
  scope :by_name, -> { order(:name) }

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
