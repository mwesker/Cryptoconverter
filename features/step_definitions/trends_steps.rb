Given("I am on the trade page") do
	if (:user)
		visit root_path
	end
end
When("I select a different timeframe to be displayed on the trends graph") do
	CryptoCompare.new.history_to_day(@input, @output, 30).map {|x| Time.at(x.values[0]).to_date.day.changed?}
end
Then("I should see that graph update to display the timeframe") do
	CryptoCompare.new.history_to_day(@input, @output, 30).map {|x| Time.at(x.values[0])} == :graphData
end

Given("On the trade page") do
	if (:user)
		visit root_path
	end
end
When("I select a different currency") do
	CryptoCompare.new.history_to_day(@input, @output, 30).map {|x| x.values[1].changed?}
end
Then("I should see the graph for that currency") do
	CryptoCompare.new.history_to_day(@input, @output, 30).map {|x| Time.at(x.values[0])} == :graphData
end
