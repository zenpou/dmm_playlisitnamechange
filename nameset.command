#!/usr/bin/env ruby
require "open-uri"

DIR = "#{ENV["HOME"]}/Movies/DMMPlayer/playlist/"

Dir::glob("#{DIR}*.wmv").each do | filename | 
  basename = File.basename(filename)
  next unless File.size(filename) > 0
  next unless basename =~ /^([a-z0-9A-Z_]+).hb[0-9]?\.wmv$/
  move_id = $1
  begin
    url = "http://www.dmm.co.jp/monthly/playgirl/-/detail/=/cid=#{move_id}/"
    p url
    html = open(url).read
    if html =~ /<title>(.*)<\/title>/
      title = $1
      title = title.gsub(/\s*-\s*[^ ]+\s*ch\s*-\s*DMM.R18/, "").gsub(/\s+/, "_")
      File.rename(filename, "#{DIR}#{title}.wmv")
    end
    sleep 1
  rescue => e
    p e
  end
end
