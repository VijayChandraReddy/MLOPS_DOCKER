from python:3.8-slim
workdir /app
copy . /app
run pip install --no-cache-dir -r requirements.txt
Expose 5000
env Flask_APP = app.py
cmd["flask", 'run', '--host = 0.0.0.0']