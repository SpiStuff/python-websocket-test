from bottle import get, run, template
from bottle.ext.websocket import GeventWebSocketServer
from bottle.ext.websocket import websocket

@get('/')
def index():
    return template('index.tpl')

@get('/websocket', apply=[websocket])
def echo(ws):
    while True:
        a= input('> ')
        ws.send(a)

run(host='127.0.0.1', port=8080, server=GeventWebSocketServer)
