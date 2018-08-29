variable "topicName" {
  type = "string"
}

variable "project" {
  type = "string"
}

variable "pullSubscriptions" {
  type = "list"

  description = <<EOF
    List of PULL subscriptions.
    Attributes:
     - name
     - deadline (optional) (default: 10)
EOF
}

}
