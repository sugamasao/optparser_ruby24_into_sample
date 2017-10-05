require 'pathname'
base_dir = Pathname(__dir__).parent.expand_path
lib_dir = base_dir
test_dir = base_dir.join('test')

$LOAD_PATH.unshift(lib_dir)

require 'test/unit'
exit Test::Unit::AutoRunner.run(true, test_dir)
