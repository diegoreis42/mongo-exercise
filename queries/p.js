db.customers.updateMany({ country_region: { $exists: true } }, { $unset: { country_region: "" } })
