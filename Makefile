
build:
	docker build -t httpd .

run: build
	kubectl config view --minify --flatten > config
	docker run -d \
	  --name web \
	  -p 8080:80 \
	  -v $(PWD):/web \
	  -v $(PWD)/config:/root/.kube/config \
	  httpd

logs:
	docker logs web

logsf:
	docker logs web -f

test:
	curl http://localhost:8080/cgi-bin/test
	curl "http://localhost:8080/cgi-bin/k?get%20ns"

clean:
	docker rm -f web