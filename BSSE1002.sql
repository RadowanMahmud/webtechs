//q#1 
db.restaurants.find() 
//q#1
db.restaurants.find.pretty()

//q#2
db.restaurants.find({},{"restaurant_id" : 1,"name":1,"borough":1,"cuisine" :1})

//q#3
db.restaurants.find({},{"restaurant_id" : 1,"name":1,"borough":1,"cuisine" :1,"_id":0})

//q#4
db.restaurants.find({},{"restaurant_id" : 1,"name":1,"borough":1,"address.zipcode" :1,"_id":0})

//q#5
db.restaurants.find({"borough": "Bronx"})

//q#6
db.restaurants.find({"borough": "Bronx"}).limit(5)

//q#7
db.restaurants.find({"borough": "Bronx"}).skip(5).limit(5)

//q#8
db.restaurants.find({grades : { $elemMatch:{"score":{$gt : 90}}}})

//q#9
db.restaurants.find({grades : { $elemMatch:{"score":{$gt : 80 , $lt :100}}}})

//q#10
db.restaurants.find({"address.coord" : {$lt : -95.754168}})

//q#11
db.restaurants.find({"cuisine" : {$ne : "American "}, "grades.score" :{$gt: 70}, "address.coord" : {$lt : -65.754168}} )

//q#12
db.restaurants.find( {"cuisine" : {$ne : "American "}, "grades.grade" :"A", "borough": {$ne : "Brooklyn"}} ).sort({"cuisine": -1})

//q#13
db.restaurants.find({name: /^Wil/},{"restaurant_id" : 1,"name":1,"borough":1,"cuisine" :1})

//q#14
db.restaurants.find({ "borough": "Bronx" , $or : [{ "cuisine" : "American " },{ "cuisine" : "Chinese" }]})

//q#15
db.restaurants.find({"borough" :{$in :["Staten Island","Queens","Bronx","Brooklyn"]}},{"restaurant_id" : 1,"name":1,"borough":1,"cuisine" :1})

//q#16
db.restaurants.find({"borough" :{$nin:["StatenIsland","Queens","Bronx","Brooklyn"]}},{"restaurant_id" : 1,"name":1,"borough":1,"cuisine" :1})

//q#17
db.restaurants.find({"grades.score" :{$mod : [7,0]}},{"restaurant_id" : 1,"name":1,"grades":1})

//q#18
db.restaurants.find({ name : { $regex : "mon.*", $options: "i" }},{"name":1, "borough":1,"address.coord":1,"cuisine" :1 })

//q#19
db.restaurants.find({ name :{ $regex : /^Mad/i, } },{"name":1,"borough":1, "address.coord":1,"cuisine" :1 })
