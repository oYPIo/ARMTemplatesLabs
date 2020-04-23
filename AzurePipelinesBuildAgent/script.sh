#!/bin/bash
cd ~
sudo apt-get update

#install build tools (.NET, Node.js, npm, gulp)
curl https://raw.githubusercontent.com/MicrosoftDocs/mslearn-azure-pipelines-build-agent/master/build-tools.sh > build-tools.sh
chmod u+x build-tools.sh
sudo ./build-tools.sh


#install parameters for agent software
curl https://raw.githubusercontent.com/oYPIo/ARMTemplatesLabs/dev/buildAgent/AzurePipelinesBuildAgent/agentParameters.sh > agentParameters.sh
chmod u+x agentParameters.sh
. ./agentParameters.sh

#install agent software
curl https://raw.githubusercontent.com/MicrosoftDocs/mslearn-azure-pipelines-build-agent/master/build-agent.sh > build-agent.sh
chmod u+x build-agent.sh
sudo -E ./build-agent.sh