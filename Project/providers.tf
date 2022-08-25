
provider "aws" {
    alias = "primary"
    region = "us-west-1"
    access_key = "AKIAWLPIINEGOF6B2OJP"
    secret_key = "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"
}

provider "aws" {
    alias   = "remote"
    region  = "ca-central-1"
}



