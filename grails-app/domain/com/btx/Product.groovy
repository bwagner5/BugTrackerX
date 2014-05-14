package com.btx

class Product {

    String name
    String description
    String latestVersion
    String deployedDevVersion
    String deployedProdVersion

    Client client


    static constraints = {
        name(nullable: false, blank: false, maxSize: 100)
        description(nullable: false, blank: false, maxSize: 4000)
        latestVersion(nullable: true, blank: true, maxSize: 100)
        deployedDevVersion(nullable: true, blank: true, maxSize: 100)
        deployedProdVersion(nullable: true, blank: true, maxSize: 100)
        client(nullable: true, blank: true)
    }

    public String toString(){
        return name
    }
}
