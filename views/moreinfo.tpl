<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>{{k}}</title>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
	<link rel="stylesheet" type="text/css" href="/static/style2.css">
</head>
<body>
	%include('header.tpl')

	<%
	ben = 0
	dis = 0
	stod  = ""
	comp = ""
	for i in data['results']:
		if i['key'] == k:
		ben = i['bensin95']
		dis = i['diesel']
		stod = i['name']
		comp = i['company']
	%>

	<h2>{{comp}} {{stod}}</h2>
	<h3>Bensín verð/l: {{ben}}</h3>
	<h3>Dísel verð/l: {{dis}}</h3>

	<div class="kort">
		<h4>Staðsetning:</h4>
		<ul>
			<p>Latitude: {{i['geo']['lat']}}</p>
			<p>Longitude: {{i['geo']['lon']}}</p>
			<a href="https://www.google.com/maps/@{{i['geo']['lat']}},{{i['geo']['lon']}},18z">
			Staðsetning frá Google maps&trade;</a>
		</ul>
	</div>




	<a href="/">Heim</a>
%include('footer.tpl')
</body>
</html>