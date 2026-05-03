# Contributing

Thank you for your interest in improving `poke-agent`.

## Development Guidelines

- Keep changes small and focused.
- Write clear commit messages.
- Prefer English for all repository-facing text, including documentation, commit messages, release notes, and workflow annotations.
- Preserve the startup flow: animation first, agent second.
- Avoid introducing unnecessary runtime dependencies.

## Suggested Workflow

1. Create a branch from `main`.
2. Make your changes.
3. Test the Docker build locally.
4. Submit a pull request.

## Local Verification

```bash
docker build -t poke-agent:test .
docker run --rm -it poke-agent:test
```

## Pull Requests

A good pull request should include:

- A clear summary of the change
- Any relevant testing notes
- Screenshots or terminal output when useful
- Documentation updates when behavior changes

## Code Style

- Keep shell scripts POSIX-friendly where practical.
- Keep Dockerfile layers simple and readable.
- Prefer explicit names over clever shortcuts.

## License

By contributing, you agree that your contributions will be licensed under the same license as the project.
