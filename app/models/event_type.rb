class EventType < ApplicationRecord
  has_many :events
end

# == Schema Information
#
# Table name: event_types
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
