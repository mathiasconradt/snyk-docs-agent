Generating a Matrix of credentials is not supported.
A "Matrix" in this case is defined as taking two (or more) _POOLs of length x and y, and producing one final pool of length x * y. For example, given an input like:
USERNAME_POOL=u1, u2, u3
PASSWORD_POOL=p1, p2, p3
CREDENTIALS_POOL=$USERNAME:$PASSWORD
Matrix support would generate this internally:
CREDENTIALS_POOL=u1:p1,u1:p2,u1:p3,u2:p1,u2:p2,u2:p3,u3:p1,u3:p2,u3:p3
Instead, the Broker Client would generate this internally, using only the first pool it finds:
CREDENTIALS_POOL=u1:$PASSWORD,u2:$PASSWORD,u3:$PASSWORD
