;; highlights.scm
[
  "Sinon"
  "Munus"
  "As"
  "+"
  "-"
  "*"
  "/"
  "%"
  "="
  "("
  ")"
] @keyword

;; Built-in functions
(print_statement "Grafo" @function.builtin)
(variable_definition "Anagnosti" @function.builtin)

;; Variables
(variable_definition
  variable: (identifier) @variable)

(assignment_statement
  left: (identifier) @variable)
(identifier) @variable

;; User-defined functions
(function_definition
  name: (identifier) @function)

(function_call
  function: (identifier) @function)

;; Numbers
(number) @number

;; Punctuation (optional - remove if you want them as keywords)
"(" @punctuation.bracket
")" @punctuation.bracket
