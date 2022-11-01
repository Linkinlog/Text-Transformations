package httpd

import (
	"log"
	"net/http"

	"github.com/Linkinlog/text-transformer/spongespeak"
)

func StartServer() {
	routing()
	log.Fatal(http.ListenAndServe(":8080", nil))
}

func routing() {
	spongespeak.SpongeRoute()
}
