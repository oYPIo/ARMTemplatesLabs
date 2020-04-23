export AZP_AGENT_NAME=MyLinuxAgent
export AZP_URL=https://dev.azure.com/Tailspin051
export AZP_TOKEN=2lxk3hd577f2odzyx2ou3mtnkxrbgqunvy2spet2kvidpjy6ikqq
export AZP_POOL=MyAgentPool
export AZP_AGENT_VERSION=$(curl -s https://api.github.com/repos/microsoft/azure-pipelines-agent/releases | jq -r '.[0].tag_name' | cut -d "v" -f 2)