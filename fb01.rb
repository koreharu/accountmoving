require'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "UntXYTPmbao0Ns10VqgsfQjU1"
  config.consumer_secret     = "H3widALbyQUUJtoigDHV6yDPSUm2IavMGAjJP8248IpKPlsFqe"
  config.access_token        = "313283891-1NtKrBfXLfHcmGJVUXsIgkfWl4Qs0NM7C1QpT0az"
  config.access_token_secret = "c50Fpc8yu2YHVsuYjhpiRK7z66oPAjpzoAtrCI9EzgTDJ"
end

index = client.follower_ids("kurakore_index").to_a
temari = client.follower_ids("SKTemari").to_a

overlap = index & temari

if overlap == []
p 'mission complete!'
else
victim = 786474592550256640
client.block(victim)
client.unblock(victim)


end


