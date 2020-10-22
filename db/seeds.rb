# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

AdminUser.create!(email: 'codeboxx@example.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'nicolas.genest@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'nadya.fortier@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'martin.chantal@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'mathieu.houde@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'david.boutin@codeboxx.biz', password: 'password', password_confirmation: 'password') 
AdminUser.create!(email: 'mathieu.lortie@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'thomas.carrier@codeboxx.biz', password: 'password', password_confirmation: 'password')


Employee.create(first_name:"Nicolas", last_name:"Genest", title:"CEO", email:"nicolas.genest@codeboxx.biz", admin_user_id:3, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"Nadya", last_name:"Fortier", title:"Director", email:"nadya.fortier@codeboxx.biz", admin_user_id:4, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"Martin", last_name:"Chantal", title:"Director Assistant", email:"martin.chantal@codeboxx.biz", admin_user_id:5, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"Mathieu", last_name:"Houde", title:"Captain", email:"mathieu.houde@codeboxx.biz", admin_user_id:6, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"David", last_name:"Boutin", title:"Engineer", email:"david.boutin@codeboxx.biz", admin_user_id:7, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"Mathieu", last_name:"Lortie", title:"Engineer", email:"mathieu.lortie@codeboxx.biz", admin_user_id:8, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"Thomas", last_name:"Carrier", title:"Engineer", email:"thomas.carrier@codeboxx.biz", admin_user_id:9, phone_number:Faker::PhoneNumber.cell_phone)

# employRan = rand(1..7)

# puts "-------------------------------------------------------------"
# puts employRan
# puts Employee.find(employRan)[:first_name] +" "+ Employee.find(employRan)[:last_name]
# puts " ---------------------------------------------------------------------------------"

addressType = ["Billing", "Shipping", "Home", "Business"]
status = ["Active", "Inactive"]
entity = ["Building", "Customer"]

# address list as array of objects
add = [
    {
        "address1": "1745 T Street Southeast",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20020",
        "coordinates": {
            "lat": 38.867033,
            "lng": -76.979235
        }
    },
    {
        "address1": "6007 Applegate Lane",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40219",
        "coordinates": {
            "lat": 38.1343013,
            "lng": -85.6498512
        }
    },
    {
        "address1": "560 Penstock Drive",
        "address2": "",
        "city": "Grass Valley",
        "state": "CA",
        "postalCode": "95945",
        "coordinates": {
            "lat": 39.213076,
            "lng": -121.077583
        }
    },
    {
        "address1": "150 Carter Street",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.76556000000001,
            "lng": -72.473091
        }
    },
    {
        "address1": "2721 Lindsay Avenue",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40206",
        "coordinates": {
            "lat": 38.263793,
            "lng": -85.700243
        }
    },
    {
        "address1": "18 Densmore Drive",
        "address2": "",
        "city": "Essex",
        "state": "VT",
        "postalCode": "05452",
        "coordinates": {
            "lat": 44.492953,
            "lng": -73.101883
        }
    },
    {
        "address1": "637 Britannia Drive",
        "address2": "",
        "city": "Vallejo",
        "state": "CA",
        "postalCode": "94591",
        "coordinates": {
            "lat": 38.10476999999999,
            "lng": -122.193849
        }
    },
    {
        "address1": "5601 West Crocus Drive",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85306",
        "coordinates": {
            "lat": 33.6152469,
            "lng": -112.179737
        }
    },
    {
        "address1": "5403 Illinois Avenue",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37209",
        "coordinates": {
            "lat": 36.157077,
            "lng": -86.853827
        }
    },
    {
        "address1": "8821 West Myrtle Avenue",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85305",
        "coordinates": {
            "lat": 33.5404296,
            "lng": -112.2488391
        }
    },
    {
        "address1": "2203 7th Street Road",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40208",
        "coordinates": {
            "lat": 38.218107,
            "lng": -85.779006
        }
    },
    {
        "address1": "6463 Vrain Street",
        "address2": "",
        "city": "Arvada",
        "state": "CO",
        "postalCode": "80003",
        "coordinates": {
            "lat": 39.814056,
            "lng": -105.046913
        }
    },
    {
        "address1": "87 Horseshoe Drive",
        "address2": "",
        "city": "West Windsor",
        "state": "VT",
        "postalCode": "05037",
        "coordinates": {
            "lat": 43.4731793,
            "lng": -72.4967532
        }
    },
    {
        "address1": "60 Desousa Drive",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.7409259,
            "lng": -72.5619104
        }
    },
    {
        "address1": "4 Old Colony Way",
        "address2": "",
        "city": "Yarmouth",
        "state": "MA",
        "postalCode": "02664",
        "coordinates": {
            "lat": 41.697168,
            "lng": -70.189992
        }
    },
    {
        "address1": "314 South 17th Street",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37206",
        "coordinates": {
            "lat": 36.1719075,
            "lng": -86.740228
        }
    },
    {
        "address1": "1649 Timberridge Court",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.084563,
            "lng": -94.206082
        }
    },
    {
        "address1": "5461 West Shades Valley Drive",
        "address2": "",
        "city": "Montgomery",
        "state": "AL",
        "postalCode": "36108",
        "coordinates": {
            "lat": 32.296422,
            "lng": -86.34280299999999
        }
    },
    {
        "address1": "629 Debbie Drive",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37076",
        "coordinates": {
            "lat": 36.208114,
            "lng": -86.58621199999999
        }
    },
    {
        "address1": "22572 Toreador Drive",
        "address2": "",
        "city": "Salinas",
        "state": "CA",
        "postalCode": "93908",
        "coordinates": {
            "lat": 36.602449,
            "lng": -121.699071
        }
    },
    {
        "address1": "3034 Mica Street",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.0807929,
            "lng": -94.2066449
        }
    },
    {
        "address1": "3729 East Mission Boulevard",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72703",
        "coordinates": {
            "lat": 36.0919353,
            "lng": -94.10654219999999
        }
    },
    {
        "address1": "5114 Greentree Drive",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37211",
        "coordinates": {
            "lat": 36.0618539,
            "lng": -86.738508
        }
    },
    {
        "address1": "3466 Southview Avenue",
        "address2": "",
        "city": "Montgomery",
        "state": "AL",
        "postalCode": "36111",
        "coordinates": {
            "lat": 32.341227,
            "lng": -86.2846859
        }
    },
    {
        "address1": "1513 Cathy Street",
        "address2": "",
        "city": "Savannah",
        "state": "GA",
        "postalCode": "31415",
        "coordinates": {
            "lat": 32.067416,
            "lng": -81.125331
        }
    },
    {
        "address1": "600 West 19th Avenue",
        "address2": "APT B",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99503",
        "coordinates": {
            "lat": 61.203115,
            "lng": -149.894107
        }
    },
    {
        "address1": "1208 Elkader Court North",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37013",
        "coordinates": {
            "lat": 36.080049,
            "lng": -86.60116099999999
        }
    },
    {
        "address1": "210 Green Road",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06042",
        "coordinates": {
            "lat": 41.7909099,
            "lng": -72.51195129999999
        }
    },
    {
        "address1": "49548 Road 200",
        "address2": "",
        "city": "O'Neals",
        "state": "CA",
        "postalCode": "93645",
        "coordinates": {
            "lat": 37.153463,
            "lng": -119.648192
        }
    },
    {
        "address1": "81 Seaton Place Northwest",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20001",
        "coordinates": {
            "lat": 38.9149499,
            "lng": -77.01170259999999
        }
    },
    {
        "address1": "1267 Martin Street",
        "address2": "#203",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37203",
        "coordinates": {
            "lat": 36.1404897,
            "lng": -86.7695179
        }
    },
    {
        "address1": "7431 Candace Way",
        "address2": "#1",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40214",
        "coordinates": {
            "lat": 38.142768,
            "lng": -85.7717132
        }
    },
    {
        "address1": "1407 Walden Court",
        "address2": "",
        "city": "Crofton",
        "state": "MD",
        "postalCode": "21114",
        "coordinates": {
            "lat": 39.019306,
            "lng": -76.660653
        }
    },
    {
        "address1": "5906 Milton Avenue",
        "address2": "",
        "city": "Deale",
        "state": "MD",
        "postalCode": "20751",
        "coordinates": {
            "lat": 38.784451,
            "lng": -76.54125499999999
        }
    },
    {
        "address1": "74 Springfield Street",
        "address2": "B",
        "city": "Agawam",
        "state": "MA",
        "postalCode": "01001",
        "coordinates": {
            "lat": 42.0894922,
            "lng": -72.6297558
        }
    },
    {
        "address1": "2905 Stonebridge Court",
        "address2": "",
        "city": "Norman",
        "state": "OK",
        "postalCode": "73071",
        "coordinates": {
            "lat": 35.183319,
            "lng": -97.40210499999999
        }
    },
    {
        "address1": "20930 Todd Valley Road",
        "address2": "",
        "city": "Foresthill",
        "state": "CA",
        "postalCode": "95631",
        "coordinates": {
            "lat": 38.989466,
            "lng": -120.883108
        }
    },
    {
        "address1": "5928 West Mauna Loa Lane",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85306",
        "coordinates": {
            "lat": 33.6204899,
            "lng": -112.18702
        }
    },
    {
        "address1": "802 Madison Street Northwest",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20011",
        "coordinates": {
            "lat": 38.9582381,
            "lng": -77.0244287
        }
    },
    {
        "address1": "2811 Battery Place Northwest",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20016",
        "coordinates": {
            "lat": 38.9256252,
            "lng": -77.0982646
        }
    },
    {
        "address1": "210 Lacross Lane",
        "address2": "",
        "city": "Westmore",
        "state": "VT",
        "postalCode": "05860",
        "coordinates": {
            "lat": 44.771005,
            "lng": -72.048664
        }
    },
    {
        "address1": "2010 Rising Hill Drive",
        "address2": "",
        "city": "Norman",
        "state": "OK",
        "postalCode": "73071",
        "coordinates": {
            "lat": 35.177281,
            "lng": -97.411869
        }
    },
    {
        "address1": "388 East Main Street",
        "address2": "",
        "city": "Burlington",
        "state": "VT",
        "postalCode": "05753",
        "coordinates": {
            "lat": 43.9727945,
            "lng": -73.1023187
        }
    },
    {
        "address1": "450 Kinhawk Drive",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37211",
        "coordinates": {
            "lat": 36.030927,
            "lng": -86.71949099999999
        }
    },
    {
        "address1": "131 Westerly Street",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06042",
        "coordinates": {
            "lat": 41.7906813,
            "lng": -72.53559729999999
        }
    },
    {
        "address1": "308 Woodleaf Court",
        "address2": "",
        "city": "Glen Burnie",
        "state": "MD",
        "postalCode": "21061",
        "coordinates": {
            "lat": 39.1425931,
            "lng": -76.6238441
        }
    },
    {
        "address1": "8502 Madrone Avenue",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40258",
        "coordinates": {
            "lat": 38.1286407,
            "lng": -85.8678042
        }
    },
    {
        "address1": "23 Sable Run Lane",
        "address2": "",
        "city": "Methuen",
        "state": "MA",
        "postalCode": "01844",
        "coordinates": {
            "lat": 42.759847,
            "lng": -71.157721
        }
    },
    {
        "address1": "716 Waller Road",
        "address2": "",
        "city": "Brentwood",
        "state": "TN",
        "postalCode": "37027",
        "coordinates": {
            "lat": 35.998892,
            "lng": -86.696529
        }
    },
    {
        "address1": "416 McIver Street",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37211",
        "coordinates": {
            "lat": 36.10436,
            "lng": -86.74411599999999
        }
    },
    {
        "address1": "1508 Massachusetts Avenue Southeast",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20003",
        "coordinates": {
            "lat": 38.887255,
            "lng": -76.98318499999999
        }
    },
    {
        "address1": "5615 West Villa Maria Drive",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85308",
        "coordinates": {
            "lat": 33.650988,
            "lng": -112.180624
        }
    },
    {
        "address1": "3162 Martin Luther King Junior Boulevard",
        "address2": "#2",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.05233310000001,
            "lng": -94.2056987
        }
    },
    {
        "address1": "5306 Ritchie Highway",
        "address2": "",
        "city": "Baltimore",
        "state": "MD",
        "postalCode": "21225",
        "coordinates": {
            "lat": 39.221978,
            "lng": -76.614183
        }
    },
    {
        "address1": "109 Summit Street",
        "address2": "",
        "city": "Burlington",
        "state": "VT",
        "postalCode": "05401",
        "coordinates": {
            "lat": 44.4729749,
            "lng": -73.2026566
        }
    },
    {
        "address1": "816 West 19th Avenue",
        "address2": "",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99503",
        "coordinates": {
            "lat": 61.203221,
            "lng": -149.898655
        }
    },
    {
        "address1": "172 Alburg Springs Road",
        "address2": "",
        "city": "Alburgh",
        "state": "VT",
        "postalCode": "05440",
        "coordinates": {
            "lat": 44.995827,
            "lng": -73.2201539
        }
    },
    {
        "address1": "159 Downey Drive",
        "address2": "A",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.7800126,
            "lng": -72.5754309
        }
    },
    {
        "address1": "125 John Street",
        "address2": "",
        "city": "Santa Cruz",
        "state": "CA",
        "postalCode": "95060",
        "coordinates": {
            "lat": 36.950901,
            "lng": -122.046881
        }
    },
    {
        "address1": "1101 Lotus Avenue",
        "address2": "",
        "city": "Glen Burnie",
        "state": "MD",
        "postalCode": "21061",
        "coordinates": {
            "lat": 39.191982,
            "lng": -76.6525659
        }
    },
    {
        "address1": "8376 Albacore Drive",
        "address2": "",
        "city": "Pasadena",
        "state": "MD",
        "postalCode": "21122",
        "coordinates": {
            "lat": 39.110409,
            "lng": -76.46565799999999
        }
    },
    {
        "address1": "491 Arabian Way",
        "address2": "",
        "city": "Grand Junction",
        "state": "CO",
        "postalCode": "81504",
        "coordinates": {
            "lat": 39.07548999999999,
            "lng": -108.474785
        }
    },
    {
        "address1": "12245 West 71st Place",
        "address2": "",
        "city": "Arvada",
        "state": "CO",
        "postalCode": "80004",
        "coordinates": {
            "lat": 39.8267078,
            "lng": -105.1366798
        }
    },
    {
        "address1": "80 North East Street",
        "address2": "#4",
        "city": "Holyoke",
        "state": "MA",
        "postalCode": "01040",
        "coordinates": {
            "lat": 42.2041219,
            "lng": -72.5977704
        }
    },
    {
        "address1": "4695 East Huntsville Road",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72701",
        "coordinates": {
            "lat": 36.0471975,
            "lng": -94.0946286
        }
    },
    {
        "address1": "310 Timrod Road",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.756758,
            "lng": -72.493501
        }
    },
    {
        "address1": "1364 Capri Drive",
        "address2": "",
        "city": "Panama City",
        "state": "FL",
        "postalCode": "32405",
        "coordinates": {
            "lat": 30.2207276,
            "lng": -85.6808795
        }
    },
    {
        "address1": "132 Laurel Green Court",
        "address2": "",
        "city": "Savannah",
        "state": "GA",
        "postalCode": "31419",
        "coordinates": {
            "lat": 32.0243075,
            "lng": -81.2468102
        }
    },
    {
        "address1": "6657 West Rose Garden Lane",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85308",
        "coordinates": {
            "lat": 33.676018,
            "lng": -112.201658
        }
    },
    {
        "address1": "519 West 75th Avenue",
        "address2": "#APT 000003",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99518",
        "coordinates": {
            "lat": 61.15288690000001,
            "lng": -149.889133
        }
    },
    {
        "address1": "31353 Santa Elena Way",
        "address2": "",
        "city": "Union City",
        "state": "CA",
        "postalCode": "94587",
        "coordinates": {
            "lat": 37.593981,
            "lng": -122.059762
        }
    },
    {
        "address1": "8398 West Denton Lane",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85305",
        "coordinates": {
            "lat": 33.515353,
            "lng": -112.240812
        }
    },
    {
        "address1": "700 Winston Place",
        "address2": "",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99504",
        "coordinates": {
            "lat": 61.215882,
            "lng": -149.737337
        }
    },
    {
        "address1": "232 Maine Avenue",
        "address2": "",
        "city": "Panama City",
        "state": "FL",
        "postalCode": "32401",
        "coordinates": {
            "lat": 30.1527033,
            "lng": -85.63207129999999
        }
    },
    {
        "address1": "1 Kempf Drive",
        "address2": "",
        "city": "Easton",
        "state": "MA",
        "postalCode": "02375",
        "coordinates": {
            "lat": 42.0505989,
            "lng": -71.08029379999999
        }
    },
    {
        "address1": "5811 Crossings Boulevard",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37013",
        "coordinates": {
            "lat": 36.0370847,
            "lng": -86.6413728
        }
    },
    {
        "address1": "5108 Franklin Street",
        "address2": "",
        "city": "Savannah",
        "state": "GA",
        "postalCode": "31405",
        "coordinates": {
            "lat": 32.034987,
            "lng": -81.121928
        }
    },
    {
        "address1": "913 Fallview Trail",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37211",
        "coordinates": {
            "lat": 36.02419100000001,
            "lng": -86.718305
        }
    },
    {
        "address1": "270 Chrissy's Court",
        "address2": "",
        "city": "Bristol",
        "state": "VT",
        "postalCode": "05443",
        "coordinates": {
            "lat": 44.1710043,
            "lng": -73.1065617
        }
    },
    {
        "address1": "130 Old Route 103",
        "address2": "",
        "city": "Chester",
        "state": "VT",
        "postalCode": "05143",
        "coordinates": {
            "lat": 43.224335,
            "lng": -72.54227399999999
        }
    },
    {
        "address1": "10826 Pointe Royal Drive",
        "address2": "",
        "city": "Bakersfield",
        "state": "CA",
        "postalCode": "93311",
        "coordinates": {
            "lat": 35.2930007,
            "lng": -119.1225908
        }
    },
    {
        "address1": "74 Ranch Drive",
        "address2": "",
        "city": "Montgomery",
        "state": "AL",
        "postalCode": "36109",
        "coordinates": {
            "lat": 32.383322,
            "lng": -86.235124
        }
    },
    {
        "address1": "6601 West Ocotillo Road",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85301",
        "coordinates": {
            "lat": 33.53433,
            "lng": -112.2011246
        }
    },
    {
        "address1": "19416 Barclay Road",
        "address2": "",
        "city": "Castro Valley",
        "state": "CA",
        "postalCode": "94546",
        "coordinates": {
            "lat": 37.70382,
            "lng": -122.091054
        }
    },
    {
        "address1": "1347 Blackwalnut Court",
        "address2": "",
        "city": "Annapolis",
        "state": "MD",
        "postalCode": "21403",
        "coordinates": {
            "lat": 38.936881,
            "lng": -76.475823
        }
    },
    {
        "address1": "1770 Colony Way",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.0867,
            "lng": -94.229754
        }
    },
    {
        "address1": "165 Saint John Street",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.7762171,
            "lng": -72.5410548
        }
    },
    {
        "address1": "2409 Research Boulevard",
        "address2": "",
        "city": "Fort Collins",
        "state": "CO",
        "postalCode": "80526",
        "coordinates": {
            "lat": 40.554586,
            "lng": -105.087852
        }
    },
    {
        "address1": "1903 Bashford Manor Lane",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40218",
        "coordinates": {
            "lat": 38.1977059,
            "lng": -85.675288
        }
    },
    {
        "address1": "8315 Surf Drive",
        "address2": "",
        "city": "Panama City Beach",
        "state": "FL",
        "postalCode": "32408",
        "coordinates": {
            "lat": 30.163458,
            "lng": -85.785449
        }
    },
    {
        "address1": "3301 Old Muldoon Road",
        "address2": "",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99504",
        "coordinates": {
            "lat": 61.1908348,
            "lng": -149.7340096
        }
    },
    {
        "address1": "8800 Cordell Circle",
        "address2": "#APT 000003",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99502",
        "coordinates": {
            "lat": 61.1409305,
            "lng": -149.9437822
        }
    },
    {
        "address1": "117 East Cook Avenue",
        "address2": "",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99501",
        "coordinates": {
            "lat": 61.230336,
            "lng": -149.883795
        }
    },
    {
        "address1": "6231 North 67th Avenue",
        "address2": "#241",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85301",
        "coordinates": {
            "lat": 33.5279666,
            "lng": -112.2022551
        }
    },
    {
        "address1": "8505 Waters Avenue",
        "address2": "#66",
        "city": "Savannah",
        "state": "GA",
        "postalCode": "31406",
        "coordinates": {
            "lat": 31.9901877,
            "lng": -81.1070672
        }
    },
    {
        "address1": "7 Underwood Place Northwest",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20012",
        "coordinates": {
            "lat": 38.969351,
            "lng": -77.009722
        }
    },
    {
        "address1": "21950 Arnold Center Road",
        "address2": "",
        "city": "Carson",
        "state": "CA",
        "postalCode": "90810",
        "coordinates": {
            "lat": 33.8272706,
            "lng": -118.2302826
        }
    },
    {
        "address1": "1427 South Carolina Avenue Southeast",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20003",
        "coordinates": {
            "lat": 38.886615,
            "lng": -76.9845349
        }
    },
    {
        "address1": "1420 Turtleback Trail",
        "address2": "",
        "city": "Panama City",
        "state": "FL",
        "postalCode": "32413",
        "coordinates": {
            "lat": 30.281084,
            "lng": -85.9677169
        }
    }
]

#seed the address table
100.times do
    index = rand(0..add.length-1)
    addresses = Address.new(
        type_of_address: addressType[rand(0..3)],
        status: status[rand(0..1)],
        entity: entity[rand(0..1)],
        number_and_street: add[index][:address1],
        # number_and_street: add[1][0],
        suite_or_apartment: rand(1..100),
        city: add[index][:city],
        postal_code: add[index][:postalCode],
        country: "United States",
        notes: Faker::Measurement.metric_height
    )
    addresses.save!
end




userID = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]


buildingDetail = [
    {
        "information": "Type",
        "value": "Commercial",
    },
    {
        "information": "Type",
        "value": "Residential",
    },
    {
        "information": "Construction year",
        "value": "1969",
    },
    {
        "information": "Construction year",
        "value": "1948",
    },
    {
        "information": "Construction year",
        "value": "1989",
    },
] 

typeBuilding = ["Residential", "Commercial", "Corporate", "Hybrid"]



bcounter = 0
i = 10
j=1
50.times do
    technicalAthorityID = rand(1..7)
    eMail = Faker::Internet.email
    addressID = rand(1..100)

    users = AdminUser.new(
        email:eMail,
        password:"password",
        password_confirmation:"password"
    )
    users.save

    customers = Customer.new(
        #user_id: userID[i],
        customer_creation_date: Faker::Date.between(from: '1976-01-01', to: '2020-10-20'),
        company_name: Faker::Company.name,
        company_headquarter_address: Address.find(addressID)[:number_and_street] + " " + Address.find(addressID)[:suite_or_apartment] + " " + Address.find(addressID)[:city] + " " + Address.find(addressID)[:postal_code] + " " + Address.find(addressID)[:country],
        
        full_name_company_contact: Faker::Name.name,
        address_id: addressID,
        company_contact_phone: Faker::PhoneNumber.cell_phone,
        email_company_contact: eMail,
        admin_user_id: i,
        company_description: Faker::Company.industry,

        employee_id:technicalAthorityID,
        full_name_service_technical_authority: Employee.find(technicalAthorityID)[:first_name] + " " + Employee.find(technicalAthorityID)[:last_name] , 
       
        technical_authority_phone: Employee.find(technicalAthorityID)[:phone_number],
        technical_manager_email: Employee.find(technicalAthorityID)[:email]
    )

    customers.save


    b = rand(1..3)
    b.times do
        addressID2 = rand(1..100)
        administrator = rand(1..7)
        buildings = Building.new(
            address_id: addressID2,
            address_of_the_building: Address.find(addressID2)[:number_and_street] + " " + Address.find(addressID2)[:suite_or_apartment] + " " + Address.find(addressID2)[:city] + " " + Address.find(addressID2)[:postal_code] + " " + Address.find(addressID2)[:country],
            full_name_of_the_building_administrator: Employee.find(administrator)[:first_name] + " " + Employee.find(administrator)[:last_name],
            email_of_the_administrator_of_the_building: Employee.find(administrator)[:email],
            phone_number_of_the_building_administrator: Employee.find(administrator)[:phone_number],
            full_name_of_the_technical_contact_for_the_building: Employee.find(technicalAthorityID)[:first_name] + " " + Employee.find(technicalAthorityID)[:last_name],
            technical_contact_email_for_the_building: Employee.find(technicalAthorityID)[:email],
            technical_contact_phone_for_the_building: Employee.find(technicalAthorityID)[:phone_number],
            customer_id: j
        )
        buildings.save
        bcounter += 1

        arrayIndex = rand(0..buildingDetail.length-1)

        # buildingDetails = Building_detail.new(
        #     building_id: bcounter,
        #     information_key: buildingDetail[arrayIndex][:information],
        #     value: buildingDetail[arrayIndex][:value]
        # )
        # buildingDetails.save
        
        bat = rand(1..3)
        bat.times do
            stat = rand(0..5)
            if stat > 0
                stat = 1
            end
            batteries = Battery.new(
                building_id: bcounter,
                type_of_building: typeBuilding[rand(0..3)],
                status: status[stat],
                employee_id: rand(0..7),
                commissioning_date: Faker::Date.between(from: Customer.find(j)[:customer_creation_date], to: '2020-10-20'),
                last_inspection_date: Faker::Date.between(from: '2019-10-20', to: '2020-10-20'),
                operations_certificate: Faker::DrivingLicence.british_driving_licence,
                information: Faker::Company.buzzword,
                notes:  Faker::Company.catch_phrase,
            )
            batteries.save
        end



    end



    i = i+1
    j += 1
end

# # buildingID = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]



# Building.all.each do |b|
#     Battery.create!(
#         building_id: b.id,
#         type_of_building: typeBuilding[rand(0..3)],
#         status: status[rand(0..1)],
#         employee_id: userID[rand(0..6)],
#         commissioning_date: Faker::Date.in_date_period,
#         last_inspection_date: Faker::Date.between_except(from: '2014-09-23', to: '2015-09-25', excepted: '2015-01-24'),
#         operations_certificate: Faker::DrivingLicence.british_driving_licence,
#         information: Faker::Company.buzzword,
#         notes: Faker::Company.catch_phrase
#     )
# end

   

# Building.find_each do |b|
#     Building_detail.create!(
#         
# end

# Battery.all.each do |battery|
#     Column.create!(
#         type_of_building: typeBuilding[rand(0..3)],
#         number_of_floors_served: userID[rand(8..49)],
#         status: status[rand(0..1)],
#         information: Faker::Company.buzzword,
#         notes: Faker::Company.catch_phrase,
#         battery_id: battery.id
#     )
# end


# 50.times do
#     columns = Column.new(
#         type_of_building: typeBuilding[rand(0..3)],
#         number_of_floors_served: userID[rand(8..49)],
#         status: status[rand(0..1)],
#         information: Faker::Company.buzzword,
#         notes: Faker::Company.catch_phrase
#     )
#     columns.save
# end

# elevatorModel = ["Standard", "Premium", "Excelium"]

# Column.all.each do |col|
#     Elevator.create!(
#         column_id: col.id,
#         serial_number: "1",
#         model: elevatorModel[rand(0..2)],
#         type: typeBuilding[rand(0..2)],
#         status: status[rand(0..1)],
#         commissioning_date: Faker::Date.in_date_period,
#         last_inspection_date: Faker::Date.between_except(from: '2014-09-23', to: '2015-09-25', excepted: '2015-01-24'),
#         inspection_certificate: Faker::DrivingLicence.british_driving_licence,
#         information: Faker::Company.buzzword,
#         notes: Faker::Company.catch_phrase
#     )
# end

# elevatorModel = ["Standard", "Premium", "Excelium"]
# 50.times do
#     elevators = Elevator.new(
#         column_id: "1",
#         serial_number: "1",
#         model: elevatorModel[rand(0..2)],
#         type: typeBuilding[rand(0..2)],
#         status: status[rand(0..1)],
#         commissioning_date: Faker::Date.in_date_period,
#         last_inspection_date: Faker::Date.between_except(from: '2014-09-23', to: '2015-09-25', excepted: '2015-01-24'),
#         inspection_certificate: Faker::DrivingLicence.british_driving_licence,
#         information: Faker::Company.buzzword,
#         notes: Faker::Company.catch_phrase
#     )
#     elevators.save
# end





# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# AdminUser.create!(email: 'codeboxx@example.com', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'nicolas.genest@codeboxx.biz', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'nadya.fortier@codeboxx.biz', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'martin.chantal@codeboxx.biz', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'mathieu.houde@codeboxx.biz', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'david.boutin@codeboxx.biz', password: 'password', password_confirmation: 'password') 
# AdminUser.create!(email: 'mathieu.lortie@codeboxx.biz', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'thomas.carrier@codeboxx.biz', password: 'password', password_confirmation: 'password')


# # Employee.create(first_name:"Nicolas", last_name:"Genest", title:"CEO", email:"nicolas.genest@codeboxx.biz", user_id:1)
# # Employee.create(first_name:"Nadya", last_name:"Fortier", title:"Director", email:"nadya.fortier@codeboxx.biz", user_id:2)
# # Employee.create(first_name:"Martin", last_name:"Chantal", title:"Director Assistant", email:"martin.chantal@codeboxx.biz", user_id:3)
# # Employee.create(first_name:"Mathieu", last_name:"Houde", title:"Captain", email:"mathieu.houde@codeboxx.biz", user_id:4)
# # Employee.create(first_name:"David", last_name:"Boutin", title:"Engineer", email:"david.boutin@codeboxx.biz", user_id:5)
# # Employee.create(first_name:"Mathieu", last_name:"Lortie", title:"Engineer", email:"mathieu.lortie@codeboxx.biz", user_id:6)
# # Employee.create(first_name:"Thomas", last_name:"Carrier", title:"Engineer", email:"thomas.carrier@codeboxx.biz", user_id:7)


# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# AdminUser.create!(email: 'codeboxx@example.com', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'nicolas.genest@codeboxx.biz', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'nadya.fortier@codeboxx.biz', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'martin.chantal@codeboxx.biz', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'mathieu.houde@codeboxx.biz', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'david.boutin@codeboxx.biz', password: 'password', password_confirmation: 'password') 
# AdminUser.create!(email: 'mathieu.lortie@codeboxx.biz', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'thomas.carrier@codeboxx.biz', password: 'password', password_confirmation: 'password')
