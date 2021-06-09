class LoopPattern < ApplicationRecord
  belongs_to :level_range

  has_many :bosses
end
