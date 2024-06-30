#yor:skip
resource "google_storage_bucket" "static-site" {
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
  labels = {
    git_commit                  = "N/A"
    git_file                    = "r_tf"
    git_last_modified_at        = "2024-06-30-11-19-33"
    git_last_modified_by        = "mirikaufman4121"
    git_modifiers               = "mirikaufman4121"
    git_org                     = "miri-kaufman"
    git_repo                    = "gcp_try"
    yor_name                    = "static-site"
    yor_trace                   = "55d70032-2057-4036-a1f5-5fac1afc7697"
    module_git_commit           = "N/A"
    module_git_file             = "r.tf"
    module_git_last_modified_at = "2024-06-30 11:19:50"
    module_git_last_modified_by = "mirikaufman4121@gmail.com"
    module_git_modifiers        = "mirikaufman4121"
    module_git_org              = "miri-kaufman"
    module_git_repo             = "gcp_try"
    module_yor_name             = "static-site"
    module_yor_trace            = "dff45807-c12f-4742-8253-aa5a82f82581"
  }
}