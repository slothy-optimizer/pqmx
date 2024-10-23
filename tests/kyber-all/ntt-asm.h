// SPDX-License-Identifier: Apache-2.0 or CC0-1.0
#ifndef NTT_ASM_H
#define NTT_ASM_H

#include <stdint.h>
// asm
void ntt_fast(int16_t *, const int32_t *);
void ntt_fast_opt_m7(int16_t *, const int32_t *);

void ntt_fast_symbolic_opt_m7(int16_t *, const int32_t *);

void invntt_fast(int16_t *, const int32_t *);
void invntt_fast_opt_m7(int16_t *, const int32_t *);


static const int32_t zetas_asm[128] = {
    2230699446, 3328631909, 4243360600, 3408622288, 812805467, 2447447570, 1094061961, 1370157786, 2475831253, 249002310, 1028263423, 3594406395, 4205945745, 734105255, 2252632292, 381889553, 372858381, 427045412, 21932846, 3562152210, 752167598, 3417653460, 3157039644, 4196914574, 2265533966, 2112004045, 932791035, 2951903026, 1419184148, 1727534158, 1544330386, 2972545705, 1817845876, 3434425636, 4233039261, 300609006, 1904287092, 2937711185, 2651294021, 975366560, 2781600929, 3889854731, 3935010590, 3929849920, 838608815, 2550660963, 2197155094, 2130066389, 3598276897, 2308109491, 72249375, 3242190693, 815385801, 2382939200, 1228239371, 1884934581, 3466679822, 2889974991, 3696329620, 42575525, 1211467195, 2977706375, 3144137970, 3080919767, 1719793153, 1703020977, 2470670584, 945692709, 3015121229, 345764865, 826997308, 1839778722, 2991898216, 1851390229, 2043625172, 2964804700, 2628071007, 4154339049, 2701610550, 1041165097, 583155668, 483812778, 3288636719, 2696449880, 2122325384, 690239563, 1855260731, 3700200122, 1371447954, 411563403, 3577634219, 976656727, 3718262466, 1979116802, 3098982111, 2708061387, 723783916, 3181552825, 3346694253, 3087370604, 3415073125, 3376368103, 3617629408, 1408862808, 519937465, 1323711759, 3714391964, 1910737929, 836028480, 1474661346, 2773859924, 3580214553, 1143088323, 2546790461, 3191874164, 4012420634, 2221668274, 1563682897, 2417773720, 1327582262, 1059227441, 1583035408, 1174052340, 2722253228, 3786641338, 1141798155, 2779020594, 0};

static const int32_t zetas_inv_CT_asm[256] = {
    // LAYER 7+6+5+4
    1290168, 1290168, 2064267851, 1290168, 51606697, 2064267851, 966335388, 1290168, 3200905336, 51606697, 3482161830, 2064267851, 1847519727, 966335388, 886345009,
    // removed first "2285" + LAYER 3+2+1 - 1 - butterfly
    1290168, 2064267851, 1290168, 51606697, 2064267851, 966335388,
    // LAYER 3+2+1 - 1 - twist
    2435836064, 290287667, 2944162022, 3021572066, 1802363867, 603798347, 3375077936, 2677097369,
    // LAYER 3+2+1 - 2 - butterfly
    2042335005, 3235739856, 1748176836, 3120914957, 282546663, 2711931889, 1103093133,
    // LAYER 3+2+1 - 2 - twist
    1659155285, 1785591691, 1941701947, 2704190884, 358666539, 793452955, 1461759672, 1673347127,
    // LAYER 3+2+1 - 3 - butterfly
    3200905336, 2042335005, 3560862042, 3235739856, 580575333, 1748176836, 1207596693,
    // LAYER 3+2+1 - 3 - twist
    3887274396, 2126195886, 872153167, 3443456808, 526388302, 299318839, 3875662889, 3382818940,
    // LAYER 3+2+1 - 4 - butterfly
    3266703874, 2575174144, 1404992306, 1824296713, 4252391772, 2591946320, 598637677,
    // LAYER 3+2+1 - 4 - twist
    1997179146, 2904166832, 2577754479, 202556283, 30964018, 3807284017, 1238560711, 1967505295,
    // LAYER 3+2+1 - 5 - butterfly
    51606697, 3200905336, 1847519727, 2042335005, 89021552, 3560862042, 700560902,
    // LAYER 3+2+1 - 5 - twist
    1633351937, 2191994424, 909568022, 1780431021, 2022982494, 2497764099, 3609888404, 1126316146,
    // LAYER 3+2+1 - 6 - butterfly
    89021552, 576704831, 3604727734, 1195985186, 594767175, 2315850495, 2439706566,
    // LAYER 3+2+1 - 6 - twist
    3633111417, 2908037335, 3590535893, 357376372, 1887514916, 1410152976, 2486152593, 571544162,
    // LAYER 3+2+1 - 7 - butterfly
    3482161830, 3266703874, 4045964987, 2575174144, 4222717922, 1404992306, 365117377,
    // LAYER 3+2+1 - 7 - twist
    4003389463, 2444867236, 1221788534, 3305408896, 1626901100, 3367336931, 651534541, 1549491056,
    // LAYER 3+2+1 - 8 - butterfly
    1819136044, 2390680205, 2567433139, 1643673276, 1322421592, 1357256112, 2750636911,
    // LAYER 3+2+1 - 8 - twist
    993428903, 3680847611, 1082450454, 1205016358, 348345200, 956014049, 1048906102, 3880823559,
    // LAYER 3+2+1 - 9 - butterfly
    2064267851, 51606697, 966335388, 3200905336, 3482161830, 1847519727, 886345009,
    // LAYER 3+2+1 - 9 - twist
    3342823751, 4258842609, 568963827, 2849979801, 1283716570, 2330042337, 4104022520, 3007380225,
    // LAYER 3+2+1 - 10 - butterfly
    3560862042, 580575333, 1207596693, 3458938817, 918599194, 2384229368, 879894172,
    // LAYER 3+2+1 - 10 - twist
    2217797772, 503165289, 2812564947, 2946742357, 833448145, 1905577260, 3273154711, 3208646340,
    // LAYER 3+2+1 - 11 - butterfly
    1847519727, 89021552, 700560902, 576704831, 1593356747, 3604727734, 2455188575,
    // LAYER 3+2+1 - 11 - twist
    3162200314, 2808694444, 1933960943, 678628056, 49026362, 1375318456, 1961054458, 3473130659,
    // LAYER 3+2+1 - 12 - butterfly
    4045964987, 4222717922, 365117377, 3479581496, 1744306334, 1052776604, 3456358482,
    // LAYER 3+2+1 - 12 - twist
    438656919, 1681088131, 366407544, 2819015784, 1771399850, 1091481626, 2136517226, 709592074,
    // LAYER 3+2+1 - 13 - butterfly
    966335388, 3482161830, 886345009, 3266703874, 1819136044, 4045964987, 2924809511,
    // LAYER 3+2+1 - 13 - twist
    25803349, 3888564563, 1032133926, 923759864, 2630651342, 2590656153, 2146838565, 547030981,
    // LAYER 3+2+1 - 14 - butterfly
    700560902, 1593356747, 2455188575, 3711811629, 2443577068, 3253802200, 1303069081,
    // LAYER 3+2+1 - 14 - twist
    254162980, 3513125848, 1576584571, 3086080437, 2933840683, 3184133160, 1389510297, 2811274779,
    // LAYER 3+2+1 - 15 - butterfly
    886345009, 1819136044, 2924809511, 2390680205, 1137927653, 2567433139, 3913077744,
    // LAYER 3+2+1 - 15 - twist
    2288756980, 459299597, 1355965945, 1192114684, 2699030215, 439947086, 587026170, 418014240,
    // LAYER 3+2+1 - 16 - butterfly
    2924809511, 1137927653, 3913077744, 2029433331, 3867921885, 98052723, 3922108916, 639923034,
    // LAYER 3+2+1 - 16 - twist
    2806114109, 4122084864, 575414664, 1674637294, 1541750051, 2560982302, 1540459884, 0};

static void ntt_fast_wrap(int16_t *p){
    ntt_fast(p, zetas_asm);
}

static void ntt_fast_opt_m7_wrap(int16_t *p){
    ntt_fast_opt_m7(p, zetas_asm);
}

static void ntt_fast_symbolic_opt_m7_wrap(int16_t *p){
    ntt_fast_symbolic_opt_m7(p, zetas_asm);
}

static void invntt_fast_wrap(int16_t *p){
    invntt_fast(p, zetas_inv_CT_asm);
}

static void invntt_fast_opt_m7_wrap(int16_t *p){
    invntt_fast_opt_m7(p, zetas_inv_CT_asm);
}


void basemul_asm(int16_t *, const int16_t *, const int16_t *, const int32_t *);
void basemul_asm_opt_m7(int16_t *, const int16_t *, const int16_t *, const int32_t *);

void basemul_asm_acc(int16_t *, const int16_t *, const int16_t *, const int32_t *);
void basemul_asm_acc_opt_m7(int16_t *, const int16_t *, const int16_t *, const int32_t *);

static void basemul_asm_wrap(int16_t *a, const int16_t *b, const int16_t *c){
    basemul_asm(a,b,c,zetas);
}
static void basemul_asm_opt_m7_wrap(int16_t *a, const int16_t *b, const int16_t *c){
    basemul_asm_opt_m7(a,b,c,zetas);
}
static void basemul_asm_acc_wrap(int16_t *a, const int16_t *b, const int16_t *c){
    basemul_asm_acc(a,b,c,zetas);
}
static void basemul_asm_acc_opt_m7_wrap(int16_t *a, const int16_t *b, const int16_t *c){
    basemul_asm_acc_opt_m7(a,b,c,zetas);
}


void frombytes_mul_asm(int16_t *r, const int16_t *b, const unsigned char *c, const int32_t zetas[64]);
void frombytes_mul_asm_opt_m7(int16_t *r, const int16_t *b, const unsigned char *c, const int32_t zetas[64]);

void frombytes_mul_asm_acc(int16_t *r, const int16_t *b, const unsigned char *c, const int32_t zetas[64]);
void frombytes_mul_asm_acc_opt_m7(int16_t *r, const int16_t *b, const unsigned char *c, const int32_t zetas[64]);

void frombytes_mul_asm_wrap(int16_t *r, const int16_t *b, const unsigned char *c){
    frombytes_mul_asm(r,b,c,zetas);
}
void frombytes_mul_asm_opt_m7_wrap(int16_t *r, const int16_t *b, const unsigned char *c){
    frombytes_mul_asm_opt_m7(r,b,c,zetas);
}

void frombytes_mul_asm_acc_wrap(int16_t *r, const int16_t *b, const unsigned char *c){
    frombytes_mul_asm_acc(r,b,c,zetas);
}
void frombytes_mul_asm_acc_opt_m7_wrap(int16_t *r, const int16_t *b, const unsigned char *c){
    frombytes_mul_asm_acc_opt_m7(r,b,c,zetas);
}


#endif