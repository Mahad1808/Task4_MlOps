build:
    docker build -t iris-app .

run:
    docker run -p 5000:5000 iris-app

stop:
    docker stop $(docker ps -a -q --filter ancestor=iris-app --format="{{.ID}}")

clean:
    docker system prune -f
