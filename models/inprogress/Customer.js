const db = require("../../util/database");
module.exports = class Customer {

    constructor(id, customer_name, primary_phone, fax, secondary_phone, website, notes, added_by, updated_by, added_on, updated_on) {
        this.id = id;
        this.customer_name = customer_name;
        this.primary_phone = primary_phone;
        this.fax = fax;
        this.secondary_phone = secondary_phone;
        this.website = website;
        this.notes = notes;
        this.added_by = added_by;
        this.updated_by = updated_by;
        this.added_on = added_on;
        this.updated_on = updated_on;
    }

    static fetchAllCustomers() {
        return db.execute("select * from customers")
    }

}