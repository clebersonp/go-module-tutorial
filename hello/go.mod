module github.com/clebersonp/hello

go 1.20

// For production use, you’d publish the github.com/clebersonp/greetings module from its repository (with a module path that reflected its published location),
// where Go tools could find it to download it. For now, because you haven't published the module yet, you need to adapt the github.com/clebersonp/hello module
// so it can find the github.com/clebersonp/greetings code on your local file system.
// To do that, use the go mod edit command to edit the github.com/clebersonp/hello module to redirect Go tools from its module path (where the module isn't) to the local directory (where it is).
// $ go mod edit -replace example.com/greetings=../greetings
// After that: From the command prompt in the hello directory, run the go mod tidy command to synchronize the github.com/clebersonp/hello module's dependencies,
// adding those required by the code, but not yet tracked in the module.
// $ go mod tidy
// To reference a published module, a go.mod file would typically omit the replace directive and use a require directive with a tagged version number at the end.
// require github.com/clebersonp/greetings v1.0.0
replace github.com/clebersonp/greetings => ../greetings

require github.com/clebersonp/greetings v0.0.0-00010101000000-000000000000
