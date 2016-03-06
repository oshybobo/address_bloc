require_relative '../models/address_book'

RSpec.describe AddressBook do
    describe "attributes" do
        it "responds to entries" do
            book = AddressBook.new
            expect(book).to respond_to(:entries)
        end
    
        it "initializes entries as an array" do
            book = AddressBook.new
            expect(book.entries).to be_an(Array)
        end
        
        it "initializes entries as empty" do
            book = AddressBook.new
            expect(book.entries.size).to eq(0)
        end
    
    end
    
    describe "#add_entry" do
        it "adds only one entry to address book" do
            book = AddressBook.new
            book.add_entry('Oshinnaiye','08185501425','dayo.oshinnaiye@graceco.com.ng')
            expect(book.entries.size).to eq(1)
        end
        
        it "adds the correct information to entries" do
            book = AddressBook.new
            book.add_entry('Oshinnaiye','08185501425','dayo.oshinnaiye@graceco.com.ng')
            new_entry = book.entries[0]
            
            expect(new_entry.name).to eq('Oshinnaiye')
            expect(new_entry.phone_number).to eq('08185501425')
            expect(new_entry.email).to eq('dayo.oshinnaiye@graceco.com.ng')
        end
    end
    
    describe "#remove_entry" do
        it "removes only one entry from address book" do
            book = AddressBook.new
            curr_size = book.entries.size
            book.remove_entry('Oshinnaiye','08185501425','dayo.oshinnaiye@graceco.com.ng')
            expect(book.entries.size).to eq(0)
        end
    end
end