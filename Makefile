
.PHONY: watch
watch:
	RUBYOPT=-W0 rake watch

.PHONY: generate
generate:
	RUBYOPT=-W0 rake generate

.PHONY: preview
preview:
	RUBYOPT=-W0 rake preview

.PHONY: newpost
newpost:
	RUBYOPT=-W0 rake new_post

.PHONY: newpage
newpage:
	RUBYOPT=-W0 rake new_page

.PHONY: push
push:
	rake deploy
