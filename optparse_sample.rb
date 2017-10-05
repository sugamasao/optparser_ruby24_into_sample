require 'optparse'

class OptparseSample
  def self.opt1
    OptionParser.new do |options|
      options.on '-r', '--ruby=VAL' do |val|
        val.downcase
      end
      options.on '-p', '--perl=VAL' do |val|
        val.upcase
      end
      options.on '-g', '--go-lang' do
        'go'
      end
      options.on '-d' do
        true
      end
      options.on_tail '-h', '--help', 'hi'
    end
  end

  def self.opt2
    options = OptionParser.new
    options.on '-r', '--ruby=VAL' do |val|
      val.downcase
    end
    options.on '-p', '--perl=VAL' do |val|
      val.upcase
    end
    options.on '-g', '--go-lang' do
      'go'
    end
    options.on '-d' do
      true
    end
    options.on_tail '-h', '--help', 'hi'
    options
  end
end
