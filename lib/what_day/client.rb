module WhatDay
	class Client

		MONTHS = '(jan||feb||mar||apr||may||jun||jul||aug||sep||oct||nov||dec||january||february||march||april||may||june||july||august||september||october||november||december||sept)'.freeze

		def day(date)
			begin
				Date::DAYNAMES[date.wday]
			rescue ArgumentError
				nil
			end
		end

		def method_missing(name, *args, &block)
			if name.to_s =~ Regexp.new("^(beginning||end)_of_#{MONTHS}_\\d+$", true)
				date = parse_date_string(name.to_s)
				day date
			else
				super
			end
		end

		private

		def parse_date_string(name)
			methods = name.split("_")
			selector = methods[0].downcase
			month = format_date_string methods[2]
			year = methods[3].to_i
			str = "#{year}-#{month}-1"
			date = Date.parse str
			selector == "end" ? date.to_date.end_of_month : date
		end

		def format_date_string(str)
			str.downcase
		end
	end
end
