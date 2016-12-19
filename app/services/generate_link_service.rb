class GenerateLinkService

  def initialize(id_num)
    @id_num = id_num
  end

  def execute
    Li::Generator.new(@id_num).generate
  end

end
