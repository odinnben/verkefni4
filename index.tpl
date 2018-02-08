<html>
<head>
    <title>verkefni 4</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/static/css/style.css">
</head>
<body>

    <h2>Bekkurinn:</h2>
    <table border="1">
        <tr>
            <th>Kennitala</th>
            <th>Nafn</th>
            <th>Braut</th>
        </tr>
        % for nemandi in bekkur['nemendur']:
            <tr>
                <td><a href="/nemandi/{{nemandi['kt']}}"> {{nemandi['kt']}}</a></td>
                <td>{{nemandi['nafn']}}</td>
                <td>{{nemandi['braut']}}</td>
            </tr>
        %end
    </table>
</body>
</html>
