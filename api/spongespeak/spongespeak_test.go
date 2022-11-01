// Package spongespeak_test tests if the other thing works
package spongespeak_test

import (
	"testing"

	"github.com/Linkinlog/text-transformer/spongespeak"
)

type spongeString struct {
	Text string
}

func TestSponge(t *testing.T) {
	var s spongeString
	s.Text = "Here is some text"
	s.Text = spongespeak.StringToSponge(s.Text)
	// TODO actually do some logic here to see if chars are alternating case
}
