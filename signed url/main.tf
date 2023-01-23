resource "google_storage_bucket" "MyBucket" {
  name          = var.Bucket_name
  location      = var.location
  uniform_bucket_level_access = true
  force_destroy = true
  storage_class = var.storage_class
  }
 
 output "bucket" {
  description = "The created storage bucket"
  value       = "${google_storage_bucket.MyBucket.name} is successfully provisioned "
}

resource "google_storage_bucket_object" "Bucket-object" {
  name   = var.Bucket-object_name
  source = "/home/deepugoswami1995/signed url/My_image.png"
  bucket = var.Bucket_name
  content_type = var.content_type

  depends_on = [
    google_storage_bucket.MyBucket
  ]
}
