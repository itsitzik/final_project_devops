<html>
<head><title>A First JSP page</title></head>
<body><h1>A short JSP example</h1>
<form method=POST>Please enter your age here <input name=age></form>
<%
int value = 0;
int target =18;
boolean havevalue = false;
try {
    value = Integer.parseInt(request.getParameter("age"));
    havevalue = true;
} catch (Exception e) {}
if (havevalue && (value < 0 || value > 120)) {
    out.println("WARNING - input value is not in range");
} else if (havevalue)  {
    String word = (value < target) ? "will join the army at the age of " : "were joining the army ";
    String word2 = (value < target) ? "from now" : "ago";
    int diff = Math.abs(value-target);
    out.println ("You "+word+target+", "+diff+" years "+word2);
} else {
%>
Please enter your current age!
<% } %>
<hr>
Orpaz Joseph & Itzik Ben-Shitrit
<br>
DevOps Course - Final Project, HIT, 2021
<br>
Check Monitor #1
</body>
</html>