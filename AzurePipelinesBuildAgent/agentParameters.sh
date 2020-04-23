export AZP_AGENT_NAME=MyLinuxAgent
export AZP_URL=https://dev.azure.com/Tailspin051
export AZP_TOKEN=or4lpyvm22bg6gtbgnwnvmu7j3pfpzd6ypqh23jdgt5zmsblcduq
export AZP_POOL=MyAgentPool
export AZP_AGENT_VERSION=$(curl -s https://api.github.com/repos/microsoft/azure-pipelines-agent/releases | jq -r '.[0].tag_name' | cut -d "v" -f 2)