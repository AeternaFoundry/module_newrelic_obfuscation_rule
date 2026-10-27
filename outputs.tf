output "obfuscation_rules_id" {
  description = "Map of id values across all obfuscation_rules, keyed the same as var.obfuscation_rules"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.id }
}
output "obfuscation_rules_account_id" {
  description = "Map of account_id values across all obfuscation_rules, keyed the same as var.obfuscation_rules"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.account_id }
}
output "obfuscation_rules_action" {
  description = "Map of action values across all obfuscation_rules, keyed the same as var.obfuscation_rules"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.action }
}
output "obfuscation_rules_description" {
  description = "Map of description values across all obfuscation_rules, keyed the same as var.obfuscation_rules"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.description }
}
output "obfuscation_rules_enabled" {
  description = "Map of enabled values across all obfuscation_rules, keyed the same as var.obfuscation_rules"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.enabled }
}
output "obfuscation_rules_filter" {
  description = "Map of filter values across all obfuscation_rules, keyed the same as var.obfuscation_rules"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.filter }
}
output "obfuscation_rules_name" {
  description = "Map of name values across all obfuscation_rules, keyed the same as var.obfuscation_rules"
  value       = { for k, v in newrelic_obfuscation_rule.obfuscation_rules : k => v.name }
}

