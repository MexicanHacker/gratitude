class Entry
  include MongoMapper::Document

key :things, Array
key :date_created, Date

end
