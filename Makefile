SCHEMAS = res/schemas/clang-format.json res/schemas/clang-tidy.json res/schemas/clangd.json

.PHONY: update
update:
	@echo "Updating schemas..."
	@for schema in $(SCHEMAS); do \
		echo "Updating $$schema..."; \
		curl -s https://json.schemastore.org/$$(basename $$schema) > $$schema; \
	done
	@echo "Done."
