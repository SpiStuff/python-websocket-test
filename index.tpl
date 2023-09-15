<!doctype html>
<head>
    <meta charset="utf-8" />
    <title>Test</title>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            ws = new WebSocket('ws://127.0.0.1:8080/websocket');
            ws.onmessage = function(evt) {
                document.getElementById("messages").innerHTML = evt.data
            }
        });
    </script>
</head>
<body>
    <div id="messages"></div>
</body>
</html>
