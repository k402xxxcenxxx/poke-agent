# poke-agent

A Docker-based agent sandbox that plays a retro Pokémon-style ASCII intro animation before launching the agent runtime.

## Features

- ASCII intro animation played from `init_animation/frames`
- Container entrypoint that runs the animation before starting the agent
- Docker-first runtime for local development and deployment
- Release workflow that builds and pushes the image automatically

## Project Structure

```text
poke-agent
├── Dockerfile
├── entrypoint.sh
└── init_animation
    └── frames
        ├── 1.txt
        ├── 2.txt
        ├── ...
        ├── 105.txt
        └── meta.json
```

## How It Works

1. The container starts and runs `entrypoint.sh`.
2. The script renders the ASCII animation frames from `init_animation/frames`.
3. After the animation finishes, the agent process starts.

## Build

```bash
docker build -t poke-agent:local .
```

## Run

```bash
docker run --rm -it poke-agent:local
```

If your image needs extra runtime configuration, pass the required environment variables or mount volumes as needed.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) before opening a pull request.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
