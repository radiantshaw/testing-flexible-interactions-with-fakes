class FakeLogger
  def initialize
    @messages = {}
  end

  attr_reader :messages

  def debug(message)
    @messages[:debug] ||= []
    @messages[:debug] << message
  end

  def error(message)
    @messages[:error] ||= []
    @messages[:error] << message
  end

  def fatal(message)
    @messages[:fatal] ||= []
    @messages[:fatal] << message
  end
end
