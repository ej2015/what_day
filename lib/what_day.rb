require "what_day/version"
require "what_day/client"
require 'active_support'
require 'active_support/core_ext/date/calculations'
require 'active_support/core_ext/time/calculations'

module WhatDay

	def self.client
		WhatDay::Client.new
	end
end
