# cloudstorage-terraform-state-backend
 Create a Google Cloud Storage bucket and use it as backend file to store Terraform statefile.

1. Run the main.tf script to create a Cloud Storage bucket with the correct settings as versioning.  
2. Rename the backend.tf.sample to backend.tf and store it in the root of your Terraform repository.
3. Edit the backend.tf and add the name of the create Cloud Storage bucket.
4. Run terraform init

Happy coding! 