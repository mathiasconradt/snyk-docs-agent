Snyk Code provides custom queries using a domain-specific language for code search. In our case, it is a logic declarative programming language that is not Turing complete. This brings the advantage that every query written in the query language is guaranteed to terminate and return zero, one, or more matches.
The query language is independent of the programming language used for the code, and rules work across all Snyk-supported languages. If a code snippet is provided, you have to pick the language of the provided code snippet.

The query language is case-sensitive.

The query language is a language for finding matches in code. Every query discovers some elements in the queried code for which the specified properties match.
The first capability of the query language is to match program elements by their value. This is done by quoting the value in double quotes ". Program elements are identified by their fully qualified names. Consider the following Java code example:
java
import java.time.LocalDate;
class Test {
 static void test() {
   System.out.println("test" + 123);
   System.out.println(LocalDate.now());
 }
}
You can match the method call for taking the current time by quoting its fully qualified name with the query "java.time.LocalDate.now".  
You can match both the function declaration test and the string 'test' by using the query "test". 
The number value 123 can be matched by using the query "123". Quotes are used to match elements regardless of their type, identifier, string, number, or other value. Elements can also be matched by using regular expressions. Regular expressions are identified by putting the symbol ~ in front of the quotes. For example, the program element 123 can be matched by the expression ~"12.*". The print statements can be matched by queries such as: "java.lang.System.out.println" or ~".*\.println".
To make sure that the correct, fully-qualified names of elements are used, the search interface provides autocompletion of the values for program elements that exist in the given code snippet or the provided repository.
