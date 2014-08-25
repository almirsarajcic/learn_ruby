class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds

    hours = seconds / 3600
    seconds %= 3600
    minutes = seconds / 60
    seconds %= 60

    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(number)
    "#{format("%02d", number)}"
  end
end
