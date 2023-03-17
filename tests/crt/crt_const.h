/*
 * Copyright (c) 2021 Arm Limited
 * SPDX-License-Identifier: MIT
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */

#ifndef CRT_CONST_H
#define CRT_CONST_H

#define CRT_PARAM_SET 6

#if CRT_PARAM_SET == 1
#define CRT_32_P                         106117153
#define CRT_32_P_TWISTED                 1358076277
#define CRT_32_P_REFINED_BARRETT_SHIFT   25
#define CRT_32_Q                         45387457
#define CRT_32_P_INV_MOD_Q               71
#define CRT_32_P_INV_MOD_Q_TWISTED       880627586
#define CRT_32_P_Q_REFINED_BARRETT_SHIFT 17
#endif

#if CRT_PARAM_SET == 2
#define CRT_32_P                         108643009
#define CRT_32_P_TWISTED                 1326502178
#define CRT_32_P_REFINED_BARRETT_SHIFT   25
#define CRT_32_Q                         88299073
#define CRT_32_P_INV_MOD_Q               829
#define CRT_32_P_INV_MOD_Q_TWISTED       1321320529
#define CRT_32_P_Q_REFINED_BARRETT_SHIFT 15
#endif

#if CRT_PARAM_SET == 2
/* p:                   67157569 (26.001046672105282)
 * q:                   126268609 (26.91192078168495)
 * p*q:                 8479892821451521 (52.91296745379024)
 * (q mod p)^{-1}:      217
 * Constant:            1819007771 (30.760504560339715)
 * Approximation:       -10.5758337111819
 * Quality:             -2.8142824787374208
 * Exponent:            49 (shift 17)
 * p Montgomery twist:  3418247617
 * q Montgomery twist:  770431809
 * p 96-root:           1901539
 * q 96-root:           5945140
 * q ref Barrett const: 1141338209
 * q ref Barrett shift: 25
*/
#define CRT_32_P                         126268609
#define CRT_32_P_TWISTED                 1141338209
#define CRT_32_P_REFINED_BARRETT_SHIFT   25
#define CRT_32_Q                         67157569
#define CRT_32_P_INV_MOD_Q               217
#define CRT_32_P_INV_MOD_Q_TWISTED       1819007771
#define CRT_32_P_Q_REFINED_BARRETT_SHIFT 17
#endif

#if CRT_PARAM_SET == 3
/* p:                   67558273 (26.009629113040873
 * q:                   105534817 (26.653143796198034
 * p*q:                 7129749977891041 (52.6627729092389
 * (q mod p)^{-1}:      169
 * Constant:            1408244141 (30.391250323243234)
 * Approximation:       -9.057852079605151
 * Quality:             -1.656972643322967
 * Exponent:            49 (shift 17)
 * p Montgomery twist:  3310183553
 * q Montgomery twist:  3182759585
 * p 96-root:           675175
 * q 96-root:           1416361
 * q ref Barrett const: 1365570076
 * q ref Barrett shift: 25
 */

#define CRT_32_P                         105534817
#define CRT_32_P_TWISTED                 1365570076
#define CRT_32_P_REFINED_BARRETT_SHIFT   25
#define CRT_32_Q                         67558273
#define CRT_32_P_INV_MOD_Q               169
#define CRT_32_P_INV_MOD_Q_TWISTED       1408244141
#define CRT_32_P_Q_REFINED_BARRETT_SHIFT 17
#endif

#if CRT_PARAM_SET == 4
#define CRT_32_P                         108643009
#define CRT_32_P_INV_U32                 3479293249
#define CRT_32_P_ROOT                    640922
#define CRT_32_P_TWISTED                 1326502178
#define CRT_32_P_REFINED_BARRETT_SHIFT   25
#define CRT_32_Q                         88299073
#define CRT_32_Q_INV_U32                 2066201025
#define CRT_32_Q_ROOT                    4883425
#define CRT_32_P_INV_MOD_Q               829
#define CRT_32_P_INV_MOD_Q_TWISTED       1321320529
#define CRT_32_P_Q_REFINED_BARRETT_SHIFT 15
#endif

#if CRT_PARAM_SET == 5
/* ================== RESULT =========================== */
/* * p:                              111229537 (26.728964705658495 */
/* * q:                              131054689 (26.965593731811598 */
/* * p*q:                    14577152379148993 (53.69455843747009 */
/* * (q mod p)^{-1}:      533 */
/* * Constant:            674398935 (29.329027017099786) */
/* * Approximation:       -11.217001791079586 */
/* * Quality:             -2.159010068320409 */
/* * Exponent:            47 (shift 15) */
/* * p Montgomery twist:  1501096353 */
/* * q Montgomery twist:  2009065377 */
/* * p 96-root:           4830021 */
/* * q 96-root:           554612 */
/* * q ref Barrett const: 1099656862 */
/* * q ref Barrett shift: 25 */
#define CRT_32_P                         131054689
#define CRT_32_P_INV_U32                 2009065377
#define CRT_32_P_ROOT                    554612
#define CRT_32_P_TWISTED                 1099656862
#define CRT_32_P_REFINED_BARRETT_SHIFT   25
#define CRT_32_Q                         111229537
#define CRT_32_Q_INV_U32                 1501096353
#define CRT_32_Q_ROOT                    4830021
#define CRT_32_P_INV_MOD_Q               533
#define CRT_32_P_INV_MOD_Q_TWISTED       674398935
#define CRT_32_P_Q_REFINED_BARRETT_SHIFT 15
#endif

#if CRT_PARAM_SET == 6
/* ================== RESULT =========================== */
/* * p:                              114826273 (26.774877536915163 */
/* * q:                              128919937 (26.94190014759961 */
/* * p*q:                    14803395881104801 (53.716777684514774 */
/* * (q mod p)^{-1}:      774 */
/* * Constant:            948657595 (29.821312219228847) */
/* * Approximation:       -11.881058927276493 */
/* * Quality:             -2.2848691711320814 */
/* * Exponent:            47 (shift 15) */
/* * p Montgomery twist:  553543649 */
/* * q Montgomery twist:  1521161857 */
/* * p 96-root:           2551686 */
/* * q 96-root:           4666088 */
/* * q ref Barrett const: 1117865797 */
/* * q ref Barrett shift: 25 */
#define CRT_32_P                         128919937
#define CRT_32_P_INV_U32                 1521161857
#define CRT_32_P_ROOT                    4666088
#define CRT_32_P_TWISTED                 1117865797
#define CRT_32_P_REFINED_BARRETT_SHIFT   25
#define CRT_32_Q                         114826273
#define CRT_32_Q_INV_U32                 553543649
#define CRT_32_Q_ROOT                    2551686
#define CRT_32_P_INV_MOD_Q               774
#define CRT_32_P_INV_MOD_Q_TWISTED       948657595
#define CRT_32_P_Q_REFINED_BARRETT_SHIFT 15
#endif

#define CRT_32_SIZE 128

#endif /* CRT_CONST_H */
