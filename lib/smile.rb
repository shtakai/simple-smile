class Smile
  SmileError = Class.new(StandardError)

  attr_accessor :smile

  def ensmile(cry: false)
    @smile ||= begin
      raise SmileError if cry
      "SMILE"
    rescue SmileError
      "CRY"
    end
  end
end
