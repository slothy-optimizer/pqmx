.syntax unified
.type poly_u16_mul_256_C, %function
.global poly_u16_mul_256_C
.syntax unified
.type poly_u16_mul_768_toom3_mve, %function
.global poly_u16_mul_768_toom3_mve
poly_u16_mul_768_toom3_mve:
push {r4-r11,lr}
vpush {d8-d15}
sub sp, sp, #5120
add sp, sp, #504
add r14, sp, #1008
add r12, r14, #1008
add r11, r12, #1008
add r10, r11, #1008
add r9, r10, #1008
add r1, r1, #504
add r8, r1, #1008
add r2, r2, #504
add r7, r2, #1008
mov r6, #-2
mov r5, #3
vldrw.u32 Q0, [r1, #(4 * -126)]
vldrw.u32 Q1, [r8, #(4 * -122)]
vadd.u16 Q2, Q0, Q1
vldrw.u32 Q3, [r1, #(4 * 2)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [sp,#(-504)]
vmla.s16 Q2, Q3, r6
vstrw.u32 Q2, [r14,#(-488)]
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r8, #(4 * -118)]
vmla.s16 Q2, Q1, r5
vstrw.u32 Q2, [r12,#(-472)]
vldrw.u32 Q0, [r1, #(4 * -122)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 6)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-488)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-472)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -114)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-456)]
vldrw.u32 Q0, [r1, #(4 * -118)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 10)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-472)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-456)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -110)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-440)]
vldrw.u32 Q0, [r1, #(4 * -114)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 14)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-456)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-440)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -106)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-424)]
vldrw.u32 Q0, [r1, #(4 * -110)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 18)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-440)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-424)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -102)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-408)]
vldrw.u32 Q0, [r1, #(4 * -106)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 22)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-424)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-408)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -98)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-392)]
vldrw.u32 Q0, [r1, #(4 * -102)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 26)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-408)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-392)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -94)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-376)]
vldrw.u32 Q0, [r1, #(4 * -98)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 30)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-392)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-376)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -90)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-360)]
vldrw.u32 Q0, [r1, #(4 * -94)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 34)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-376)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-360)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -86)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-344)]
vldrw.u32 Q0, [r1, #(4 * -90)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 38)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-360)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-344)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -82)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-328)]
vldrw.u32 Q0, [r1, #(4 * -86)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 42)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-344)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-328)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -78)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-312)]
vldrw.u32 Q0, [r1, #(4 * -82)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 46)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-328)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-312)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -74)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-296)]
vldrw.u32 Q0, [r1, #(4 * -78)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 50)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-312)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-296)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -70)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-280)]
vldrw.u32 Q0, [r1, #(4 * -74)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 54)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-296)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-280)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -66)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-264)]
vldrw.u32 Q0, [r1, #(4 * -70)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 58)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-280)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-264)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -62)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-248)]
vldrw.u32 Q0, [r1, #(4 * -66)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 62)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-264)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-248)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -58)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-232)]
vldrw.u32 Q0, [r1, #(4 * -62)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 66)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-248)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-232)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -54)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-216)]
vldrw.u32 Q0, [r1, #(4 * -58)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 70)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-232)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-216)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -50)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-200)]
vldrw.u32 Q0, [r1, #(4 * -54)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 74)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-216)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-200)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -46)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-184)]
vldrw.u32 Q0, [r1, #(4 * -50)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 78)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-200)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-184)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -42)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-168)]
vldrw.u32 Q0, [r1, #(4 * -46)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 82)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-184)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-168)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -38)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-152)]
vldrw.u32 Q0, [r1, #(4 * -42)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 86)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-168)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-152)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -34)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-136)]
vldrw.u32 Q0, [r1, #(4 * -38)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 90)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-152)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-136)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -30)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-120)]
vldrw.u32 Q0, [r1, #(4 * -34)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 94)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-136)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-120)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -26)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-104)]
vldrw.u32 Q0, [r1, #(4 * -30)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 98)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-120)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-104)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -22)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-88)]
vldrw.u32 Q0, [r1, #(4 * -26)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 102)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-104)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-88)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -18)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-72)]
vldrw.u32 Q0, [r1, #(4 * -22)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 106)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-88)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-72)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -14)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-56)]
vldrw.u32 Q0, [r1, #(4 * -18)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 110)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-72)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-56)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -10)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-40)]
vldrw.u32 Q0, [r1, #(4 * -14)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 114)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-56)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-40)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * -6)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(-24)]
vldrw.u32 Q0, [r1, #(4 * -10)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 118)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-40)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-24)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r8, #(4 * -2)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(-8)]
vldrw.u32 Q0, [r1, #(4 * -6)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * 122)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-24)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(-8)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r8, #(4 * 2)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(8)]
vldrw.u32 Q0, [r1, #(4 * -2)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * 126)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-8)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(8)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -122)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(24)]
vldrw.u32 Q0, [r2, #(4 * -126)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 2)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(8)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(24)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -118)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(40)]
vldrw.u32 Q0, [r2, #(4 * -122)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 6)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(24)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(40)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -114)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(56)]
vldrw.u32 Q0, [r2, #(4 * -118)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 10)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(40)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(56)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -110)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(72)]
vldrw.u32 Q0, [r2, #(4 * -114)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 14)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(56)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(72)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -106)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(88)]
vldrw.u32 Q0, [r2, #(4 * -110)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 18)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(72)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(88)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -102)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(104)]
vldrw.u32 Q0, [r2, #(4 * -106)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 22)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(88)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(104)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -98)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(120)]
vldrw.u32 Q0, [r2, #(4 * -102)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 26)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(104)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(120)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -94)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(136)]
vldrw.u32 Q0, [r2, #(4 * -98)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 30)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(120)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(136)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -90)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(152)]
vldrw.u32 Q0, [r2, #(4 * -94)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 34)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(136)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(152)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -86)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(168)]
vldrw.u32 Q0, [r2, #(4 * -90)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 38)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(152)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(168)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -82)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(184)]
vldrw.u32 Q0, [r2, #(4 * -86)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 42)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(168)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(184)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -78)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(200)]
vldrw.u32 Q0, [r2, #(4 * -82)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 46)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(184)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(200)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -74)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(216)]
vldrw.u32 Q0, [r2, #(4 * -78)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 50)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(200)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(216)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -70)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(232)]
vldrw.u32 Q0, [r2, #(4 * -74)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 54)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(216)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(232)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -66)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(248)]
vldrw.u32 Q0, [r2, #(4 * -70)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 58)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(232)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(248)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -62)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(264)]
vldrw.u32 Q0, [r2, #(4 * -66)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 62)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(248)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(264)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -58)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(280)]
vldrw.u32 Q0, [r2, #(4 * -62)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 66)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(264)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(280)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -54)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(296)]
vldrw.u32 Q0, [r2, #(4 * -58)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 70)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(280)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(296)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -50)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(312)]
vldrw.u32 Q0, [r2, #(4 * -54)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 74)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(296)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(312)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -46)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(328)]
vldrw.u32 Q0, [r2, #(4 * -50)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 78)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(312)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(328)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -42)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(344)]
vldrw.u32 Q0, [r2, #(4 * -46)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 82)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(328)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(344)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -38)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(360)]
vldrw.u32 Q0, [r2, #(4 * -42)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 86)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(344)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(360)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -34)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(376)]
vldrw.u32 Q0, [r2, #(4 * -38)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 90)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(360)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(376)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -30)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(392)]
vldrw.u32 Q0, [r2, #(4 * -34)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 94)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(376)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(392)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -26)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(408)]
vldrw.u32 Q0, [r2, #(4 * -30)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 98)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(392)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(408)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -22)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(424)]
vldrw.u32 Q0, [r2, #(4 * -26)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 102)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(408)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(424)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -18)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(440)]
vldrw.u32 Q0, [r2, #(4 * -22)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 106)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(424)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(440)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -14)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(456)]
vldrw.u32 Q0, [r2, #(4 * -18)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 110)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(440)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(456)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -10)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(472)]
vldrw.u32 Q0, [r2, #(4 * -14)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 114)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(456)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(472)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * -6)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r12,#(488)]
vldrw.u32 Q0, [r2, #(4 * -10)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 118)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(472)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(488)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r7, #(4 * -2)]
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r12,#(504)]
vldrw.u32 Q0, [r2, #(4 * -6)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * 122)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(488)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r14,#(504)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r7, #(4 * 2)]
vmla.s16 Q1, Q3, r5
vstrw.u32 Q1, [r11,#(-488)]
vldrw.u32 Q0, [r2, #(4 * -2)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * 126)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(504)]
vmla.s16 Q1, Q2, r6
vstrw.u32 Q1, [r12,#(-488)]
vsub.u16 Q1, Q1, Q2
vmla.s16 Q1, Q4, r5
vstrw.u32 Q1, [r11,#(-472)]
sub sp, sp, #504
sub r1, r1, #504
sub r2, r2, #504
add r11, r1, #1024
add r10, r2, #1024
mov r9, r1
mov r8, r2
mov r7, r0
add r1, sp, #(2048)
add r2, sp, #(2560)
add r0, sp, #(3072)
bl poly_u16_mul_256_C
add r1, sp, #(1024)
add r2, sp, #(1536)
add r0, sp, #(2048)
bl poly_u16_mul_256_C
add r1, sp, #(0)
add r2, sp, #(512)
add r0, sp, #(1024)
bl poly_u16_mul_256_C
add r1, r9, #(0)
add r2, r8, #(0)
add r0, sp, #(0)
bl poly_u16_mul_256_C
add r1, r11, #(512)
add r2, r10, #(512)
add r0, sp, #(4096)
bl poly_u16_mul_256_C
add sp, sp, #504
add r14, sp, #1008
add r12, r14, #1008
add r11, r12, #1008
add r10, r11, #1008
add r9, r10, #1008
mov r8, #43691
mov r6, #2
mov r5, #-1
vldrw.u32 Q0, [r14, #(4 * -122)]
vldrw.u32 Q1, [r11, #(4 * -114)]
vsub.u16 Q1, Q1, Q0
vmul.u16 Q1, Q1, r8
vldrw.u32 Q2, [r12, #(4 * -118)]
vsub.u16 Q0, Q0, Q2
vldrw.u32 Q3, [sp, #(4 * -126)]
vmla.s16 Q2, Q3, r5
vshr.u16 Q0, Q0, #1
vldrw.u32 Q4, [r11, #(4 * -110)]
vsub.u16 Q1, Q2, Q1
vldrw.u32 Q5, [r10, #(4 * -110)]
vadd.u16 Q2, Q2, Q0
vldrw.u32 Q6, [r14, #(4 * -118)]
vshr.u16 Q1, Q1, #1
vmla.s16 Q1, Q5, r6
vstrw.u32 Q1, [r11,#(-456)]
vsub.u16 Q0, Q0, Q1
vstrw.u32 Q0, [r14,#(-488)]
vsub.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r12,#(-472)]
vsub.u16 Q4, Q4, Q6
vmul.u16 Q4, Q4, r8
vldrw.u32 Q0, [r12, #(4 * -114)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -122)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -106)]
vsub.u16 Q4, Q0, Q4
vldrw.u32 Q3, [r10, #(4 * -106)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -114)]
vshr.u16 Q4, Q4, #1
vmla.s16 Q4, Q3, r6
vstrw.u32 Q4, [r11,#(-440)]
vsub.u16 Q6, Q6, Q4
vstrw.u32 Q6, [r14,#(-472)]
vsub.u16 Q0, Q0, Q3
vstrw.u32 Q0, [r12,#(-456)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -110)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -118)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -102)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -102)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -110)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-424)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-456)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-440)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -106)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -114)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -98)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -98)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -106)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-408)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-440)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-424)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -102)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -110)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -94)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -94)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -102)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-392)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-424)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-408)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -98)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -106)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -90)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -90)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -98)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-376)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-408)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-392)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -94)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -102)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -86)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -86)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -94)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-360)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-392)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-376)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -90)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -98)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -82)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -82)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -90)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-344)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-376)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-360)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -86)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -94)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -78)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -78)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -86)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-328)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-360)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-344)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -82)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -90)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -74)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -74)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -82)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-312)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-344)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-328)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -78)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -86)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -70)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -70)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -78)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-296)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-328)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-312)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -74)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -82)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -66)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -66)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -74)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-280)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-312)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-296)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -70)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -78)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -62)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -62)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -70)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-264)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-296)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-280)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -66)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -74)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -58)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -58)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -66)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-248)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-280)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-264)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -62)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -70)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -54)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -54)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -62)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-232)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-264)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-248)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -58)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -66)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -50)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -50)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -58)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-216)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-248)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-232)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -54)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -62)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -46)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -46)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -54)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-200)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-232)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-216)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -50)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -58)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -42)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -42)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -50)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-184)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-216)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-200)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -46)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -54)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -38)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -38)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -46)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-168)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-200)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-184)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -42)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -50)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -34)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -34)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -42)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-152)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-184)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-168)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -38)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -46)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -30)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -30)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -38)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-136)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-168)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-152)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -34)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -42)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -26)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -26)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -34)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-120)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-152)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-136)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -30)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -38)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -22)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -22)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -30)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-104)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-136)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-120)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -26)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -34)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -18)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -18)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -26)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-88)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-120)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-104)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -22)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -30)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -14)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -14)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -22)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-72)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-104)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-88)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -18)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -26)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -10)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -10)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -18)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-56)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-88)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-72)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -14)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -22)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * -6)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * -6)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -14)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-40)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-72)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-56)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -10)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -18)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * -2)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * -2)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -10)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(-24)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-56)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-40)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * -6)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -14)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 2)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 2)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * -6)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(-8)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-40)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-24)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * -2)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -10)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 6)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 6)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * -2)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(8)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(-24)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(-8)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 2)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -6)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 10)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 10)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 2)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r6
vstrw.u32 Q2, [r11,#(24)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r14,#(-8)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(8)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 6)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -2)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 14)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 14)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 6)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r6
vstrw.u32 Q3, [r11,#(40)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r14,#(8)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r12,#(24)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 10)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 2)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 18)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 18)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 10)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -122)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-488)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -110)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-440)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -118)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-472)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -114)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-456)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 14)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 6)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 22)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 22)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 14)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -118)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-472)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -106)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-424)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -114)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-456)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -110)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-440)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 18)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 10)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 26)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 26)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 18)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -114)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-456)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -102)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-408)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -110)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-440)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -106)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-424)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 22)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 14)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 30)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 30)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 22)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -110)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-440)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -98)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-392)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -106)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-424)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -102)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-408)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 26)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 18)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 34)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 34)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 26)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -106)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-424)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -94)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-376)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -102)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-408)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -98)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-392)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 30)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 22)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 38)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 38)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 30)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -102)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-408)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -90)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-360)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -98)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-392)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -94)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-376)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 34)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 26)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 42)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 42)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 34)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -98)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-392)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -86)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-344)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -94)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-376)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -90)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-360)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 38)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 30)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 46)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 46)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 38)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -94)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-376)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -82)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-328)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -90)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-360)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -86)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-344)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 42)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 34)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 50)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 50)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 42)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -90)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-360)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -78)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-312)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -86)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-344)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -82)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-328)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 46)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 38)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 54)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 54)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 46)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -86)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-344)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -74)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-296)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -82)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-328)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -78)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-312)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 50)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 42)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 58)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 58)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 50)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -82)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-328)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -70)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-280)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -78)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-312)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -74)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-296)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 54)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 46)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 62)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 62)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 54)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -78)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-312)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -66)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-264)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -74)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-296)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -70)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-280)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 58)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 50)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 66)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 66)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 58)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -74)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-296)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -62)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-248)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -70)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-280)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -66)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-264)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 62)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 54)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 70)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 70)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 62)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -70)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-280)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -58)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-232)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -66)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-264)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -62)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-248)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 66)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 58)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 74)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 74)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 66)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -66)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-264)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -54)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-216)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -62)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-248)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -58)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-232)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 70)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 62)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 78)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 78)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 70)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -62)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-248)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -50)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-200)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -58)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-232)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -54)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-216)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 74)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 66)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 82)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 82)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 74)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -58)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-232)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -46)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-184)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -54)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-216)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -50)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-200)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 78)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 70)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 86)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 86)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 78)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -54)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-216)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -42)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-168)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -50)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-200)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -46)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-184)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 82)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 74)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 90)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 90)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 82)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -50)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-200)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -38)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-152)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -46)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-184)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -42)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-168)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 86)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 78)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 94)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 94)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 86)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -46)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-184)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -34)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-136)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -42)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-168)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -38)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-152)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 90)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 82)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 98)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 98)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 90)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -42)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-168)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -30)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-120)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -38)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-152)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -34)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-136)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 94)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 86)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 102)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 102)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 94)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -38)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-152)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -26)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-104)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -34)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-136)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -30)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-120)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 98)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 90)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 106)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 106)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 98)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -34)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-136)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -22)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-88)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -30)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-120)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -26)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-104)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 102)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 94)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 110)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 110)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 102)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -30)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-120)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -18)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-72)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -26)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-104)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -22)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-88)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 106)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 98)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 114)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 114)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 106)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -26)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-104)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -14)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-56)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -22)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-88)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -18)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-72)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 110)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 102)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 118)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 118)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 110)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -22)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-88)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -10)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-40)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -18)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-72)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -14)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-56)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 114)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 106)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r11, #(4 * 122)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r10, #(4 * 122)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 114)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -18)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-72)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -6)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(-24)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -14)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-56)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -10)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-40)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 118)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 110)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r11, #(4 * 126)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r10, #(4 * 126)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 118)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -14)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-56)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * -2)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(-8)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -10)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-40)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -6)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-24)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r12, #(4 * 122)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 114)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r10, #(4 * -122)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r9, #(4 * -122)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r14, #(4 * 122)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -10)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-40)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * 2)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(8)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * -6)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-24)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * -2)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-8)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r12, #(4 * 126)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 118)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r10, #(4 * -118)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r9, #(4 * -118)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r14, #(4 * 126)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r14, #(4 * -6)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-24)]
vmla.s16 Q3, Q4, r6
vldrw.u32 Q1, [r10, #(4 * 6)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(24)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * -2)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(-8)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * 2)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(8)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r8
vldrw.u32 Q0, [r11, #(4 * -122)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * 122)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r10, #(4 * -114)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r9, #(4 * -114)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r12, #(4 * -122)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r14, #(4 * -2)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(-8)]
vmla.s16 Q2, Q4, r6
vldrw.u32 Q1, [r10, #(4 * 10)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r10,#(40)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r12, #(4 * 2)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(8)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r11, #(4 * 6)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(24)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r8
vldrw.u32 Q0, [r11, #(4 * -118)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * 126)]
vmla.s16 Q0, Q1, r5
vshr.u16 Q6, Q6, #1
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q2, [r9, #(4 * -110)]
vadd.u16 Q0, Q0, Q6
vshr.u16 Q3, Q3, #1
vldrw.u32 Q4, [r14, #(4 * 2)]
vadd.u16 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(8)]
vmla.s16 Q3, Q2, r6
vldrw.u32 Q1, [r10, #(4 * 14)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r10,#(56)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r12, #(4 * 6)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r12,#(24)]
vsub.u16 Q0, Q0, Q2
vldrw.u32 Q1, [r11, #(4 * 10)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(40)]
sub sp, sp, #504
add r14, sp, #0
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #512
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #512
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #512
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #512
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #512
add sp, sp, #5120
vpop {d8-d15}
pop {r4-r11,lr}
bx lr