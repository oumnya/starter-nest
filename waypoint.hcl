
project = "nested-apps"
runner {
  enabled = true
}

app "nested-apps" {

  build {
    use "pack" {
      builder = "heroku/buildpacks:20"

    }
  }

  deploy {
    use "nomad" {
      // these options both default to the values shown, but are left here to
      // show they are configurable
      datacenter = "ng1"
    }
  }

}

