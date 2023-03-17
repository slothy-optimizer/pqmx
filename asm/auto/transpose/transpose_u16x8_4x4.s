.syntax unified
.type transpose_u16x8_4x4, %function
.global transpose_u16x8_4x4
transpose_u16x8_4x4:
push {r4-r11,lr}
vpush {d8-d15}
ldrh r14, [r1, #0]
strh r14, [r0], #+2
ldrh r14, [r1, #2]
strh r14, [r0], #+2
ldrh r14, [r1, #4]
strh r14, [r0], #+2
ldrh r14, [r1, #6]
strh r14, [r0], #+2
ldrh r14, [r1, #8]
strh r14, [r0], #+2
ldrh r14, [r1, #10]
strh r14, [r0], #+2
ldrh r14, [r1, #12]
strh r14, [r0], #+2
ldrh r14, [r1, #14]
strh r14, [r0], #+2
ldrh r14, [r1, #64]
strh r14, [r0], #+2
ldrh r14, [r1, #66]
strh r14, [r0], #+2
ldrh r14, [r1, #68]
strh r14, [r0], #+2
ldrh r14, [r1, #70]
strh r14, [r0], #+2
ldrh r14, [r1, #72]
strh r14, [r0], #+2
ldrh r14, [r1, #74]
strh r14, [r0], #+2
ldrh r14, [r1, #76]
strh r14, [r0], #+2
ldrh r14, [r1, #78]
strh r14, [r0], #+2
ldrh r14, [r1, #128]
strh r14, [r0], #+2
ldrh r14, [r1, #130]
strh r14, [r0], #+2
ldrh r14, [r1, #132]
strh r14, [r0], #+2
ldrh r14, [r1, #134]
strh r14, [r0], #+2
ldrh r14, [r1, #136]
strh r14, [r0], #+2
ldrh r14, [r1, #138]
strh r14, [r0], #+2
ldrh r14, [r1, #140]
strh r14, [r0], #+2
ldrh r14, [r1, #142]
strh r14, [r0], #+2
ldrh r14, [r1, #192]
strh r14, [r0], #+2
ldrh r14, [r1, #194]
strh r14, [r0], #+2
ldrh r14, [r1, #196]
strh r14, [r0], #+2
ldrh r14, [r1, #198]
strh r14, [r0], #+2
ldrh r14, [r1, #200]
strh r14, [r0], #+2
ldrh r14, [r1, #202]
strh r14, [r0], #+2
ldrh r14, [r1, #204]
strh r14, [r0], #+2
ldrh r14, [r1, #206]
strh r14, [r0], #+2
ldrh r14, [r1, #16]
strh r14, [r0], #+2
ldrh r14, [r1, #18]
strh r14, [r0], #+2
ldrh r14, [r1, #20]
strh r14, [r0], #+2
ldrh r14, [r1, #22]
strh r14, [r0], #+2
ldrh r14, [r1, #24]
strh r14, [r0], #+2
ldrh r14, [r1, #26]
strh r14, [r0], #+2
ldrh r14, [r1, #28]
strh r14, [r0], #+2
ldrh r14, [r1, #30]
strh r14, [r0], #+2
ldrh r14, [r1, #80]
strh r14, [r0], #+2
ldrh r14, [r1, #82]
strh r14, [r0], #+2
ldrh r14, [r1, #84]
strh r14, [r0], #+2
ldrh r14, [r1, #86]
strh r14, [r0], #+2
ldrh r14, [r1, #88]
strh r14, [r0], #+2
ldrh r14, [r1, #90]
strh r14, [r0], #+2
ldrh r14, [r1, #92]
strh r14, [r0], #+2
ldrh r14, [r1, #94]
strh r14, [r0], #+2
ldrh r14, [r1, #144]
strh r14, [r0], #+2
ldrh r14, [r1, #146]
strh r14, [r0], #+2
ldrh r14, [r1, #148]
strh r14, [r0], #+2
ldrh r14, [r1, #150]
strh r14, [r0], #+2
ldrh r14, [r1, #152]
strh r14, [r0], #+2
ldrh r14, [r1, #154]
strh r14, [r0], #+2
ldrh r14, [r1, #156]
strh r14, [r0], #+2
ldrh r14, [r1, #158]
strh r14, [r0], #+2
ldrh r14, [r1, #208]
strh r14, [r0], #+2
ldrh r14, [r1, #210]
strh r14, [r0], #+2
ldrh r14, [r1, #212]
strh r14, [r0], #+2
ldrh r14, [r1, #214]
strh r14, [r0], #+2
ldrh r14, [r1, #216]
strh r14, [r0], #+2
ldrh r14, [r1, #218]
strh r14, [r0], #+2
ldrh r14, [r1, #220]
strh r14, [r0], #+2
ldrh r14, [r1, #222]
strh r14, [r0], #+2
ldrh r14, [r1, #32]
strh r14, [r0], #+2
ldrh r14, [r1, #34]
strh r14, [r0], #+2
ldrh r14, [r1, #36]
strh r14, [r0], #+2
ldrh r14, [r1, #38]
strh r14, [r0], #+2
ldrh r14, [r1, #40]
strh r14, [r0], #+2
ldrh r14, [r1, #42]
strh r14, [r0], #+2
ldrh r14, [r1, #44]
strh r14, [r0], #+2
ldrh r14, [r1, #46]
strh r14, [r0], #+2
ldrh r14, [r1, #96]
strh r14, [r0], #+2
ldrh r14, [r1, #98]
strh r14, [r0], #+2
ldrh r14, [r1, #100]
strh r14, [r0], #+2
ldrh r14, [r1, #102]
strh r14, [r0], #+2
ldrh r14, [r1, #104]
strh r14, [r0], #+2
ldrh r14, [r1, #106]
strh r14, [r0], #+2
ldrh r14, [r1, #108]
strh r14, [r0], #+2
ldrh r14, [r1, #110]
strh r14, [r0], #+2
ldrh r14, [r1, #160]
strh r14, [r0], #+2
ldrh r14, [r1, #162]
strh r14, [r0], #+2
ldrh r14, [r1, #164]
strh r14, [r0], #+2
ldrh r14, [r1, #166]
strh r14, [r0], #+2
ldrh r14, [r1, #168]
strh r14, [r0], #+2
ldrh r14, [r1, #170]
strh r14, [r0], #+2
ldrh r14, [r1, #172]
strh r14, [r0], #+2
ldrh r14, [r1, #174]
strh r14, [r0], #+2
ldrh r14, [r1, #224]
strh r14, [r0], #+2
ldrh r14, [r1, #226]
strh r14, [r0], #+2
ldrh r14, [r1, #228]
strh r14, [r0], #+2
ldrh r14, [r1, #230]
strh r14, [r0], #+2
ldrh r14, [r1, #232]
strh r14, [r0], #+2
ldrh r14, [r1, #234]
strh r14, [r0], #+2
ldrh r14, [r1, #236]
strh r14, [r0], #+2
ldrh r14, [r1, #238]
strh r14, [r0], #+2
ldrh r14, [r1, #48]
strh r14, [r0], #+2
ldrh r14, [r1, #50]
strh r14, [r0], #+2
ldrh r14, [r1, #52]
strh r14, [r0], #+2
ldrh r14, [r1, #54]
strh r14, [r0], #+2
ldrh r14, [r1, #56]
strh r14, [r0], #+2
ldrh r14, [r1, #58]
strh r14, [r0], #+2
ldrh r14, [r1, #60]
strh r14, [r0], #+2
ldrh r14, [r1, #62]
strh r14, [r0], #+2
ldrh r14, [r1, #112]
strh r14, [r0], #+2
ldrh r14, [r1, #114]
strh r14, [r0], #+2
ldrh r14, [r1, #116]
strh r14, [r0], #+2
ldrh r14, [r1, #118]
strh r14, [r0], #+2
ldrh r14, [r1, #120]
strh r14, [r0], #+2
ldrh r14, [r1, #122]
strh r14, [r0], #+2
ldrh r14, [r1, #124]
strh r14, [r0], #+2
ldrh r14, [r1, #126]
strh r14, [r0], #+2
ldrh r14, [r1, #176]
strh r14, [r0], #+2
ldrh r14, [r1, #178]
strh r14, [r0], #+2
ldrh r14, [r1, #180]
strh r14, [r0], #+2
ldrh r14, [r1, #182]
strh r14, [r0], #+2
ldrh r14, [r1, #184]
strh r14, [r0], #+2
ldrh r14, [r1, #186]
strh r14, [r0], #+2
ldrh r14, [r1, #188]
strh r14, [r0], #+2
ldrh r14, [r1, #190]
strh r14, [r0], #+2
ldrh r14, [r1, #240]
strh r14, [r0], #+2
ldrh r14, [r1, #242]
strh r14, [r0], #+2
ldrh r14, [r1, #244]
strh r14, [r0], #+2
ldrh r14, [r1, #246]
strh r14, [r0], #+2
ldrh r14, [r1, #248]
strh r14, [r0], #+2
ldrh r14, [r1, #250]
strh r14, [r0], #+2
ldrh r14, [r1, #252]
strh r14, [r0], #+2
ldrh r14, [r1, #254]
strh r14, [r0], #+2
vpop {d8-d15}
pop {r4-r11,lr}
bx lr