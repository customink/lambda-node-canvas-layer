## Node-canvas 1.6.3 AWS Lambda Layer

This repository contains an AWS Lambda Layer with node-canvas 1.6.3 and also includes librsvg libraries and binary to be used by an AWS Lambda with nodejs8.10 runtime. This can be useful e.g. for running Fabric on an AWS Lambda.

### Build

```
./bin/build
```

### Deploy

The deploy script returns the layer ARN:
```
> ./bin/deploy
arn:aws:lambda:<REGION>:<ACCOUNT>:layer:node-canvas-1_6_3:<VERSION>
```

If we want to use a different AWS profile:
```
AWS_DEFAULT_PROFILE=myprofile ./bin/deploy
```

NOTE: `bin/deploy` calls `bin/build`. If you want to skip the build, then use:
```
SKIP_BUILD=true ./bin/deploy
```
