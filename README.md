# `op` (1Password CLI)

## Usage

```
function op() {
    docker run \
        -it --rm \
        -v ~/.op:/root/op \
        bjeanes/1password-cli
        "$@"
}

op --help
op signin
op list items
# etc
```