#!/bin/bash
sudo apt-get update

#install build tools (.NET, Node.js, npm, gulp)
curl https://raw.githubusercontent.com/MicrosoftDocs/mslearn-azure-pipelines-build-agent/master/build-tools.sh > build-tools.sh
chmod u+x build-tools.sh
sudo ./build-tools.sh

export AZP_AGENT_NAME=MyLinuxAgent
export AZP_URL=https://dev.azure.com/Tailspin051
export AZP_TOKEN=5ebqt52cmadi7f2puab2ha2sov5tp5u3ddnlch2npgtipn6o4zrq
export AZP_POOL=MyAgentPool
export AZP_AGENT_VERSION=$(curl -s https://api.github.com/repos/microsoft/azure-pipelines-agent/releases | jq -r '.[0].tag_name' | cut -d "v" -f 2)

#install agent software
curl https://raw.githubusercontent.com/MicrosoftDocs/mslearn-azure-pipelines-build-agent/master/build-agent.sh > build-agent.sh
chmod u+x build-agent.sh
sudo -E ./build-agent.sh