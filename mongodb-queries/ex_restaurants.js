db.restaurants.find()
db.restaurants.aggregate({$project : {restaurant_id : 1, name : 1, borough : 1, cuisine : 1}})
db.restaurants.aggregate({$project : {_id : 0, restaurant_id : 1, name : 1, borough : 1, cuisine : 1}})
db.restaurants.aggregate({$project : {_id : 0, restaurant_id : 1, name : 1, borough : 1, zipcode : 1}})
db.restaurants.find({borough : "Bronx"})
db.restaurants.find({borough : "Bronx"}).limit(5)
db.restaurants.find({borough : "Bronx"}).skip(5).limit(5)
db.restaurants.find({'grades.score' : {$gte : 90}})
db.restaurants.find({"grades" : {$elemMatch: {score : {$gte : 80,$lt : 100}}}})
db.restaurants.find({"address.coord" : {$elemMatch : {$lt: -95.754168}}})
db.restaurants.find({$and : [{cuisine : {$not : {$regex : "American "}}},{'grades.score' : {$gte : 70}},{"address.coord" : {$elemMatch : {$lt : -65.754168}}}]})
-12-db.restaurants.aggregate([$facet:{query1:[{}],query2:[{}],query3:[{}]}])
db.rextaurants.find({$and : [{cuisine : {$not : {$regex : "American "}}},{'grades.grade' : "A"},{borough : {$not : {$regex: "Brooklyn"}}}]})
db.restaurants.aggregate([{$project : {restaurant_id : 1, name : 1, borough : 1, cuisine : 1}},{$match : {name : /Wil/}}])
db.restaurants.aggregate([{$project : {restaurant_id : 1, name : 1, borough : 1, cuisine : 1}},{$match : {name : /ces/}}])
db.restaurants.aggregate([{$project : {restaurant_id : 1, name : 1, borough : 1, cuisine : 1}},{$match : {name : /Reg/}}])
db.restaurants.find({$and : [{borough : "Bronx"},{$or : [{cuisine : "American "},{cuisine : "Chinese"}]}]})
db.restaurants.aggregate([{$project : {restaurant_id : 1, name : 1, borough : 1, cuisine : 1}},{$match : {$or : [{borough : "Staten Island"},{borough : "Queens"},{borough : "Bronxor Brooklyn"}]}}])
-19-db.restaurants.aggregate([{$project : {restaurant_id : 1, name : 1, borough : 1, cuisine : 1}},{$match : {borough : {$not : "Staten Island"}}}])
