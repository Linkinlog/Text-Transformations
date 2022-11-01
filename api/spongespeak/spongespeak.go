// Package spongespeak contains utilities to convert text to alternating capitalization
package spongespeak

import (
	"encoding/json"
	"fmt"
	"net/http"
	"unicode"
)

type spongeString struct {
	Text string
}

func Handle(w http.ResponseWriter, r *http.Request) {
	switch r.Method {
	case "GET":
		fmt.Fprintln(w, "POST Something to get it converted!")
	case "POST":
		decoded := json.NewDecoder(r.Body)
		var s spongeString
		err := decoded.Decode(&s)
		if err != nil {
			panic(err)
		}
		fmt.Fprintln(w, StringToSponge(s.Text))
	}
}

func StringToSponge(s string) string {
	rs, upper := []rune(s), false
	for i, r := range rs {
		if unicode.IsLetter(r) {
			if upper = !upper; upper {
				rs[i] = unicode.ToUpper(r)
			}
		}
	}
	return string(rs)
}

func SpongeRoute() {
	http.HandleFunc("/spongespeak", Handle)
}
