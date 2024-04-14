# frozen_string_literal: true

# rubocop:disable RSpec/FilePath

require 'rails_helper'

RSpec.describe Filters::EventFilterProxy, type: :model do
  let(:event1) { create(:event, start: Time.current + 1.hour, finish: Time.current + 2.hours) }
  let(:event2) { create(:event, start: Time.current + 2.hours, finish: Time.current + 3.hours) }

  describe('.start_from filter') do
    it 'returns the correct events' do
      expect(::Filters::EventFilterProxy.filter_by(start_from: event1.start + 1.minute)).to eq([event2])
    end
  end

  describe('.start_to filter') do
    it 'returns the correct events' do
      expect(::Filters::EventFilterProxy.filter_by(start_to: event1.start + 1.minute)).to eq([event1])
    end
  end

  describe('.finish_from filter') do
    it 'returns the correct events' do
      expect(::Filters::EventFilterProxy.filter_by(finish_from: event1.finish + 1.minute)).to eq([event2])
    end
  end

  describe('.finish_to filter') do
    it 'returns the correct events' do
      expect(::Filters::EventFilterProxy.filter_by(finish_to: event1.finish + 1.minute)).to eq([event1])
    end
  end

  describe('.customer filter') do
    it 'returns the correct events' do
      expect(::Filters::EventFilterProxy.filter_by(customer: event1.customer_id)).to eq([event1])
    end
  end

  describe('.event_type filter') do
    it 'returns the correct events' do
      expect(::Filters::EventFilterProxy.filter_by(event_type: event2.event_type_id)).to eq([event2])
    end
  end
end
# rubocop:enable RSpec/FilePath
