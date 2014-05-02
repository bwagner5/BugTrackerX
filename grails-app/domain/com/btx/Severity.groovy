package com.btx

class Severity {

    String name
    Integer level

    static constraints = {
        name(nullable: false, blank: false, unique: true)
        level(min: 0, nullable: false, blank: false, unique: true)
    }

    public String toString(){
        return name
    }
}
