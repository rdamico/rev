require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:demo)
  end

  test "viewing the index" do
    visit events_path

    # assert one event is showing
    assert_event_list_count count: 1
    assert_event_list(@event)
  end

  test "creating an event" do
    visit events_path

    click_on "Create Event"
    click_on "Save"

    # assert two events
    assert_event_list_count count: 2
  end

  test "updating an event" do
    visit events_path

    click_on "Edit"
    select "Alternative Customer", from: "event_customer_id"
    click_on "Save"

    # assert one events
    assert_event_list_count count: 1
    assert_selector "td", text: "Alternative Customer"
  end

  test "deleting an event" do
    visit events_path

    click_on "Edit"
    click_on "Cancel Event"
    accept_confirm

    assert_event_list_count count: 0
  end

  private

  def assert_event_list_count(count:)
    assert_selector "tbody tr", count: count
  end

  def assert_event_list(event)
    assert_selector "td", text: event.customer.name
    assert_selector "td", text: event.event_type.name
  end
end
