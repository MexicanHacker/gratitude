require 'spec_helper'
require './entry_service.rb'

describe EntryService do

  it "saves an entry" do
    entry = double('entry')
  	service = EntryService.new
    expect(entry).to receive(:save!)
    allow(service).to receive(:create_entry).and_return(entry)
    service.save_entry(Time.now, ["Hola mundo", "Todo sereno"])
  end

  it "retrieves all entries" do
    items = {
     'date' => Time.now,
     'thankful' => "Todo sereno"
    }
    entry = double('Entry')
    service = EntryService.new
    expect(entry).to receive(:sort).with(:date_created).and_return(items)
    allow(service).to receive(:get_entry).and_return(entry)
    entries = service.find_entries()
    entries.empty?
  end

end
