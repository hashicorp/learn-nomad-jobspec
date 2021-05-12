# /parameterized

Content that supports the [**Parameterized Jobs on Nomad**][job-spec-parameterized] tutorial.

## Folders

- **complete** - Completed Nomad job specifications that can be used as
  comparisons or starting points for other exploration. **Their paths are
  relative to the `parameterized` folder, so they need to be copied and
  run from there.**

- **payloads** - Sample payloads to be used as part of the tutorial.

- **templates** - Raw template data that is passed into the Nomad jobs
  by the HCL2 parser in the Nomad CLI.

[job-spec-parameterized]: https://learn.hashicorp.com/tutorials/nomad/job-spec-parameterized
