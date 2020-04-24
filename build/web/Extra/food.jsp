<%-- 
    Document   : Food
    Created on : Jan 24, 2020, 3:57:28 PM
    Author     : user1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>

<body>
    <header>
        <h1>
            <marquee DIRECTION=RIGHT> Swad Restaurant</marquee>
        </h1>
    </header>


            <%
                int size=10;
                String food[]=new String[size];
                int price[] = new int[size];
                for(int i=0; i<size; i++)food[i]="Food"+i;
                for(int i=0; i<size; i++)price[i]=100+(50)*i;
                for(int i=0; i<size; i++){
                
            %>
    <table border="1" width="100%">

        <tr>
            <td rowspan="3">
                <image
                    src="https://image.shutterstock.com/image-photo/delicious-pizza-olives-sausages-on-260nw-1100491781.jpg">
            </td>
            <td colspan="2">
                Name:
            </td>
            <td colspan="2">
                <%=food[i]%>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                Price:
            </td>
            <td colspan="2">
                <%=price[i]%>
            </td>
        </tr>
        <tr>
            <td>
                <select name="qty">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </td>
            <td colspan="2">
                <a href="addtocart.jsp?name=<%=food[i]%>">
                    <center><input type="button" name<%=food[i]%> value="add" s></center>
                </a>
            </td>
        </tr>
    </table><br>
    <%
            }
            
        %>

</body>

</html>