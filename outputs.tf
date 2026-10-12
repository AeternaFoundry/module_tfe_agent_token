output "agent_tokens_id" {
  description = "Map of id values across all agent_tokens, keyed the same as var.agent_tokens except keys with no id are omitted"
  value       = { for k, v in tfe_agent_token.agent_tokens : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_tokens_agent_pool_id" {
  description = "Map of agent_pool_id values across all agent_tokens, keyed the same as var.agent_tokens except keys with no agent_pool_id are omitted"
  value       = { for k, v in tfe_agent_token.agent_tokens : k => v.agent_pool_id if v.agent_pool_id != null && length(v.agent_pool_id) > 0 }
}
output "agent_tokens_description" {
  description = "Map of description values across all agent_tokens, keyed the same as var.agent_tokens except keys with no description are omitted"
  value       = { for k, v in tfe_agent_token.agent_tokens : k => v.description if v.description != null && length(v.description) > 0 }
}
output "agent_tokens_token" {
  description = "Map of token values across all agent_tokens, keyed the same as var.agent_tokens except keys with no token are omitted"
  value       = { for k, v in tfe_agent_token.agent_tokens : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

