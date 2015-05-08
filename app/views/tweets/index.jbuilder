json.array! @tweets do |tweet|
	json.id tweet.id
	json.content tweet.content
	json.author_name tweet.author_name
end
