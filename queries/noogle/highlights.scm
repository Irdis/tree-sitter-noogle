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

(simple_type) @type
(generic_type (identifier)) @type

(enum_signature
  enum: (identifier) @type)
(enum_signature
  field: (identifier) @property.definition)

(method_signature
  name: (identifier) @function)

(property_signature
  name: (identifier) @property.definition)

(method_signature
  name: (identifier) @function)

(path 
  class: (identifier) @type)

(namespace_part (identifier) @module)

[
  "."
  ";"
] @punctuation.delimiter

[
 "get"
 "set"
 "public"
 "private"
 "protected"
 "internal"
 "enum"
 ".ctor"
] @keyword

[
 "="
] @operator

(arg
  arg_name: (identifier) @variable.parameter)
