
db.orders.find({ "ship_name": { $regex: "^A" } })