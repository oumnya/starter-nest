
project = "nested-apps"
runner {
  enabled = true
}

app "nested-apps" {

  build {
    use "pack" {}
    registry {
      use "docker" {
        image = "nested"
        tag   = "1"
        local = true
      }
    }
  }

  deploy {
    use "nomad" {
      // these options both default to the values shown, but are left here to
      // show they are configurable
      datacenter = "ng1"
      namespace  = "default"
    }
  }

}

