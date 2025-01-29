run:
	go run ./cmd/api
psql:
	psql ${GREENLIGHT_DB}
up:
	@echo 'Running up migrations...'
	@echo ${GREENLIGHT_DB}
	migrate -path ./migrations -database ${GREENLIGHT_DB} up