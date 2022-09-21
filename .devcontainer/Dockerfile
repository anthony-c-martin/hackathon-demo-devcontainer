# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.238.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

COPY ./binaries /tmp/binaries

# Install Bicep
RUN \
    # Install bicep CLI
    unzip /tmp/binaries/bicep-release-linux-x64.zip -d /tmp/bicep-bin \
    && cp /tmp/bicep-bin/bicep /usr/local/bin/bicep \
    && chmod +x /usr/local/bin/bicep \
    # Symbolic link for AzCLI to pick up Bicep binary
    && mkdir -p /home/vscode/.azure/bin \
    && ln -s /usr/local/bin/bicep /home/vscode/.azure/bin/bicep \
    && chown -R vscode /home/vscode/.azure \
    # Extract VSCode extension to /usr/local/share
    && unzip /tmp/binaries/vscode-bicep.vsix.zip -d /tmp/bicep-vsix \
    && cp /tmp/bicep-vsix/vscode-bicep.vsix /usr/local/share/vscode-bicep.vsix \
    # Clean up
    && rm -Rf /tmp/binaries \
    && rm -Rf /tmp/bicep-bin \
    && rm -Rf /tmp/bicep-vsix