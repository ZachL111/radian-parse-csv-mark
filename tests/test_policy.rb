require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = RadianParseCsvMark::Signal.new(demand: 52, capacity: 99, latency: 16, risk: 17, weight: 6)
    assert_equal 88, RadianParseCsvMark.score(signal_case_1)
    assert_equal 'review', RadianParseCsvMark.classify(signal_case_1)
    signal_case_2 = RadianParseCsvMark::Signal.new(demand: 96, capacity: 94, latency: 15, risk: 9, weight: 5)
    assert_equal 211, RadianParseCsvMark.score(signal_case_2)
    assert_equal 'accept', RadianParseCsvMark.classify(signal_case_2)
    signal_case_3 = RadianParseCsvMark::Signal.new(demand: 100, capacity: 90, latency: 8, risk: 18, weight: 10)
    assert_equal 206, RadianParseCsvMark.score(signal_case_3)
    assert_equal 'accept', RadianParseCsvMark.classify(signal_case_3)
  end
end
