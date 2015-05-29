class Eml
  RESERVED_TO_HEADER = "X-Mail-Header"

  def initialize(data)
    if File.exist?(data) 
      @mail = Mail.read(data)
    else
      @mail = Mail.new(data)
    end
  end

  def to
    @mail.to
  end

  def reserved_to
    addrs = @mail.header[RESERVED_TO_HEADER]
    return nil if addrs.nil?
    addrs = addrs.decoded
    addrs.split(",").map do |addr|
      addr.strip
    end
  end

  def cc
    @mail.cc
  end

  def subject
    @mail.subject
  end

  def date
    unless @mail.date.nil?
      @mail.date.xmlschema 
    end
  end

  def body
    if @mail.multipart?
      data = @mail.text_part
    else
      data = @mail.body
    end
    data.nil? ? nil : data.decoded
  end

  def attachments
    @mail.attachments
  end
end
