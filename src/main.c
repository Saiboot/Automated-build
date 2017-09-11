#include <SDL2/SDL.h>
#include <stdio.h>
#include "inc/dep.h"

int main(int argc, char **argv)
{
  if(SDL_Init(SDL_INIT_VIDEO) != 0) {
    printf("SDL initialization failed!");
    return -1;
  }
  
  printf("SDL initialization succeeded!");
  SDL_Quit();
  
  return 0;
}
