module "google_healthcare_dicom_store_iam_policy" {
  source = "./modules/google/r/google_healthcare_dicom_store_iam_policy"

  # dicom_store_id - (required) is a type of string
  dicom_store_id = null
  # policy_data - (required) is a type of string
  policy_data = null
}
