module "google_healthcare_dicom_store_iam_binding" {
  source = "./modules/google/r/google_healthcare_dicom_store_iam_binding"

  # dicom_store_id - (required) is a type of string
  dicom_store_id = null
  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
