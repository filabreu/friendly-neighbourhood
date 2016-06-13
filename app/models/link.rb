class Link

  def initialize(url)
    @url = url
  end

  def url
    @url
  end

  def request
    @request ||= HTTParty.get(url)
  end

  def code
    @code ||= request.code
  end

  def message
    @message ||= request.message
  end

  def title
    scrape.title
  end

  def description
    scrape.description
  end

  def main_image
    scrape.main_image
  end

  def duration
    { minutes: scrape.minutes, seconds: scrape.seconds }
  end


  protected
    def body
      @body ||= request.body
    end

    def scrape
      @scrape ||= Crawler.new(body)
    end
end
