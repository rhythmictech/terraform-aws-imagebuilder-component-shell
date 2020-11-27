variable "change_description" {
  default     = null
  description = "description of changes since last version"
  type        = string
}

variable "cloudformation_timeout" {
  default     = 10
  description = "How long to wait (in minutes) for CFN to apply before giving up"
  type        = number
}

variable "commands" {
  description = "List of strings. Each string is a shell command"
  type        = list(string)
}

variable "component_version" {
  description = "Version of the component"
  type        = string
}

variable "data_uri" {
  default     = null
  description = "Use this to override the component document with one at a particular URL endpoint"
  type        = string
}

variable "description" {
  default     = null
  description = "description of component"
  type        = string
}

variable "kms_key_id" {
  default     = null
  description = "KMS key to use for encryption"
  type        = string
}

variable "name" {
  description = "name to use for component"
  type        = string
}

variable "phase" {
  default     = "build"
  description = "The Image Builder phase this component is in, either 'build' or 'test'."
  type        = string
}

# TODO: add validation
variable "platform" {
  default     = "Linux"
  description = "platform of component (Linux or Windows)"
  type        = string
}

variable "tags" {
  default     = {}
  description = "map of tags to use for CFN stack and component"
  type        = map(string)
}

variable "create" {
  description = "A flag to disable creation of the component"
  default     = true
}
