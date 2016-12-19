class RecognizeLinkService

  def initialize(short_key)
    @short_key = short_key
  end

  def execute
    link_id = Li::Decoder.new(@short_key).decode
    Link.find_by(id: link_id).try(:user_url)
  end

end
