build-image:
	docker build -t VictordaSiIva/finance .

push-image:
	docker push VictordaSiIva/finance

run-app:
	docker-compose -f .devops/app.yml up -d

stop-app:
	docker-compose -f .devops/app.yml down

prepare-env:
	docker-compose -f .devops/postgres.yml up -d

lint:
	golint ./...
	go fmt -n ./...

unit_test:
	go test ./...
