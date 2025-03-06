Identifying gaps in data flow paths is crucial for understanding the destinations of user data, especially if it does not end up in expected locations such as databases or file systems. These gaps may reveal the use of unsupported libraries or frameworks—or components thereof—potentially leading to false negatives. This insight is essential for comprehensive security assessments and ensuring robust coverage.

Java example: Interaction between custom WebServer and WebServlet

This Java example demonstrates two components: `WebServer` and `WebServlet`.

* **WebServer**: A custom HTTP server that represents the use of an unsupported or proprietary component.
* **WebServlet**: Uses Java's standard Servlet API for web interactions but connects to a custom database for user record queries.

```java
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.Map;

public class CoverageDemo {
    static class WebServer extends MyWebEndpoint {
        private Connection connection;

        @Override
        void handlePostRequest(Map parameters) throws Throwable {
            final String username = parameters.get("username");
            final String query = String.format("SELECT * FROM users WHERE user = '%s'", username);
            final Statement statement = connection.createStatement();
            statement.execute(query);
            statement.close();
        }
    }

    static class WebServlet extends HttpServlet {
        private MySpecialDatabase database;

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            final String username = req.getParameter("username");
            final String query = String.format("SELECT * FROM users WHERE user = '%s'", username);
            database.performSQL(query);
        }
    }
}

```


Out of the box, Snyk will not show any vulnerabilities for these two classes, so the following query will not yield any results in the code snippet above.
Taint<PRED:AnySource,  PRED:None, PRED:AnySink>
