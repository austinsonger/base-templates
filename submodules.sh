#!/bin/bash

git submodule add --force https://github.com/austinsonger/Jenkins jenkins
git submodule add --force https://github.com/austinsonger/Vagrant-templates vagrant-templates
git submodule add --force https://github.com/austinsonger/Packer packer-templates
git submodule add --force https://github.com/austinsonger/Kubernetes-configs kubernetes-templates
git submodule add --force https://github.com/austinsonger/GithubActions github-actions
git submodule add --force https://github.com/austinsonger/Terraform terraform-templates

# Initialize and update the submodules
git submodule init
git submodule update

# Stage the .gitmodules file and submodule directories
git add .gitmodules vagrant-templates packer-templates kubernetes-templates templates jenkins github-actions terraform-templates

# Commit the changes
git commit -m "Add submodules for templates"

# Push the changes to the repository
git push
