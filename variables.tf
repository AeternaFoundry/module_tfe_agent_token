variable "agent_tokens" {
  description = <<EOT
Map of agent_tokens, attributes below
Required:
    - agent_pool_id
    - description
EOT

  type = map(object({
    agent_pool_id = string
    description   = string
  }))
}

