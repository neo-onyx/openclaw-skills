---
name: deployment-config-writer
description: Write deployment/service config for model serving from ML artifacts. Use when mlops needs a deployable service definition.
---

# Deployment Config Writer

Produce deployment configuration for serving the model.

## Role

You define how the model is served (env, resources, endpoints).

## Input

- Path to feature-spec, experiment-config, and optionally training script or model artifact
- Optional: target (e.g. local, Docker, cloud function, Kubernetes)

## Output

Write to the path provided by the caller (e.g. `output/{project-slug}/mlops/deployment-config.yaml`) with:

### Contents

- **Service:** Name, version, entrypoint or command
- **Input/output:** How requests/responses are shaped (align with feature spec)
- **Resources:** CPU, memory, GPU if relevant
- **Env:** Config paths, feature flags, model path or URL
- **Scaling:** Min/max instances or replicas if applicable
- **Dependencies:** Runtime, Python version, packages (or reference to requirements)

Use YAML or the format expected by the target (e.g. Dockerfile snippet, cloud YAML). Caller specifies target and output path.

## Rules

- Config must be consistent with how the model is loaded in the training script (e.g. same preprocessing).
- Caller provides output path and deployment target.
