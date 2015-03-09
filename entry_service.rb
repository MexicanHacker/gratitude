require './entry.rb'

class EntryService

  def save_entry (date, items)
    entry = create_entry(date, items)
    entry.save!
  end

  def find_entries()
    
  end

  private



  def create_entry (date, items)
    Entry.new(:date_created => date, :things => items )
  end

end
