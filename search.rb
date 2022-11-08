# frozen_string_literal: true

require 'json'
require 'net/http'
require 'cgi'

Encoding.default_external = Encoding::UTF_8

# TODO:
# - turn this into a class that runs itself at the bottom of the file
# - handle errors in initial fetch
# - clean up (potentially) brittle chaining e.g. res.body.match().captures[0]

query = ARGV[0]

uri = URI('https://duckduckgo.com/')
params = { q: "#{query} !" }
uri.query = URI.encode_www_form(params)

# get response from duckduckgo
res = Net::HTTP.get_response(uri)

# parse redirect url
result_url = CGI.unescape(res.body.match(/.+uddg=(.+)&rut=.+/).captures[0])

# get the title
title_resp = Net::HTTP.get_response(URI(result_url))
title = if title_resp.is_a?(Net::HTTPSuccess)
          # YUCKKKKKK!
          title_resp.body.match(%r{<title>(.*)</title>})&.captures&.[](0) || query
        else
          query
        end

out = {
  items: [
    {
      title: title.force_encoding('UTF-8'),
      subtitle: result_url,
      arg: result_url,
      variables: {
        title: title,
        url: result_url,
      },
    },
  ],
}

puts out.to_json
