#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>

int main () {
  pid_t child_pid;

  child_pid = fork();
  if (child_pid > 0) {
    printf("run \"ps guaxf\" and look for the zombie\n");
    sleep(10);
    printf("the zombie should be gone\n");
  } else {
    exit(0);
  }
  return 0;
}