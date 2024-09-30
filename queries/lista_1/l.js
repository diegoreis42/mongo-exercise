db.products.updateMany({ "category": "Beverages" }, { $mul: { "list_price": 1.10 } })

