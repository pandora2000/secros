require_relative 'initialize'

class Secros
  include Paths

  def initialize(path)
    @root_path = path
  end

  def values
    @values ||= secrets[:values]
  end

  def files
    @files ||= deep_apply_block(secrets[:files]) do |file|
      File.join(secret_files_path, file)
    end
  end

  private

  def secrets
    @secrets ||= YAML.load(File.read(secrets_path)).deep_symbolize_keys
  end

  def deep_apply_block(obj, &block)
    if obj.is_a?(Array)
      obj.map { |x| block.call(x) }
    elsif obj.is_a?(Hash)
      Hash[obj.map { |k, v| [k, block.call(v)] }]
    else
      block.call(obj)
    end
  end
end
