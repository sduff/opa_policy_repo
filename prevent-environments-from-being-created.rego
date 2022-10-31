# Prevent Environments from being Created

# Revision History
# v0.1 20221031 sduff

package confluent_terraform_opa

import future.keywords.every

# collect all environments with created
cc_envs := [ name |
  name := input.resource_changes[_]
  name.type == "confluent_environment"
  "create" in name.change.actions
]
