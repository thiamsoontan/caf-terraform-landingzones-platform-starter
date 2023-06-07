if [ "${CODESPACES}" = "true" ]; then
    # Remove the default credential helper
    sudo sed -i -E 's/helper =.*//' /etc/gitconfig

    # Add one that just uses secrets available in the Codespace
    git config --global credential.helper '!f() { sleep 1; echo "username=${GITHUB_USER}"; echo "password=${GH_TOKEN}"; }; f'
fi

sudo chmod 666 /var/run/docker.sock || true
sudo cp -R /tmp/.ssh-localhost/* ~/.ssh
sudo chown -R $(whoami):$(whoami) ~ || true ?>/dev/null
sudo chmod 400 ~/.ssh/*

git config --global core.editor vim
pre-commit install
pre-commit autoupdate

git config --global --add safe.directory /tf/caf
git config --global --add safe.directory /tf/caf/landingzones
git config --global --add safe.directory /tf/caf/landingzones/aztfmod
git config --global --add safe.directory /tf/caf/aztfmod

git config pull.rebase false 

if [ ! -d /tf/caf/landingzones ]; then
  # git clone --branch int-5.6.0 https://github.com/Azure/caf-terraform-landingzones.git /tf/caf/landingzones
  # clone latest caf terraform landingzones - 5.69
  git clone https://github.com/Azure/caf-terraform-landingzones.git /tf/caf/landingzones
  sudo chmod +x /tf/caf/landingzones/templates/**/*.sh
  # git clone aztfmod (if required)
  if [ ! -d /tf/caf/landingzones/aztfmod ]; then
    # clone latest version of aztfmod
    git clone https://github.com/aztfmod/terraform-azurerm-caf.git /tf/caf/landingzones/aztfmod 
    cd /tf/caf/landingzones/aztfmod 
    # checkout version 5.7.0-preview0
    git checkout 5.7.0-preview0
    # patch to use local copy of aztfmod
    cp /tf/caf/patches/caf_launchpad/landingzone.tf /tf/caf/landingzones/caf_launchpad/landingzone.tf
    cp /tf/caf/patches/caf_solution/landingzone.tf /tf/caf/landingzones/caf_solution/landingzone.tf
    cd /tf/caf/
    # note: /tf/caf/landingzones/aztfmod/main.tf show the version of the azurerm
  fi
fi