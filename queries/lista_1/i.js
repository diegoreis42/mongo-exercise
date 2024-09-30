db.orders.find({ "details.product_id": { $gte: 30, $lte: 50 } })

