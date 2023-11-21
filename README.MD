# apk-mitm Docker Image

Docker image for `apk-mitm`

# Pre-requisite

- Nix
- Docker
- Direnv

# Usage

AMD image
```bash
docker run -id ghcr.io/atomicloud/mitm-apk/sulfone-boron-amd:latest
```

ARM image
```bash
docker run -id ghcr.io/atomicloud/mitm-apk/sulfone-boron-arm:latest
```

# Development

To build and test the image, run

```bash
pls run
```
