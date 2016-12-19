class Link < ApplicationRecord

  # Short link key will start from 4 charachters + 1 additional random key
  START_NUM = 200000

  validates :user_url, format: { with: URI::regexp, message: "Oops, looks like you put bad URL" }
  validates_format_of :user_url, :with => /\A((?!localhost).)*\z/,
                                 message: "Seems like it's already short link"

end
