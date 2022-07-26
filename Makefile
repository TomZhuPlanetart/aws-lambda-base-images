DOCKER=$(shell PATH=/usr/bin:/usr/local/bin which docker)
AWS=$(shell PATH=/usr/bin:/usr/local/bin which aws)
ECR=285957411934.dkr.ecr.us-east-1.amazonaws.com/lambda-pdf-tools

image:
	$(DOCKER) build -f Dockerfile.nodejs16.x -t $(ECR) ./

publish: image
	$(AWS) ecr get-login-password --region us-east-1 | $(DOCKER) login --username AWS --password-stdin 285957411934.dkr.ecr.us-east-1.amazonaws.com
	$(DOCKER) push $(ECR)

push: publish
	$(AWS) lambda update-function-code --function-name pdf-tools --image-uri $(ECR)@$(shell $(AWS) ecr describe-images --repository-name lambda-pdf-tools --query "imageDetails[?imageTags]|[?contains(imageTags, 'latest')].imageDigest|[]" --output text)

test:
	$(DOCKER) run -t --entrypoint node $(ECR):latest /var/task/test.js


