export PROJECT_ROOT = $(PWD)
export GGPLOT_CONTAINER_REGISTRY = registry.gitlab.com/nextgarch-lab/neteye/dt-framework/ggplot

start-ggplot-docker:
	docker run --privileged --rm -it \
		--name jupyter-ggplot \
		--network host \
		-v $(PROJECT_ROOT):/home/jovyan/work \
		$(GGPLOT_CONTAINER_REGISTRY) bash
