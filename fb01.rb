require'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

index = client.follower_ids("kurakore_index").to_a
temari = client.follower_ids("SKTemari").to_a
p temari
overlap = index & temari

if overlap == []
p 'mission complete!'
else
victim = overlap
#client.block(victim)
#client.unblock(victim)

end
baggage = temari.sample(5)
p baggage



