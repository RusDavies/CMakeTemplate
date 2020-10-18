#include <iostream>
#include "Greetings.h"

using namespace std;
using namespace example;

int main() {
  
  Greetings *greet = new Greetings();

  cout << greet->hello() << endl; 
  
  return 0;
}

