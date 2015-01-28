# $ ruby broken_links.rb http://glossary.codeunion.io/
# There are 42 links on http://glossary.codeunion.io/
#
# 3 of them are broken:
# - http://glossary.codeunion.io/where-am-i
# - http://glossary.codeunion.io/not-a-link
# - http://glossary.codeunion.io/oh-phooey

# Components:
# - get content of web page from argument supplied
# - find links from HTML
# - check links for a 4** response
# - count total and broken links
# - show output for which links are broken

# page = get_page("http://glossary.codeunion.io/")
# links = find_links(page)
# broken_links = find_broken(links)
# display(links, broken_links)

require 'net/http'

def get_page(url)
  uri = URI(url)

  Net::HTTP.get(uri)
end

def find_links(html)
  # This is a dumb Regexp.
  # Look at URI.regexp for a better solution
  link_regexp = /<a href="http[^"]*"/
  links = html.scan(link_regexp)

  clean_urls = []

  links.each do |link|
    clean_urls << link.match(/http[^"]*/)[0]
  end

  clean_urls
end

def is_broken?(url)
  uri = URI(url)

  response = Net::HTTP.get_response(uri)

  if response.code =~ /4\d\d/
    return true
  else
    return false
  end

rescue OpenSSL::SSL::SSLError
  puts "Can't get response code for #{uri}"
  false
end

if __FILE__ == $PROGRAM_NAME
  if ARGV[0]
    url = ARGV[0]

    # html = get_page(url)
    sample_html = File.read("test.html")
    links = find_links(sample_html)

    links.each do |link|
      if is_broken?(link)
        puts "#{link} is BROKEN"
      end
    end
  end
end

## Test code / sanity checks
url = "http://glossary.codeunion.io/"

p get_page(url).include?("A collection of terms and definitions used by computer programmers.")
p get_page(url).include?("<a href=\"/api\">")

sample_html = File.read("test.html")

p find_links(sample_html).include?("https://github.com/tooopp")
p find_links(sample_html).count == 4

p is_broken?("https://github.com/tooopp") == true
p is_broken?("https://github.com/") == false
