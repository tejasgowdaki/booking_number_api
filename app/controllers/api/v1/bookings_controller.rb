module Api
	module V1
		class BookingsController < ApplicationController		
			skip_before_action :verify_authenticity_token

			def number
				first_three = Array.new(3){rand(10..35).to_s(36)}.join.upcase
				while true
					if first_three == "EKA"
						first_three = Array.new(3){rand(10..35).to_s(36)}.join.upcase
					else
						break
					end
				end
				last_three = Array.new(3){rand(36).to_s(36)}.join.upcase
				@num = first_three + last_three
				
			end
		end
	end
	
end