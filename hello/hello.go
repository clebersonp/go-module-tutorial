package main

import (
	"fmt"
	"log"

	"github.com/clebersonp/greetings"
)

// The go build command compiles the packages, along with their dependencies, but it doesn't install the results.
// The go install command compiles and installs the packages.
// You can discover the install path by running the go list command, as in the following example:
// $ go list -f '{{.Target}}'
// For example, the command's output might say /home/gopher/bin/hello, meaning that binaries are installed to /home/gopher/bin. You'll need this install directory in the next step.
// $ go install


func main() {
	// Set properties of the predefined Logger, including
	// the log entry prefix and a flag to disable printing
	// the time, source file, and line number.
	log.SetPrefix("greetings: ")
	log.SetFlags(0)

	// A slice of names.
	names := []string{"Gladys", "Samantha", "Darrin"}

	// Request greeting messages for the names.
	messages, err := greetings.Hellos(names)
	// If an error was returned, print it to the console and
	// exit the program.
	if err != nil {
		log.Fatal(err)
	}

	// If no error was returned, print the returned map of
	// messages to the console
	fmt.Println(messages)
}
