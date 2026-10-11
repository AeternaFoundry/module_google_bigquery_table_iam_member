variable "bigquery_table_iam_members" {
  description = <<EOT
Map of bigquery_table_iam_members, attributes below
Required:
    - dataset_id
    - member
    - role
    - table_id
Optional:
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    dataset_id = string
    member     = string
    role       = string
    table_id   = string
    project    = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

