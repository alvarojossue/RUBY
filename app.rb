class App
	attr_reader :name_app, :author, :os, :score
	def initialize (name_app, author, os, score)
		@name_app = name_app
		@author = author
		@os = os
		@score = score
	end

	def evaluation
		if @score <= 4
			literal_score = "poor"
		elsif @score == 5 || @score == 6
			literal_score = "good"
		elsif @score >= 7 && @score <= 9
			literal_score = "very cool"
		else 
			literal_score = "spectacular"
		end	
	puts "#{@author} has developed #{@name_app} for #{@os} and he has made a #{literal_score} application (Score: #{@score})\n\n"
	end

	def compare (other_app)
		if self.score > other_app.score
			puts "#{self.name_app} is better than #{other_app.name_app}"
		else
			puts "#{other_app.name_app} is better than #{self.name_app}"
		end
	end
end

app_1 = App.new("Facebook", "Mark Zuckerberg", "iOS", 10)
app_1.evaluation

app_2 = App.new("Twitter", "Jack Dorsey", "iOS", 9)
app_2.evaluation

app_3 = App.new("Instagram", "Kevin Systrom", "Android", 6)
app_3.evaluation

app_4 = App.new("Snapchat", "Evan Spiegel", "Android", 4)
app_4.evaluation

app_1.compare(app_2)
app_2.compare(app_3)
app_3.compare(app_4)
app_4.compare(app_1)



