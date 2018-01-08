#dish gem example
require 'rubygems'
require 'dish'

hash = {
    movie: "Star Wars",
    actors: [
        {age: 22, name: "luke"},
        {age: 35, name: "han"},
        {age: 400, name: "yoda"}
    ],
    favorite: true
}

p media = Dish(hash)
p media.movie
p media.actors.length
p media.actors.push({age: 33, name: "what"})
p media.actors.length
p media.favorite?