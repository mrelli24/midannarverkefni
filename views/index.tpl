<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Bensínstöðvar</title>
    <link rel="stylesheet" type="text/css" href="/views/style.css">
    <link rel="stylesheet" type="text/css" href="/views/style2.css">
</head>
<body>
    %include('header.tpl')
    <div class="myndir">
        <a href="/company/Atlantsolía"><img src="static/mynd1.jpg"></a>
        <a href="/company/Costco%20Iceland"><img src="static/mynd2.png"></a>
        <a href="/company/Dælan"><img src="static/mynd3.png"></a>
        <a href="/company/N1"><img src="static/mynd4.png"></a>
        <a href="/company/ÓB"><img src="static/mynd5.jpg"></a>
        <a href="/company/Olís"><img src="static/mynd6.jpg"></a>
        <a href="/company/Orkan"><img src="static/mynd7.png"></a>
        <a href="/company/Orkan%20X"><img src="static/mynd8.jpg"></a>
        
    </div>
    <div class="wrapper">
    
    <%
        #lægsta verðið
        minpriceP = 2000.0
        minpriceD = 2000.0

        l = len(data['results'])
        c = 0
        for i in range(l -1):
            c=i
            if minpriceP > data['results'][i]['bensin95']:
                minpriceP = data['results'][i]['bensin95']
                companyP = data['results'][i]['company']
            if minpriceD > data['results'][i]['diesel']:
                minpriceD = data['results'][i]['diesel']
                companyD = data['results'][i]['company']
            end
            end
  
        if (data["results"][i]["company"] !=data["results"][i-1]["company"]):
    %>
    

    <div class="box">
        <a href="/company/{{data['results'][i]['company']}}">{{data['results'][i]['company']}}</a>
    </div>
    <%
        end
    end
%>
    </div>
    <div>
        <h3>Besta verðið</h3>
        <h4>Bensín 95 oktan: <i>{{minpriceP}}</i> kr. er hjá {{companyP}}</h4>
        <h4>Diesel: <i>{{minpriceD}}</i> kr. er hjá {{companyD}}</h4>
    </div>
</body>
    %include("footer.tpl")
</html>
