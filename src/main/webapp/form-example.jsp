<%-- 
    This is a JSP comment
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            th {
              background-color: yellow;  
              }
            tr.FormInput input {
              background-color: cyan;
              font-size: x-large;    
              }
            .FormInput th {
              text-align: left;   
              }
            .FormInput td {
              width: 200ex;  
              }
            #nok {
              color: blueviolet;    
              }
        </style>
    <script>
        function hello() {
            // alert("Hello World!");
            var okButton = document.getElementById("okButton");
            //okButton.style.backgroundColor = "#ffaaaa";
            okButton.style.display = "inline";
            }
    </script>
    </head>
    <body>
        <!-- This is an HTML comment -->
        <button onclick="hello();">Tryk Her</button>
        <h1>Hello World!</h1>
        <form action="FrontController">
            <table border="1" cellpadding="0" cellspacing="0">
                <tr class="FormInput">
                    <th>firstName</th>
                    <td><input type="text" name="firstName" value="" onkeydown="/*alert('hej');*/"/>
                </tr>
                <tr class="FormInput">
                    <th>lastName</th>
                    <td><input type="text" name="lastName" value="" />
                </tr>
                <tr class="FormInput">
                    <th>Title</th>
                    <td>
                        <select name="title">
                            <option value="MR">Mr.</option>
                            <option value="MS">Ms.</option>
                            <option value="DR">Dr.</option>
                        </select>
                    </td>
                </tr>
                <tr class="FormInput">
                    <th rowspan="3">Nice Gift</th>
                    <td><input type="radio" name="gift" value="1"/>Sportscar</td>
                </tr>
                <tr>
                    <td><input type="radio" name="gift" value="2"/>Cycle</td>
                </tr>
                <tr>
                    <td><input type="radio" name="gift" value="3"/>Orange</td>
                </tr>
                <tr>
                    <th>I am</th>
                    <td>
                        <input type="checkbox" name="iam" value="witty"/>Witty
                        <input type="checkbox" name="iam" value="wise"/>Wise
                        <input type="checkbox" name="iam" value="adorable"/>Adorable
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button style="display: none" id="okButton" name="action" value="OK">Okay</button>
                        <button id="nok" name="action" value="NOK">Okay, no gift</button>
                        <button type="reset">Reset</button>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
