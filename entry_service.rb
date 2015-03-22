require './entry.rb'

class EntryService

  def save_entry (date, items)
    entry = create_entry(date, items)
    entry.save!
  end

  def find_entries()
    get_entry.sort(:date_created)
  end

  private

  def get_entry()
    Entry
  end

  def create_entry (date, items)
    get_entry.new(:date_created => date, :things => items )
  end

end
