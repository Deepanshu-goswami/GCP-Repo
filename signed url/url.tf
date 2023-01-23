
resource "null_resource" "kohli" {
      provisioner "local-exec" {
          working_dir = "/home/deepugoswami1995/signed url/"
    command = "gsutil signurl -d ${var.duration} /home/deepugoswami1995/Untitled.json gs://url-bucket-tf1/My-image"
  }
  
  depends_on = [
    google_storage_bucket_object.Bucket-object
  ]
}
