# == Schema Information
#
# Table name: categories
#
#  id          :integer          primary key
#  description :text
#  name        :string           not null
#
# Indexes
#
#  Category_id_uindex  (id) UNIQUE
#

class Category < ApplicationRecord
  has_many :activities
  scope :by_name, -> { order(:name) }

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
