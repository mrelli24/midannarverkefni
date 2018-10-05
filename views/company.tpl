<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>{{c}}</title>
    <link rel="stylesheet" type="text/css" href="/static/style.css">
    <link rel="stylesheet" type="text/css" href="/static/style2.css">
</head>
<body>
    %include('header.tpl')
    <br>

    <table>
    <tr>
        <th>Fyrirtæki</th>
        <th>Staður</th>
    </tr>
    <%
        cnt=0
        for i in data['results']:
            if i['company'] == c:
            cnt +=1
    %>
        <tr>
            <td><a href="/moreinfo/{{i['key']}}">{{i['company']}}</a></td>
            <td>{{i['name']}}</td>
        </tr>
    <%
            end
        end
    %>
    </table>
    <h3>Fjöldi stðva:{{cnt}}</h3>



    <a href="/">Til baka</a>
    %include('footer.tpl')
</body>
</html>