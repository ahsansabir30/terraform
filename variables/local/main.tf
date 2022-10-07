locals  {
    version     = 3.2
    project_name = "big-project"
}

resource "some_resource" "example" {
    name = "${local.project_name}-resource"
}
