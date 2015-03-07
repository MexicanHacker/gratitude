require './entry.rb'

class EntryService

  def save_entry (date, items)
    entry = Entry.new(:date_created => date, :things => items )    
    entry.save!
  end

end
