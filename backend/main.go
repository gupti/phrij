package main

import (
    "fmt"
	"log"
    "gopkg.in/mgo.v2"
    "gopkg.in/mgo.v2/bson"
)

func main() {
    session, err := mgo.Dial("127.0.0.1")
    if err != nil {
        panic(err)
    }
    // ensures we close session
    defer session.Close()

    // Optional. Switch the session to a monotonic behavior.
    // TODO: Figure wat this means lol
    session.SetMode(mgo.Monotonic, true)

    // Setup cursor to primary collection in mongo
    image_cursor := session.DB("qicboard").C("people")
}
