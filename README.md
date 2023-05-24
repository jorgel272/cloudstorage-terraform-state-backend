# cloudstorage-terraform-state-backend
 This Terraform plan will help you to create a Google Cloud Storage bucket and use it as backend file to store your Terraform state file.
 There is also a backend.tf.sample file to configure the remote backend.

**Steps for running Terraform plan**

1. Please make sure that have the required Cloud Storage permissions for your user account:

- storage.buckets.create
- storage.buckets.list
- storage.objects.get
- storage.objects.create
- storage.objects.delete
- storage.objects.update

2. Run the main.tf script to create a Cloud Storage bucket with the correct settings as versioning.  
3. Rename the backend.tf.sample to backend.tf and store it in the root of your Terraform repository.
4. Edit the backend.tf and add the name of the create Cloud Storage bucket.
5. Run `terraform init` to configure the Terraform backend.

If you already have a local state file, Terraform will detect it and prompt you to copy it to 
the create Cloud Storage bucket. 

VAMOS, happy coding! :smiley: