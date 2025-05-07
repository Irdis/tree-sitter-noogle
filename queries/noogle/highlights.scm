(char_literal) @string
(string_literal) @string

[
  (real_literal)
  (integer_literal)
] @number

[
  (boolean_literal)
  (null_literal)
] @constant.builtin

[
  "."
] @punctuation.delimiter

(arg
  arg_name: (identifier) @variable.parameter)
