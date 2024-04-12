require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
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
