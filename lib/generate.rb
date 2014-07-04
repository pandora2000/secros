require_relative 'initialize'

def failed(message)
  puts message
  exit 1
end

failed('Please specify directory path.') if ARGV.length == 0
dir = ARGV[0]
failed("Directory #{dir} already exists.") if File.directory?(dir)
`cp -r #{File.expand_path('../../template', __FILE__)} #{dir}`
