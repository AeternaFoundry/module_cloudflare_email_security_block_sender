variable "email_security_block_senders" {
  description = <<EOT
Map of email_security_block_senders, attributes below
Required:
    - account_id
    - is_regex
    - pattern
    - pattern_type
Optional:
    - comments
EOT

  type = map(object({
    account_id   = string
    is_regex     = bool
    pattern      = string
    pattern_type = string
    comments     = optional(string)
  }))
}

