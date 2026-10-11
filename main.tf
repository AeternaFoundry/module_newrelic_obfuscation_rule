resource "newrelic_obfuscation_rule" "obfuscation_rules" {
  for_each = var.obfuscation_rules

  enabled     = each.value.enabled
  filter      = each.value.filter
  name        = each.value.name
  account_id  = each.value.account_id
  description = each.value.description

  dynamic "action" {
    for_each = each.value.action
    content {
      attribute     = action.value.attribute
      expression_id = action.value.expression_id
      method        = action.value.method
    }
  }
}

