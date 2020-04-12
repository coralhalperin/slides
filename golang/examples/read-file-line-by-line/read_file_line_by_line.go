package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	filename := "README.md"
	fh, err := os.Open(filename)
	if err != nil {
		fmt.Printf("Could not open file '%v': %v", filename, err)
		os.Exit(1)
	}
	reader := bufio.NewReader(fh)
	for {
		line, _ := reader.ReadString('\n')
		fmt.Print(line)
		if line == "" {
			break
		}
	}
}