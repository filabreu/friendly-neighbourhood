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

  def body
    @body ||= request.body
  end

  def scrap
    @scrap ||= git Scrapper.new(body)
  end
end
