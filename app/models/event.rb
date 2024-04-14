class Event < ApplicationRecord
  extend FilterableModel

  belongs_to :customer
  belongs_to :event_type
  validates :start, :finish, presence: true

  class << self
    def filter_proxy
      Filters::EventFilterProxy
    end
  end
end

# == Schema Information
#
# Table name: events
#
#  id            :integer          not null, primary key
#  finish        :datetime         not null
#  start         :datetime         not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  customer_id   :integer
#  event_type_id :integer
#
# Indexes
#
#  index_events_on_customer_id    (customer_id)
#  index_events_on_event_type_id  (event_type_id)
#
# Foreign Keys
#
#  customer_id    (customer_id => customers.id) ON DELETE => cascade
#  event_type_id  (event_type_id => event_types.id) ON DELETE => cascade
#
