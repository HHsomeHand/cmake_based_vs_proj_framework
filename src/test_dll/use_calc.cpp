#include <iostream> // use cout

#include "calc_dll.hpp" // use add sub

using namespace std;

int main()
{
  cout << "test 1 + 2 = " << add(1, 2) << endl;
  cout << "test 2 - 1 = " << sub(2, 1) << endl;
  
  return 0;
}