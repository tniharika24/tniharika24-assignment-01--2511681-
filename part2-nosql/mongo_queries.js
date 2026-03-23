
db.orders.find({ "customer.city": "Delhi" })


db.orders.find({ "products.product_name": "Laptop" })


db.orders.aggregate([
  { $group: { _id: "$customer.city", total_orders: { $sum: 1 } } }
])



db.orders.aggregate([
  {
    $addFields: {
      total_value: {
        $sum: {
          $map: {
            input: "$products",
            as: "p",
            in: { $multiply: ["$$p.unit_price", "$$p.quantity"] }
          }
        }
      }
    }
  },
  { $match: { total_value: { $gt: 10000 } } }
])

