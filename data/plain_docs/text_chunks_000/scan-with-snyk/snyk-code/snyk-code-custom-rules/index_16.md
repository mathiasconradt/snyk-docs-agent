The following two paragraphs provide the formal definition and relation of the query language to Datalog. This information is not needed to use the query language successfully but is provided for completeness.
The syntax of a query is defined as:
ebnf
<query> ::= <term> | <term> “ ” <query>
<term> ::= <literal> | <regexp> | <predicate> | <template>
<literal> ::= “"” <value> “"”
<regexp> ::= “~"” <value> “"”
<predicate> ::= “PRED:” <predicate-name>
<template> ::= <template-name> “<” <template-params>  “>”
<template-params> ::= <term> | <term> “,” <template-params>
A query can contain one or more terms. Semantically, each term must be satisfied for the query to match, such as the conjunction of the terms. A term is a literal, regular expression, predicate, or template. Literals and regular expressions are in quotes; regular expressions are preceded by the symbol ~. Predicates define complex conditions program elements should satisfy. Templates are used to combine multiple predicates.
