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

def nyc_pigeon_organizer(data)
  hash = {}
  data.each{ |attribute, att_hash|
    att_hash.each{|value, name_array|
      name_array.each{|name|
        case nil
        when hash[name]
          hash[name]={}
        when hash[name][attribute]
          hash[name][attribute] = [value]
        else
          if hash[name][attribute] != [value]
            hash[name][attribute] << value
          end
        end
      }
    }

  }
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
