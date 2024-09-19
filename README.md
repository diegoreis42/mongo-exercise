# NoSQL - MongoDB

![project demonstration](./assets/demonstration.gif)

That's the delivery of the first NoSQL class's homework, nothing too fancy, just basic documents manipulation with queries, updates, deletions and inserts. Each exercise
is written in his `js` file in `queries/` and the results are in the `output/` directory.
For instance, the answer for the exercise `a` is in `queries/a.js` and the result in `output/a-result.json` ~~but only after running the docker command :)~~.
All the data used was from [northwind's](https://github.com/jasny/mongodb-northwind) repository.

# How to run

Clone the repo, go to the root directory and run:

```sh
docker-compose up
```

And we are done 😄

You may have some issues with the 'output' directory permissions, if that's the case run:

```sh
sudo chmod -R 777 output
```

before running the docker command.

## Answers

If you are my professor where is the answers for the exercises to facilitate your life :)

```javascript
// A
db.products
  .find(
    {
      standard_cost: {
        $gt: 20,
      },
    },
    {
      _id: true,
      standard_cost: true,
    }
  )
  .sort({ _id: 1 });

// B
db.customers.distinct("city");

// C
db.orders.find({ ship_name: { $regex: "^A" } });

// D
db.orders.distinct("ship_name", { ship_name: { $regex: "^A" } });

// E
db.products.find({ supplier_ids: 6 });

// F
db.products.find({ supplier_ids: { $size: 2 } });

// G
db.products.find({ supplier_ids: { $all: [2, 3] } });

// H
db.products.find({ supplier_ids: { $all: [2, 6] } });

// I
db.orders.find({ "details.product_id": { $gte: 30, $lte: 50 } });

// J
db.orders.find({
  $or: [
    { "details.quantity": { $gt: 10 } },
    { "details.discount": { $lt: 0.1 } },
  ],
});

// K
db.products.updateMany(
  { supplier_ids: 2 },
  { $addToSet: { supplier_ids: 10 } }
);

// L
db.products.updateMany(
  { category: "Beverages" },
  { $mul: { list_price: 1.1 } }
);

// M
db.customers.updateOne(
  { _id: 18 },
  { $set: { first_name: "Maria", last_name: "Silva" } }
);

// N
db.customers.updateMany({}, { $set: { lastOrderDate: null } });

// O
db.products.updateMany({}, { $set: { onSale: false } });

// P
db.customers.updateMany(
  { country_region: { $exists: true } },
  { $unset: { country_region: "" } }
);

// Q
db.orders.deleteMany({ ship_name: "Karen Toh" });
```
