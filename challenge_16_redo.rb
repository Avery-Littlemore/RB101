# Populate the data from the contact_data into the contacts
# Should be iterating over :email, :address, :phone
# Note Array.shift and Array.first methods

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
options = [:email, :address, :phone]

contacts.each_with_index do |contact_item, contact_idx|
  current = contact_data.shift
  options.each_with_index do |opt_item, opt_idx|
    contacts[contact_item.first][opt_item] = current[opt_idx]
  end
end

p contacts

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }