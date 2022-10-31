// Package main sets up the API and routes
package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/Linkinlog/text-transformer/spongespeak"
)

func main() {
	http.HandleFunc("/", here)
	http.HandleFunc("/spongespeak", spongespeak.Handle)

	log.Fatal(http.ListenAndServe(":8080", nil))
}

func here(w http.ResponseWriter, r *http.Request) {
	fmt.Println("Endpoint Hit: returnAllArticles")
}
