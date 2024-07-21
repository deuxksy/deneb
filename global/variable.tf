variable "default" {
  default = {
    name   = "zziziily"
    iac    = "tofu"
    region = "ap-northeast-2"
    regions = {
      "N.Virginia"    = "us-east-1"
      "Ohio"          = "us-east-2"
      "N. California" = "us-west-1"
      "Oregon"        = "us-west-2"
      # "Cape Town"     = "af-south-1"
      # "Hong Kong" = "ap-east-1"
      # "Jakarta"   = "ap-southeast-3"
      "Mumbai"    = "ap-south-1"
      "Tokyo"     = "ap-northeast-1"
      "Seoul"     = "ap-northeast-2"
      "Osaka"     = "ap-northeast-3"
      "Singapore" = "ap-southeast-1"
      "Sydney"    = "ap-southeast-2"
      "Central"   = "ca-central-1"
      "Frankfurt" = "eu-central-1"
      # "Milan"     = "eu-south-1"
      "Stockholm" = "eu-north-1"
      "Ireland"   = "eu-west-1"
      "London"    = "eu-west-2"
      "Paris"     = "eu-west-3"
      # "UAE"       = "me-central-1"
      # "Bahrain"   = "me-south-1"
      "São Paulo" = "sa-east-1"
    }
    ip = {
      home = [
        "210.217.68.86", #누구 집이지 jerry 집인가?
      ]
    }

    domain = {
      zzizily  = "zzizily.com"
    }

    environment = {
      ops = "ops"
      dev = "dev"
      stg = "stg"
      prd = "prd"
    }

    az = [
      "ap-northeast-2a",
      "ap-northeast-2c"
    ]

    network = {
      b = {
        ops = "101"
        dev = "102"
        stg = "103"
        prd = "104"
      }
      c = {
        public = {
          "0" = "0"
          "1" = "16"
          "2" = "32"
        }
        private = {
          "0" = "80"
          "1" = "96"
          "2" = "112"
        }
        db = {
          "0" = "160"
          "1" = "176"
          "2" = "192"
        }
      }
    }

    cf = {
      cache = {
        CachingOptimized = "658327ea-f89d-4fab-a63d-7e88639e58f6"
        CachingDisabled  = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
      }
      origin = {
        AllViewer    = "216adef6-5c7f-47e4-b989-5492eafa07d3"
        CORSS3Origin = "88a5eaf4-2fd4-4709-b370-b4c650ea3fcf"
      }
      response = {
        SimpleCORS = "60669652-455b-4ae9-85a4-c4c02393f86c"
      }
    }
  }
}

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}
data "aws_region" "current" {}
