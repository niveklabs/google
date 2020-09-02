variable "additional_experiments" {
  description = "(optional) - List of experiments that should be used by the job. An example value is [\"enable_stackdriver_agent_metrics\"]."
  type        = set(string)
  default     = null
}

variable "ip_configuration" {
  description = "(optional) - The configuration for VM IPs. Options are \"WORKER_IP_PUBLIC\" or \"WORKER_IP_PRIVATE\"."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - User labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. NOTE: Google-provided Dataflow templates often provide default labels that begin with goog-dataflow-provided. Unless explicitly set in config, these labels will be ignored to prevent diffs on re-apply."
  type        = map(string)
  default     = null
}

variable "machine_type" {
  description = "(optional) - The machine type to use for the job."
  type        = string
  default     = null
}

variable "max_workers" {
  description = "(optional) - The number of workers permitted to work on the job. More workers may improve processing speed at additional cost."
  type        = number
  default     = null
}

variable "name" {
  description = "(required) - A unique name for the resource, required by Dataflow."
  type        = string
}

variable "network" {
  description = "(optional) - The network to which VMs will be assigned. If it is not provided, \"default\" will be used."
  type        = string
  default     = null
}

variable "on_delete" {
  description = "(optional) - One of \"drain\" or \"cancel\". Specifies behavior of deletion during terraform destroy."
  type        = string
  default     = null
}

variable "parameters" {
  description = "(optional) - Key/Value pairs to be passed to the Dataflow job (as used in the template)."
  type        = map(string)
  default     = null
}

variable "project" {
  description = "(optional) - The project in which the resource belongs."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The region in which the created job should run."
  type        = string
  default     = null
}

variable "service_account_email" {
  description = "(optional) - The Service Account email used to create the job."
  type        = string
  default     = null
}

variable "subnetwork" {
  description = "(optional) - The subnetwork to which VMs will be assigned. Should be of the form \"regions/REGION/subnetworks/SUBNETWORK\"."
  type        = string
  default     = null
}

variable "temp_gcs_location" {
  description = "(required) - A writeable location on GCS for the Dataflow job to dump its temporary data."
  type        = string
}

variable "template_gcs_path" {
  description = "(required) - The GCS path to the Dataflow job template."
  type        = string
}

variable "zone" {
  description = "(optional) - The zone in which the created job should run. If it is not provided, the provider zone is used."
  type        = string
  default     = null
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      update = string
    }
  ))
  default = []
}

