locals {

  timeregex = replace("${timestamp()}", "/[- TZ:]/", "")
}
