import os
import json
from bottle import route,run,template,static_file,error

with open('bekkur.json','r',encoding='utf-8') as f:
    bekkur = json.load(f)

@route('/')
def index():
    return template('index', bekkur=bekkur)

@route('/nemandi/<kt>')
def nemandi(kt):
    return template('nemandi', kt=kt , bekkur=bekkur)

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root ='./static_files')

@error(404)
@error(500)
def error404(error):
    return '<h3>Þessi síða er ekki til.</h3>'


run(host="0.0.0.0", port=int(os.environ.get("PORT")))
