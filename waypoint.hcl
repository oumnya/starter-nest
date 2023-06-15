
project = "nested-apps"
runner {


  enabled = true

  data_source "git" {
    url  = "https://github.com/oumnya/starter-nest.git"
    path = ""
  }
}

app "nested-apps" {

  build {
    use "pack" {}
  }

  deploy {
    use "nomad" {
      // these options both default to the values shown, but are left here to
      // show they are configurable
      datacenter = "ng1"
    }
  }

}

