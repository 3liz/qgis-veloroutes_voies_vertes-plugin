start_tests:
	@echo 'Start docker-compose'
	@cd .docker && ./start.sh with-qgis

run_tests:
	@echo 'Running tests, containers must be running'
	@cd .docker && ./exec.sh
	@echo 'Running flake8'
	@flake8

stop_tests:
	@echo 'Stopping/killing containers'
	@cd .docker && ./stop.sh

tests: start_tests run_tests stop_tests

test_migration:
	@cd .docker && ./start.sh
	@cd .docker && ./install_migrate_generate.sh
	@cd .docker && ./stop.sh

schemaspy:
	@cd .docker && ./start.sh
	rm -rf docs/database
	mkdir docs/database
	@cd .docker && ./install_db.sh
	@cd .docker && ./schemaspy.sh
	@cd .docker && ./stop.sh

reformat_sql:
	@cd .docker && ./start.sh
	@cd .docker && ./install_db.sh
	@cd .docker && ./reformat_sql_install.sh
	@cd .docker && ./stop.sh

processing-doc:
	cd .docker && ./processing_doc.sh
	@docker run --rm -w /plugin -v $(shell pwd):/plugin 3liz/pymarkdown:latest docs/processing/README.md docs/processing/index.html

export_test_data:
	# NEED TO IMPROVE THE DUMP TO EXCLUDE metadata qgis version table
	cd veloroutes_voies_vertes/install/sql && pg_dump service=vvv --data-only --inserts --column-inserts -n veloroutes --no-acl --no-owner --exclude-table "veloroutes.*_val" -f 99_test_data.sql
	cd veloroutes_voies_vertes/install/sql && sed -i "s#SELECT pg_catalog.set_config('search_path', '', false);##g" 99_test_data.sql
	cd veloroutes_voies_vertes/install/sql && sed -i "s#SET idle_in_transaction_session_timeout = 0;##g" 99_test_data.sql
	cd veloroutes_voies_vertes/install/sql && sed -i "s#SET default_table_access_method = heap##g" 99_test_data.sql
	echo 'REMOVE MANUALLY ALL REFERENCES TO "metadata" in 99_test_data.sql'

generate_sql:
	@echo 'Generate SQL into install files'
	cd veloroutes_voies_vertes/install/sql && ./export_database_structure_to_SQL.sh vvv veloroutes
	git diff -p -R --no-ext-diff --no-color | grep -E "^(diff|(old|new) mode)" --color=never | git apply
