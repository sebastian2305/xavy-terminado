# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  description :text
#  difficulty  :text
#  name        :string
#  schedule    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  venue_id    :integer
#
# Indexes
#
#  index_activities_on_venue_id  (venue_id)
#

class Activity < ApplicationRecord
  belongs_to :venue
  has_many :categories
  scope :by_name, -> { order(:name) }

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :schedule, presence: true
  validates :difficulty, presence: true
end
