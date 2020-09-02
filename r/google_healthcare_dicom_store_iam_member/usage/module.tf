module "google_healthcare_dicom_store_iam_member" {
  source = "./modules/google/r/google_healthcare_dicom_store_iam_member"

  # dicom_store_id - (required) is a type of string
  dicom_store_id = null
  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null
}
