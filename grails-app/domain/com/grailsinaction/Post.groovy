package com.grailsinaction

class Post {
    String content
    Date dateCreated
    static constraints = {
        content blank: false
    }

    static hasMany = [tags : Tag ]

    static belongsTo = [ user : User ]

    //all queries to the Post object return in a descending order
    static mapping = {
        sort dateCreated:"desc"
    }
}
