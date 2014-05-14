package com.btx

class Client {

    String name

    static constraints = {
        name(nullable: false, blank: false, maxSize: 200)
    }

    public String toString(){
        return name
    }
}
