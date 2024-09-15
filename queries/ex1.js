db.products.find({
    "standard_cost": {
        $gt: 20,
    }
},
    {
        "_id": true,
        "standard_cost": true,
    }
).sort({ "_id": 1 })