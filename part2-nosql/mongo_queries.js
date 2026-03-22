// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    product_id: "ELEC001",
    name: "Smartphone X",
    category: "Electronics",
    unit_price: 45000,
    specifications: {
      brand: "Samsung",
      warranty_years: 1,
      voltage: "220V"
    },
    features: ["5G", "AMOLED Display", "Fast Charging"]
  },
  {
    product_id: "CLOTH001",
    name: "Men's Jacket",
    category: "Clothing",
    unit_price: 3500,
    details: {
      brand: "Zara",
      size: "L",
      material: "Leather"
    },
    colors_available: ["Black", "Brown"]
  },
  {
    product_id: "GROC001",
    name: "Organic Milk",
    category: "Groceries",
    unit_price: 60,
    expiry_date: new Date("2024-12-20"),
    nutritional_info: {
      calories: 150,
      fat: "8g",
      protein: "6g"
    }
  }
])

// OP2: find() — Electronics with price > 20000
db.products.find({
  category: "Electronics",
  unit_price: { $gt: 20000 }
})

// OP3: find() — Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
})

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { product_id: "ELEC001" },
  { $set: { discount_percent: 10 } }
)

// OP5: createIndex() — index on category
db.products.createIndex({ category: 1 })

// Explanation:
// Indexing the category field improves query performance when filtering products by category,
// especially for large datasets.
