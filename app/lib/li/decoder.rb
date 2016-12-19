module Li
  class Decoder < LiBase

    def initialize(key)
      @key = key
    end

    def decode
      url_key = @key[0..-2]
  		counter = id_num = 0
  		while counter < url_key.length do
        char_index = CHARS.index(url_key[counter])
        id_num = id_num * BASE + char_index
  			counter += 1
  		end
  		id_num - Link::START_NUM
  	end

  end
end
