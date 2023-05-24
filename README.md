# cloudstorage-terraform-state-backend
 This Terraform plan will help you to create a Google Cloud Storage bucket and use it as backend file to store your Terraform state file.
 There is also a backend.tf.sample file to configure the remote backend.

**Steps for running Terraform plan**

1. Create a service account with sufficient permissions.
2. Please make sure that have the required Cloud Storage permissions for your account:

- storage.buckets.create
- storage.buckets.list
- storage.objects.get
- storage.objects.create
- storage.objects.delete
- storage.objects.update

3. Download the JSON key file of the service account to your local computer.
4. Adjust the name of the JSON key file in the variable "gcp_service_credentials". 
5. Set the name of your Google Cloud project in the variable "gcp_project_id.
6. Run the main.tf script to create a Cloud Storage bucket with the correct settings as versioning.  
7. Rename the backend.tf.sample to backend.tf and store it in the root of your Terraform repository.
8. Edit the backend.tf and add the name of the create Cloud Storage bucket.
9. Run `terraform init` to configure the Terraform backend.

If you already have a local state file, Terraform will detect it and prompt you to copy it to 
the create Cloud Storage bucket. 

VAMOS, happy coding! :smiley: