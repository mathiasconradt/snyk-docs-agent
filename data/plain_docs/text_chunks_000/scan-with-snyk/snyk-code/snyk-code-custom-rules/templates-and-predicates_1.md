A basic capability of Snyk Code is to find method calls and reason about their arguments. The goal here is to discover certain patterns of method calls and their arguments and to check if certain properties hold for these objects. 
Consider the following Python program to be analyzed and searched. If a similar program is provided, the same examples will work for any other language Snyk Code supports. The code does not need to be compiled to be queried.
```python
def safesend(x, y):
 lock(x)
 x.send(y)
 unlock(x)
def finalsend(x):
 x.send('final')
 x.disconnect()
o = connect()
o1 = connect()
safesend(o, 'connect')
safesend(o, 'message')
finalsend(o)
o.send('unsafe')
```
The first query finds the method connect. The query "connect"returns both the string with this value and the method call with this name. These can be separated by putting the value in a template. We can use autocompletion to find how the name connect can be wrapped. Literal or StringLiteral will restrict the search results to the string 'connect', whereas CallExpression will restrict the results to the function call connect().
Environment suggesting possible use for "connect"
Note that you can find function calls to functions outside of the file being scanned. Trying to find CallExpression<"safesend"> will not yield results. The reason is that the analysis may inline local functions in order to reason about their behavior.
Look at the most called method in the file, send. This method is called on an object returned by connect and takes various strings as input. To see its arguments, you can use some of the templates for its arguments. These are HasArg0, HasArg1, and so on.
Environment suggests HasArg
For example, you can find all calls to send on an object returned by connect with the following query:
CallExpression<"send"> HasArg0<CallExpression<"connect">>\
These are all locations, but we can find the places where we call send with the first argument taking the value connect.
Call send with the first argument taking the value connect
This gives a different picture. The interprocedural analysis figured out that the message connect was sent in a call to a local function.
Different tasks around the state of the object o can be explored. Assume we want to find all the calls to send after disconnect. These should be pretty bad cases of the programs where the connection may be in a bad state. To do this query, you can perform the following query:\
CallExpression<"send"> HasArg0<DataFlowAfter<Arg0In<CallExpression<"disconnect">>>>
This query searches for calls to send with its argument 0 satisfying the following property: in the dataflow, it is after a location that is an argument 0 in a call to disconnect. This matches only the final unsafe send call.
For negation, you can search for objects that are returned by connect, but not calling disconnect for the returned object.
CallExpression<"connect"> Not<ForSameObject<Arg0In<CallExpression<"disconnect">>>>
Similarly, you can call send with connect but not call disconnect. The following example has no matches in the preceding code snippet:
CallExpression<"send"> HasArg0<CallExpression<"connect">> Not<HasArg0<ForSameObject<Arg0In<CallExpression<"disconnect">>>>>
In all cases, the auto-completion for the rules should guide the search through the examples to make it easier to write such queries and those that are even more complex.
