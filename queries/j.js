db.orders.find({ $or: [{ "quantity": { $gt: 10 } }, { "discount": { $lt: 0.1 } }] })
