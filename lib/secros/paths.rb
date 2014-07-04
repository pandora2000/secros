module Secros::Paths
  def root_path
    @root_path
  end

  def secrets_path
    File.join(root_path, 'secrets.yml')
  end

  def secret_files_path
    File.join(root_path, 'files')
  end
end
