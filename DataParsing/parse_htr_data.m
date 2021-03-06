clear all
cd('/Users/davidputrino/Desktop/Putrino_Lab/Projects/POINT_CLOUD/Kinect_exp_SIMM_output/sittostand')
framelist = dlmread('Anna_standing_Tarms.mot','\t',35,1);
numframes = framelist(end,1);

pelvic_frame = dlmread('Anna_standing_Tarms.htr','\t', [265 1 263+numframes 7]);
pelvis = dlmread('Anna_standing_Tarms.htr','\t', [267+numframes 1 265+2*numframes 7]);
pelvic_marker = dlmread('Anna_standing_Tarms.htr','\t', [269+2*numframes 1 267+3*numframes 7]);
lumbar5 = dlmread('Anna_standing_Tarms.htr','\t', [271+3*numframes 1 269+4*numframes 7]);
lumbar4 = dlmread('Anna_standing_Tarms.htr','\t', [273+4*numframes 1 271+5*numframes 7]);
lumbar3 = dlmread('Anna_standing_Tarms.htr','\t', [275+5*numframes 1 273+6*numframes 7]);
lumbar2 = dlmread('Anna_standing_Tarms.htr','\t', [277+6*numframes 1 275+7*numframes 7]);
lumbar1 = dlmread('Anna_standing_Tarms.htr','\t', [279+7*numframes 1 277+8*numframes 7]);
thorax = dlmread('Anna_standing_Tarms.htr','\t', [281+8*numframes 1 279+9*numframes 7]);
cerv7 = dlmread('Anna_standing_Tarms.htr','\t', [283+9*numframes 1 281+10*numframes 7]);
cerv6 = dlmread('Anna_standing_Tarms.htr','\t', [285+10*numframes 1 283+11*numframes 7]);
cerv5 = dlmread('Anna_standing_Tarms.htr','\t', [287+11*numframes 1 285+12*numframes 7]);
cerv4 = dlmread('Anna_standing_Tarms.htr','\t', [289+12*numframes 1 287+13*numframes 7]);
cerv3 = dlmread('Anna_standing_Tarms.htr','\t', [291+13*numframes 1 289+14*numframes 7]);
cerv2 = dlmread('Anna_standing_Tarms.htr','\t', [293+14*numframes 1 291+15*numframes 7]);
cerv1 = dlmread('Anna_standing_Tarms.htr','\t', [295+15*numframes 1 293+16*numframes 7]);
skull = dlmread('Anna_standing_Tarms.htr','\t', [297+16*numframes 1 295+17*numframes 7]);
OT_head = dlmread('Anna_standing_Tarms.htr','\t', [299+17*numframes 1 297+18*numframes 7]);
clavicle_r = dlmread('Anna_standing_Tarms.htr','\t', [301+18*numframes 1 299+19*numframes 7]);
clavicle_marker_r = dlmread('Anna_standing_Tarms.htr','\t', [303+19*numframes 1 301+20*numframes 7]);
scapula_r = dlmread('Anna_standing_Tarms.htr','\t', [305+20*numframes 1 303+21*numframes 7]);
humerus_r = dlmread('Anna_standing_Tarms.htr','\t', [307+21*numframes 1 305+22*numframes 7]);
elbow_marker_r = dlmread('Anna_standing_Tarms.htr','\t', [309+22*numframes 1 307+23*numframes 7]);
ulna_r = dlmread('Anna_standing_Tarms.htr','\t', [311+23*numframes 1 309+24*numframes 7]);
radius_r = dlmread('Anna_standing_Tarms.htr','\t', [313+24*numframes 1 311+25*numframes 7]);
wrist_marker_r = dlmread('Anna_standing_Tarms.htr','\t', [315+25*numframes 1 313+26*numframes 7]);
clavicle_l = dlmread('Anna_standing_Tarms.htr','\t', [317+26*numframes 1 315+27*numframes 7]);
clavicle_marker_l = dlmread('Anna_standing_Tarms.htr','\t', [319+27*numframes 1 317+28*numframes 7]);
scapula_l = dlmread('Anna_standing_Tarms.htr','\t', [321+28*numframes 1 319+29*numframes 7]);
humerus_l = dlmread('Anna_standing_Tarms.htr','\t', [323+29*numframes 1 321+30*numframes 7]);
elbow_marker_l = dlmread('Anna_standing_Tarms.htr','\t', [325+30*numframes 1 323+31*numframes 7]);
ulna_l = dlmread('Anna_standing_Tarms.htr','\t', [327+31*numframes 1 325+32*numframes 7]);
radius_l = dlmread('Anna_standing_Tarms.htr','\t', [329+32*numframes 1 327+33*numframes 7]);
wrist_marker_l = dlmread('Anna_standing_Tarms.htr','\t', [331+33*numframes 1 329+34*numframes 7]);
femur_r = dlmread('Anna_standing_Tarms.htr','\t', [333+34*numframes 1 331+35*numframes 7]);
tibia_r = dlmread('Anna_standing_Tarms.htr','\t', [335+35*numframes 1 333+36*numframes 7]);
patella_r = dlmread('Anna_standing_Tarms.htr','\t', [337+36*numframes 1 335+37*numframes 7]);
talus_r = dlmread('Anna_standing_Tarms.htr','\t', [339+37*numframes 1 337+38*numframes 7]);
foot_r = dlmread('Anna_standing_Tarms.htr','\t', [341+38*numframes 1 339+39*numframes 7]);
foot_marker_r = dlmread('Anna_standing_Tarms.htr','\t', [343+39*numframes 1 341+40*numframes 7]);
toes_r = dlmread('Anna_standing_Tarms.htr','\t', [345+40*numframes 1 343+41*numframes 7]);
femur_l = dlmread('Anna_standing_Tarms.htr','\t', [347+41*numframes 1 345+42*numframes 7]);
tibia_l = dlmread('Anna_standing_Tarms.htr','\t', [349+42*numframes 1 347+43*numframes 7]);
patella_l = dlmread('Anna_standing_Tarms.htr','\t', [351+43*numframes 1 349+44*numframes 7]);
talus_l = dlmread('Anna_standing_Tarms.htr','\t', [353+44*numframes 1 351+45*numframes 7]);
foot_l = dlmread('Anna_standing_Tarms.htr','\t', [355+45*numframes 1 353+46*numframes 7]);
foot_marker_l = dlmread('Anna_standing_Tarms.htr','\t', [357+46*numframes 1 355+47*numframes 7]);
toes_l = dlmread('Anna_standing_Tarms.htr','\t', [359+47*numframes 1 357+48*numframes 7]);
rotaxis_r = dlmread('Anna_standing_Tarms.htr','\t', [361+48*numframes 1 359+49*numframes 7]);
prox_flex_CR_r = dlmread('Anna_standing_Tarms.htr','\t', [363+49*numframes 1 361+50*numframes 7]);
prox_dev_CR_r = dlmread('Anna_standing_Tarms.htr','\t', [365+50*numframes 1 363+51*numframes 7]);
dist_flex_CR_r = dlmread('Anna_standing_Tarms.htr','\t', [367+51*numframes 1 365+52*numframes 7]);
dist_dev_CR_r = dlmread('Anna_standing_Tarms.htr','\t', [369+52*numframes 1 367+53*numframes 7]);
prox_carpals_r = dlmread('Anna_standing_Tarms.htr','\t', [371+53*numframes 1 369+54*numframes 7]);
dist_carpals_r = dlmread('Anna_standing_Tarms.htr','\t', [373+54*numframes 1 371+55*numframes 7]);
scaph_aux1_r = dlmread('Anna_standing_Tarms.htr','\t', [375+55*numframes 1 373+56*numframes 7]);
scaph_aux2_r = dlmread('Anna_standing_Tarms.htr','\t', [377+56*numframes 1 375+57*numframes 7]);
trpzm_aux1_r = dlmread('Anna_standing_Tarms.htr','\t', [379+57*numframes 1 377+58*numframes 7]);
trpzm_aux2_r = dlmread('Anna_standing_Tarms.htr','\t', [381+58*numframes 1 379+59*numframes 7]);
trpzd_aux1_r = dlmread('Anna_standing_Tarms.htr','\t', [383+59*numframes 1 381+60*numframes 7]);
cap_aux1_r = dlmread('Anna_standing_Tarms.htr','\t', [385+60*numframes 1 383+61*numframes 7]);
cap_aux2_r = dlmread('Anna_standing_Tarms.htr','\t', [387+61*numframes 1 385+62*numframes 7]);
ham_aux1_r = dlmread('Anna_standing_Tarms.htr','\t', [389+62*numframes 1 387+63*numframes 7]);
carp_metacarp_r = dlmread('Anna_standing_Tarms.htr','\t', [391+63*numframes 1 389+64*numframes 7]);
carp_thumb_r = dlmread('Anna_standing_Tarms.htr','\t', [393+64*numframes 1 391+65*numframes 7]);
metacarpal2_r = dlmread('Anna_standing_Tarms.htr','\t', [395+65*numframes 1 393+66*numframes 7]);
index_1_r = dlmread('Anna_standing_Tarms.htr','\t', [397+66*numframes 1 395+67*numframes 7]);
index_2_r = dlmread('Anna_standing_Tarms.htr','\t', [399+67*numframes 1 397+68*numframes 7]);
index_3_r = dlmread('Anna_standing_Tarms.htr','\t', [401+68*numframes 1 399+69*numframes 7]);
metacarpal3_r = dlmread('Anna_standing_Tarms.htr','\t', [403+69*numframes 1 401+70*numframes 7]);
middle_1_r = dlmread('Anna_standing_Tarms.htr','\t', [405+70*numframes 1 403+71*numframes 7]);
middle_2_r = dlmread('Anna_standing_Tarms.htr','\t', [407+71*numframes 1 405+72*numframes 7]);
middle_3_r = dlmread('Anna_standing_Tarms.htr','\t', [409+72*numframes 1 407+73*numframes 7]);
metacarpal4_r = dlmread('Anna_standing_Tarms.htr','\t', [411+73*numframes 1 409+74*numframes 7]);
ring_1_r = dlmread('Anna_standing_Tarms.htr','\t', [413+74*numframes 1 411+75*numframes 7]);
ring_2_r = dlmread('Anna_standing_Tarms.htr','\t', [415+75*numframes 1 413+76*numframes 7]);
ring_3_r = dlmread('Anna_standing_Tarms.htr','\t', [417+76*numframes 1 415+77*numframes 7]);
metacarpal5_r = dlmread('Anna_standing_Tarms.htr','\t', [419+77*numframes 1 417+78*numframes 7]);
little_1_r = dlmread('Anna_standing_Tarms.htr','\t', [421+78*numframes 1 419+79*numframes 7]);
little_2_r = dlmread('Anna_standing_Tarms.htr','\t', [423+79*numframes 1 421+80*numframes 7]);
little_3_r = dlmread('Anna_standing_Tarms.htr','\t', [425+80*numframes 1 423+81*numframes 7]);
metacarpal1_r = dlmread('Anna_standing_Tarms.htr','\t', [427+81*numframes 1 425+82*numframes 7]);
thumb_2_r = dlmread('Anna_standing_Tarms.htr','\t', [429+82*numframes 1 427+83*numframes 7]);
thumb_3_r = dlmread('Anna_standing_Tarms.htr','\t', [431+83*numframes 1 429+84*numframes 7]);
mc1_aux1_r = dlmread('Anna_standing_Tarms.htr','\t', [433+84*numframes 1 431+85*numframes 7]);
rotaxis_l = dlmread('Anna_standing_Tarms.htr','\t', [435+85*numframes 1 433+86*numframes 7]);
prox_flex_CR_l = dlmread('Anna_standing_Tarms.htr','\t', [437+86*numframes 1 435+87*numframes 7]);
prox_dev_CR_l = dlmread('Anna_standing_Tarms.htr','\t', [439+87*numframes 1 437+88*numframes 7]);
dist_flex_CR_l = dlmread('Anna_standing_Tarms.htr','\t', [441+88*numframes 1 439+89*numframes 7]);
dist_dev_CR_l = dlmread('Anna_standing_Tarms.htr','\t', [443+89*numframes 1 441+90*numframes 7]);
prox_carpals_l = dlmread('Anna_standing_Tarms.htr','\t', [445+90*numframes 1 443+91*numframes 7]);
dist_carpals_l = dlmread('Anna_standing_Tarms.htr','\t', [447+91*numframes 1 445+92*numframes 7]);
scaph_aux1_l = dlmread('Anna_standing_Tarms.htr','\t', [449+92*numframes 1 447+93*numframes 7]);
scaph_aux2_l = dlmread('Anna_standing_Tarms.htr','\t', [451+93*numframes 1 449+94*numframes 7]);
trpzm_aux1_l = dlmread('Anna_standing_Tarms.htr','\t', [453+94*numframes 1 451+95*numframes 7]);
trpzm_aux2_l = dlmread('Anna_standing_Tarms.htr','\t', [455+95*numframes 1 453+96*numframes 7]);
trpzd_aux1_l = dlmread('Anna_standing_Tarms.htr','\t', [457+96*numframes 1 455+97*numframes 7]);
cap_aux1_l = dlmread('Anna_standing_Tarms.htr','\t', [459+97*numframes 1 457+98*numframes 7]);
cap_aux2_l = dlmread('Anna_standing_Tarms.htr','\t', [461+98*numframes 1 459+99*numframes 7]);
ham_aux1_l = dlmread('Anna_standing_Tarms.htr','\t', [463+99*numframes 1 461+100*numframes 7]);
carp_metacarp_l = dlmread('Anna_standing_Tarms.htr','\t', [465+100*numframes 1 463+101*numframes 7]);
carp_thumb_l = dlmread('Anna_standing_Tarms.htr','\t', [467+101*numframes 1 465+102*numframes 7]);
metacarpal2_l = dlmread('Anna_standing_Tarms.htr','\t', [469+102*numframes 1 467+103*numframes 7]);
index_1_l = dlmread('Anna_standing_Tarms.htr','\t', [471+103*numframes 1 469+104*numframes 7]);
index_2_l = dlmread('Anna_standing_Tarms.htr','\t', [473+104*numframes 1 471+105*numframes 7]);
index_3_l = dlmread('Anna_standing_Tarms.htr','\t', [475+105*numframes 1 473+106*numframes 7]);
metacarpal3_l = dlmread('Anna_standing_Tarms.htr','\t', [477+106*numframes 1 475+107*numframes 7]);
middle_1_l = dlmread('Anna_standing_Tarms.htr','\t', [479+107*numframes 1 477+108*numframes 7]);
middle_2_l = dlmread('Anna_standing_Tarms.htr','\t', [481+108*numframes 1 479+109*numframes 7]);
middle_3_l = dlmread('Anna_standing_Tarms.htr','\t', [483+109*numframes 1 481+110*numframes 7]);
metacarpal4_l = dlmread('Anna_standing_Tarms.htr','\t', [485+110*numframes 1 483+111*numframes 7]);
ring_1_l = dlmread('Anna_standing_Tarms.htr','\t', [487+111*numframes 1 485+112*numframes 7]);
ring_2_l = dlmread('Anna_standing_Tarms.htr','\t', [489+112*numframes 1 487+113*numframes 7]);
ring_3_l = dlmread('Anna_standing_Tarms.htr','\t', [491+113*numframes 1 489+114*numframes 7]);
metacarpal5_l = dlmread('Anna_standing_Tarms.htr','\t', [493+114*numframes 1 491+115*numframes 7]);
little_1_l = dlmread('Anna_standing_Tarms.htr','\t', [495+115*numframes 1 493+116*numframes 7]);
little_2_l = dlmread('Anna_standing_Tarms.htr','\t', [497+116*numframes 1 495+117*numframes 7]);
little_3_l = dlmread('Anna_standing_Tarms.htr','\t', [499+117*numframes 1 497+118*numframes 7]);
metacarpal1_l = dlmread('Anna_standing_Tarms.htr','\t', [501+118*numframes 1 499+119*numframes 7]);
thumb_2_l = dlmread('Anna_standing_Tarms.htr','\t', [503+119*numframes 1 501+120*numframes 7]);
thumb_3_l = dlmread('Anna_standing_Tarms.htr','\t', [505+120*numframes 1 503+121*numframes 7]);
mc1_aux1_l = dlmread('Anna_standing_Tarms.htr','\t', [507+121*numframes 1 505+122*numframes 7]);

save('Anna_standing_Tarms.mat');