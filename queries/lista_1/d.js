db.orders.distinct("ship_name", { "ship_name": { $regex: "^A" } })
