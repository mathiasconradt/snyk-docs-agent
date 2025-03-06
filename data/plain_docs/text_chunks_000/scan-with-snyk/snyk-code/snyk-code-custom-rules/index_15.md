Templates are used for combining one or more conditions provided as their parameters. Templates themselves, just like predicates and value matches, also describe rules for matching elements in the given code. The parameters of templates are provided in chevrons or angle brackets, < and >, and are comma-separated. The predefined templates are designed for multiple use cases that are defined here.
Templates can be used to restrict the matches of their parameters. For example StringLiteral<"test"> takes all the program elements with value test and only returns the elements that are string literals.
Templates can be used to relate different elements of the program. For example, the following query will find all program entities that have the string literal test as the first argument:\
HasArg1<StringLiteral<"test">>.
Note that the template HasArg1 encodes semantic relations between program elements. For example, the preceding query will match only for the first print statement in the following Java code:
java
class Test {
  String x;
  void test() {
    this.x = "test";
    System.out.println(x);
    this.x = "test2";
    System.out.println(x);
  }
}
Some templates encode logical relations, like the conjunction And and disjunctions Or. The following query finds all calls to println that receives the string literal test as the first argument:  And<"java.lang.System.out.println", HasArg1<StringLiteral<"test">>>
