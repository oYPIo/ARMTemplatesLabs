#!/bin/bash
sudo apt-get update

#install build tools (.NET, Node.js, npm, gulp)
curl https://raw.githubusercontent.com/MicrosoftDocs/mslearn-azure-pipelines-build-agent/master/build-tools.sh > build-tools.sh
chmod u+x build-tools.sh
sudo ./build-tools.sh

#install agent software
curl https://raw.githubusercontent.com/MicrosoftDocs/mslearn-azure-pipelines-build-agent/master/build-agent.sh > build-agent.sh
export AZP_AGENT_NAME=MyLinuxAgent
export AZP_URL=https://dev.azure.com/Tailspin051
export AZP_TOKEN=3ti4aadaprdm5ppdz4vncwifcdhsdqajbvagcsonbz3pzxfnyrza
export AZP_POOL=MyAgentPool
export AZP_AGENT_VERSION=$(curl -s https://api.github.com/repos/microsoft/azure-pipelines-agent/releases | jq -r '.[0].tag_name' | cut -d "v" -f 2)
chmod u+x build-agent.sh
sudo -E ./build-agent.sh