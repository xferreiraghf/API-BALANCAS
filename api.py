from flask import Flask, jsonify
import os
import subprocess

app = Flask(__name__)
filename = 'retorno.txt'
vbs_file = 'script.vbs' 

@app.route('/')
def read_file():
    subprocess.run(['cscript.exe', vbs_file], shell=True)

    if os.path.exists(filename):
        with open(filename, 'r', encoding='utf-16') as file:
            data = file.read()
        return jsonify({'data': data})
    else:
        return jsonify({'error': 'Arquivo nao encontrado'})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
