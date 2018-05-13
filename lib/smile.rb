class Smile
  SmileError = Class.new(StandardError)

  attr_accessor :smile

  def initialize(smile: nil)
    @smile = smile
  end

  def ensmile(cry: false)
    @smile ||= begin
      raise SmileError if cry
      "SMILE"
    rescue SmileError
      "CRY"
    end
  end
end
