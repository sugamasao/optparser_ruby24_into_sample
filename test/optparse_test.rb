require_relative '../optparse_sample'

class OptparseTest < Test::Unit::TestCase
  def args
    %w[
      --ruby Ruby
      --perl Perl
      -d
    ]
  end

  data(:test_data, {
      ruby: 'ruby',
      perl: 'PERL',
      d: true
  })
  def test_opt1(data)
    expected, _ = data
    config = {}
    OptparseSample.opt1.parse(args, into: config)
    assert_equal(expected,config)
  end

  data(:test_data, {
      ruby: 'ruby',
      perl: 'PERL',
      d: true
  })
  def test_opt2(data)
    expected, _ = data
    config = {}
    OptparseSample.opt2.parse(args, into: config)
    assert_equal(expected,config)
  end
end
