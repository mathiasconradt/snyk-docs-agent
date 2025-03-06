Copy the following source code snippet in the snippet window and select C# as the language

It is only a snippet and not a full program. It will not compile.

// Read request body
string body;
using (var reader = new StreamReader(context.Request.Body))
{
   body = await reader.ReadToEndAsync();
}
// Parse JSON data
var form = JsonConvert.DeserializeObject<SignupForm>(body);
var sql = String.Format("INSERT INTO submissions(email, name) VALUES('%s', '%s')", form.Email, form.Name);
form.Email = "nobody@notrealdomain.co.uk";
using var cmd = new NpgsqlCommand(sql, conn);
