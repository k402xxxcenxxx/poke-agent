FROM docker/sandbox-templates:opencode-docker

COPY init_animation /init_animation
COPY entrypoint.sh /entrypoint.sh

USER root
RUN chmod +x /entrypoint.sh

USER agent
ENTRYPOINT ["/entrypoint.sh"]
CMD ["opencode"]
