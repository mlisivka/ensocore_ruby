class Test
  def initialize
    @successful = 0
    @failed = 0
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

  def finish
    all = @successful + @failed
    puts "\n#{all} examples, #{@successful} successful, #{@failed} failed"
  end
end

