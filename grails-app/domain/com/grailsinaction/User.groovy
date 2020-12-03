package com.grailsinaction

class User {
    String loginId
    String password
    String confirmPassword
    String homepage
    Date dateCreated
    Date lastUpdated

    static hasOne = [ profile : Profile ]

    static constraints = {
        loginId size: 3..20, unique: true, nullable: false
        password size: 6..8, nullable: false
        confirmPassword size: 6..8, nullable: false, validator: { passwd, user ->
            if(passwd != user.password)
                "user.password.notconfirmed"
        }
        homepage url: true, nullable: true
        profile nullable: true
    }
}
