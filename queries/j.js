db.orders.find({ $or: [{ "details.quantity": { $gt: 10 } }, { "details.discount": { $lt: 0.1 } }] })
