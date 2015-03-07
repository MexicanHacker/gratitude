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

end
