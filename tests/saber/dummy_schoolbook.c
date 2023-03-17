
/* Generate some schoolbook multiplications
 * This isn't really needed, but we're currently including _all_
 * Toom3/4 files into the build process, and some of them require
 * a schoolbook multiplication.
 * At the latest, link time optimization should remove it. */
#include "misc.h"
#include <poly.h>

MAKE_SCHOOLBOOK(16,16)
MAKE_SCHOOLBOOK(16,32)
MAKE_SCHOOLBOOK(16,64)
MAKE_SCHOOLBOOK(16,128)
MAKE_SCHOOLBOOK(16,192)
MAKE_SCHOOLBOOK(16,208)
MAKE_SCHOOLBOOK(16,256)
MAKE_SCHOOLBOOK(16,512)
MAKE_SCHOOLBOOK(16,768)
MAKE_SCHOOLBOOK(16,832)
