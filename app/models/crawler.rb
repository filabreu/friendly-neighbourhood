class Crawler

  def initialize(document)
    @document = Nokogiri::HTML(document)
    @title = title
    @description = description
    @main_image = main_image
    @duration = { minutes: minutes, seconds: seconds }
  end

  def document
    @document
  end

  def title
    document.xpath("/html/head/title/text()").to_s
  end

  def description
    document.xpath("/html/head/meta[@name='description']/@content").to_s
  end

  def duration
    document.xpath("//meta[@itemprop='duration']/@content").to_s
  end

  def minutes
    duration.match(/\d+(?=M)/).to_s if duration.present?
  end

  def seconds
    duration.match(/\d+(?=S)/).to_s if duration.present?
  end

  def main_image
    document.xpath("//meta[@property='og:image']/@content").to_s
  end
end
