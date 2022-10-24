build-development:
	@docker build -t sae-devops-docs-dev --target builder .

run-development:
	@docker run --rm -v ${PWD}:/srv/jekyll --user $(id -u):$(id -g) --network host sae-devops-docs-dev

run-development-interactively:
	@docker run --rm -it -v ${PWD}:/srv/jekyll --user $(id -u):$(id -g) --network host sae-devops-docs-dev /bin/bash

production:
	@docker build -t sae-devops-docs-prod .
	@echo -e "\nSite running on http://localhost:8080 ...\n"
	@docker run -p 8080:80 sae-devops-docs-prod

