class Book < ActiveRecord::Base
  attr_accessible :chapter, :verse, :version, :word
  belongs_to :book_name

  VERSION_JAPANESE = 1
  VERSION_ENGLISH  = 2
end
