class Test
  def initialize
    @successful = 0
    @failed = 0
    @start_time = Time.now
  end

  def run(expected, actual)
    if expected == actual
      @successful += 1
      print '.'
    else
      @failed += 1
      print 'F'
    end
  end

  def self.start
    test = Test.new
    yield test
    test.finish
  end

  def finish
    all = @successful + @failed
    puts "\n#{all} examples, #{@successful} successful, #{@failed} failed"
    puts "Finished in #{(Time.now.to_f - @start_time.to_f).round(5)} seconds"
  end
end

