require_relative 'initialize'

class Secros
  include Paths

  def initialize(path)
    @root_path = path
  end

  def value(key)
    secrets[:values][normalized_key(key)]
  end

  def file(key)
    File.join(secret_files_path, secrets[:files][normalized_key(key)])
  end

  private

  def secrets
    @secrets ||= YAML.load(File.read(secrets_path)).deep_symbolize_keys
  end

  def normalized_key(key)
    key.to_s.to_sym
  end
end
