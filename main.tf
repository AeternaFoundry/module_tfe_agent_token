resource "tfe_agent_token" "agent_tokens" {
  for_each = var.agent_tokens

  agent_pool_id = each.value.agent_pool_id
  description   = each.value.description
}

