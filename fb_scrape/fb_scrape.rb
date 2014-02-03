filename = ARGV.shift
f = open(filename)

while line = f.gets
  puts `curl -d "scrape=true&id=#{line}" https://graph.facebook.com/`;
end

f.close


puts 'end scraped.'
