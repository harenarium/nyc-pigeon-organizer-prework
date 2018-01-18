# def merge_data(keys_a, data_a)
#   array = []
#   keys_a.each{|key_h|
#     data_a[0].each{|name, data_h|
#       #
#       # binding.pry
#       if name == key_h[:first_name]
#         data_h[:first_name] = key_h[:first_name]
#         array << data_h
#       end
#     }
#   }
#   array
# end
require "pry"

def nyc_pigeon_organizer(data)
  hash = {}
  data.each{ |attribute, att_hash|
    att_hash.each{|value, name_array|
      name_array.each{|name|
        # binding.pry
        if hash[name] == nil
          hash[name]={}
        end
        if hash[name][attribute] == nil
          hash[name][attribute] = [value.to_s]
        elsif hash[name][attribute] != [value.to_s]
            hash[name][attribute] << value.to_s
        end
      }
    }
  }
  # binding.pry
  hash
end
#
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }
# Iterate over the hash above, collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird.
# Your output should look something like the hash below:
#
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
#
# {"Theo"=>{:color=>[:grey], :gender=>[:male], :lives=>["Subway"]},
#  "Peter Jr."=>{:color=>[:grey], :gender=>[:male], :lives=>["Library"]},
#  "Lucky"=>{:gender=>[:male], :lives=>["Central Park"]},
#  "Ms. K"=>{:color=>[:white], :gender=>[:female], :lives=>["Central Park"]},
#  "Queenie"=>{:color=>[:brown], :gender=>[:female], :lives=>["Subway"]},
#  "Andrew"=>{:gender=>[:male], :lives=>["City Hall"]},
#  "Alex"=>{:color=>[:brown], :gender=>[:male], :lives=>["Central Park"]}}
