db.products.updateMany({ "supplier_ids": 2 }, { $addToSet: { "supplier_ids": 10 } })
