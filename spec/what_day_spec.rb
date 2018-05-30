require "spec_helper"

describe WhatDay do

	let(:client) { WhatDay.client }

	it "has a version number" do
		expect(WhatDay::VERSION).not_to be nil
	end

	describe "#day" do
		it "returns Monday" do
			date = Date.new(2018,6,4)
			expect(client.day date).to eq "Monday"
		end

		it "returns Sunday" do
			date = Date.new(2018,3,4)
			expect(client.day date).to eq "Sunday"
		end

		it "returns Saturay" do
			date = Date.new(2018,3,17)
			expect(client.day date).to eq "Saturday"
		end
	end


	describe "#beginning_of_" do
		it "works with Jan format" do
			expect(client.beginning_of_aug_2018).to eq "Wednesday"
		end

		it "works with January format" do
			expect(client.beginning_of_march_2018).to eq "Thursday"
		end

		it "is case insensitive" do
			expect(client.beginning_of_FebrUary_2018).to eq "Thursday"
		end
	end

	describe "#end_of_" do
		it "works with Jan format" do
			expect(client.end_of_aug_2018).to eq "Friday"
		end

		it "works with January format" do
			expect(client.end_of_march_2018).to eq "Saturday"
		end

		it "is case insensitive" do
			expect(client.end_of_FebrUary_2018).to eq 'Wednesday'
		end
	end
end
