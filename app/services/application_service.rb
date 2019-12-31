class ApplicationService
  def self.find_brewery(*args, &block)
    new(*args, &block).find_brewery
  end
end
