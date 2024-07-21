locals {
  yyMMddhhmm   = formatdate("YYMMDDHHmm", timeadd(timestamp(), "9h"))
  yyMMdd       = formatdate("YYMMDD", timeadd(timestamp(), "9h"))
  yyMMddhh     = formatdate("YYMMDDHH", timeadd(timestamp(), "9h"))
  yyyyMMdd     = formatdate("YYYY/MM/DD", timeadd(timestamp(), "9h"))
  yyyyMMddhh   = formatdate("YYYY/MM/DD hh", timeadd(timestamp(), "9h"))
  yyyyMMddhhmm = formatdate("YYYY/MM/DD hh:mm", timeadd(timestamp(), "9h"))

  az = {
    a = format("%sa", var.default.region)
    c = format("%sc", var.default.region)
  }

  ulimits = [
    {
      name      = "nofile"
      softLimit = 65536
      hardLimit = 65536
    },
  ]

  ip = setunion(
    var.default.ip.home
  )

  internal = [
    "10.101.0.0/16",
    "10.102.0.0/16",
    "10.103.0.0/16",
    "10.104.0.0/16",
  ]
}

