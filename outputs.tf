output "obfuscation_rules_id" {
  description = "Map of id values across all obfuscation_rules, keyed the same as var.obfuscation_rules except keys with no id are omitted"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "obfuscation_rules_account_id" {
  description = "Map of account_id values across all obfuscation_rules, keyed the same as var.obfuscation_rules except keys with no account_id are omitted"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.account_id if v.account_id != null }
}
output "obfuscation_rules_action" {
  description = "Map of action values across all obfuscation_rules, keyed the same as var.obfuscation_rules except keys with no action are omitted"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "obfuscation_rules_description" {
  description = "Map of description values across all obfuscation_rules, keyed the same as var.obfuscation_rules except keys with no description are omitted"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "obfuscation_rules_enabled" {
  description = "Map of enabled values across all obfuscation_rules, keyed the same as var.obfuscation_rules except keys with no enabled are omitted"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.enabled if v.enabled != null }
}
output "obfuscation_rules_filter" {
  description = "Map of filter values across all obfuscation_rules, keyed the same as var.obfuscation_rules except keys with no filter are omitted"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "obfuscation_rules_name" {
  description = "Map of name values across all obfuscation_rules, keyed the same as var.obfuscation_rules except keys with no name are omitted"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.name if v.name != null && length(v.name) > 0 }
}

