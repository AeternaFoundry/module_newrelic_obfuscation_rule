variable "obfuscation_rules" {
  description = <<EOT
Map of obfuscation_rules, attributes below
Required:
    - enabled
    - filter
    - name
    - action (block):
        - attribute (required)
        - expression_id (required)
        - method (required)
Optional:
    - account_id
    - description
EOT

  type = map(object({
    enabled     = bool
    filter      = string
    name        = string
    account_id  = optional(number)
    description = optional(string)
    action = list(object({
      attribute     = set(string)
      expression_id = string
      method        = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.obfuscation_rules : (
        length(v.action) >= 1
      )
    ])
    error_message = "Each action list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

