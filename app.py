from flask import Flask
import biblioteca_que_nao_existe # LINHA QUE CAUSA O ERRO

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Hello, World!</h1>'

@app.route('/healthz')
def health_check():
    return 'OK'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
