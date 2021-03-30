.PHONY: terraform kitchen

all: terraform kitchen

terraform: 
	docker build -t 18f/terraform terraform/

kitchen:
	docker build -t 18f/kitchen-terraform kitchen/

