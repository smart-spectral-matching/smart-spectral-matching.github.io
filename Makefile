build-development:
	@docker build --no-cache -t ssm-site --target builder .

run-development:
	@docker run --rm -v ${PWD}:/srv/jekyll --user $(id -u):$(id -g) --network host ssm-site

run-development-interactively:
	@docker run --rm -it -v ${PWD}:/srv/jekyll --user $(id -u):$(id -g) --network host ssm-site /bin/bash

run-development-interactively-as-root:
	@docker run --rm -it -v ${PWD}:/srv/jekyll --network host ssm-site /bin/bash

production:
	@docker build -t ssm-site .
	@echo -e "\nSite running on http://localhost:8080 ...\n"
	@docker run -p 8080:80 ssm-site

clean:
	@docker image rm ssm-site
