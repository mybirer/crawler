require_relative "test_helper"
module Crawler
  module Image
    class TimerTest < Minitest::Test
      def test_should_time_out
        time = 0.11
        timer = Timer.new(time)

        sleep(time)

        assert timer.expired?

        elapsed = time + 0.01
        assert [elapsed].include?(timer.elapsed), "Around #{elapsed}s should have elapsed."
      end
    end
  end
end