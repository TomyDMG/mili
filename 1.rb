require 'nokogiri'
require 'open-uri'
require 'fileutils'

def get_links(url)
  Nokogiri::HTML(open(url).read).css('img').map do |link|
    if (href = link.attr('src'))
      href
    end
  end.compact
end

def save_pic(pictures, dir)
  FileUtils.mkdir(dir) unless File.directory?(dir)
  path = dir + '/'
  pictures.each do |pic|
    open(path + get_filename(pic), 'wb') { |f| f << open(pic).read }
  end
end

def get_filename(f)
  f.match(/[^\/]*$/).to_s
end

save_pic(get_links('http://mysku.ru/blog/aliexpress/38154.html'), 'img')
