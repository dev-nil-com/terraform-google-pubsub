variable "project" {}

variable "iAm" {
  type = "map"

  description = <<EOF
    Map of service account used to set permissions for a topic."

    Attributes:
      - role  [string]
      - email [string]
  EOF

  default = {
    "role"  = ""
    "email" = ""
  }
}

variable "definition" {
  type = "map"

  description = <<EOF
    Attributes:
      - name [list]

      - pull [list]
        The list of PULL subscriptions should be defined by those attributes:
          - name
          - deadline (optional) (default: 10)
  EOF
}

variable "module_depends_on" {
  type        = "list"
  description = "The module which should be created before Pub/Sub, required if iAm is used."
  default     = []
}
