class FakeLogger
  attr_reader :messages

  def initialize
    @messages = {
      debug: [],
      fatal: []
    }
  end

  def debug(message)
    @messages[:debug] << message
  end

  def fatal(message)
    @messages[:fatal] << message
  end
end