/*
 * Author: Hanno Becker <hannobecker@posteo.de>
 */

/*
 * Some external references to auto-generated assembly.
 */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <hal.h>
#include "profiling.h"

int main(void) {
  debug_test_start("Profiling");

  debug_printf("=========== uArch profiling ===============\n");
  profile_full();

  debug_test_ok();
  debug_printf("ALL GOOD!\n");
  return (0);
}
