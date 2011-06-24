import hmmhelper

type Rope = extern

signature PseudoGenHMM_Algebra(alphabet,answer) {
  answer move_start(answer, answer);
  answer emit_start_A(alphabet);
  answer emit_start_C(alphabet);
  answer emit_start_G(alphabet);
  answer emit_start_U(alphabet);
  answer from_start_to_0(answer);
  answer from_start_to_1(answer);
  answer from_start_to_2(answer);
  answer from_start_to_3(answer);
  answer from_start_to_4(answer);
  answer from_start_to_5(answer);
  answer from_start_to_6(answer);
  answer from_start_to_7(answer);
  answer from_start_to_8(answer);
  answer from_start_to_9(answer);
  answer from_start_to_10(answer);
  answer from_start_to_11(answer);
  answer from_start_to_12(answer);
  answer from_start_to_13(answer);
  answer from_start_to_14(answer);
  answer move_0(answer, answer);
  answer emit_0_A(alphabet);
  answer emit_0_C(alphabet);
  answer emit_0_G(alphabet);
  answer emit_0_U(alphabet);
  answer from_0_to_0(answer);
  answer from_0_to_1(answer);
  answer from_0_to_2(answer);
  answer from_0_to_3(answer);
  answer from_0_to_4(answer);
  answer from_0_to_5(answer);
  answer from_0_to_6(answer);
  answer from_0_to_7(answer);
  answer from_0_to_8(answer);
  answer from_0_to_9(answer);
  answer from_0_to_10(answer);
  answer from_0_to_11(answer);
  answer from_0_to_12(answer);
  answer from_0_to_13(answer);
  answer from_0_to_14(answer);
  answer move_1(answer, answer);
  answer emit_1_A(alphabet);
  answer emit_1_C(alphabet);
  answer emit_1_G(alphabet);
  answer emit_1_U(alphabet);
  answer from_1_to_0(answer);
  answer from_1_to_1(answer);
  answer from_1_to_2(answer);
  answer from_1_to_3(answer);
  answer from_1_to_4(answer);
  answer from_1_to_5(answer);
  answer from_1_to_6(answer);
  answer from_1_to_7(answer);
  answer from_1_to_8(answer);
  answer from_1_to_9(answer);
  answer from_1_to_10(answer);
  answer from_1_to_11(answer);
  answer from_1_to_12(answer);
  answer from_1_to_13(answer);
  answer from_1_to_14(answer);
  answer move_2(answer, answer);
  answer emit_2_A(alphabet);
  answer emit_2_C(alphabet);
  answer emit_2_G(alphabet);
  answer emit_2_U(alphabet);
  answer from_2_to_0(answer);
  answer from_2_to_1(answer);
  answer from_2_to_2(answer);
  answer from_2_to_3(answer);
  answer from_2_to_4(answer);
  answer from_2_to_5(answer);
  answer from_2_to_6(answer);
  answer from_2_to_7(answer);
  answer from_2_to_8(answer);
  answer from_2_to_9(answer);
  answer from_2_to_10(answer);
  answer from_2_to_11(answer);
  answer from_2_to_12(answer);
  answer from_2_to_13(answer);
  answer from_2_to_14(answer);
  answer move_3(answer, answer);
  answer emit_3_A(alphabet);
  answer emit_3_C(alphabet);
  answer emit_3_G(alphabet);
  answer emit_3_U(alphabet);
  answer from_3_to_0(answer);
  answer from_3_to_1(answer);
  answer from_3_to_2(answer);
  answer from_3_to_3(answer);
  answer from_3_to_4(answer);
  answer from_3_to_5(answer);
  answer from_3_to_6(answer);
  answer from_3_to_7(answer);
  answer from_3_to_8(answer);
  answer from_3_to_9(answer);
  answer from_3_to_10(answer);
  answer from_3_to_11(answer);
  answer from_3_to_12(answer);
  answer from_3_to_13(answer);
  answer from_3_to_14(answer);
  answer move_4(answer, answer);
  answer emit_4_A(alphabet);
  answer emit_4_C(alphabet);
  answer emit_4_G(alphabet);
  answer emit_4_U(alphabet);
  answer from_4_to_0(answer);
  answer from_4_to_1(answer);
  answer from_4_to_2(answer);
  answer from_4_to_3(answer);
  answer from_4_to_4(answer);
  answer from_4_to_5(answer);
  answer from_4_to_6(answer);
  answer from_4_to_7(answer);
  answer from_4_to_8(answer);
  answer from_4_to_9(answer);
  answer from_4_to_10(answer);
  answer from_4_to_11(answer);
  answer from_4_to_12(answer);
  answer from_4_to_13(answer);
  answer from_4_to_14(answer);
  answer move_5(answer, answer);
  answer emit_5_A(alphabet);
  answer emit_5_C(alphabet);
  answer emit_5_G(alphabet);
  answer emit_5_U(alphabet);
  answer from_5_to_0(answer);
  answer from_5_to_1(answer);
  answer from_5_to_2(answer);
  answer from_5_to_3(answer);
  answer from_5_to_4(answer);
  answer from_5_to_5(answer);
  answer from_5_to_6(answer);
  answer from_5_to_7(answer);
  answer from_5_to_8(answer);
  answer from_5_to_9(answer);
  answer from_5_to_10(answer);
  answer from_5_to_11(answer);
  answer from_5_to_12(answer);
  answer from_5_to_13(answer);
  answer from_5_to_14(answer);
  answer move_6(answer, answer);
  answer emit_6_A(alphabet);
  answer emit_6_C(alphabet);
  answer emit_6_G(alphabet);
  answer emit_6_U(alphabet);
  answer from_6_to_0(answer);
  answer from_6_to_1(answer);
  answer from_6_to_2(answer);
  answer from_6_to_3(answer);
  answer from_6_to_4(answer);
  answer from_6_to_5(answer);
  answer from_6_to_6(answer);
  answer from_6_to_7(answer);
  answer from_6_to_8(answer);
  answer from_6_to_9(answer);
  answer from_6_to_10(answer);
  answer from_6_to_11(answer);
  answer from_6_to_12(answer);
  answer from_6_to_13(answer);
  answer from_6_to_14(answer);
  answer move_7(answer, answer);
  answer emit_7_A(alphabet);
  answer emit_7_C(alphabet);
  answer emit_7_G(alphabet);
  answer emit_7_U(alphabet);
  answer from_7_to_0(answer);
  answer from_7_to_1(answer);
  answer from_7_to_2(answer);
  answer from_7_to_3(answer);
  answer from_7_to_4(answer);
  answer from_7_to_5(answer);
  answer from_7_to_6(answer);
  answer from_7_to_7(answer);
  answer from_7_to_8(answer);
  answer from_7_to_9(answer);
  answer from_7_to_10(answer);
  answer from_7_to_11(answer);
  answer from_7_to_12(answer);
  answer from_7_to_13(answer);
  answer from_7_to_14(answer);
  answer move_8(answer, answer);
  answer emit_8_A(alphabet);
  answer emit_8_C(alphabet);
  answer emit_8_G(alphabet);
  answer emit_8_U(alphabet);
  answer from_8_to_0(answer);
  answer from_8_to_1(answer);
  answer from_8_to_2(answer);
  answer from_8_to_3(answer);
  answer from_8_to_4(answer);
  answer from_8_to_5(answer);
  answer from_8_to_6(answer);
  answer from_8_to_7(answer);
  answer from_8_to_8(answer);
  answer from_8_to_9(answer);
  answer from_8_to_10(answer);
  answer from_8_to_11(answer);
  answer from_8_to_12(answer);
  answer from_8_to_13(answer);
  answer from_8_to_14(answer);
  answer move_9(answer, answer);
  answer emit_9_A(alphabet);
  answer emit_9_C(alphabet);
  answer emit_9_G(alphabet);
  answer emit_9_U(alphabet);
  answer from_9_to_0(answer);
  answer from_9_to_1(answer);
  answer from_9_to_2(answer);
  answer from_9_to_3(answer);
  answer from_9_to_4(answer);
  answer from_9_to_5(answer);
  answer from_9_to_6(answer);
  answer from_9_to_7(answer);
  answer from_9_to_8(answer);
  answer from_9_to_9(answer);
  answer from_9_to_10(answer);
  answer from_9_to_11(answer);
  answer from_9_to_12(answer);
  answer from_9_to_13(answer);
  answer from_9_to_14(answer);
  answer move_10(answer, answer);
  answer emit_10_A(alphabet);
  answer emit_10_C(alphabet);
  answer emit_10_G(alphabet);
  answer emit_10_U(alphabet);
  answer from_10_to_0(answer);
  answer from_10_to_1(answer);
  answer from_10_to_2(answer);
  answer from_10_to_3(answer);
  answer from_10_to_4(answer);
  answer from_10_to_5(answer);
  answer from_10_to_6(answer);
  answer from_10_to_7(answer);
  answer from_10_to_8(answer);
  answer from_10_to_9(answer);
  answer from_10_to_10(answer);
  answer from_10_to_11(answer);
  answer from_10_to_12(answer);
  answer from_10_to_13(answer);
  answer from_10_to_14(answer);
  answer move_11(answer, answer);
  answer emit_11_A(alphabet);
  answer emit_11_C(alphabet);
  answer emit_11_G(alphabet);
  answer emit_11_U(alphabet);
  answer from_11_to_0(answer);
  answer from_11_to_1(answer);
  answer from_11_to_2(answer);
  answer from_11_to_3(answer);
  answer from_11_to_4(answer);
  answer from_11_to_5(answer);
  answer from_11_to_6(answer);
  answer from_11_to_7(answer);
  answer from_11_to_8(answer);
  answer from_11_to_9(answer);
  answer from_11_to_10(answer);
  answer from_11_to_11(answer);
  answer from_11_to_12(answer);
  answer from_11_to_13(answer);
  answer from_11_to_14(answer);
  answer move_12(answer, answer);
  answer emit_12_A(alphabet);
  answer emit_12_C(alphabet);
  answer emit_12_G(alphabet);
  answer emit_12_U(alphabet);
  answer from_12_to_0(answer);
  answer from_12_to_1(answer);
  answer from_12_to_2(answer);
  answer from_12_to_3(answer);
  answer from_12_to_4(answer);
  answer from_12_to_5(answer);
  answer from_12_to_6(answer);
  answer from_12_to_7(answer);
  answer from_12_to_8(answer);
  answer from_12_to_9(answer);
  answer from_12_to_10(answer);
  answer from_12_to_11(answer);
  answer from_12_to_12(answer);
  answer from_12_to_13(answer);
  answer from_12_to_14(answer);
  answer move_13(answer, answer);
  answer emit_13_A(alphabet);
  answer emit_13_C(alphabet);
  answer emit_13_G(alphabet);
  answer emit_13_U(alphabet);
  answer from_13_to_0(answer);
  answer from_13_to_1(answer);
  answer from_13_to_2(answer);
  answer from_13_to_3(answer);
  answer from_13_to_4(answer);
  answer from_13_to_5(answer);
  answer from_13_to_6(answer);
  answer from_13_to_7(answer);
  answer from_13_to_8(answer);
  answer from_13_to_9(answer);
  answer from_13_to_10(answer);
  answer from_13_to_11(answer);
  answer from_13_to_12(answer);
  answer from_13_to_13(answer);
  answer from_13_to_14(answer);
  answer move_14(answer, answer);
  answer emit_14_A(alphabet);
  answer emit_14_C(alphabet);
  answer emit_14_G(alphabet);
  answer emit_14_U(alphabet);
  answer from_14_to_0(answer);
  answer from_14_to_1(answer);
  answer from_14_to_2(answer);
  answer from_14_to_3(answer);
  answer from_14_to_4(answer);
  answer from_14_to_5(answer);
  answer from_14_to_6(answer);
  answer from_14_to_7(answer);
  answer from_14_to_8(answer);
  answer from_14_to_9(answer);
  answer from_14_to_10(answer);
  answer from_14_to_11(answer);
  answer from_14_to_12(answer);
  answer from_14_to_13(answer);
  answer from_14_to_14(answer);
  answer stop(void);
  choice [answer] h([answer]);
}

algebra count auto count;

algebra enum auto enum;

algebra prob implements PseudoGenHMM_Algebra(alphabet = char, answer = float) {
  float move_start(float e, float t) {
    return e + t;
  }
  float emit_start_A(char a) {
    return -1.38629436111989062;
  }
  float emit_start_C(char a) {
    return -1.38629436111989062;
  }
  float emit_start_G(char a) {
    return -1.38629436111989062;
  }
  float emit_start_U(char a) {
    return -1.38629436111989062;
  }
  float from_start_to_0(float t) {
    return -5.75257263882563451;
  }
  float from_start_to_1(float t) {
    return -5.75257263882563451;
  }
  float from_start_to_2(float t) {
    return -5.75257263882563451;
  }
  float from_start_to_3(float t) {
    return -3.26766598903763263;
  }
  float from_start_to_4(float t) {
    return -1.4218392985393031;
  }
  float from_start_to_5(float t) {
    return -5.75257263882563451;
  }
  float from_start_to_6(float t) {
    return -5.75257263882563451;
  }
  float from_start_to_7(float t) {
    return -3.0445224377234234;
  }
  float from_start_to_8(float t) {
    return -5.75257263882563451;
  }
  float from_start_to_9(float t) {
    return -1.07974380436372595;
  }
  float from_start_to_10(float t) {
    return -5.75257263882563451;
  }
  float from_start_to_11(float t) {
    return -1.80132892024420619;
  }
  float from_start_to_12(float t) {
    return -5.75257263882563451;
  }
  float from_start_to_13(float t) {
    return -5.75257263882563451;
  }
  float from_start_to_14(float t) {
    return -1.96838300490736963;
  }
  float move_0(float e, float t) {
    return e + t;
  }
  float emit_0_A(char a) {
    return -8.71407489954152169;
  }
  float emit_0_C(char a) {
    return -0.676208664831903219;
  }
  float emit_0_G(char a) {
    return -0.711046233156790213;
  }
  float emit_0_U(char a) {
    return -8.71407489954152169;
  }
  float from_0_to_0(float t) {
    return -0.195292677812203428;
  }
  float from_0_to_1(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_2(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_3(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_4(float t) {
    return -1.98128844232350554;
  }
  float from_0_to_5(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_6(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_7(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_8(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_9(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_10(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_11(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_12(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_13(float t) {
    return -8.71588010229645541;
  }
  float from_0_to_14(float t) {
    return -3.28215809874221792;
  }
  float move_1(float e, float t) {
    return e + t;
  }
  float emit_1_A(char a) {
    return -0.640767673210196199;
  }
  float emit_1_C(char a) {
    return -4.27061530199019304;
  }
  float emit_1_G(char a) {
    return -4.43491835328146705;
  }
  float emit_1_U(char a) {
    return -0.804563792433859344;
  }
  float from_1_to_0(float t) {
    return -9.96481780768773485;
  }
  float from_1_to_1(float t) {
    return -0.0198045083231071831;
  }
  float from_1_to_2(float t) {
    return -7.66223271469368917;
  }
  float from_1_to_3(float t) {
    return -8.86620551901962658;
  }
  float from_1_to_4(float t) {
    return -9.96481780768773485;
  }
  float from_1_to_5(float t) {
    return -9.96481780768773485;
  }
  float from_1_to_6(float t) {
    return -8.35537989525363447;
  }
  float from_1_to_7(float t) {
    return -9.96481780768773485;
  }
  float from_1_to_8(float t) {
    return -9.96481780768773485;
  }
  float from_1_to_9(float t) {
    return -4.702127618782848;
  }
  float from_1_to_10(float t) {
    return -9.96481780768773485;
  }
  float from_1_to_11(float t) {
    return -6.38129886923162272;
  }
  float from_1_to_12(float t) {
    return -7.88537626600789679;
  }
  float from_1_to_13(float t) {
    return -5.71632256563837525;
  }
  float from_1_to_14(float t) {
    return -5.51047051143422623;
  }
  float move_2(float e, float t) {
    return e + t;
  }
  float emit_2_A(char a) {
    return -4.93138592244211447;
  }
  float emit_2_C(char a) {
    return -0.722437977481011479;
  }
  float emit_2_G(char a) {
    return -0.686980665644280612;
  }
  float emit_2_U(char a) {
    return -5.49100171037753681;
  }
  float from_2_to_0(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_1(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_2(float t) {
    return -0.313496618965742997;
  }
  float from_2_to_3(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_4(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_5(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_6(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_7(float t) {
    return -1.36311952043357948;
  }
  float from_2_to_8(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_9(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_10(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_11(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_12(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_13(float t) {
    return -6.88857245956535922;
  }
  float from_2_to_14(float t) {
    return -6.88857245956535922;
  }
  float move_3(float e, float t) {
    return e + t;
  }
  float emit_3_A(char a) {
    return -1.90453206116823599;
  }
  float emit_3_C(char a) {
    return -1.03971742158188582;
  }
  float emit_3_G(char a) {
    return -1.04867319584331783;
  }
  float emit_3_U(char a) {
    return -1.91629756933818579;
  }
  float from_3_to_0(float t) {
    return -14.3630184835340903;
  }
  float from_3_to_1(float t) {
    return -11.6549682824318814;
  }
  float from_3_to_2(float t) {
    return -14.3630184835340903;
  }
  float from_3_to_3(float t) {
    return -0.000145186279746866924;
  }
  float from_3_to_4(float t) {
    return -10.4311928508097656;
  }
  float from_3_to_5(float t) {
    return -14.3630184835340903;
  }
  float from_3_to_6(float t) {
    return -14.3630184835340903;
  }
  float from_3_to_7(float t) {
    return -12.5712590143060353;
  }
  float from_3_to_8(float t) {
    return -10.4918174726262008;
  }
  float from_3_to_9(float t) {
    return -14.3630184835340903;
  }
  float from_3_to_10(float t) {
    return -14.3630184835340903;
  }
  float from_3_to_11(float t) {
    return -9.81972370126408679;
  }
  float from_3_to_12(float t) {
    return -14.3630184835340903;
  }
  float from_3_to_13(float t) {
    return -14.3630184835340903;
  }
  float from_3_to_14(float t) {
    return -10.9957226535476145;
  }
  float move_4(float e, float t) {
    return e + t;
  }
  float emit_4_A(char a) {
    return -1.40957492812031223;
  }
  float emit_4_C(char a) {
    return -1.3650960262225803;
  }
  float emit_4_G(char a) {
    return -1.36142860375925708;
  }
  float emit_4_U(char a) {
    return -1.41016750961973845;
  }
  float from_4_to_0(float t) {
    return -15.7907416168893155;
  }
  float from_4_to_1(float t) {
    return -11.0116181237777851;
  }
  float from_4_to_2(float t) {
    return -15.7907416168893155;
  }
  float from_4_to_3(float t) {
    return -11.6963970546672148;
  }
  float from_4_to_4(float t) {
    return -0.000277497006547144574;
  }
  float from_4_to_5(float t) {
    return -15.7907416168893155;
  }
  float from_4_to_6(float t) {
    return -14.4044472557694249;
  }
  float from_4_to_7(float t) {
    return -10.7537890144756884;
  }
  float from_4_to_8(float t) {
    return -15.7907416168893155;
  }
  float from_4_to_9(float t) {
    return -11.1560126286596803;
  }
  float from_4_to_10(float t) {
    return -15.7907416168893155;
  }
  float from_4_to_11(float t) {
    return -15.7907416168893155;
  }
  float from_4_to_12(float t) {
    return -8.86220379872464893;
  }
  float from_4_to_13(float t) {
    return -15.7907416168893155;
  }
  float from_4_to_14(float t) {
    return -9.51409812754767047;
  }
  float move_5(float e, float t) {
    return e + t;
  }
  float emit_5_A(char a) {
    return -1.38629436111989062;
  }
  float emit_5_C(char a) {
    return -1.38629436111989062;
  }
  float emit_5_G(char a) {
    return -1.38629436111989062;
  }
  float emit_5_U(char a) {
    return -1.38629436111989062;
  }
  float from_5_to_0(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_1(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_2(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_3(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_4(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_5(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_6(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_7(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_8(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_9(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_10(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_11(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_12(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_13(float t) {
    return -2.70805020110220957;
  }
  float from_5_to_14(float t) {
    return -2.70805020110220957;
  }
  float move_6(float e, float t) {
    return e + t;
  }
  float emit_6_A(char a) {
    return -3.47351804324178137;
  }
  float emit_6_C(char a) {
    return -4.34898678059567937;
  }
  float emit_6_G(char a) {
    return -0.0612708253930415528;
  }
  float emit_6_U(char a) {
    return -4.16666522380172991;
  }
  float from_6_to_0(float t) {
    return -5.9864520052844384;
  }
  float from_6_to_1(float t) {
    return -4.1946925360563834;
  }
  float from_6_to_2(float t) {
    return -5.9864520052844384;
  }
  float from_6_to_3(float t) {
    return -5.9864520052844384;
  }
  float from_6_to_4(float t) {
    return -4.37701409285033405;
  }
  float from_6_to_5(float t) {
    return -5.9864520052844384;
  }
  float from_6_to_6(float t) {
    return -0.0756553612439103014;
  }
  float from_6_to_7(float t) {
    return -5.2933048247244931;
  }
  float from_6_to_8(float t) {
    return -5.2933048247244931;
  }
  float from_6_to_9(float t) {
    return -5.2933048247244931;
  }
  float from_6_to_10(float t) {
    return -5.9864520052844384;
  }
  float from_6_to_11(float t) {
    return -5.9864520052844384;
  }
  float from_6_to_12(float t) {
    return -5.9864520052844384;
  }
  float from_6_to_13(float t) {
    return -5.9864520052844384;
  }
  float from_6_to_14(float t) {
    return -4.60015764416454779;
  }
  float move_7(float e, float t) {
    return e + t;
  }
  float emit_7_A(char a) {
    return -0.915332391488015641;
  }
  float emit_7_C(char a) {
    return -2.2961095332684373;
  }
  float emit_7_G(char a) {
    return -2.30767762644268697;
  }
  float emit_7_U(char a) {
    return -0.917604640166899725;
  }
  float from_7_to_0(float t) {
    return -12.0713090655030309;
  }
  float from_7_to_1(float t) {
    return -11.9171583856757731;
  }
  float from_7_to_2(float t) {
    return -13.8630685347310862;
  }
  float from_7_to_3(float t) {
    return -11.9171583856757731;
  }
  float from_7_to_4(float t) {
    return -8.83263061333864877;
  }
  float from_7_to_5(float t) {
    return -13.8630685347310862;
  }
  float from_7_to_6(float t) {
    return -11.9171583856757731;
  }
  float from_7_to_7(float t) {
    return -0.000641948646124239746;
  }
  float from_7_to_8(float t) {
    return -13.8630685347310862;
  }
  float from_7_to_9(float t) {
    return -8.24266766901393557;
  }
  float from_7_to_10(float t) {
    return -13.8630685347310862;
  }
  float from_7_to_11(float t) {
    return -13.1699213541711388;
  }
  float from_7_to_12(float t) {
    return -13.8630685347310862;
  }
  float from_7_to_13(float t) {
    return -13.8630685347310862;
  }
  float from_7_to_14(float t) {
    return -8.5207342827662746;
  }
  float move_8(float e, float t) {
    return e + t;
  }
  float emit_8_A(char a) {
    return -3.95124371858142895;
  }
  float emit_8_C(char a) {
    return -0.0594234204708010712;
  }
  float emit_8_G(char a) {
    return -3.95124371858142895;
  }
  float emit_8_U(char a) {
    return -3.95124371858142895;
  }
  float from_8_to_0(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_1(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_2(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_3(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_4(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_5(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_6(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_7(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_8(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_9(float t) {
    return -0.251314428280905792;
  }
  float from_8_to_10(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_11(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_12(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_13(float t) {
    return -4.14313472639153099;
  }
  float from_8_to_14(float t) {
    return -4.14313472639153099;
  }
  float move_9(float e, float t) {
    return e + t;
  }
  float emit_9_A(char a) {
    return -1.19774213489559528;
  }
  float emit_9_C(char a) {
    return -1.61850161877959465;
  }
  float emit_9_G(char a) {
    return -1.63861862761268078;
  }
  float emit_9_U(char a) {
    return -1.18521212914575873;
  }
  float from_9_to_0(float t) {
    return -9.21835003214186871;
  }
  float from_9_to_1(float t) {
    return -16.1881407020434585;
  }
  float from_9_to_2(float t) {
    return -13.2437017228770189;
  }
  float from_9_to_3(float t) {
    return -12.3379931003334001;
  }
  float from_9_to_4(float t) {
    return -16.1881407020434585;
  }
  float from_9_to_5(float t) {
    return -16.1881407020434585;
  }
  float from_9_to_6(float t) {
    return -16.1881407020434585;
  }
  float from_9_to_7(float t) {
    return -10.6747119558784784;
  }
  float from_9_to_8(float t) {
    return -16.1881407020434585;
  }
  float from_9_to_9(float t) {
    return -0.000177908551184823378;
  }
  float from_9_to_10(float t) {
    return -16.1881407020434585;
  }
  float from_9_to_11(float t) {
    return -16.1881407020434585;
  }
  float from_9_to_12(float t) {
    return -14.2422305529881449;
  }
  float from_9_to_13(float t) {
    return -11.040646225230008;
  }
  float from_9_to_14(float t) {
    return -10.3474990446700596;
  }
  float move_10(float e, float t) {
    return e + t;
  }
  float emit_10_A(char a) {
    return -1.38629436111989062;
  }
  float emit_10_C(char a) {
    return -1.38629436111989062;
  }
  float emit_10_G(char a) {
    return -1.38629436111989062;
  }
  float emit_10_U(char a) {
    return -1.38629436111989062;
  }
  float from_10_to_0(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_1(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_2(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_3(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_4(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_5(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_6(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_7(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_8(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_9(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_10(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_11(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_12(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_13(float t) {
    return -2.70805020110220957;
  }
  float from_10_to_14(float t) {
    return -2.70805020110220957;
  }
  float move_11(float e, float t) {
    return e + t;
  }
  float emit_11_A(char a) {
    return -1.70926088941287793;
  }
  float emit_11_C(char a) {
    return -1.14252946059568846;
  }
  float emit_11_G(char a) {
    return -1.14390713988021373;
  }
  float emit_11_U(char a) {
    return -1.70695415525766746;
  }
  float from_11_to_0(float t) {
    return -15.4158084271735025;
  }
  float from_11_to_1(float t) {
    return -13.8063705147393972;
  }
  float from_11_to_2(float t) {
    return -15.4158084271735025;
  }
  float from_11_to_3(float t) {
    return -10.8725136449034943;
  }
  float from_11_to_4(float t) {
    return -9.53527544077279978;
  }
  float from_11_to_5(float t) {
    return -15.4158084271735025;
  }
  float from_11_to_6(float t) {
    return -15.4158084271735025;
  }
  float from_11_to_7(float t) {
    return -15.4158084271735025;
  }
  float from_11_to_8(float t) {
    return -15.4158084271735025;
  }
  float from_11_to_9(float t) {
    return -12.6432197049337188;
  }
  float from_11_to_10(float t) {
    return -15.4158084271735025;
  }
  float from_11_to_11(float t) {
    return -0.000110612458062386171;
  }
  float from_11_to_12(float t) {
    return -15.4158084271735025;
  }
  float from_11_to_13(float t) {
    return -15.4158084271735025;
  }
  float from_11_to_14(float t) {
    return -11.2261536851470771;
  }
  float move_12(float e, float t) {
    return e + t;
  }
  float emit_12_A(char a) {
    return -5.31431373963263531;
  }
  float emit_12_C(char a) {
    return -0.607489899918045255;
  }
  float emit_12_G(char a) {
    return -0.810622722594397607;
  }
  float emit_12_U(char a) {
    return -5.15304559203651397;
  }
  float from_12_to_0(float t) {
    return -9.00454545899658476;
  }
  float from_12_to_1(float t) {
    return -6.80732088166036267;
  }
  float from_12_to_2(float t) {
    return -9.00454545899658476;
  }
  float from_12_to_3(float t) {
    return -9.00454545899658476;
  }
  float from_12_to_4(float t) {
    return -7.39510754656248602;
  }
  float from_12_to_5(float t) {
    return -9.00454545899658476;
  }
  float from_12_to_6(float t) {
    return -9.00454545899658476;
  }
  float from_12_to_7(float t) {
    return -9.00454545899658476;
  }
  float from_12_to_8(float t) {
    return -9.00454545899658476;
  }
  float from_12_to_9(float t) {
    return -2.37915309098863022;
  }
  float from_12_to_10(float t) {
    return -9.00454545899658476;
  }
  float from_12_to_11(float t) {
    return -3.172662981713069;
  }
  float from_12_to_12(float t) {
    return -0.147884521979336602;
  }
  float from_12_to_13(float t) {
    return -9.00454545899658476;
  }
  float from_12_to_14(float t) {
    return -9.00454545899658476;
  }
  float move_13(float e, float t) {
    return e + t;
  }
  float emit_13_A(char a) {
    return -5.49716822529320063;
  }
  float emit_13_C(char a) {
    return -0.684983869920783787;
  }
  float emit_13_G(char a) {
    return -0.718044732181672247;
  }
  float emit_13_U(char a) {
    return -5.49716822529320063;
  }
  float from_13_to_0(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_1(float t) {
    return -0.393769068344972552;
  }
  float from_13_to_2(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_3(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_4(float t) {
    return -1.2927683031090658;
  }
  float from_13_to_5(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_6(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_7(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_8(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_9(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_10(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_11(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_12(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_13(float t) {
    return -5.54126354515842625;
  }
  float from_13_to_14(float t) {
    return -5.54126354515842625;
  }
  float move_14(float e, float t) {
    return e + t;
  }
  float emit_14_A(char a) {
    return -1.05087004891968268;
  }
  float emit_14_C(char a) {
    return -1.90066212134064926;
  }
  float emit_14_G(char a) {
    return -1.87238290380429334;
  }
  float emit_14_U(char a) {
    return -1.05802676259411843;
  }
  float from_14_to_0(float t) {
    return -15.2733555167988436;
  }
  float from_14_to_1(float t) {
    return -10.9039076643318265;
  }
  float from_14_to_2(float t) {
    return -9.86170946494380637;
  }
  float from_14_to_3(float t) {
    return -11.7469949921826842;
  }
  float from_14_to_4(float t) {
    return -9.04681884751138091;
  }
  float from_14_to_5(float t) {
    return -15.2733555167988436;
  }
  float from_14_to_6(float t) {
    return -14.1747432281307354;
  }
  float from_14_to_7(float t) {
    return -15.2733555167988436;
  }
  float from_14_to_8(float t) {
    return -15.2733555167988436;
  }
  float from_14_to_9(float t) {
    return -9.04090750024832299;
  }
  float from_14_to_10(float t) {
    return -15.2733555167988436;
  }
  float from_14_to_11(float t) {
    return -11.0686628974078784;
  }
  float from_14_to_12(float t) {
    return -10.9828960756504553;
  }
  float from_14_to_13(float t) {
    return -15.2733555167988436;
  }
  float from_14_to_14(float t) {
    return -0.000349399709952149677;
  }
  float stop(void) {
    return 0.0;
  }
  choice [float] h([float] i) {
    return list(expsum(i));
  }
}
algebra prob_id extends prob {
  choice [float] h([float] l) {
    return l;
  }
}

algebra pretty implements PseudoGenHMM_Algebra(alphabet = char, answer = Rope) {
  Rope move_start(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_start_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_start_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_start_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_start_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_start_to_0(Rope t) {
    return t;
  }
  Rope from_start_to_1(Rope t) {
    return t;
  }
  Rope from_start_to_2(Rope t) {
    return t;
  }
  Rope from_start_to_3(Rope t) {
    return t;
  }
  Rope from_start_to_4(Rope t) {
    return t;
  }
  Rope from_start_to_5(Rope t) {
    return t;
  }
  Rope from_start_to_6(Rope t) {
    return t;
  }
  Rope from_start_to_7(Rope t) {
    return t;
  }
  Rope from_start_to_8(Rope t) {
    return t;
  }
  Rope from_start_to_9(Rope t) {
    return t;
  }
  Rope from_start_to_10(Rope t) {
    return t;
  }
  Rope from_start_to_11(Rope t) {
    return t;
  }
  Rope from_start_to_12(Rope t) {
    return t;
  }
  Rope from_start_to_13(Rope t) {
    return t;
  }
  Rope from_start_to_14(Rope t) {
    return t;
  }
  Rope move_0(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_0_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_0_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_0_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_0_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_0_to_0(Rope t) {
    return t;
  }
  Rope from_0_to_1(Rope t) {
    return t;
  }
  Rope from_0_to_2(Rope t) {
    return t;
  }
  Rope from_0_to_3(Rope t) {
    return t;
  }
  Rope from_0_to_4(Rope t) {
    return t;
  }
  Rope from_0_to_5(Rope t) {
    return t;
  }
  Rope from_0_to_6(Rope t) {
    return t;
  }
  Rope from_0_to_7(Rope t) {
    return t;
  }
  Rope from_0_to_8(Rope t) {
    return t;
  }
  Rope from_0_to_9(Rope t) {
    return t;
  }
  Rope from_0_to_10(Rope t) {
    return t;
  }
  Rope from_0_to_11(Rope t) {
    return t;
  }
  Rope from_0_to_12(Rope t) {
    return t;
  }
  Rope from_0_to_13(Rope t) {
    return t;
  }
  Rope from_0_to_14(Rope t) {
    return t;
  }
  Rope move_1(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_1_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_1_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_1_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_1_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_1_to_0(Rope t) {
    return t;
  }
  Rope from_1_to_1(Rope t) {
    return t;
  }
  Rope from_1_to_2(Rope t) {
    return t;
  }
  Rope from_1_to_3(Rope t) {
    return t;
  }
  Rope from_1_to_4(Rope t) {
    return t;
  }
  Rope from_1_to_5(Rope t) {
    return t;
  }
  Rope from_1_to_6(Rope t) {
    return t;
  }
  Rope from_1_to_7(Rope t) {
    return t;
  }
  Rope from_1_to_8(Rope t) {
    return t;
  }
  Rope from_1_to_9(Rope t) {
    return t;
  }
  Rope from_1_to_10(Rope t) {
    return t;
  }
  Rope from_1_to_11(Rope t) {
    return t;
  }
  Rope from_1_to_12(Rope t) {
    return t;
  }
  Rope from_1_to_13(Rope t) {
    return t;
  }
  Rope from_1_to_14(Rope t) {
    return t;
  }
  Rope move_2(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_2_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_2_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_2_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_2_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_2_to_0(Rope t) {
    return t;
  }
  Rope from_2_to_1(Rope t) {
    return t;
  }
  Rope from_2_to_2(Rope t) {
    return t;
  }
  Rope from_2_to_3(Rope t) {
    return t;
  }
  Rope from_2_to_4(Rope t) {
    return t;
  }
  Rope from_2_to_5(Rope t) {
    return t;
  }
  Rope from_2_to_6(Rope t) {
    return t;
  }
  Rope from_2_to_7(Rope t) {
    return t;
  }
  Rope from_2_to_8(Rope t) {
    return t;
  }
  Rope from_2_to_9(Rope t) {
    return t;
  }
  Rope from_2_to_10(Rope t) {
    return t;
  }
  Rope from_2_to_11(Rope t) {
    return t;
  }
  Rope from_2_to_12(Rope t) {
    return t;
  }
  Rope from_2_to_13(Rope t) {
    return t;
  }
  Rope from_2_to_14(Rope t) {
    return t;
  }
  Rope move_3(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_3_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_3_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_3_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_3_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_3_to_0(Rope t) {
    return t;
  }
  Rope from_3_to_1(Rope t) {
    return t;
  }
  Rope from_3_to_2(Rope t) {
    return t;
  }
  Rope from_3_to_3(Rope t) {
    return t;
  }
  Rope from_3_to_4(Rope t) {
    return t;
  }
  Rope from_3_to_5(Rope t) {
    return t;
  }
  Rope from_3_to_6(Rope t) {
    return t;
  }
  Rope from_3_to_7(Rope t) {
    return t;
  }
  Rope from_3_to_8(Rope t) {
    return t;
  }
  Rope from_3_to_9(Rope t) {
    return t;
  }
  Rope from_3_to_10(Rope t) {
    return t;
  }
  Rope from_3_to_11(Rope t) {
    return t;
  }
  Rope from_3_to_12(Rope t) {
    return t;
  }
  Rope from_3_to_13(Rope t) {
    return t;
  }
  Rope from_3_to_14(Rope t) {
    return t;
  }
  Rope move_4(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_4_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_4_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_4_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_4_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_4_to_0(Rope t) {
    return t;
  }
  Rope from_4_to_1(Rope t) {
    return t;
  }
  Rope from_4_to_2(Rope t) {
    return t;
  }
  Rope from_4_to_3(Rope t) {
    return t;
  }
  Rope from_4_to_4(Rope t) {
    return t;
  }
  Rope from_4_to_5(Rope t) {
    return t;
  }
  Rope from_4_to_6(Rope t) {
    return t;
  }
  Rope from_4_to_7(Rope t) {
    return t;
  }
  Rope from_4_to_8(Rope t) {
    return t;
  }
  Rope from_4_to_9(Rope t) {
    return t;
  }
  Rope from_4_to_10(Rope t) {
    return t;
  }
  Rope from_4_to_11(Rope t) {
    return t;
  }
  Rope from_4_to_12(Rope t) {
    return t;
  }
  Rope from_4_to_13(Rope t) {
    return t;
  }
  Rope from_4_to_14(Rope t) {
    return t;
  }
  Rope move_5(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_5_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_5_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_5_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_5_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_5_to_0(Rope t) {
    return t;
  }
  Rope from_5_to_1(Rope t) {
    return t;
  }
  Rope from_5_to_2(Rope t) {
    return t;
  }
  Rope from_5_to_3(Rope t) {
    return t;
  }
  Rope from_5_to_4(Rope t) {
    return t;
  }
  Rope from_5_to_5(Rope t) {
    return t;
  }
  Rope from_5_to_6(Rope t) {
    return t;
  }
  Rope from_5_to_7(Rope t) {
    return t;
  }
  Rope from_5_to_8(Rope t) {
    return t;
  }
  Rope from_5_to_9(Rope t) {
    return t;
  }
  Rope from_5_to_10(Rope t) {
    return t;
  }
  Rope from_5_to_11(Rope t) {
    return t;
  }
  Rope from_5_to_12(Rope t) {
    return t;
  }
  Rope from_5_to_13(Rope t) {
    return t;
  }
  Rope from_5_to_14(Rope t) {
    return t;
  }
  Rope move_6(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_6_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_6_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_6_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_6_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_6_to_0(Rope t) {
    return t;
  }
  Rope from_6_to_1(Rope t) {
    return t;
  }
  Rope from_6_to_2(Rope t) {
    return t;
  }
  Rope from_6_to_3(Rope t) {
    return t;
  }
  Rope from_6_to_4(Rope t) {
    return t;
  }
  Rope from_6_to_5(Rope t) {
    return t;
  }
  Rope from_6_to_6(Rope t) {
    return t;
  }
  Rope from_6_to_7(Rope t) {
    return t;
  }
  Rope from_6_to_8(Rope t) {
    return t;
  }
  Rope from_6_to_9(Rope t) {
    return t;
  }
  Rope from_6_to_10(Rope t) {
    return t;
  }
  Rope from_6_to_11(Rope t) {
    return t;
  }
  Rope from_6_to_12(Rope t) {
    return t;
  }
  Rope from_6_to_13(Rope t) {
    return t;
  }
  Rope from_6_to_14(Rope t) {
    return t;
  }
  Rope move_7(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_7_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_7_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_7_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_7_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_7_to_0(Rope t) {
    return t;
  }
  Rope from_7_to_1(Rope t) {
    return t;
  }
  Rope from_7_to_2(Rope t) {
    return t;
  }
  Rope from_7_to_3(Rope t) {
    return t;
  }
  Rope from_7_to_4(Rope t) {
    return t;
  }
  Rope from_7_to_5(Rope t) {
    return t;
  }
  Rope from_7_to_6(Rope t) {
    return t;
  }
  Rope from_7_to_7(Rope t) {
    return t;
  }
  Rope from_7_to_8(Rope t) {
    return t;
  }
  Rope from_7_to_9(Rope t) {
    return t;
  }
  Rope from_7_to_10(Rope t) {
    return t;
  }
  Rope from_7_to_11(Rope t) {
    return t;
  }
  Rope from_7_to_12(Rope t) {
    return t;
  }
  Rope from_7_to_13(Rope t) {
    return t;
  }
  Rope from_7_to_14(Rope t) {
    return t;
  }
  Rope move_8(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_8_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_8_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_8_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_8_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_8_to_0(Rope t) {
    return t;
  }
  Rope from_8_to_1(Rope t) {
    return t;
  }
  Rope from_8_to_2(Rope t) {
    return t;
  }
  Rope from_8_to_3(Rope t) {
    return t;
  }
  Rope from_8_to_4(Rope t) {
    return t;
  }
  Rope from_8_to_5(Rope t) {
    return t;
  }
  Rope from_8_to_6(Rope t) {
    return t;
  }
  Rope from_8_to_7(Rope t) {
    return t;
  }
  Rope from_8_to_8(Rope t) {
    return t;
  }
  Rope from_8_to_9(Rope t) {
    return t;
  }
  Rope from_8_to_10(Rope t) {
    return t;
  }
  Rope from_8_to_11(Rope t) {
    return t;
  }
  Rope from_8_to_12(Rope t) {
    return t;
  }
  Rope from_8_to_13(Rope t) {
    return t;
  }
  Rope from_8_to_14(Rope t) {
    return t;
  }
  Rope move_9(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_9_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_9_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_9_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_9_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_9_to_0(Rope t) {
    return t;
  }
  Rope from_9_to_1(Rope t) {
    return t;
  }
  Rope from_9_to_2(Rope t) {
    return t;
  }
  Rope from_9_to_3(Rope t) {
    return t;
  }
  Rope from_9_to_4(Rope t) {
    return t;
  }
  Rope from_9_to_5(Rope t) {
    return t;
  }
  Rope from_9_to_6(Rope t) {
    return t;
  }
  Rope from_9_to_7(Rope t) {
    return t;
  }
  Rope from_9_to_8(Rope t) {
    return t;
  }
  Rope from_9_to_9(Rope t) {
    return t;
  }
  Rope from_9_to_10(Rope t) {
    return t;
  }
  Rope from_9_to_11(Rope t) {
    return t;
  }
  Rope from_9_to_12(Rope t) {
    return t;
  }
  Rope from_9_to_13(Rope t) {
    return t;
  }
  Rope from_9_to_14(Rope t) {
    return t;
  }
  Rope move_10(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_10_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_10_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_10_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_10_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_10_to_0(Rope t) {
    return t;
  }
  Rope from_10_to_1(Rope t) {
    return t;
  }
  Rope from_10_to_2(Rope t) {
    return t;
  }
  Rope from_10_to_3(Rope t) {
    return t;
  }
  Rope from_10_to_4(Rope t) {
    return t;
  }
  Rope from_10_to_5(Rope t) {
    return t;
  }
  Rope from_10_to_6(Rope t) {
    return t;
  }
  Rope from_10_to_7(Rope t) {
    return t;
  }
  Rope from_10_to_8(Rope t) {
    return t;
  }
  Rope from_10_to_9(Rope t) {
    return t;
  }
  Rope from_10_to_10(Rope t) {
    return t;
  }
  Rope from_10_to_11(Rope t) {
    return t;
  }
  Rope from_10_to_12(Rope t) {
    return t;
  }
  Rope from_10_to_13(Rope t) {
    return t;
  }
  Rope from_10_to_14(Rope t) {
    return t;
  }
  Rope move_11(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_11_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_11_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_11_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_11_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_11_to_0(Rope t) {
    return t;
  }
  Rope from_11_to_1(Rope t) {
    return t;
  }
  Rope from_11_to_2(Rope t) {
    return t;
  }
  Rope from_11_to_3(Rope t) {
    return t;
  }
  Rope from_11_to_4(Rope t) {
    return t;
  }
  Rope from_11_to_5(Rope t) {
    return t;
  }
  Rope from_11_to_6(Rope t) {
    return t;
  }
  Rope from_11_to_7(Rope t) {
    return t;
  }
  Rope from_11_to_8(Rope t) {
    return t;
  }
  Rope from_11_to_9(Rope t) {
    return t;
  }
  Rope from_11_to_10(Rope t) {
    return t;
  }
  Rope from_11_to_11(Rope t) {
    return t;
  }
  Rope from_11_to_12(Rope t) {
    return t;
  }
  Rope from_11_to_13(Rope t) {
    return t;
  }
  Rope from_11_to_14(Rope t) {
    return t;
  }
  Rope move_12(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_12_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_12_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_12_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_12_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_12_to_0(Rope t) {
    return t;
  }
  Rope from_12_to_1(Rope t) {
    return t;
  }
  Rope from_12_to_2(Rope t) {
    return t;
  }
  Rope from_12_to_3(Rope t) {
    return t;
  }
  Rope from_12_to_4(Rope t) {
    return t;
  }
  Rope from_12_to_5(Rope t) {
    return t;
  }
  Rope from_12_to_6(Rope t) {
    return t;
  }
  Rope from_12_to_7(Rope t) {
    return t;
  }
  Rope from_12_to_8(Rope t) {
    return t;
  }
  Rope from_12_to_9(Rope t) {
    return t;
  }
  Rope from_12_to_10(Rope t) {
    return t;
  }
  Rope from_12_to_11(Rope t) {
    return t;
  }
  Rope from_12_to_12(Rope t) {
    return t;
  }
  Rope from_12_to_13(Rope t) {
    return t;
  }
  Rope from_12_to_14(Rope t) {
    return t;
  }
  Rope move_13(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_13_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_13_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_13_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_13_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_13_to_0(Rope t) {
    return t;
  }
  Rope from_13_to_1(Rope t) {
    return t;
  }
  Rope from_13_to_2(Rope t) {
    return t;
  }
  Rope from_13_to_3(Rope t) {
    return t;
  }
  Rope from_13_to_4(Rope t) {
    return t;
  }
  Rope from_13_to_5(Rope t) {
    return t;
  }
  Rope from_13_to_6(Rope t) {
    return t;
  }
  Rope from_13_to_7(Rope t) {
    return t;
  }
  Rope from_13_to_8(Rope t) {
    return t;
  }
  Rope from_13_to_9(Rope t) {
    return t;
  }
  Rope from_13_to_10(Rope t) {
    return t;
  }
  Rope from_13_to_11(Rope t) {
    return t;
  }
  Rope from_13_to_12(Rope t) {
    return t;
  }
  Rope from_13_to_13(Rope t) {
    return t;
  }
  Rope from_13_to_14(Rope t) {
    return t;
  }
  Rope move_14(Rope e, Rope t) {
    Rope res;
    append(res, e);
    append(res, t);
    return res;
  }
  Rope emit_14_A(char a) {
    Rope res;
    append(res, 'A');
    return res;
  }
  Rope emit_14_C(char a) {
    Rope res;
    append(res, 'C');
    return res;
  }
  Rope emit_14_G(char a) {
    Rope res;
    append(res, 'G');
    return res;
  }
  Rope emit_14_U(char a) {
    Rope res;
    append(res, 'U');
    return res;
  }
  Rope from_14_to_0(Rope t) {
    return t;
  }
  Rope from_14_to_1(Rope t) {
    return t;
  }
  Rope from_14_to_2(Rope t) {
    return t;
  }
  Rope from_14_to_3(Rope t) {
    return t;
  }
  Rope from_14_to_4(Rope t) {
    return t;
  }
  Rope from_14_to_5(Rope t) {
    return t;
  }
  Rope from_14_to_6(Rope t) {
    return t;
  }
  Rope from_14_to_7(Rope t) {
    return t;
  }
  Rope from_14_to_8(Rope t) {
    return t;
  }
  Rope from_14_to_9(Rope t) {
    return t;
  }
  Rope from_14_to_10(Rope t) {
    return t;
  }
  Rope from_14_to_11(Rope t) {
    return t;
  }
  Rope from_14_to_12(Rope t) {
    return t;
  }
  Rope from_14_to_13(Rope t) {
    return t;
  }
  Rope from_14_to_14(Rope t) {
    return t;
  }
  Rope stop(void) {
    Rope res;
    return res;
  }
  choice [Rope] h([Rope] i) {
    return i;
  }
}

grammar pseudoGenHMM uses PseudoGenHMM_Algebra(axiom = state_start) {
  state_start = move_start(emit_start, transit_start) | stop(EMPTY) # h;
  emit_start = emit_start_A(CHAR) | emit_start_C(CHAR) | emit_start_G(CHAR) | emit_start_U(CHAR) # h;
  transit_start = from_start_to_0(state_0) | from_start_to_1(state_1) | from_start_to_2(state_2) | from_start_to_3(state_3) | from_start_to_4(state_4) | from_start_to_5(state_5) | from_start_to_6(state_6) | from_start_to_7(state_7) | from_start_to_8(state_8) | from_start_to_9(state_9) | from_start_to_10(state_10) | from_start_to_11(state_11) | from_start_to_12(state_12) | from_start_to_13(state_13) | from_start_to_14(state_14) # h;

  state_0 = move_0(emit_0, transit_0) | stop(EMPTY) # h;
  emit_0 = emit_0_A(CHAR) | emit_0_C(CHAR) | emit_0_G(CHAR) | emit_0_U(CHAR) # h;
  transit_0 = from_0_to_0(state_0) | from_0_to_1(state_1) | from_0_to_2(state_2) | from_0_to_3(state_3) | from_0_to_4(state_4) | from_0_to_5(state_5) | from_0_to_6(state_6) | from_0_to_7(state_7) | from_0_to_8(state_8) | from_0_to_9(state_9) | from_0_to_10(state_10) | from_0_to_11(state_11) | from_0_to_12(state_12) | from_0_to_13(state_13) | from_0_to_14(state_14) # h;

  state_1 = move_1(emit_1, transit_1) | stop(EMPTY) # h;
  emit_1 = emit_1_A(CHAR) | emit_1_C(CHAR) | emit_1_G(CHAR) | emit_1_U(CHAR) # h;
  transit_1 = from_1_to_0(state_0) | from_1_to_1(state_1) | from_1_to_2(state_2) | from_1_to_3(state_3) | from_1_to_4(state_4) | from_1_to_5(state_5) | from_1_to_6(state_6) | from_1_to_7(state_7) | from_1_to_8(state_8) | from_1_to_9(state_9) | from_1_to_10(state_10) | from_1_to_11(state_11) | from_1_to_12(state_12) | from_1_to_13(state_13) | from_1_to_14(state_14) # h;

  state_2 = move_2(emit_2, transit_2) | stop(EMPTY) # h;
  emit_2 = emit_2_A(CHAR) | emit_2_C(CHAR) | emit_2_G(CHAR) | emit_2_U(CHAR) # h;
  transit_2 = from_2_to_0(state_0) | from_2_to_1(state_1) | from_2_to_2(state_2) | from_2_to_3(state_3) | from_2_to_4(state_4) | from_2_to_5(state_5) | from_2_to_6(state_6) | from_2_to_7(state_7) | from_2_to_8(state_8) | from_2_to_9(state_9) | from_2_to_10(state_10) | from_2_to_11(state_11) | from_2_to_12(state_12) | from_2_to_13(state_13) | from_2_to_14(state_14) # h;

  state_3 = move_3(emit_3, transit_3) | stop(EMPTY) # h;
  emit_3 = emit_3_A(CHAR) | emit_3_C(CHAR) | emit_3_G(CHAR) | emit_3_U(CHAR) # h;
  transit_3 = from_3_to_0(state_0) | from_3_to_1(state_1) | from_3_to_2(state_2) | from_3_to_3(state_3) | from_3_to_4(state_4) | from_3_to_5(state_5) | from_3_to_6(state_6) | from_3_to_7(state_7) | from_3_to_8(state_8) | from_3_to_9(state_9) | from_3_to_10(state_10) | from_3_to_11(state_11) | from_3_to_12(state_12) | from_3_to_13(state_13) | from_3_to_14(state_14) # h;

  state_4 = move_4(emit_4, transit_4) | stop(EMPTY) # h;
  emit_4 = emit_4_A(CHAR) | emit_4_C(CHAR) | emit_4_G(CHAR) | emit_4_U(CHAR) # h;
  transit_4 = from_4_to_0(state_0) | from_4_to_1(state_1) | from_4_to_2(state_2) | from_4_to_3(state_3) | from_4_to_4(state_4) | from_4_to_5(state_5) | from_4_to_6(state_6) | from_4_to_7(state_7) | from_4_to_8(state_8) | from_4_to_9(state_9) | from_4_to_10(state_10) | from_4_to_11(state_11) | from_4_to_12(state_12) | from_4_to_13(state_13) | from_4_to_14(state_14) # h;

  state_5 = move_5(emit_5, transit_5) | stop(EMPTY) # h;
  emit_5 = emit_5_A(CHAR) | emit_5_C(CHAR) | emit_5_G(CHAR) | emit_5_U(CHAR) # h;
  transit_5 = from_5_to_0(state_0) | from_5_to_1(state_1) | from_5_to_2(state_2) | from_5_to_3(state_3) | from_5_to_4(state_4) | from_5_to_5(state_5) | from_5_to_6(state_6) | from_5_to_7(state_7) | from_5_to_8(state_8) | from_5_to_9(state_9) | from_5_to_10(state_10) | from_5_to_11(state_11) | from_5_to_12(state_12) | from_5_to_13(state_13) | from_5_to_14(state_14) # h;

  state_6 = move_6(emit_6, transit_6) | stop(EMPTY) # h;
  emit_6 = emit_6_A(CHAR) | emit_6_C(CHAR) | emit_6_G(CHAR) | emit_6_U(CHAR) # h;
  transit_6 = from_6_to_0(state_0) | from_6_to_1(state_1) | from_6_to_2(state_2) | from_6_to_3(state_3) | from_6_to_4(state_4) | from_6_to_5(state_5) | from_6_to_6(state_6) | from_6_to_7(state_7) | from_6_to_8(state_8) | from_6_to_9(state_9) | from_6_to_10(state_10) | from_6_to_11(state_11) | from_6_to_12(state_12) | from_6_to_13(state_13) | from_6_to_14(state_14) # h;

  state_7 = move_7(emit_7, transit_7) | stop(EMPTY) # h;
  emit_7 = emit_7_A(CHAR) | emit_7_C(CHAR) | emit_7_G(CHAR) | emit_7_U(CHAR) # h;
  transit_7 = from_7_to_0(state_0) | from_7_to_1(state_1) | from_7_to_2(state_2) | from_7_to_3(state_3) | from_7_to_4(state_4) | from_7_to_5(state_5) | from_7_to_6(state_6) | from_7_to_7(state_7) | from_7_to_8(state_8) | from_7_to_9(state_9) | from_7_to_10(state_10) | from_7_to_11(state_11) | from_7_to_12(state_12) | from_7_to_13(state_13) | from_7_to_14(state_14) # h;

  state_8 = move_8(emit_8, transit_8) | stop(EMPTY) # h;
  emit_8 = emit_8_A(CHAR) | emit_8_C(CHAR) | emit_8_G(CHAR) | emit_8_U(CHAR) # h;
  transit_8 = from_8_to_0(state_0) | from_8_to_1(state_1) | from_8_to_2(state_2) | from_8_to_3(state_3) | from_8_to_4(state_4) | from_8_to_5(state_5) | from_8_to_6(state_6) | from_8_to_7(state_7) | from_8_to_8(state_8) | from_8_to_9(state_9) | from_8_to_10(state_10) | from_8_to_11(state_11) | from_8_to_12(state_12) | from_8_to_13(state_13) | from_8_to_14(state_14) # h;

  state_9 = move_9(emit_9, transit_9) | stop(EMPTY) # h;
  emit_9 = emit_9_A(CHAR) | emit_9_C(CHAR) | emit_9_G(CHAR) | emit_9_U(CHAR) # h;
  transit_9 = from_9_to_0(state_0) | from_9_to_1(state_1) | from_9_to_2(state_2) | from_9_to_3(state_3) | from_9_to_4(state_4) | from_9_to_5(state_5) | from_9_to_6(state_6) | from_9_to_7(state_7) | from_9_to_8(state_8) | from_9_to_9(state_9) | from_9_to_10(state_10) | from_9_to_11(state_11) | from_9_to_12(state_12) | from_9_to_13(state_13) | from_9_to_14(state_14) # h;

  state_10 = move_10(emit_10, transit_10) | stop(EMPTY) # h;
  emit_10 = emit_10_A(CHAR) | emit_10_C(CHAR) | emit_10_G(CHAR) | emit_10_U(CHAR) # h;
  transit_10 = from_10_to_0(state_0) | from_10_to_1(state_1) | from_10_to_2(state_2) | from_10_to_3(state_3) | from_10_to_4(state_4) | from_10_to_5(state_5) | from_10_to_6(state_6) | from_10_to_7(state_7) | from_10_to_8(state_8) | from_10_to_9(state_9) | from_10_to_10(state_10) | from_10_to_11(state_11) | from_10_to_12(state_12) | from_10_to_13(state_13) | from_10_to_14(state_14) # h;

  state_11 = move_11(emit_11, transit_11) | stop(EMPTY) # h;
  emit_11 = emit_11_A(CHAR) | emit_11_C(CHAR) | emit_11_G(CHAR) | emit_11_U(CHAR) # h;
  transit_11 = from_11_to_0(state_0) | from_11_to_1(state_1) | from_11_to_2(state_2) | from_11_to_3(state_3) | from_11_to_4(state_4) | from_11_to_5(state_5) | from_11_to_6(state_6) | from_11_to_7(state_7) | from_11_to_8(state_8) | from_11_to_9(state_9) | from_11_to_10(state_10) | from_11_to_11(state_11) | from_11_to_12(state_12) | from_11_to_13(state_13) | from_11_to_14(state_14) # h;

  state_12 = move_12(emit_12, transit_12) | stop(EMPTY) # h;
  emit_12 = emit_12_A(CHAR) | emit_12_C(CHAR) | emit_12_G(CHAR) | emit_12_U(CHAR) # h;
  transit_12 = from_12_to_0(state_0) | from_12_to_1(state_1) | from_12_to_2(state_2) | from_12_to_3(state_3) | from_12_to_4(state_4) | from_12_to_5(state_5) | from_12_to_6(state_6) | from_12_to_7(state_7) | from_12_to_8(state_8) | from_12_to_9(state_9) | from_12_to_10(state_10) | from_12_to_11(state_11) | from_12_to_12(state_12) | from_12_to_13(state_13) | from_12_to_14(state_14) # h;

  state_13 = move_13(emit_13, transit_13) | stop(EMPTY) # h;
  emit_13 = emit_13_A(CHAR) | emit_13_C(CHAR) | emit_13_G(CHAR) | emit_13_U(CHAR) # h;
  transit_13 = from_13_to_0(state_0) | from_13_to_1(state_1) | from_13_to_2(state_2) | from_13_to_3(state_3) | from_13_to_4(state_4) | from_13_to_5(state_5) | from_13_to_6(state_6) | from_13_to_7(state_7) | from_13_to_8(state_8) | from_13_to_9(state_9) | from_13_to_10(state_10) | from_13_to_11(state_11) | from_13_to_12(state_12) | from_13_to_13(state_13) | from_13_to_14(state_14) # h;

  state_14 = move_14(emit_14, transit_14) | stop(EMPTY) # h;
  emit_14 = emit_14_A(CHAR) | emit_14_C(CHAR) | emit_14_G(CHAR) | emit_14_U(CHAR) # h;
  transit_14 = from_14_to_0(state_0) | from_14_to_1(state_1) | from_14_to_2(state_2) | from_14_to_3(state_3) | from_14_to_4(state_4) | from_14_to_5(state_5) | from_14_to_6(state_6) | from_14_to_7(state_7) | from_14_to_8(state_8) | from_14_to_9(state_9) | from_14_to_10(state_10) | from_14_to_11(state_11) | from_14_to_12(state_12) | from_14_to_13(state_13) | from_14_to_14(state_14) # h;
}

instance sample = pseudoGenHMM ( ( (prob | prob_id ) * pretty ) suchthat sample_filter_exp );
