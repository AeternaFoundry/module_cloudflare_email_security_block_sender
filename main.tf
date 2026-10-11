resource "cloudflare_email_security_block_sender" "email_security_block_senders" {
  for_each = var.email_security_block_senders

  account_id   = each.value.account_id
  is_regex     = each.value.is_regex
  pattern      = each.value.pattern
  pattern_type = each.value.pattern_type
  comments     = each.value.comments
}

