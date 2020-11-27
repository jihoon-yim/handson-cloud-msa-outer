terraform {
  backend "gcs" {
    bucket = "architect-certification-289902-25-tfstate"
    prefix = "environments/prd"
  }
}
