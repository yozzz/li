module Li
  class Generator < LiBase

    def initialize(id_num)
      @id_num = id_num
    end

    def generate
      @id_num += Link::START_NUM
      short_key = String.new
      while @id_num > 0 do
        short_key << CHARS[@id_num % BASE]
        @id_num /= BASE
      end
      short_key = add_random_char(short_key.reverse)
    end

    private

    def add_random_char(short_key)
	    short_key << CHARS.sample
	  end

  end
end
