# Dockerfile used in execution of Github Action
FROM nixos/nix:2.26.4
RUN nix-channel --update
RUN nix-env -i terragrunt opentofu sudo curl gnused jq git azure-cli postgresql

COPY ["./src/main.sh", "/action/main.sh"]
ENTRYPOINT ["/action/main.sh"]
