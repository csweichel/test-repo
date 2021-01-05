package main

import (
    "fmt"
    "os"
    "os/signal"
	"syscall"
	"io/ioutil"
)

func main() {

    sigs := make(chan os.Signal, 1)
    done := make(chan bool, 1)

    signal.Notify(sigs, syscall.SIGINT, syscall.SIGTERM)

    go func() {
        sig := <-sigs
        fmt.Println()
        fmt.Println(sig)
        done <- true
    }()

    fmt.Println("awaiting signal")
	<-done
	ioutil.WriteFile("proper-shutdown.txt", nil, 0644)
    fmt.Println("exiting")
}