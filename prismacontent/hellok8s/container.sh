gcloud services enable container.googleapis.com
gcloud container clusters create my-cluster --zone=us-central1-f
export PROJECT= 'clgcporg10-123' 
export PROJECT_NUMBER=$(gcloud projects describe $PROJECT --format 'value(projectNumber)')
export CB_SA_EMAIL=52203939279@cloudbuild.gserviceaccount.com
gcloud projects add-iam-policy-binding $PROJECT --member=serviceAccount:$CB_SA_EMAIL --role='roles/container.developer'