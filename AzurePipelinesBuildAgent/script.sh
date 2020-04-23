#!/bin/bash
sudo apt-get update

#install build tools (.NET, Node.js, npm, gulp)
curl https://raw.githubusercontent.com/MicrosoftDocs/mslearn-azure-pipelines-build-agent/master/build-tools.sh > build-tools.sh
chmod u+x build-tools.sh
sudo ./build-tools.sh

#install agent software
curl https://raw.githubusercontent.com/MicrosoftDocs/mslearn-azure-pipelines-build-agent/master/build-agent.sh > build-agent.sh
#install parameters for agent
curl https://raw.githubusercontent.com/oYPIo/ARMTemplatesLabs/dev/buildAgent/AzurePipelinesBuildAgent/agentParameters.bashrc > .bashrc
chmod u+x agentParameters.bashrc
source ./agentParameters.bashrc

chmod u+x build-agent.sh
sudo -E ./build-agent.sh