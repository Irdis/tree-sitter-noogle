package tree_sitter_noogle_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_noogle "github.com/tree-sitter/tree-sitter-noogle/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_noogle.Language())
	if language == nil {
		t.Errorf("Error loading Noogle grammar")
	}
}
