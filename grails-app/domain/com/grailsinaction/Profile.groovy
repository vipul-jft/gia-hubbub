package com.grailsinaction

class Profile {
    User user
    byte[] photo
    String fullName
    String bio
    String homepage
    String email
    String timezone
    String country
    String jabberAddress

    static constraints = {
        fullName blank: false
        bio nullable: true, maxSize: 1000
        homepage url: true, nullable: true
        email email: true, blank: false
        photo nullable: true, size:0..5000000
        country nullable: true
        timezone nullable: true
        jabberAddress email: true, nullable: true
    }


    @Override
    public String toString() {
        return fullName
    }

}
