# frozen_string_literal: true

module Filters
  module EventFilterScopes
    extend FilterScopeable

    filter_scope :start_from, ->(start_date) { where('start >= ?', start_date) }
    filter_scope :start_to, ->(start_date) { where('start <= ?', start_date) }
    filter_scope :finish_from, ->(finish_date) { where('finish >= ?', finish_date) }
    filter_scope :finish_to, ->(finish_date) { where('finish <= ?', finish_date) }
    filter_scope :event_type, ->(id) { where(event_type_id: id) }
    filter_scope :customer, ->(id) { where(customer_id: id) }
  end

  class EventFilterProxy < FilterProxy
    def self.query_scope
      Event
    end

    def self.filter_scopes_module
      Filters::EventFilterScopes
    end
  end
end
