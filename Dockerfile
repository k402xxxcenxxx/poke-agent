ARG BASE_IMAGE=docker/sandbox-templates:opencode-docker
FROM ${BASE_IMAGE}

COPY init_animation /init_animation
COPY entrypoint.sh /entrypoint.sh

USER root
RUN chmod +x /entrypoint.sh

USER agent
ENTRYPOINT ["/entrypoint.sh"]

ARG AGENT_CMD=opencode
ENV AGENT_CMD=${AGENT_CMD}
CMD ["sh", "-c", "${AGENT_CMD}"]
