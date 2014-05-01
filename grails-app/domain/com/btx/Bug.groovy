package com.btx

class Bug {

    Product product
    String version
    String description
    String severity
    Date date



    static constraints = {
        product(nullable: false, blank: false)
        version(nullable: true, blank: true, maxSize: 100)
        description(nullable: false, blank: false, maxSize: 4000)
        severity(nullable: false, blank: false, inlist: ['minor', 'moderate', 'major', 'critical'])
    }

    public String toString(){
        return "Bug " + this.id
    }
}
