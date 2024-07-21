provider "aws" {
  region = var.default.region
  default_tags {
    tags = {
      IaC = var.default.iac
    }
  }
}

provider "aws" {
  alias  = "global"
  region = "us-east-1"
  default_tags {
    tags = {
      IaC = var.default.iac
    }
  }

}

provider "aws" {
  alias  = "seoul"
  region = "ap-northeast-2"
  default_tags {
    tags = {
      IaC = var.default.iac
    }
  }
}

