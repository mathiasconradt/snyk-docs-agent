Run the following query over your code ~"([a-zA-Z0-9+/])" If you find something, check it out first, as you might leak your AWS secrets.
If you are interested in a certain type of object, you can use templates. For example, the query CallExpression<"Format"> matches a function call or Literal<"nobody@notrealdomain.co.uk"> matches the string with the email address.
