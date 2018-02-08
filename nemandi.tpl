<html>
<head>
    <title>verkefni 4</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/static/verkefni4.css">
</head>
<body>

    <%
    nafn = ''
    braut = ''
    for nemandi in bekkur['nemendur']:
        if nemandi['kt'] == kt:
            nafn = nemandi['nafn']
            braut = nemandi ['braut']
        end
    end
    %>


        <h3>Bekkurinn:</h3>
        <h4>Kt: {{kt}}</h4>
        <h4>Nafn: {{nafn}}</h4>
        <h4>Braut: {{braut}}</h4>

    <p><a href="/">Heim</a> </p>

</body>
</html>
