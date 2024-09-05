terraform {
    required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.48.0"
    }
    }
    backend "s3" { 
        bucket = "navya-remote-state-bucket"
        key    = "jenkins"    # you can give any name ---change the key for every diff project
        region = "us-east-1"
        dynamodb_table = "remote-locking"   
    }
}
# provide authentication here
provider "aws"{
    region = "us-east-1"
}