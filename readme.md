# Advent of Code in Swift

## How to get started

This repository contains a .devcontainer directory with a devcontainer.json file. This enables the use of remote development environments. 

If you want to use these in Windows you have to install Docker Desktop and use WSL 2. You also will need the Visual Studio Code Extension for Swift as well as the Visual Studio Code Extension for Remote Development.

Documentation of the Swift Visual Studio Code extension: https://github.com/swift-server/vscode-swift/blob/main/docs/remote-dev.md

Documentation of Remote Development in VS Code: https://code.visualstudio.com/docs/remote/remote-overview

Documentation to get you started on developing with dev containers: https://code.visualstudio.com/docs/devcontainers/containers

Visual Studio Code Extension for Swift: https://marketplace.visualstudio.com/items?itemName=sswg.swift-lang

Visual Studio Code Extension for Remote Development: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack

Tutorial on Development Containers: https://code.visualstudio.com/docs/devcontainers/tutorial

Docker Desktop: https://www.docker.com/products/docker-desktop/

Extension for creating swift projects: https://marketplace.visualstudio.com/items?itemName=cgrevisse.swift-project-creation

## How to execute

Once you have the development container up and running you can execute the days using the following command in the shell:

```Shell
root@aaaaca15bb66:/workspaces/AdventOfCode# swift run AOC22 day:1 filename:input.txt
```