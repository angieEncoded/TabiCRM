module.exports = class Vendor {
    constructor(id, name, notes, added_by, updated_by, added_on, updated_on) {

        this.id = id;
        this.name = name;
        this.notes = notes;
        this.added_by = added_by;
        this.updated_by = updated_by;
        this.added_on = added_on;
        this.updated_on = updated_on;

    }

    static fetchAllVendors() {
        return db.execute("select * from vendors")
    }

}