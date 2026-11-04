module emg_feature_engine (clk,
    rst_n,
    sample_valid,
    features_valid,
    fatigue_alert,
    tremor_flag,
    contraction_active,
    muscle_resting,
    noise_flag,
    normal_contraction,
    emg_mav_out,
    fatigue_mav_thresh,
    fatigue_zcr_thresh,
    sample_in,
    zcr_count);
 input clk;
 input rst_n;
 input sample_valid;
 output features_valid;
 output fatigue_alert;
 output tremor_flag;
 output contraction_active;
 output muscle_resting;
 output noise_flag;
 output normal_contraction;
 output [11:0] emg_mav_out;
 input [11:0] fatigue_mav_thresh;
 input [7:0] fatigue_zcr_thresh;
 input [11:0] sample_in;
 output [7:0] zcr_count;

 wire net254;
 wire net255;
 wire net256;
 wire net257;
 wire net258;
 wire net259;
 wire net260;
 wire net261;
 wire net262;
 wire net263;
 wire net264;
 wire net265;
 wire net266;
 wire net267;
 wire net268;
 wire net269;
 wire net270;
 wire net271;
 wire net272;
 wire net273;
 wire net274;
 wire net275;
 wire net276;
 wire net277;
 wire net278;
 wire net279;
 wire net280;
 wire net281;
 wire net282;
 wire net283;
 wire net284;
 wire net285;
 wire net286;
 wire net287;
 wire net288;
 wire net289;
 wire net290;
 wire net291;
 wire net292;
 wire net293;
 wire net294;
 wire net295;
 wire net296;
 wire net297;
 wire net298;
 wire net299;
 wire net300;
 wire net301;
 wire net302;
 wire net303;
 wire net304;
 wire net305;
 wire net306;
 wire net307;
 wire net308;
 wire net309;
 wire net310;
 wire net311;
 wire net312;
 wire net313;
 wire net314;
 wire n0;
 wire n2;
 wire n3;
 wire n4;
 wire n5;
 wire n6;
 wire n7;
 wire n8;
 wire n9;
 wire n10;
 wire n11;
 wire n12;
 wire n13;
 wire n14;
 wire n15;
 wire n16;
 wire n17;
 wire n18;
 wire n19;
 wire n20;
 wire n21;
 wire n22;
 wire n23;
 wire n24;
 wire n25;
 wire n26;
 wire n27;
 wire n28;
 wire n29;
 wire zcr_valid;
 wire n30;
 wire n31;
 wire n32;
 wire n33;
 wire n34;
 wire n35;
 wire n36;
 wire n37;
 wire n38;
 wire n39;
 wire n40;
 wire n41;
 wire n42;
 wire n43;
 wire n44;
 wire n45;
 wire n46;
 wire n47;
 wire n48;
 wire n49;
 wire n50;
 wire n51;
 wire n52;
 wire n53;
 wire n54;
 wire n55;
 wire n56;
 wire n57;
 wire n58;
 wire n59;
 wire n60;
 wire n61;
 wire n62;
 wire n63;
 wire n64;
 wire n65;
 wire n66;
 wire n67;
 wire n68;
 wire \u_zcr.pol ;
 wire n69;
 wire n70;
 wire n71;
 wire n72;
 wire n73;
 wire n74;
 wire n75;
 wire n76;
 wire n77;
 wire n78;
 wire n79;
 wire \u_zcr.pol_valid ;
 wire n80;
 wire n81;
 wire n82;
 wire n83;
 wire n84;
 wire n85;
 wire n86;
 wire n87;
 wire n88;
 wire n89;
 wire n90;
 wire n91;
 wire n92;
 wire n93;
 wire n94;
 wire n95;
 wire n96;
 wire n97;
 wire n98;
 wire n99;
 wire n100;
 wire n101;
 wire n102;
 wire n103;
 wire n104;
 wire n105;
 wire n106;
 wire n107;
 wire n108;
 wire n109;
 wire n110;
 wire n111;
 wire n112;
 wire n113;
 wire n114;
 wire n115;
 wire n116;
 wire n117;
 wire n118;
 wire n119;
 wire n120;
 wire n121;
 wire n122;
 wire n123;
 wire n124;
 wire n125;
 wire n126;
 wire n127;
 wire n128;
 wire n129;
 wire n130;
 wire n131;
 wire n132;
 wire n133;
 wire n134;
 wire n135;
 wire n136;
 wire n137;
 wire n138;
 wire n139;
 wire n140;
 wire \u_class.warm ;
 wire n141;
 wire n142;
 wire \u_class.sat_seen ;
 wire n143;
 wire n144;
 wire n145;
 wire n146;
 wire n147;
 wire n148;
 wire n149;
 wire n150;
 wire n151;
 wire n152;
 wire n153;
 wire n154;
 wire n155;
 wire n156;
 wire n157;
 wire n158;
 wire n159;
 wire n160;
 wire n161;
 wire n162;
 wire n163;
 wire n164;
 wire n165;
 wire n166;
 wire n167;
 wire n168;
 wire n169;
 wire n170;
 wire n171;
 wire n172;
 wire n173;
 wire n174;
 wire n175;
 wire n176;
 wire n177;
 wire n178;
 wire n179;
 wire n180;
 wire n181;
 wire n182;
 wire n183;
 wire n184;
 wire n185;
 wire n186;
 wire n187;
 wire n188;
 wire n189;
 wire n190;
 wire n191;
 wire n192;
 wire n193;
 wire n194;
 wire n195;
 wire n196;
 wire n197;
 wire n198;
 wire n199;
 wire n200;
 wire n201;
 wire n202;
 wire n203;
 wire n204;
 wire n205;
 wire n206;
 wire n207;
 wire n208;
 wire n209;
 wire n210;
 wire n211;
 wire n212;
 wire n213;
 wire n214;
 wire n215;
 wire n216;
 wire n217;
 wire n218;
 wire n219;
 wire n220;
 wire n221;
 wire n222;
 wire n223;
 wire n224;
 wire n225;
 wire n226;
 wire n227;
 wire n228;
 wire n229;
 wire n230;
 wire n231;
 wire n232;
 wire n233;
 wire n234;
 wire n235;
 wire n236;
 wire n237;
 wire n238;
 wire n239;
 wire n240;
 wire n241;
 wire n242;
 wire n243;
 wire n244;
 wire n245;
 wire n246;
 wire n247;
 wire n248;
 wire n249;
 wire n250;
 wire n251;
 wire n252;
 wire n253;
 wire n254;
 wire n255;
 wire n256;
 wire n257;
 wire n258;
 wire n259;
 wire n260;
 wire n261;
 wire n262;
 wire n263;
 wire n264;
 wire n265;
 wire n266;
 wire n267;
 wire n268;
 wire n269;
 wire n270;
 wire n271;
 wire n272;
 wire n273;
 wire n274;
 wire n275;
 wire n276;
 wire n277;
 wire n278;
 wire n279;
 wire n280;
 wire n281;
 wire n282;
 wire n283;
 wire n284;
 wire n285;
 wire n286;
 wire n287;
 wire n288;
 wire n289;
 wire n290;
 wire n291;
 wire n292;
 wire n293;
 wire n294;
 wire n295;
 wire n296;
 wire n297;
 wire n298;
 wire n299;
 wire n300;
 wire n301;
 wire n302;
 wire n303;
 wire n304;
 wire n305;
 wire n306;
 wire n307;
 wire n308;
 wire n309;
 wire n310;
 wire n311;
 wire n312;
 wire n313;
 wire n314;
 wire n315;
 wire n316;
 wire n317;
 wire n318;
 wire n319;
 wire n320;
 wire n321;
 wire n322;
 wire n323;
 wire n324;
 wire n325;
 wire n326;
 wire n327;
 wire n328;
 wire n329;
 wire n330;
 wire n331;
 wire n332;
 wire n333;
 wire n334;
 wire n335;
 wire n336;
 wire n337;
 wire n338;
 wire n339;
 wire n340;
 wire n341;
 wire n342;
 wire n343;
 wire n344;
 wire n345;
 wire n346;
 wire n347;
 wire n348;
 wire n349;
 wire n350;
 wire n351;
 wire n352;
 wire n353;
 wire n354;
 wire n355;
 wire n356;
 wire n357;
 wire n358;
 wire n359;
 wire n360;
 wire n361;
 wire n362;
 wire n363;
 wire n364;
 wire n365;
 wire n366;
 wire n367;
 wire n368;
 wire n369;
 wire n370;
 wire n371;
 wire n372;
 wire n373;
 wire n374;
 wire n375;
 wire n376;
 wire n377;
 wire n378;
 wire n379;
 wire n380;
 wire n381;
 wire n382;
 wire n383;
 wire n384;
 wire n385;
 wire n386;
 wire n387;
 wire n388;
 wire n389;
 wire n390;
 wire n391;
 wire n392;
 wire n393;
 wire n394;
 wire n395;
 wire n396;
 wire n397;
 wire n398;
 wire n399;
 wire n400;
 wire n401;
 wire n402;
 wire n403;
 wire n404;
 wire n405;
 wire n406;
 wire n407;
 wire n408;
 wire n409;
 wire n410;
 wire n411;
 wire n412;
 wire n413;
 wire n414;
 wire n415;
 wire n416;
 wire n417;
 wire n418;
 wire n419;
 wire n420;
 wire n421;
 wire n422;
 wire n423;
 wire n424;
 wire n425;
 wire n426;
 wire n427;
 wire n428;
 wire n429;
 wire n430;
 wire n431;
 wire n432;
 wire n433;
 wire n434;
 wire n435;
 wire n436;
 wire n437;
 wire n438;
 wire n439;
 wire n440;
 wire n441;
 wire n442;
 wire n443;
 wire n444;
 wire n445;
 wire n446;
 wire n447;
 wire n448;
 wire n449;
 wire n450;
 wire n451;
 wire n452;
 wire n453;
 wire n454;
 wire n455;
 wire n456;
 wire n457;
 wire n458;
 wire n459;
 wire n460;
 wire n461;
 wire n462;
 wire n463;
 wire n464;
 wire n465;
 wire n466;
 wire n467;
 wire n468;
 wire n469;
 wire n470;
 wire n471;
 wire n472;
 wire n473;
 wire n474;
 wire n475;
 wire n476;
 wire n477;
 wire n478;
 wire n479;
 wire n480;
 wire n481;
 wire n482;
 wire n483;
 wire n484;
 wire n485;
 wire n486;
 wire n487;
 wire n488;
 wire n489;
 wire n490;
 wire n491;
 wire n492;
 wire n493;
 wire n494;
 wire n495;
 wire n496;
 wire n497;
 wire n498;
 wire n499;
 wire n500;
 wire n501;
 wire n502;
 wire n503;
 wire n504;
 wire n505;
 wire n506;
 wire n507;
 wire n508;
 wire n509;
 wire n510;
 wire n511;
 wire n512;
 wire n513;
 wire n514;
 wire n515;
 wire n516;
 wire n517;
 wire n518;
 wire n519;
 wire n520;
 wire n521;
 wire n522;
 wire n523;
 wire n524;
 wire n525;
 wire n526;
 wire n527;
 wire n528;
 wire n529;
 wire n530;
 wire n531;
 wire n532;
 wire n533;
 wire n534;
 wire n535;
 wire n536;
 wire n537;
 wire n538;
 wire n539;
 wire n540;
 wire n541;
 wire n542;
 wire n543;
 wire n544;
 wire n545;
 wire n546;
 wire n547;
 wire n548;
 wire n549;
 wire n550;
 wire n551;
 wire n552;
 wire n553;
 wire n554;
 wire n555;
 wire n556;
 wire n557;
 wire n558;
 wire n559;
 wire n560;
 wire n561;
 wire n562;
 wire n563;
 wire n564;
 wire n565;
 wire n566;
 wire n567;
 wire n568;
 wire n569;
 wire n570;
 wire n571;
 wire n572;
 wire n573;
 wire n574;
 wire n575;
 wire n576;
 wire n577;
 wire n578;
 wire n579;
 wire n580;
 wire n581;
 wire n582;
 wire n583;
 wire n584;
 wire n585;
 wire n586;
 wire n587;
 wire n588;
 wire n589;
 wire n590;
 wire n591;
 wire n592;
 wire n593;
 wire n594;
 wire n595;
 wire n596;
 wire n597;
 wire n598;
 wire n599;
 wire n600;
 wire n601;
 wire n602;
 wire n603;
 wire n604;
 wire n605;
 wire n606;
 wire n607;
 wire n608;
 wire n609;
 wire n610;
 wire n611;
 wire n612;
 wire n613;
 wire n614;
 wire n615;
 wire n616;
 wire n617;
 wire n618;
 wire n619;
 wire n620;
 wire n621;
 wire n622;
 wire n623;
 wire n624;
 wire n625;
 wire n626;
 wire n627;
 wire n628;
 wire n629;
 wire n630;
 wire n631;
 wire n632;
 wire n633;
 wire n634;
 wire n635;
 wire n636;
 wire n637;
 wire n638;
 wire n639;
 wire n640;
 wire n641;
 wire n642;
 wire n643;
 wire n644;
 wire n645;
 wire n646;
 wire n647;
 wire n648;
 wire n649;
 wire n650;
 wire n651;
 wire n652;
 wire n653;
 wire n654;
 wire n655;
 wire n656;
 wire n657;
 wire n658;
 wire n659;
 wire n660;
 wire n661;
 wire n662;
 wire n663;
 wire n664;
 wire n665;
 wire n666;
 wire n667;
 wire n668;
 wire n669;
 wire n670;
 wire n671;
 wire n672;
 wire n673;
 wire n674;
 wire n675;
 wire n676;
 wire n677;
 wire n678;
 wire n679;
 wire n680;
 wire n681;
 wire n682;
 wire n683;
 wire n684;
 wire n685;
 wire n686;
 wire n687;
 wire n688;
 wire n689;
 wire n690;
 wire n691;
 wire n692;
 wire n693;
 wire n694;
 wire n695;
 wire n696;
 wire n697;
 wire n698;
 wire n699;
 wire n700;
 wire n701;
 wire n702;
 wire n703;
 wire n704;
 wire n705;
 wire n706;
 wire n707;
 wire n708;
 wire n709;
 wire n710;
 wire n711;
 wire n712;
 wire n713;
 wire n714;
 wire n715;
 wire n716;
 wire n717;
 wire n718;
 wire n719;
 wire n720;
 wire n721;
 wire n722;
 wire n723;
 wire n724;
 wire n725;
 wire n726;
 wire n727;
 wire n728;
 wire n729;
 wire n730;
 wire n731;
 wire n732;
 wire n733;
 wire n734;
 wire n735;
 wire n736;
 wire n737;
 wire n738;
 wire n739;
 wire n740;
 wire n741;
 wire n742;
 wire n743;
 wire n744;
 wire n745;
 wire n746;
 wire n747;
 wire n748;
 wire n749;
 wire n750;
 wire n751;
 wire n752;
 wire n753;
 wire n754;
 wire n755;
 wire n756;
 wire n757;
 wire n758;
 wire n759;
 wire n760;
 wire n761;
 wire n762;
 wire n763;
 wire n764;
 wire n765;
 wire n766;
 wire n767;
 wire n768;
 wire n769;
 wire n770;
 wire n771;
 wire n772;
 wire n773;
 wire n774;
 wire n775;
 wire n776;
 wire n777;
 wire n778;
 wire n779;
 wire n780;
 wire n781;
 wire n782;
 wire n783;
 wire n784;
 wire n785;
 wire n786;
 wire n787;
 wire n788;
 wire n789;
 wire n790;
 wire n791;
 wire n792;
 wire n793;
 wire n794;
 wire n795;
 wire n796;
 wire n797;
 wire n798;
 wire n799;
 wire n800;
 wire n801;
 wire n802;
 wire n803;
 wire n804;
 wire n805;
 wire n806;
 wire n807;
 wire n808;
 wire n809;
 wire n810;
 wire n811;
 wire n812;
 wire n813;
 wire n814;
 wire n815;
 wire n816;
 wire n817;
 wire n818;
 wire n819;
 wire n820;
 wire n821;
 wire n822;
 wire n823;
 wire n824;
 wire n825;
 wire n826;
 wire n827;
 wire n828;
 wire n829;
 wire n830;
 wire n831;
 wire n832;
 wire n833;
 wire n834;
 wire n835;
 wire n836;
 wire n837;
 wire n838;
 wire n839;
 wire n840;
 wire n841;
 wire n842;
 wire n843;
 wire n844;
 wire n845;
 wire n846;
 wire n847;
 wire n848;
 wire n849;
 wire n850;
 wire n851;
 wire n852;
 wire n853;
 wire n854;
 wire n855;
 wire n856;
 wire n857;
 wire n858;
 wire n859;
 wire n860;
 wire n861;
 wire n862;
 wire n863;
 wire n864;
 wire n865;
 wire n866;
 wire n867;
 wire n868;
 wire n869;
 wire n870;
 wire n871;
 wire n872;
 wire n873;
 wire n874;
 wire n875;
 wire n876;
 wire n877;
 wire n878;
 wire n879;
 wire n880;
 wire n881;
 wire n882;
 wire n883;
 wire n884;
 wire n885;
 wire n886;
 wire n887;
 wire n888;
 wire n889;
 wire n890;
 wire n891;
 wire n892;
 wire n893;
 wire n894;
 wire n895;
 wire n896;
 wire n897;
 wire n898;
 wire n899;
 wire n900;
 wire n901;
 wire n902;
 wire n903;
 wire n904;
 wire n905;
 wire n906;
 wire n907;
 wire n908;
 wire n909;
 wire n910;
 wire n911;
 wire n912;
 wire n913;
 wire n914;
 wire n915;
 wire n916;
 wire n917;
 wire n918;
 wire n919;
 wire n920;
 wire n921;
 wire n922;
 wire n923;
 wire n924;
 wire n925;
 wire n926;
 wire n927;
 wire n928;
 wire n929;
 wire n930;
 wire n931;
 wire n932;
 wire n933;
 wire n934;
 wire n935;
 wire n936;
 wire n937;
 wire n938;
 wire n939;
 wire n940;
 wire n941;
 wire n942;
 wire n943;
 wire n944;
 wire n945;
 wire n946;
 wire n947;
 wire n948;
 wire n949;
 wire n950;
 wire n951;
 wire n952;
 wire n953;
 wire n954;
 wire n955;
 wire n956;
 wire n957;
 wire n958;
 wire n959;
 wire n960;
 wire n961;
 wire n962;
 wire n963;
 wire n964;
 wire n965;
 wire n966;
 wire n967;
 wire n968;
 wire n969;
 wire n970;
 wire n971;
 wire n972;
 wire n973;
 wire n974;
 wire n975;
 wire n976;
 wire n977;
 wire n978;
 wire n979;
 wire n980;
 wire n981;
 wire n982;
 wire n983;
 wire n984;
 wire n985;
 wire n986;
 wire n987;
 wire n988;
 wire n989;
 wire n990;
 wire n991;
 wire n992;
 wire n993;
 wire n994;
 wire n995;
 wire n996;
 wire n997;
 wire n998;
 wire n999;
 wire n1000;
 wire n1001;
 wire n1002;
 wire n1003;
 wire n1004;
 wire n1005;
 wire n1006;
 wire n1007;
 wire n1008;
 wire n1009;
 wire n1010;
 wire n1011;
 wire n1012;
 wire n1013;
 wire n1014;
 wire n1015;
 wire n1016;
 wire n1017;
 wire n1018;
 wire n1019;
 wire n1020;
 wire n1021;
 wire n1022;
 wire n1023;
 wire n1024;
 wire n1025;
 wire n1026;
 wire n1027;
 wire n1028;
 wire n1029;
 wire n1030;
 wire n1031;
 wire n1032;
 wire n1033;
 wire n1034;
 wire n1035;
 wire n1036;
 wire n1037;
 wire n1038;
 wire n1039;
 wire n1040;
 wire n1041;
 wire n1042;
 wire n1043;
 wire n1044;
 wire n1045;
 wire n1046;
 wire n1047;
 wire n1048;
 wire n1049;
 wire n1050;
 wire n1051;
 wire n1052;
 wire n1053;
 wire n1054;
 wire n1055;
 wire n1056;
 wire n1057;
 wire n1058;
 wire n1059;
 wire n1060;
 wire n1061;
 wire n1062;
 wire n1063;
 wire n1064;
 wire n1065;
 wire n1066;
 wire n1067;
 wire n1068;
 wire n1069;
 wire n1070;
 wire n1071;
 wire n1072;
 wire n1073;
 wire n1074;
 wire n1075;
 wire n1076;
 wire n1077;
 wire n1078;
 wire n1079;
 wire n1080;
 wire n1081;
 wire n1082;
 wire n1083;
 wire n1084;
 wire n1085;
 wire n1086;
 wire n1087;
 wire n1088;
 wire n1089;
 wire n1090;
 wire n1091;
 wire n1092;
 wire n1093;
 wire n1094;
 wire n1095;
 wire n1096;
 wire n1097;
 wire n1098;
 wire n1099;
 wire n1100;
 wire n1101;
 wire n1102;
 wire n1103;
 wire n1104;
 wire n1105;
 wire n1106;
 wire n1107;
 wire n1108;
 wire n1109;
 wire n1110;
 wire n1111;
 wire n1112;
 wire n1113;
 wire n1114;
 wire n1115;
 wire n1116;
 wire n1117;
 wire n1118;
 wire n1119;
 wire n1120;
 wire n1121;
 wire n1122;
 wire n1123;
 wire n1124;
 wire n1125;
 wire n1126;
 wire n1127;
 wire n1128;
 wire n1129;
 wire n1130;
 wire n1131;
 wire n1132;
 wire n1133;
 wire n1134;
 wire n1135;
 wire n1136;
 wire n1137;
 wire n1138;
 wire n1139;
 wire n1140;
 wire n1141;
 wire n1142;
 wire n1143;
 wire n1144;
 wire n1145;
 wire n1146;
 wire n1147;
 wire n1148;
 wire n1149;
 wire n1150;
 wire n1151;
 wire n1152;
 wire n1153;
 wire n1154;
 wire n1155;
 wire n1156;
 wire n1157;
 wire n1158;
 wire n1159;
 wire n1160;
 wire n1161;
 wire n1162;
 wire n1163;
 wire n1164;
 wire n1165;
 wire n1166;
 wire n1167;
 wire n1168;
 wire n1169;
 wire n1170;
 wire n1171;
 wire n1172;
 wire n1173;
 wire n1174;
 wire n1175;
 wire n1176;
 wire n1177;
 wire n1178;
 wire n1179;
 wire n1180;
 wire n1181;
 wire n1182;
 wire n1183;
 wire n1184;
 wire n1185;
 wire n1186;
 wire n1187;
 wire n1188;
 wire n1189;
 wire n1190;
 wire n1191;
 wire n1192;
 wire n1193;
 wire n1194;
 wire n1195;
 wire n1196;
 wire n1197;
 wire n1198;
 wire n1199;
 wire n1200;
 wire n1201;
 wire n1202;
 wire n1203;
 wire n1204;
 wire n1205;
 wire n1206;
 wire n1207;
 wire n1208;
 wire n1209;
 wire n1210;
 wire n1211;
 wire n1212;
 wire n1213;
 wire n1214;
 wire n1215;
 wire n1216;
 wire n1217;
 wire n1218;
 wire n1219;
 wire n1220;
 wire n1221;
 wire n1222;
 wire n1223;
 wire n1224;
 wire n1225;
 wire n1226;
 wire n1227;
 wire n1228;
 wire n1229;
 wire n1230;
 wire n1231;
 wire n1232;
 wire n1233;
 wire n1234;
 wire n1235;
 wire n1236;
 wire n1237;
 wire n1238;
 wire n1239;
 wire n1240;
 wire n1241;
 wire n1242;
 wire n1243;
 wire n1244;
 wire n1245;
 wire n1246;
 wire n1247;
 wire n1248;
 wire n1249;
 wire n1250;
 wire n1251;
 wire n1252;
 wire clknet_4_11_0_clk;
 wire clknet_4_7_0_clk;
 wire clknet_4_4_0_clk;
 wire clknet_4_2_0_clk;
 wire clknet_4_10_0_clk;
 wire clknet_4_1_0_clk;
 wire clknet_4_14_0_clk;
 wire clknet_4_0_0_clk;
 wire clknet_0_clk;
 wire net495;
 wire net492;
 wire clknet_5_10__leaf_clk;
 wire net491;
 wire net463;
 wire net496;
 wire clknet_5_9__leaf_clk;
 wire net460;
 wire net494;
 wire net493;
 wire net462;
 wire net464;
 wire net466;
 wire net459;
 wire net497;
 wire net467;
 wire net465;
 wire net461;
 wire net453;
 wire net451;
 wire net447;
 wire net446;
 wire net;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net120;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net130;
 wire net131;
 wire net132;
 wire net133;
 wire net134;
 wire net135;
 wire net136;
 wire net137;
 wire net138;
 wire net139;
 wire net140;
 wire net141;
 wire net142;
 wire net143;
 wire net144;
 wire net145;
 wire net146;
 wire net147;
 wire net148;
 wire net149;
 wire net150;
 wire net151;
 wire net152;
 wire net153;
 wire net154;
 wire net155;
 wire net156;
 wire net157;
 wire net158;
 wire net159;
 wire net160;
 wire net161;
 wire net162;
 wire net163;
 wire net164;
 wire net165;
 wire net166;
 wire net167;
 wire net168;
 wire net169;
 wire net170;
 wire net171;
 wire net172;
 wire net173;
 wire net174;
 wire net175;
 wire net176;
 wire net177;
 wire net178;
 wire net179;
 wire net180;
 wire net181;
 wire net182;
 wire net183;
 wire net184;
 wire net185;
 wire net186;
 wire net187;
 wire net188;
 wire net189;
 wire net190;
 wire net191;
 wire net192;
 wire net193;
 wire net194;
 wire net195;
 wire net196;
 wire net197;
 wire net198;
 wire net199;
 wire net200;
 wire net201;
 wire net202;
 wire net203;
 wire net204;
 wire net205;
 wire net206;
 wire net207;
 wire net208;
 wire net209;
 wire net210;
 wire net211;
 wire net212;
 wire net213;
 wire net214;
 wire net215;
 wire net216;
 wire net217;
 wire net218;
 wire net219;
 wire net220;
 wire net221;
 wire net222;
 wire net223;
 wire net224;
 wire net225;
 wire net226;
 wire net227;
 wire net228;
 wire net229;
 wire net230;
 wire net231;
 wire net232;
 wire net233;
 wire net234;
 wire net235;
 wire net236;
 wire net237;
 wire net238;
 wire net239;
 wire net240;
 wire net241;
 wire net242;
 wire net243;
 wire net244;
 wire net245;
 wire net246;
 wire net247;
 wire net248;
 wire net249;
 wire net250;
 wire net251;
 wire net252;
 wire net253;
 wire clknet_4_5_0_clk;
 wire clknet_4_6_0_clk;
 wire clknet_4_3_0_clk;
 wire clknet_4_9_0_clk;
 wire clknet_4_8_0_clk;
 wire net490;
 wire clknet_4_13_0_clk;
 wire clknet_4_12_0_clk;
 wire net487;
 wire net478;
 wire net477;
 wire net486;
 wire net482;
 wire net479;
 wire net481;
 wire net480;
 wire net485;
 wire net484;
 wire net483;
 wire net488;
 wire net489;
 wire net449;
 wire net444;
 wire net448;
 wire net475;
 wire net450;
 wire net474;
 wire net456;
 wire net470;
 wire net469;
 wire net468;
 wire net457;
 wire net458;
 wire net473;
 wire net471;
 wire net472;
 wire net476;
 wire net445;
 wire net452;
 wire net455;
 wire net454;
 wire net498;
 wire net501;
 wire net499;
 wire net500;
 wire clknet_5_8__leaf_clk;
 wire clknet_5_2__leaf_clk;
 wire net503;
 wire net502;
 wire clknet_5_1__leaf_clk;
 wire net504;
 wire clknet_5_0__leaf_clk;
 wire clknet_4_15_0_clk;
 wire net505;
 wire net506;
 wire clknet_5_6__leaf_clk;
 wire clknet_5_5__leaf_clk;
 wire clknet_5_3__leaf_clk;
 wire clknet_5_4__leaf_clk;
 wire clknet_5_7__leaf_clk;
 wire clknet_5_11__leaf_clk;
 wire clknet_5_12__leaf_clk;
 wire clknet_5_13__leaf_clk;
 wire clknet_5_14__leaf_clk;
 wire clknet_5_15__leaf_clk;
 wire clknet_5_16__leaf_clk;
 wire clknet_5_17__leaf_clk;
 wire clknet_5_18__leaf_clk;
 wire clknet_5_19__leaf_clk;
 wire clknet_5_20__leaf_clk;
 wire clknet_5_21__leaf_clk;
 wire clknet_5_22__leaf_clk;
 wire clknet_5_23__leaf_clk;
 wire clknet_5_24__leaf_clk;
 wire clknet_5_25__leaf_clk;
 wire clknet_5_26__leaf_clk;
 wire clknet_5_27__leaf_clk;
 wire clknet_5_28__leaf_clk;
 wire clknet_5_29__leaf_clk;
 wire clknet_5_30__leaf_clk;
 wire clknet_5_31__leaf_clk;
 wire [95:0] taps;
 wire [18:0] \u_class.acc ;
 wire [7:0] \u_zcr.cross_cnt ;
 wire [6:0] \u_zcr.win_cnt ;

 sg13g2_buf_16 clkbuf_0_clk (.X(clknet_0_clk),
    .A(clk));
 sg13g2_buf_16 clkbuf_4_0_0_clk (.X(clknet_4_0_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_10_0_clk (.X(clknet_4_10_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_11_0_clk (.X(clknet_4_11_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_12_0_clk (.X(clknet_4_12_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_13_0_clk (.X(clknet_4_13_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_14_0_clk (.X(clknet_4_14_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_15_0_clk (.X(clknet_4_15_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_1_0_clk (.X(clknet_4_1_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_2_0_clk (.X(clknet_4_2_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_3_0_clk (.X(clknet_4_3_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_4_0_clk (.X(clknet_4_4_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_5_0_clk (.X(clknet_4_5_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_6_0_clk (.X(clknet_4_6_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_7_0_clk (.X(clknet_4_7_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_8_0_clk (.X(clknet_4_8_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_9_0_clk (.X(clknet_4_9_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_5_0__f_clk (.X(clknet_5_0__leaf_clk),
    .A(clknet_4_0_0_clk));
 sg13g2_buf_16 clkbuf_5_10__f_clk (.X(clknet_5_10__leaf_clk),
    .A(clknet_4_5_0_clk));
 sg13g2_buf_16 clkbuf_5_11__f_clk (.X(clknet_5_11__leaf_clk),
    .A(clknet_4_5_0_clk));
 sg13g2_buf_16 clkbuf_5_12__f_clk (.X(clknet_5_12__leaf_clk),
    .A(clknet_4_6_0_clk));
 sg13g2_buf_16 clkbuf_5_13__f_clk (.X(clknet_5_13__leaf_clk),
    .A(clknet_4_6_0_clk));
 sg13g2_buf_16 clkbuf_5_14__f_clk (.X(clknet_5_14__leaf_clk),
    .A(clknet_4_7_0_clk));
 sg13g2_buf_16 clkbuf_5_15__f_clk (.X(clknet_5_15__leaf_clk),
    .A(clknet_4_7_0_clk));
 sg13g2_buf_16 clkbuf_5_16__f_clk (.X(clknet_5_16__leaf_clk),
    .A(clknet_4_8_0_clk));
 sg13g2_buf_16 clkbuf_5_17__f_clk (.X(clknet_5_17__leaf_clk),
    .A(clknet_4_8_0_clk));
 sg13g2_buf_16 clkbuf_5_18__f_clk (.X(clknet_5_18__leaf_clk),
    .A(clknet_4_9_0_clk));
 sg13g2_buf_16 clkbuf_5_19__f_clk (.X(clknet_5_19__leaf_clk),
    .A(clknet_4_9_0_clk));
 sg13g2_buf_16 clkbuf_5_1__f_clk (.X(clknet_5_1__leaf_clk),
    .A(clknet_4_0_0_clk));
 sg13g2_buf_16 clkbuf_5_20__f_clk (.X(clknet_5_20__leaf_clk),
    .A(clknet_4_10_0_clk));
 sg13g2_buf_16 clkbuf_5_21__f_clk (.X(clknet_5_21__leaf_clk),
    .A(clknet_4_10_0_clk));
 sg13g2_buf_16 clkbuf_5_22__f_clk (.X(clknet_5_22__leaf_clk),
    .A(clknet_4_11_0_clk));
 sg13g2_buf_16 clkbuf_5_23__f_clk (.X(clknet_5_23__leaf_clk),
    .A(clknet_4_11_0_clk));
 sg13g2_buf_16 clkbuf_5_24__f_clk (.X(clknet_5_24__leaf_clk),
    .A(clknet_4_12_0_clk));
 sg13g2_buf_16 clkbuf_5_25__f_clk (.X(clknet_5_25__leaf_clk),
    .A(clknet_4_12_0_clk));
 sg13g2_buf_16 clkbuf_5_26__f_clk (.X(clknet_5_26__leaf_clk),
    .A(clknet_4_13_0_clk));
 sg13g2_buf_16 clkbuf_5_27__f_clk (.X(clknet_5_27__leaf_clk),
    .A(clknet_4_13_0_clk));
 sg13g2_buf_16 clkbuf_5_28__f_clk (.X(clknet_5_28__leaf_clk),
    .A(clknet_4_14_0_clk));
 sg13g2_buf_16 clkbuf_5_29__f_clk (.X(clknet_5_29__leaf_clk),
    .A(clknet_4_14_0_clk));
 sg13g2_buf_16 clkbuf_5_2__f_clk (.X(clknet_5_2__leaf_clk),
    .A(clknet_4_1_0_clk));
 sg13g2_buf_16 clkbuf_5_30__f_clk (.X(clknet_5_30__leaf_clk),
    .A(clknet_4_15_0_clk));
 sg13g2_buf_16 clkbuf_5_31__f_clk (.X(clknet_5_31__leaf_clk),
    .A(clknet_4_15_0_clk));
 sg13g2_buf_16 clkbuf_5_3__f_clk (.X(clknet_5_3__leaf_clk),
    .A(clknet_4_1_0_clk));
 sg13g2_buf_16 clkbuf_5_4__f_clk (.X(clknet_5_4__leaf_clk),
    .A(clknet_4_2_0_clk));
 sg13g2_buf_16 clkbuf_5_5__f_clk (.X(clknet_5_5__leaf_clk),
    .A(clknet_4_2_0_clk));
 sg13g2_buf_16 clkbuf_5_6__f_clk (.X(clknet_5_6__leaf_clk),
    .A(clknet_4_3_0_clk));
 sg13g2_buf_16 clkbuf_5_7__f_clk (.X(clknet_5_7__leaf_clk),
    .A(clknet_4_3_0_clk));
 sg13g2_buf_16 clkbuf_5_8__f_clk (.X(clknet_5_8__leaf_clk),
    .A(clknet_4_4_0_clk));
 sg13g2_buf_16 clkbuf_5_9__f_clk (.X(clknet_5_9__leaf_clk),
    .A(clknet_4_4_0_clk));
 sg13g2_inv_1 clkload0 (.A(clknet_5_1__leaf_clk));
 sg13g2_inv_1 clkload1 (.A(clknet_5_17__leaf_clk));
 sg13g2_buf_1 input255 (.A(rst_n),
    .X(net254));
 sg13g2_buf_1 input256 (.A(sample_valid),
    .X(net255));
 sg13g2_buf_1 input257 (.A(sample_in[0]),
    .X(net256));
 sg13g2_buf_1 input258 (.A(sample_in[1]),
    .X(net257));
 sg13g2_buf_1 input259 (.A(sample_in[2]),
    .X(net258));
 sg13g2_buf_1 input260 (.A(sample_in[3]),
    .X(net259));
 sg13g2_buf_1 input261 (.A(sample_in[4]),
    .X(net260));
 sg13g2_buf_1 input262 (.A(sample_in[5]),
    .X(net261));
 sg13g2_buf_1 input263 (.A(sample_in[6]),
    .X(net262));
 sg13g2_buf_1 input264 (.A(sample_in[7]),
    .X(net263));
 sg13g2_buf_1 input265 (.A(sample_in[8]),
    .X(net264));
 sg13g2_buf_1 input266 (.A(sample_in[9]),
    .X(net265));
 sg13g2_buf_1 input267 (.A(sample_in[10]),
    .X(net266));
 sg13g2_buf_1 input268 (.A(sample_in[11]),
    .X(net267));
 sg13g2_buf_1 input269 (.A(fatigue_mav_thresh[0]),
    .X(net268));
 sg13g2_buf_1 input270 (.A(fatigue_mav_thresh[1]),
    .X(net269));
 sg13g2_buf_1 input271 (.A(fatigue_mav_thresh[2]),
    .X(net270));
 sg13g2_buf_1 input272 (.A(fatigue_mav_thresh[3]),
    .X(net271));
 sg13g2_buf_1 input273 (.A(fatigue_mav_thresh[4]),
    .X(net272));
 sg13g2_buf_1 input274 (.A(fatigue_mav_thresh[5]),
    .X(net273));
 sg13g2_buf_1 input275 (.A(fatigue_mav_thresh[6]),
    .X(net274));
 sg13g2_buf_1 input276 (.A(fatigue_mav_thresh[7]),
    .X(net275));
 sg13g2_buf_1 input277 (.A(fatigue_mav_thresh[8]),
    .X(net276));
 sg13g2_buf_1 input278 (.A(fatigue_mav_thresh[9]),
    .X(net277));
 sg13g2_buf_1 input279 (.A(fatigue_mav_thresh[10]),
    .X(net278));
 sg13g2_buf_1 input280 (.A(fatigue_mav_thresh[11]),
    .X(net279));
 sg13g2_buf_1 input281 (.A(fatigue_zcr_thresh[0]),
    .X(net280));
 sg13g2_buf_1 input282 (.A(fatigue_zcr_thresh[1]),
    .X(net281));
 sg13g2_buf_1 input283 (.A(fatigue_zcr_thresh[2]),
    .X(net282));
 sg13g2_buf_1 input284 (.A(fatigue_zcr_thresh[3]),
    .X(net283));
 sg13g2_buf_1 input285 (.A(fatigue_zcr_thresh[4]),
    .X(net284));
 sg13g2_buf_1 input286 (.A(fatigue_zcr_thresh[5]),
    .X(net285));
 sg13g2_buf_1 input287 (.A(fatigue_zcr_thresh[6]),
    .X(net286));
 sg13g2_buf_1 input288 (.A(fatigue_zcr_thresh[7]),
    .X(net287));
 sg13g2_buf_1 output289 (.A(net288),
    .X(emg_mav_out[0]));
 sg13g2_buf_1 output290 (.A(net289),
    .X(emg_mav_out[1]));
 sg13g2_buf_1 output291 (.A(net290),
    .X(emg_mav_out[2]));
 sg13g2_buf_1 output292 (.A(net291),
    .X(emg_mav_out[3]));
 sg13g2_buf_1 output293 (.A(net292),
    .X(emg_mav_out[4]));
 sg13g2_buf_1 output294 (.A(net293),
    .X(emg_mav_out[5]));
 sg13g2_buf_1 output295 (.A(net294),
    .X(emg_mav_out[6]));
 sg13g2_buf_1 output296 (.A(net295),
    .X(emg_mav_out[7]));
 sg13g2_buf_1 output297 (.A(net296),
    .X(emg_mav_out[8]));
 sg13g2_buf_1 output298 (.A(net297),
    .X(emg_mav_out[9]));
 sg13g2_buf_1 output299 (.A(net298),
    .X(emg_mav_out[10]));
 sg13g2_buf_1 output300 (.A(net299),
    .X(emg_mav_out[11]));
 sg13g2_buf_1 output301 (.A(net300),
    .X(zcr_count[0]));
 sg13g2_buf_1 output302 (.A(net301),
    .X(zcr_count[1]));
 sg13g2_buf_1 output303 (.A(net302),
    .X(zcr_count[2]));
 sg13g2_buf_1 output304 (.A(net303),
    .X(zcr_count[3]));
 sg13g2_buf_1 output305 (.A(net304),
    .X(zcr_count[4]));
 sg13g2_buf_1 output306 (.A(net305),
    .X(zcr_count[5]));
 sg13g2_buf_1 output307 (.A(net306),
    .X(zcr_count[6]));
 sg13g2_buf_1 output308 (.A(net307),
    .X(zcr_count[7]));
 sg13g2_buf_1 output309 (.A(net308),
    .X(features_valid));
 sg13g2_buf_1 output310 (.A(net309),
    .X(fatigue_alert));
 sg13g2_buf_1 output311 (.A(net310),
    .X(tremor_flag));
 sg13g2_buf_1 output312 (.A(net311),
    .X(contraction_active));
 sg13g2_buf_1 output313 (.A(net312),
    .X(muscle_resting));
 sg13g2_buf_1 output314 (.A(net313),
    .X(noise_flag));
 sg13g2_buf_1 output315 (.A(net314),
    .X(normal_contraction));
 sg13g2_buf_1 place445 (.A(n101),
    .X(net444));
 sg13g2_buf_1 place446 (.A(n30),
    .X(net445));
 sg13g2_buf_1 place447 (.A(n972),
    .X(net446));
 sg13g2_buf_1 place448 (.A(net448),
    .X(net447));
 sg13g2_buf_1 place449 (.A(n33),
    .X(net448));
 sg13g2_buf_1 place450 (.A(n33),
    .X(net449));
 sg13g2_buf_1 place451 (.A(n33),
    .X(net450));
 sg13g2_buf_1 place452 (.A(net452),
    .X(net451));
 sg13g2_buf_1 place453 (.A(n31),
    .X(net452));
 sg13g2_buf_1 place454 (.A(net456),
    .X(net453));
 sg13g2_buf_1 place455 (.A(net456),
    .X(net454));
 sg13g2_buf_1 place456 (.A(net456),
    .X(net455));
 sg13g2_buf_1 place457 (.A(n971),
    .X(net456));
 sg13g2_buf_1 place458 (.A(net458),
    .X(net457));
 sg13g2_buf_1 place459 (.A(n971),
    .X(net458));
 sg13g2_buf_1 place460 (.A(taps[95]),
    .X(net459));
 sg13g2_buf_1 place461 (.A(net461),
    .X(net460));
 sg13g2_buf_1 place462 (.A(n32),
    .X(net461));
 sg13g2_buf_1 place463 (.A(net463),
    .X(net462));
 sg13g2_buf_1 place464 (.A(net490),
    .X(net463));
 sg13g2_buf_1 place465 (.A(net466),
    .X(net464));
 sg13g2_buf_1 place466 (.A(net466),
    .X(net465));
 sg13g2_buf_1 place467 (.A(net490),
    .X(net466));
 sg13g2_buf_1 place468 (.A(net472),
    .X(net467));
 sg13g2_buf_1 place469 (.A(net469),
    .X(net468));
 sg13g2_buf_1 place470 (.A(net472),
    .X(net469));
 sg13g2_buf_1 place471 (.A(net471),
    .X(net470));
 sg13g2_buf_1 place472 (.A(net472),
    .X(net471));
 sg13g2_buf_1 place473 (.A(net483),
    .X(net472));
 sg13g2_buf_1 place474 (.A(net474),
    .X(net473));
 sg13g2_buf_1 place475 (.A(net475),
    .X(net474));
 sg13g2_buf_1 place476 (.A(net482),
    .X(net475));
 sg13g2_buf_1 place477 (.A(net482),
    .X(net476));
 sg13g2_buf_1 place478 (.A(net481),
    .X(net477));
 sg13g2_buf_1 place479 (.A(net481),
    .X(net478));
 sg13g2_buf_1 place480 (.A(net480),
    .X(net479));
 sg13g2_buf_1 place481 (.A(net481),
    .X(net480));
 sg13g2_buf_1 place482 (.A(net482),
    .X(net481));
 sg13g2_buf_1 place483 (.A(net483),
    .X(net482));
 sg13g2_buf_1 place484 (.A(net489),
    .X(net483));
 sg13g2_buf_1 place485 (.A(net488),
    .X(net484));
 sg13g2_buf_1 place486 (.A(net488),
    .X(net485));
 sg13g2_buf_1 place487 (.A(net487),
    .X(net486));
 sg13g2_buf_1 place488 (.A(net488),
    .X(net487));
 sg13g2_buf_1 place489 (.A(net489),
    .X(net488));
 sg13g2_buf_1 place490 (.A(net490),
    .X(net489));
 sg13g2_buf_1 place491 (.A(net255),
    .X(net490));
 sg13g2_buf_1 place492 (.A(net495),
    .X(net491));
 sg13g2_buf_1 place493 (.A(net495),
    .X(net492));
 sg13g2_buf_1 place494 (.A(net494),
    .X(net493));
 sg13g2_buf_1 place495 (.A(net495),
    .X(net494));
 sg13g2_buf_1 place496 (.A(net505),
    .X(net495));
 sg13g2_buf_1 place497 (.A(net504),
    .X(net496));
 sg13g2_buf_1 place498 (.A(net498),
    .X(net497));
 sg13g2_buf_1 place499 (.A(net503),
    .X(net498));
 sg13g2_buf_1 place500 (.A(net500),
    .X(net499));
 sg13g2_buf_1 place501 (.A(net503),
    .X(net500));
 sg13g2_buf_1 place502 (.A(net502),
    .X(net501));
 sg13g2_buf_1 place503 (.A(net503),
    .X(net502));
 sg13g2_buf_1 place504 (.A(net504),
    .X(net503));
 sg13g2_buf_1 place505 (.A(net505),
    .X(net504));
 sg13g2_buf_1 place506 (.A(net254),
    .X(net505));
 sg13g2_buf_1 place507 (.A(net254),
    .X(net506));
 sg13g2_dfrbpq_1 u0 (.RESET_B(net),
    .D(n0),
    .Q(net288),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi u0_93 (.L_HI(net));
 sg13g2_dfrbpq_1 u1 (.RESET_B(net93),
    .D(n2),
    .Q(net289),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_dfrbpq_1 u10 (.RESET_B(net94),
    .D(n11),
    .Q(net298),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_dfrbpq_1 u100 (.RESET_B(net95),
    .D(n88),
    .Q(\u_zcr.win_cnt [5]),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_nor2_2 u1000 (.A(net458),
    .B(n31),
    .Y(n972));
 sg13g2_a22oi_1 u1001 (.Y(n973),
    .B1(n927),
    .B2(net446),
    .A2(n970),
    .A1(\u_class.acc [7]));
 sg13g2_o21ai_1 u1002 (.B1(n973),
    .Y(n28),
    .A1(n220),
    .A2(n967));
 sg13g2_nor2_2 u1003 (.A(net458),
    .B(n969),
    .Y(n974));
 sg13g2_a21oi_1 u1004 (.A1(net450),
    .A2(\u_class.acc [8]),
    .Y(n975),
    .B1(n974));
 sg13g2_a21o_1 u1005 (.A2(n927),
    .A1(\u_class.acc [7]),
    .B1(n966),
    .X(n976));
 sg13g2_o21ai_1 u1006 (.B1(n976),
    .Y(n977),
    .A1(\u_class.acc [7]),
    .A2(n927));
 sg13g2_nand2_1 u1007 (.Y(n978),
    .A(n519),
    .B(n526));
 sg13g2_or4_1 u1008 (.A(n294),
    .B(n242),
    .C(taps[9]),
    .D(taps[10]),
    .X(n979));
 sg13g2_or4_1 u1009 (.A(n290),
    .B(n266),
    .C(taps[21]),
    .D(taps[22]),
    .X(n980));
 sg13g2_tiehi u100_96 (.L_HI(net95));
 sg13g2_dfrbpq_1 u101 (.RESET_B(net96),
    .D(n89),
    .Q(\u_zcr.win_cnt [4]),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_nor2_1 u1010 (.A(n979),
    .B(n980),
    .Y(n981));
 sg13g2_a21oi_1 u1011 (.A1(n979),
    .A2(n980),
    .Y(n982),
    .B1(n981));
 sg13g2_a21oi_1 u1012 (.A1(n522),
    .A2(n525),
    .Y(n983),
    .B1(n982));
 sg13g2_nand2_1 u1013 (.Y(n984),
    .A(n978),
    .B(n983));
 sg13g2_nand2_1 u1014 (.Y(n985),
    .A(n529),
    .B(n536));
 sg13g2_or4_1 u1015 (.A(n403),
    .B(n359),
    .C(taps[33]),
    .D(taps[34]),
    .X(n986));
 sg13g2_or4_1 u1016 (.A(n406),
    .B(n383),
    .C(taps[45]),
    .D(taps[46]),
    .X(n987));
 sg13g2_nor2_1 u1017 (.A(n986),
    .B(n987),
    .Y(n988));
 sg13g2_a21oi_1 u1018 (.A1(n986),
    .A2(n987),
    .Y(n989),
    .B1(n988));
 sg13g2_a21oi_1 u1019 (.A1(n532),
    .A2(n535),
    .Y(n990),
    .B1(n989));
 sg13g2_tiehi u101_97 (.L_HI(net96));
 sg13g2_dfrbpq_1 u102 (.RESET_B(net97),
    .D(n90),
    .Q(\u_zcr.win_cnt [3]),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_nand2_1 u1020 (.Y(n991),
    .A(n985),
    .B(n990));
 sg13g2_nor2_1 u1021 (.A(n984),
    .B(n991),
    .Y(n992));
 sg13g2_and2_1 u1022 (.A(n984),
    .B(n991),
    .X(n993));
 sg13g2_nor2_1 u1023 (.A(n992),
    .B(n993),
    .Y(n994));
 sg13g2_a21o_1 u1024 (.A2(n537),
    .A1(n527),
    .B1(n517),
    .X(n995));
 sg13g2_o21ai_1 u1025 (.B1(n995),
    .Y(n996),
    .A1(n527),
    .A2(n537));
 sg13g2_xnor2_1 u1026 (.Y(n997),
    .A(n994),
    .B(n996));
 sg13g2_or4_1 u1027 (.A(n591),
    .B(n642),
    .C(taps[57]),
    .D(taps[58]),
    .X(n998));
 sg13g2_or4_1 u1028 (.A(n594),
    .B(n647),
    .C(taps[69]),
    .D(taps[70]),
    .X(n999));
 sg13g2_nor2_1 u1029 (.A(n998),
    .B(n999),
    .Y(n1000));
 sg13g2_tiehi u102_98 (.L_HI(net97));
 sg13g2_inv_1 u103 (.Y(n91),
    .A(\u_zcr.win_cnt [3]));
 sg13g2_a21oi_1 u1030 (.A1(n998),
    .A2(n999),
    .Y(n1001),
    .B1(n1000));
 sg13g2_a21oi_1 u1031 (.A1(n842),
    .A2(n845),
    .Y(n1002),
    .B1(n1001));
 sg13g2_nand2_1 u1032 (.Y(n1003),
    .A(n848),
    .B(n1002));
 sg13g2_or4_1 u1033 (.A(n712),
    .B(n675),
    .C(taps[81]),
    .D(taps[82]),
    .X(n1004));
 sg13g2_or4_1 u1034 (.A(n721),
    .B(n694),
    .C(taps[93]),
    .D(taps[94]),
    .X(n1005));
 sg13g2_nor2_1 u1035 (.A(n1004),
    .B(n1005),
    .Y(n1006));
 sg13g2_a21oi_1 u1036 (.A1(n1004),
    .A2(n1005),
    .Y(n1007),
    .B1(n1006));
 sg13g2_a21oi_1 u1037 (.A1(n831),
    .A2(n834),
    .Y(n1008),
    .B1(n1007));
 sg13g2_nand2_1 u1038 (.Y(n1009),
    .A(n838),
    .B(n1008));
 sg13g2_xor2_1 u1039 (.B(n1009),
    .A(n1003),
    .X(n1010));
 sg13g2_dfrbpq_1 u104 (.RESET_B(net98),
    .D(n92),
    .Q(\u_zcr.win_cnt [2]),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_nor2_1 u1040 (.A(n828),
    .B(n851),
    .Y(n1011));
 sg13g2_or2_1 u1041 (.X(n1012),
    .B(n1011),
    .A(n850));
 sg13g2_xnor2_1 u1042 (.Y(n1013),
    .A(n1010),
    .B(n1012));
 sg13g2_nor2_1 u1043 (.A(n997),
    .B(n1013),
    .Y(n1014));
 sg13g2_nand2_1 u1044 (.Y(n1015),
    .A(n997),
    .B(n1013));
 sg13g2_nor2b_1 u1045 (.A(n1014),
    .B_N(n1015),
    .Y(n1016));
 sg13g2_nor2_1 u1046 (.A(n855),
    .B(n926),
    .Y(n1017));
 sg13g2_or2_1 u1047 (.X(n1018),
    .B(n1017),
    .A(n854));
 sg13g2_xnor2_1 u1048 (.Y(n1019),
    .A(n1016),
    .B(n1018));
 sg13g2_nor2_1 u1049 (.A(\u_class.acc [8]),
    .B(n1019),
    .Y(n1020));
 sg13g2_tiehi u104_99 (.L_HI(net98));
 sg13g2_dfrbpq_1 u105 (.RESET_B(net99),
    .D(n93),
    .Q(\u_zcr.win_cnt [1]),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_a21oi_1 u1050 (.A1(\u_class.acc [8]),
    .A2(n1019),
    .Y(n1021),
    .B1(n1020));
 sg13g2_o21ai_1 u1051 (.B1(net465),
    .Y(n1022),
    .A1(n977),
    .A2(n1021));
 sg13g2_a21oi_1 u1052 (.A1(n977),
    .A2(n1021),
    .Y(n1023),
    .B1(n1022));
 sg13g2_nand2_1 u1053 (.Y(n1024),
    .A(net446),
    .B(n1019));
 sg13g2_o21ai_1 u1054 (.B1(n1024),
    .Y(n35),
    .A1(n975),
    .A2(n1023));
 sg13g2_a21oi_1 u1055 (.A1(net450),
    .A2(\u_class.acc [9]),
    .Y(n1025),
    .B1(n974));
 sg13g2_nor2_1 u1056 (.A(n977),
    .B(n1020),
    .Y(n1026));
 sg13g2_a21oi_1 u1057 (.A1(\u_class.acc [8]),
    .A2(n1019),
    .Y(n1027),
    .B1(n1026));
 sg13g2_nor2b_1 u1058 (.A(n996),
    .B_N(n994),
    .Y(n1028));
 sg13g2_xor2_1 u1059 (.B(n988),
    .A(n981),
    .X(n1029));
 sg13g2_tiehi u105_100 (.L_HI(net99));
 sg13g2_dfrbpq_1 u106 (.RESET_B(net100),
    .D(n94),
    .Q(\u_zcr.win_cnt [0]),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_nor3_1 u1060 (.A(n993),
    .B(n1028),
    .C(n1029),
    .Y(n1030));
 sg13g2_or2_1 u1061 (.X(n1031),
    .B(n1006),
    .A(n1000));
 sg13g2_nand2_1 u1062 (.Y(n1032),
    .A(n1000),
    .B(n1006));
 sg13g2_nor2b_1 u1063 (.A(n1012),
    .B_N(n1010),
    .Y(n1033));
 sg13g2_a221oi_1 u1064 (.B2(n1032),
    .C1(n1033),
    .B1(n1031),
    .A1(n1003),
    .Y(n1034),
    .A2(n1009));
 sg13g2_xor2_1 u1065 (.B(n1034),
    .A(n1030),
    .X(n1035));
 sg13g2_o21ai_1 u1066 (.B1(n1015),
    .Y(n1036),
    .A1(n1014),
    .A2(n1018));
 sg13g2_xor2_1 u1067 (.B(n1036),
    .A(n1035),
    .X(n1037));
 sg13g2_nor2_1 u1068 (.A(\u_class.acc [9]),
    .B(n1037),
    .Y(n1038));
 sg13g2_nand2_1 u1069 (.Y(n1039),
    .A(\u_class.acc [9]),
    .B(n1037));
 sg13g2_tiehi u106_101 (.L_HI(net100));
 sg13g2_and3_1 u107 (.X(n95),
    .A(net489),
    .B(\u_zcr.win_cnt [1]),
    .C(\u_zcr.win_cnt [0]));
 sg13g2_nor2b_1 u1070 (.A(n1038),
    .B_N(n1039),
    .Y(n1040));
 sg13g2_o21ai_1 u1071 (.B1(net465),
    .Y(n1041),
    .A1(n1027),
    .A2(n1040));
 sg13g2_a21oi_1 u1072 (.A1(n1027),
    .A2(n1040),
    .Y(n1042),
    .B1(n1041));
 sg13g2_nand2_1 u1073 (.Y(n1043),
    .A(net446),
    .B(n1037));
 sg13g2_o21ai_1 u1074 (.B1(n1043),
    .Y(n38),
    .A1(n1025),
    .A2(n1042));
 sg13g2_nand2_1 u1075 (.Y(n1044),
    .A(n981),
    .B(n988));
 sg13g2_nor2_2 u1076 (.A(n1044),
    .B(n1032),
    .Y(n1045));
 sg13g2_a21o_1 u1077 (.A2(n1032),
    .A1(n1044),
    .B1(n1045),
    .X(n1046));
 sg13g2_o21ai_1 u1078 (.B1(n1046),
    .Y(n1047),
    .A1(n1030),
    .A2(n1034));
 sg13g2_a21o_1 u1079 (.A2(n1036),
    .A1(n1035),
    .B1(n1047),
    .X(n1048));
 sg13g2_nand2_1 u108 (.Y(n96),
    .A(\u_zcr.win_cnt [2]),
    .B(n95));
 sg13g2_xor2_1 u1080 (.B(n1048),
    .A(\u_class.acc [10]),
    .X(n1049));
 sg13g2_a21oi_1 u1081 (.A1(n1027),
    .A2(n1039),
    .Y(n1050),
    .B1(n1038));
 sg13g2_nor2_1 u1082 (.A(n1049),
    .B(n1050),
    .Y(n1051));
 sg13g2_a21o_1 u1083 (.A2(n1050),
    .A1(n1049),
    .B1(n220),
    .X(n1052));
 sg13g2_a22oi_1 u1084 (.Y(n1053),
    .B1(net446),
    .B2(n1048),
    .A2(n970),
    .A1(\u_class.acc [10]));
 sg13g2_o21ai_1 u1085 (.B1(n1053),
    .Y(n41),
    .A1(n1051),
    .A2(n1052));
 sg13g2_a22oi_1 u1086 (.Y(n1054),
    .B1(n1049),
    .B2(n1050),
    .A2(n1048),
    .A1(\u_class.acc [10]));
 sg13g2_nand2_1 u1087 (.Y(n1055),
    .A(\u_class.acc [11]),
    .B(n1045));
 sg13g2_o21ai_1 u1088 (.B1(n1055),
    .Y(n1056),
    .A1(\u_class.acc [11]),
    .A2(n1045));
 sg13g2_a21oi_1 u1089 (.A1(n1054),
    .A2(n1056),
    .Y(n1057),
    .B1(n220));
 sg13g2_nor2_1 u109 (.A(n91),
    .B(n96),
    .Y(n97));
 sg13g2_o21ai_1 u1090 (.B1(n1057),
    .Y(n1058),
    .A1(n1054),
    .A2(n1056));
 sg13g2_a22oi_1 u1091 (.Y(n1059),
    .B1(net446),
    .B2(n1045),
    .A2(n970),
    .A1(\u_class.acc [11]));
 sg13g2_nand2_1 u1092 (.Y(n44),
    .A(n1058),
    .B(n1059));
 sg13g2_o21ai_1 u1093 (.B1(net490),
    .Y(n1060),
    .A1(\u_class.acc [11]),
    .A2(n1045));
 sg13g2_a21oi_2 u1094 (.B1(n1060),
    .Y(n1061),
    .A2(n1055),
    .A1(n1054));
 sg13g2_nor2_1 u1095 (.A(\u_class.acc [12]),
    .B(n1061),
    .Y(n1062));
 sg13g2_a21oi_1 u1096 (.A1(\u_class.acc [12]),
    .A2(n1061),
    .Y(n1063),
    .B1(n969));
 sg13g2_nor2b_1 u1097 (.A(n1062),
    .B_N(n1063),
    .Y(n47));
 sg13g2_a21oi_1 u1098 (.A1(\u_class.acc [12]),
    .A2(n1061),
    .Y(n1064),
    .B1(\u_class.acc [13]));
 sg13g2_nand3_1 u1099 (.B(\u_class.acc [13]),
    .C(n1061),
    .A(\u_class.acc [12]),
    .Y(n1065));
 sg13g2_tiehi u10_95 (.L_HI(net94));
 sg13g2_dfrbpq_1 u11 (.RESET_B(net101),
    .D(n12),
    .Q(net299),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_and2_1 u110 (.A(\u_zcr.win_cnt [4]),
    .B(n97),
    .X(n98));
 sg13g2_nand2_1 u1100 (.Y(n1066),
    .A(net449),
    .B(n1065));
 sg13g2_nor2_1 u1101 (.A(n1064),
    .B(n1066),
    .Y(n50));
 sg13g2_nand2b_1 u1102 (.Y(n1067),
    .B(\u_class.acc [14]),
    .A_N(n1065));
 sg13g2_nand2_1 u1103 (.Y(n1068),
    .A(n33),
    .B(n1067));
 sg13g2_a21oi_1 u1104 (.A1(n54),
    .A2(n1065),
    .Y(n53),
    .B1(n1068));
 sg13g2_and2_1 u1105 (.A(n57),
    .B(n1067),
    .X(n1069));
 sg13g2_nor2_1 u1106 (.A(n57),
    .B(n1067),
    .Y(n1070));
 sg13g2_nor3_1 u1107 (.A(n969),
    .B(n1069),
    .C(n1070),
    .Y(n56));
 sg13g2_nor2_1 u1108 (.A(\u_class.acc [16]),
    .B(n1070),
    .Y(n1071));
 sg13g2_and2_1 u1109 (.A(\u_class.acc [16]),
    .B(n1070),
    .X(n1072));
 sg13g2_and2_1 u111 (.A(\u_zcr.win_cnt [5]),
    .B(n98),
    .X(n99));
 sg13g2_nor3_1 u1110 (.A(n969),
    .B(n1071),
    .C(n1072),
    .Y(n59));
 sg13g2_nor2_1 u1111 (.A(\u_class.acc [17]),
    .B(n1072),
    .Y(n1073));
 sg13g2_nand2_1 u1112 (.Y(n1074),
    .A(\u_class.acc [17]),
    .B(n1072));
 sg13g2_nand2_1 u1113 (.Y(n1075),
    .A(net448),
    .B(n1074));
 sg13g2_nor2_1 u1114 (.A(n1073),
    .B(n1075),
    .Y(n62));
 sg13g2_o21ai_1 u1115 (.B1(net448),
    .Y(n1076),
    .A1(n66),
    .A2(n1074));
 sg13g2_a21oi_1 u1116 (.A1(n66),
    .A2(n1074),
    .Y(n65),
    .B1(n1076));
 sg13g2_and4_1 u1117 (.A(\u_zcr.win_cnt [3]),
    .B(\u_zcr.win_cnt [2]),
    .C(\u_zcr.win_cnt [1]),
    .D(\u_zcr.win_cnt [0]),
    .X(n1077));
 sg13g2_nand4_1 u1118 (.B(\u_zcr.win_cnt [5]),
    .C(\u_zcr.win_cnt [4]),
    .A(\u_zcr.win_cnt [6]),
    .Y(n1078),
    .D(n1077));
 sg13g2_and2_1 u1119 (.A(net487),
    .B(n1078),
    .X(n1079));
 sg13g2_and3_1 u112 (.X(n30),
    .A(net504),
    .B(\u_zcr.win_cnt [6]),
    .C(n99));
 sg13g2_a22oi_1 u1120 (.Y(n1080),
    .B1(n86),
    .B2(n1079),
    .A2(\u_zcr.cross_cnt [0]),
    .A1(net454));
 sg13g2_nor2_1 u1121 (.A(net460),
    .B(n1080),
    .Y(n68));
 sg13g2_nand2b_1 u1122 (.Y(n1081),
    .B(net480),
    .A_N(n78));
 sg13g2_nor2b_1 u1123 (.A(\u_zcr.pol ),
    .B_N(n1081),
    .Y(n1082));
 sg13g2_nand2_1 u1124 (.Y(n1083),
    .A(net480),
    .B(net267));
 sg13g2_nor2_1 u1125 (.A(n83),
    .B(n1083),
    .Y(n1084));
 sg13g2_nor3_1 u1126 (.A(net460),
    .B(n1082),
    .C(n1084),
    .Y(n69));
 sg13g2_nor2_1 u1127 (.A(\u_zcr.pol_valid ),
    .B(n1084),
    .Y(n1085));
 sg13g2_a21oi_1 u1128 (.A1(n1081),
    .A2(n1085),
    .Y(n80),
    .B1(net460));
 sg13g2_nor2_1 u1129 (.A(\u_zcr.win_cnt [6]),
    .B(n99),
    .Y(n1086));
 sg13g2_nand2_1 u113 (.Y(n100),
    .A(n86),
    .B(net445));
 sg13g2_nor2b_1 u1130 (.A(n1086),
    .B_N(n101),
    .Y(n87));
 sg13g2_nor2_1 u1131 (.A(\u_zcr.win_cnt [5]),
    .B(n98),
    .Y(n1087));
 sg13g2_nor3_1 u1132 (.A(n32),
    .B(n99),
    .C(n1087),
    .Y(n88));
 sg13g2_nor2_1 u1133 (.A(\u_zcr.win_cnt [4]),
    .B(n97),
    .Y(n1088));
 sg13g2_nor3_1 u1134 (.A(n32),
    .B(n98),
    .C(n1088),
    .Y(n89));
 sg13g2_and2_1 u1135 (.A(n91),
    .B(n96),
    .X(n1089));
 sg13g2_nor3_1 u1136 (.A(n32),
    .B(n97),
    .C(n1089),
    .Y(n90));
 sg13g2_nor2_1 u1137 (.A(\u_zcr.win_cnt [2]),
    .B(n95),
    .Y(n1090));
 sg13g2_nand2_1 u1138 (.Y(n1091),
    .A(net504),
    .B(n96));
 sg13g2_nor2_1 u1139 (.A(n1090),
    .B(n1091),
    .Y(n92));
 sg13g2_a21oi_1 u114 (.A1(\u_zcr.win_cnt [6]),
    .A2(n99),
    .Y(n101),
    .B1(n32));
 sg13g2_a21oi_1 u1140 (.A1(net486),
    .A2(\u_zcr.win_cnt [0]),
    .Y(n1092),
    .B1(\u_zcr.win_cnt [1]));
 sg13g2_nor3_1 u1141 (.A(n32),
    .B(n95),
    .C(n1092),
    .Y(n93));
 sg13g2_inv_1 u1142 (.Y(n1093),
    .A(\u_zcr.win_cnt [0]));
 sg13g2_o21ai_1 u1143 (.B1(net504),
    .Y(n1094),
    .A1(net453),
    .A2(n1093));
 sg13g2_a21oi_1 u1144 (.A1(net453),
    .A2(n1093),
    .Y(n94),
    .B1(n1094));
 sg13g2_a22oi_1 u1145 (.Y(n1095),
    .B1(n107),
    .B2(n1079),
    .A2(\u_zcr.cross_cnt [1]),
    .A1(net454));
 sg13g2_nor2_1 u1146 (.A(net460),
    .B(n1095),
    .Y(n104));
 sg13g2_a22oi_1 u1147 (.Y(n1096),
    .B1(n111),
    .B2(n1079),
    .A2(\u_zcr.cross_cnt [2]),
    .A1(net454));
 sg13g2_nor2_1 u1148 (.A(net460),
    .B(n1096),
    .Y(n110));
 sg13g2_a22oi_1 u1149 (.Y(n1097),
    .B1(n118),
    .B2(n1079),
    .A2(\u_zcr.cross_cnt [3]),
    .A1(net454));
 sg13g2_nand2_1 u115 (.Y(n102),
    .A(net300),
    .B(net444));
 sg13g2_nor2_1 u1150 (.A(net461),
    .B(n1097),
    .Y(n115));
 sg13g2_a22oi_1 u1151 (.Y(n1098),
    .B1(n122),
    .B2(n1079),
    .A2(\u_zcr.cross_cnt [4]),
    .A1(net454));
 sg13g2_nor2_1 u1152 (.A(net461),
    .B(n1098),
    .Y(n121));
 sg13g2_a22oi_1 u1153 (.Y(n1099),
    .B1(n129),
    .B2(n1079),
    .A2(\u_zcr.cross_cnt [5]),
    .A1(net454));
 sg13g2_nor2_1 u1154 (.A(net461),
    .B(n1099),
    .Y(n126));
 sg13g2_a22oi_1 u1155 (.Y(n1100),
    .B1(n133),
    .B2(n1079),
    .A2(\u_zcr.cross_cnt [6]),
    .A1(net454));
 sg13g2_nor2_1 u1156 (.A(net461),
    .B(n1100),
    .Y(n132));
 sg13g2_a22oi_1 u1157 (.Y(n1101),
    .B1(n138),
    .B2(n1079),
    .A2(\u_zcr.cross_cnt [7]),
    .A1(net454));
 sg13g2_nor2_1 u1158 (.A(net461),
    .B(n1101),
    .Y(n137));
 sg13g2_a21oi_1 u1159 (.A1(n968),
    .A2(n142),
    .Y(n141),
    .B1(n32));
 sg13g2_nand2_1 u116 (.Y(n13),
    .A(n100),
    .B(n102));
 sg13g2_inv_1 u1160 (.Y(n1102),
    .A(net256));
 sg13g2_inv_1 u1161 (.Y(n1103),
    .A(net258));
 sg13g2_inv_1 u1162 (.Y(n1104),
    .A(net259));
 sg13g2_nor4_1 u1163 (.A(n1102),
    .B(n1103),
    .C(n1104),
    .D(net267),
    .Y(n1105));
 sg13g2_nand4_1 u1164 (.B(net257),
    .C(n83),
    .A(net480),
    .Y(n1106),
    .D(n1105));
 sg13g2_nor4_1 u1165 (.A(net455),
    .B(net260),
    .C(n81),
    .D(n76),
    .Y(n1107));
 sg13g2_a22oi_1 u1166 (.Y(n1108),
    .B1(n75),
    .B2(n1107),
    .A2(\u_class.sat_seen ),
    .A1(n968));
 sg13g2_a21oi_1 u1167 (.A1(n1106),
    .A2(n1108),
    .Y(n143),
    .B1(net460));
 sg13g2_nand2_1 u1168 (.Y(n1109),
    .A(net456),
    .B(taps[11]));
 sg13g2_a21oi_1 u1169 (.A1(n1083),
    .A2(n1109),
    .Y(n221),
    .B1(net460));
 sg13g2_nand2_1 u117 (.Y(n103),
    .A(\u_zcr.cross_cnt [0]),
    .B(n85));
 sg13g2_o21ai_1 u1170 (.B1(net254),
    .Y(n1110),
    .A1(net455),
    .A2(net260));
 sg13g2_a21oi_1 u1171 (.A1(net456),
    .A2(n223),
    .Y(n222),
    .B1(n1110));
 sg13g2_o21ai_1 u1172 (.B1(net505),
    .Y(n1111),
    .A1(net478),
    .A2(taps[3]));
 sg13g2_a21oi_1 u1173 (.A1(net478),
    .A2(n1104),
    .Y(n224),
    .B1(n1111));
 sg13g2_o21ai_1 u1174 (.B1(net505),
    .Y(n1112),
    .A1(net478),
    .A2(taps[2]));
 sg13g2_a21oi_1 u1175 (.A1(net478),
    .A2(n1103),
    .Y(n226),
    .B1(n1112));
 sg13g2_o21ai_1 u1176 (.B1(net505),
    .Y(n1113),
    .A1(net478),
    .A2(taps[0]));
 sg13g2_a21oi_1 u1177 (.A1(net478),
    .A2(n1102),
    .Y(n227),
    .B1(n1113));
 sg13g2_nand2_1 u1178 (.Y(n1114),
    .A(net480),
    .B(net257));
 sg13g2_nand2_1 u1179 (.Y(n1115),
    .A(net455),
    .B(taps[1]));
 sg13g2_dfrbpq_1 u118 (.RESET_B(net102),
    .D(n104),
    .Q(\u_zcr.cross_cnt [1]),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_a21oi_1 u1180 (.A1(n1114),
    .A2(n1115),
    .Y(n228),
    .B1(net460));
 sg13g2_o21ai_1 u1181 (.B1(net491),
    .Y(n1116),
    .A1(net478),
    .A2(taps[5]));
 sg13g2_nor2_1 u1182 (.A(net455),
    .B(net261),
    .Y(n1117));
 sg13g2_nor2_1 u1183 (.A(n1116),
    .B(n1117),
    .Y(n232));
 sg13g2_o21ai_1 u1184 (.B1(net505),
    .Y(n1118),
    .A1(net479),
    .A2(taps[7]));
 sg13g2_a21oi_1 u1185 (.A1(net479),
    .A2(n70),
    .Y(n235),
    .B1(n1118));
 sg13g2_o21ai_1 u1186 (.B1(net491),
    .Y(n1119),
    .A1(net479),
    .A2(taps[6]));
 sg13g2_nor2_1 u1187 (.A(net455),
    .B(net262),
    .Y(n1120));
 sg13g2_nor2_1 u1188 (.A(n1119),
    .B(n1120),
    .Y(n237));
 sg13g2_o21ai_1 u1189 (.B1(net505),
    .Y(n1121),
    .A1(net479),
    .A2(taps[8]));
 sg13g2_tiehi u118_103 (.L_HI(net102));
 sg13g2_inv_1 u119 (.Y(n105),
    .A(\u_zcr.cross_cnt [1]));
 sg13g2_a21oi_1 u1190 (.A1(net479),
    .A2(n71),
    .Y(n240),
    .B1(n1121));
 sg13g2_o21ai_1 u1191 (.B1(net254),
    .Y(n1122),
    .A1(net479),
    .A2(taps[9]));
 sg13g2_a21oi_1 u1192 (.A1(net479),
    .A2(n72),
    .Y(n244),
    .B1(n1122));
 sg13g2_o21ai_1 u1193 (.B1(net491),
    .Y(n1123),
    .A1(net481),
    .A2(taps[23]));
 sg13g2_a21oi_1 u1194 (.A1(net481),
    .A2(n294),
    .Y(n246),
    .B1(n1123));
 sg13g2_o21ai_1 u1195 (.B1(net491),
    .Y(n1124),
    .A1(net477),
    .A2(taps[17]));
 sg13g2_a21oi_1 u1196 (.A1(net478),
    .A2(n233),
    .Y(n247),
    .B1(n1124));
 sg13g2_o21ai_1 u1197 (.B1(net491),
    .Y(n1125),
    .A1(net477),
    .A2(taps[16]));
 sg13g2_a21oi_1 u1198 (.A1(net477),
    .A2(n223),
    .Y(n249),
    .B1(n1125));
 sg13g2_o21ai_1 u1199 (.B1(net491),
    .Y(n1126),
    .A1(net477),
    .A2(taps[15]));
 sg13g2_tiehi u11_102 (.L_HI(net101));
 sg13g2_dfrbpq_1 u12 (.RESET_B(net103),
    .D(n13),
    .Q(net300),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_nor2_1 u120 (.A(n103),
    .B(n105),
    .Y(n106));
 sg13g2_a21oi_1 u1200 (.A1(net477),
    .A2(n225),
    .Y(n251),
    .B1(n1126));
 sg13g2_o21ai_1 u1201 (.B1(net492),
    .Y(n1127),
    .A1(net476),
    .A2(taps[14]));
 sg13g2_nor2_1 u1202 (.A(net456),
    .B(taps[2]),
    .Y(n1128));
 sg13g2_nor2_1 u1203 (.A(n1127),
    .B(n1128),
    .Y(n253));
 sg13g2_o21ai_1 u1204 (.B1(net492),
    .Y(n1129),
    .A1(net476),
    .A2(taps[12]));
 sg13g2_a21oi_1 u1205 (.A1(net477),
    .A2(n305),
    .Y(n254),
    .B1(n1129));
 sg13g2_o21ai_1 u1206 (.B1(net492),
    .Y(n1130),
    .A1(net477),
    .A2(taps[13]));
 sg13g2_a21oi_1 u1207 (.A1(net477),
    .A2(n306),
    .Y(n255),
    .B1(n1130));
 sg13g2_o21ai_1 u1208 (.B1(net491),
    .Y(n1131),
    .A1(net486),
    .A2(taps[19]));
 sg13g2_a21oi_1 u1209 (.A1(net487),
    .A2(n236),
    .Y(n259),
    .B1(n1131));
 sg13g2_a21oi_1 u121 (.A1(n103),
    .A2(n105),
    .Y(n107),
    .B1(n106));
 sg13g2_o21ai_1 u1210 (.B1(net491),
    .Y(n1132),
    .A1(net487),
    .A2(taps[18]));
 sg13g2_a21oi_1 u1211 (.A1(net487),
    .A2(n238),
    .Y(n261),
    .B1(n1132));
 sg13g2_o21ai_1 u1212 (.B1(net496),
    .Y(n1133),
    .A1(net486),
    .A2(taps[20]));
 sg13g2_a21oi_1 u1213 (.A1(net486),
    .A2(n241),
    .Y(n264),
    .B1(n1133));
 sg13g2_o21ai_1 u1214 (.B1(net496),
    .Y(n1134),
    .A1(net486),
    .A2(taps[21]));
 sg13g2_nor2_1 u1215 (.A(net453),
    .B(taps[9]),
    .Y(n1135));
 sg13g2_nor2_1 u1216 (.A(n1134),
    .B(n1135),
    .Y(n268));
 sg13g2_o21ai_1 u1217 (.B1(net498),
    .Y(n1136),
    .A1(net485),
    .A2(taps[35]));
 sg13g2_a21oi_1 u1218 (.A1(net485),
    .A2(n290),
    .Y(n339),
    .B1(n1136));
 sg13g2_o21ai_1 u1219 (.B1(net496),
    .Y(n1137),
    .A1(net489),
    .A2(taps[29]));
 sg13g2_nand2_1 u122 (.Y(n108),
    .A(net445),
    .B(n107));
 sg13g2_a21oi_1 u1220 (.A1(net489),
    .A2(n248),
    .Y(n340),
    .B1(n1137));
 sg13g2_o21ai_1 u1221 (.B1(net496),
    .Y(n1138),
    .A1(net489),
    .A2(taps[28]));
 sg13g2_a21oi_1 u1222 (.A1(net489),
    .A2(n250),
    .Y(n342),
    .B1(n1138));
 sg13g2_o21ai_1 u1223 (.B1(net495),
    .Y(n1139),
    .A1(net473),
    .A2(taps[27]));
 sg13g2_a21oi_1 u1224 (.A1(net473),
    .A2(n252),
    .Y(n344),
    .B1(n1139));
 sg13g2_o21ai_1 u1225 (.B1(net492),
    .Y(n1140),
    .A1(net476),
    .A2(taps[26]));
 sg13g2_nor2_1 u1226 (.A(net456),
    .B(taps[14]),
    .Y(n1141));
 sg13g2_nor2_1 u1227 (.A(n1140),
    .B(n1141),
    .Y(n346));
 sg13g2_o21ai_1 u1228 (.B1(net492),
    .Y(n1142),
    .A1(net476),
    .A2(taps[24]));
 sg13g2_a21oi_1 u1229 (.A1(net476),
    .A2(n309),
    .Y(n347),
    .B1(n1142));
 sg13g2_nand2_1 u123 (.Y(n109),
    .A(net301),
    .B(net444));
 sg13g2_o21ai_1 u1230 (.B1(net492),
    .Y(n1143),
    .A1(net476),
    .A2(taps[25]));
 sg13g2_a21oi_1 u1231 (.A1(net476),
    .A2(n310),
    .Y(n348),
    .B1(n1143));
 sg13g2_o21ai_1 u1232 (.B1(net496),
    .Y(n1144),
    .A1(net485),
    .A2(taps[31]));
 sg13g2_a21oi_1 u1233 (.A1(net485),
    .A2(n260),
    .Y(n352),
    .B1(n1144));
 sg13g2_o21ai_1 u1234 (.B1(net496),
    .Y(n1145),
    .A1(net487),
    .A2(taps[30]));
 sg13g2_a21oi_1 u1235 (.A1(net487),
    .A2(n262),
    .Y(n354),
    .B1(n1145));
 sg13g2_o21ai_1 u1236 (.B1(net498),
    .Y(n1146),
    .A1(net485),
    .A2(taps[32]));
 sg13g2_a21oi_1 u1237 (.A1(net485),
    .A2(n265),
    .Y(n357),
    .B1(n1146));
 sg13g2_o21ai_1 u1238 (.B1(net498),
    .Y(n1147),
    .A1(net485),
    .A2(taps[33]));
 sg13g2_nor2_1 u1239 (.A(net453),
    .B(taps[21]),
    .Y(n1148));
 sg13g2_nand2_1 u124 (.Y(n14),
    .A(n108),
    .B(n109));
 sg13g2_nor2_1 u1240 (.A(n1147),
    .B(n1148),
    .Y(n361));
 sg13g2_o21ai_1 u1241 (.B1(net497),
    .Y(n1149),
    .A1(net484),
    .A2(taps[47]));
 sg13g2_a21oi_1 u1242 (.A1(net484),
    .A2(n403),
    .Y(n363),
    .B1(n1149));
 sg13g2_o21ai_1 u1243 (.B1(net496),
    .Y(n1150),
    .A1(net488),
    .A2(taps[41]));
 sg13g2_a21oi_1 u1244 (.A1(net488),
    .A2(n341),
    .Y(n364),
    .B1(n1150));
 sg13g2_o21ai_1 u1245 (.B1(net496),
    .Y(n1151),
    .A1(net488),
    .A2(taps[40]));
 sg13g2_a21oi_1 u1246 (.A1(net489),
    .A2(n343),
    .Y(n366),
    .B1(n1151));
 sg13g2_o21ai_1 u1247 (.B1(net495),
    .Y(n1152),
    .A1(net473),
    .A2(taps[39]));
 sg13g2_a21oi_1 u1248 (.A1(net473),
    .A2(n345),
    .Y(n368),
    .B1(n1152));
 sg13g2_o21ai_1 u1249 (.B1(net495),
    .Y(n1153),
    .A1(net473),
    .A2(taps[38]));
 sg13g2_dfrbpq_1 u125 (.RESET_B(net104),
    .D(n110),
    .Q(\u_zcr.cross_cnt [2]),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_nor2_1 u1250 (.A(net456),
    .B(taps[26]),
    .Y(n1154));
 sg13g2_nor2_1 u1251 (.A(n1153),
    .B(n1154),
    .Y(n370));
 sg13g2_o21ai_1 u1252 (.B1(net492),
    .Y(n1155),
    .A1(net482),
    .A2(taps[36]));
 sg13g2_a21oi_1 u1253 (.A1(net482),
    .A2(n420),
    .Y(n371),
    .B1(n1155));
 sg13g2_o21ai_1 u1254 (.B1(net492),
    .Y(n1156),
    .A1(net482),
    .A2(taps[37]));
 sg13g2_a21oi_1 u1255 (.A1(net482),
    .A2(n421),
    .Y(n372),
    .B1(n1156));
 sg13g2_o21ai_1 u1256 (.B1(net497),
    .Y(n1157),
    .A1(net484),
    .A2(taps[43]));
 sg13g2_a21oi_1 u1257 (.A1(net484),
    .A2(n353),
    .Y(n376),
    .B1(n1157));
 sg13g2_o21ai_1 u1258 (.B1(net498),
    .Y(n1158),
    .A1(net484),
    .A2(taps[42]));
 sg13g2_a21oi_1 u1259 (.A1(net484),
    .A2(n355),
    .Y(n378),
    .B1(n1158));
 sg13g2_tiehi u125_105 (.L_HI(net104));
 sg13g2_xor2_1 u126 (.B(\u_zcr.cross_cnt [2]),
    .A(n106),
    .X(n111));
 sg13g2_o21ai_1 u1260 (.B1(net497),
    .Y(n1159),
    .A1(net484),
    .A2(taps[44]));
 sg13g2_a21oi_1 u1261 (.A1(net484),
    .A2(n358),
    .Y(n381),
    .B1(n1159));
 sg13g2_o21ai_1 u1262 (.B1(net506),
    .Y(n1160),
    .A1(net470),
    .A2(taps[45]));
 sg13g2_nor2_1 u1263 (.A(net453),
    .B(taps[33]),
    .Y(n1161));
 sg13g2_nor2_1 u1264 (.A(n1160),
    .B(n1161),
    .Y(n385));
 sg13g2_o21ai_1 u1265 (.B1(net505),
    .Y(n1162),
    .A1(net479),
    .A2(taps[10]));
 sg13g2_a21oi_1 u1266 (.A1(net480),
    .A2(n73),
    .Y(n521),
    .B1(n1162));
 sg13g2_o21ai_1 u1267 (.B1(net254),
    .Y(n1163),
    .A1(net486),
    .A2(taps[22]));
 sg13g2_nor2_1 u1268 (.A(net453),
    .B(taps[10]),
    .Y(n1164));
 sg13g2_nor2_1 u1269 (.A(n1163),
    .B(n1164),
    .Y(n524));
 sg13g2_nand2_1 u127 (.Y(n112),
    .A(net445),
    .B(n111));
 sg13g2_o21ai_1 u1270 (.B1(net498),
    .Y(n1165),
    .A1(net485),
    .A2(taps[34]));
 sg13g2_nor2_1 u1271 (.A(net453),
    .B(taps[22]),
    .Y(n1166));
 sg13g2_nor2_1 u1272 (.A(n1165),
    .B(n1166),
    .Y(n531));
 sg13g2_o21ai_1 u1273 (.B1(net506),
    .Y(n1167),
    .A1(net470),
    .A2(taps[46]));
 sg13g2_nor2_1 u1274 (.A(net453),
    .B(taps[34]),
    .Y(n1168));
 sg13g2_nor2_1 u1275 (.A(n1167),
    .B(n1168),
    .Y(n534));
 sg13g2_o21ai_1 u1276 (.B1(net500),
    .Y(n1169),
    .A1(net469),
    .A2(taps[59]));
 sg13g2_a21oi_1 u1277 (.A1(net469),
    .A2(n406),
    .Y(n540),
    .B1(n1169));
 sg13g2_o21ai_1 u1278 (.B1(net500),
    .Y(n1170),
    .A1(net467),
    .A2(taps[53]));
 sg13g2_a21oi_1 u1279 (.A1(net467),
    .A2(n365),
    .Y(n541),
    .B1(n1170));
 sg13g2_nand2_1 u128 (.Y(n113),
    .A(net302),
    .B(net444));
 sg13g2_o21ai_1 u1280 (.B1(net500),
    .Y(n1171),
    .A1(net467),
    .A2(taps[52]));
 sg13g2_a21oi_1 u1281 (.A1(net467),
    .A2(n367),
    .Y(n543),
    .B1(n1171));
 sg13g2_o21ai_1 u1282 (.B1(net493),
    .Y(n1172),
    .A1(net474),
    .A2(taps[51]));
 sg13g2_a21oi_1 u1283 (.A1(net474),
    .A2(n369),
    .Y(n545),
    .B1(n1172));
 sg13g2_o21ai_1 u1284 (.B1(net493),
    .Y(n1173),
    .A1(net474),
    .A2(taps[50]));
 sg13g2_nor2_1 u1285 (.A(net458),
    .B(taps[38]),
    .Y(n1174));
 sg13g2_nor2_1 u1286 (.A(n1173),
    .B(n1174),
    .Y(n547));
 sg13g2_o21ai_1 u1287 (.B1(net493),
    .Y(n1175),
    .A1(net474),
    .A2(taps[48]));
 sg13g2_a21oi_1 u1288 (.A1(net474),
    .A2(n424),
    .Y(n548),
    .B1(n1175));
 sg13g2_o21ai_1 u1289 (.B1(net495),
    .Y(n1176),
    .A1(net473),
    .A2(taps[49]));
 sg13g2_nand2_1 u129 (.Y(n15),
    .A(n112),
    .B(n113));
 sg13g2_a21oi_1 u1290 (.A1(net474),
    .A2(n425),
    .Y(n549),
    .B1(n1176));
 sg13g2_o21ai_1 u1291 (.B1(net497),
    .Y(n1177),
    .A1(net471),
    .A2(taps[55]));
 sg13g2_a21oi_1 u1292 (.A1(net469),
    .A2(n377),
    .Y(n553),
    .B1(n1177));
 sg13g2_o21ai_1 u1293 (.B1(net497),
    .Y(n1178),
    .A1(net469),
    .A2(taps[54]));
 sg13g2_a21oi_1 u1294 (.A1(net469),
    .A2(n379),
    .Y(n555),
    .B1(n1178));
 sg13g2_o21ai_1 u1295 (.B1(net497),
    .Y(n1179),
    .A1(net471),
    .A2(taps[56]));
 sg13g2_a21oi_1 u1296 (.A1(net471),
    .A2(n382),
    .Y(n559),
    .B1(n1179));
 sg13g2_o21ai_1 u1297 (.B1(net499),
    .Y(n1180),
    .A1(net468),
    .A2(taps[71]));
 sg13g2_a21oi_1 u1298 (.A1(net468),
    .A2(n591),
    .Y(n561),
    .B1(n1180));
 sg13g2_o21ai_1 u1299 (.B1(net500),
    .Y(n1181),
    .A1(net467),
    .A2(taps[65]));
 sg13g2_tiehi u12_104 (.L_HI(net103));
 sg13g2_dfrbpq_1 u13 (.RESET_B(net105),
    .D(n14),
    .Q(net301),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_nand2_1 u130 (.Y(n114),
    .A(n106),
    .B(\u_zcr.cross_cnt [2]));
 sg13g2_a21oi_1 u1300 (.A1(net472),
    .A2(n542),
    .Y(n562),
    .B1(n1181));
 sg13g2_o21ai_1 u1301 (.B1(net500),
    .Y(n1182),
    .A1(net467),
    .A2(taps[64]));
 sg13g2_a21oi_1 u1302 (.A1(net467),
    .A2(n544),
    .Y(n564),
    .B1(n1182));
 sg13g2_o21ai_1 u1303 (.B1(net494),
    .Y(n1183),
    .A1(net472),
    .A2(taps[63]));
 sg13g2_a21oi_1 u1304 (.A1(net472),
    .A2(n546),
    .Y(n566),
    .B1(n1183));
 sg13g2_o21ai_1 u1305 (.B1(net493),
    .Y(n1184),
    .A1(net475),
    .A2(taps[62]));
 sg13g2_nor2_1 u1306 (.A(net458),
    .B(taps[50]),
    .Y(n1185));
 sg13g2_nor2_1 u1307 (.A(n1184),
    .B(n1185),
    .Y(n568));
 sg13g2_o21ai_1 u1308 (.B1(net493),
    .Y(n1186),
    .A1(net475),
    .A2(taps[60]));
 sg13g2_a21oi_1 u1309 (.A1(net475),
    .A2(n608),
    .Y(n569),
    .B1(n1186));
 sg13g2_dfrbpq_1 u131 (.RESET_B(net106),
    .D(n115),
    .Q(\u_zcr.cross_cnt [3]),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_o21ai_1 u1310 (.B1(net493),
    .Y(n1187),
    .A1(net483),
    .A2(taps[61]));
 sg13g2_a21oi_1 u1311 (.A1(net483),
    .A2(n609),
    .Y(n570),
    .B1(n1187));
 sg13g2_o21ai_1 u1312 (.B1(net499),
    .Y(n1188),
    .A1(net468),
    .A2(taps[67]));
 sg13g2_a21oi_1 u1313 (.A1(net468),
    .A2(n554),
    .Y(n574),
    .B1(n1188));
 sg13g2_o21ai_1 u1314 (.B1(net499),
    .Y(n1189),
    .A1(net472),
    .A2(taps[66]));
 sg13g2_a21oi_1 u1315 (.A1(net472),
    .A2(n556),
    .Y(n576),
    .B1(n1189));
 sg13g2_o21ai_1 u1316 (.B1(net499),
    .Y(n1190),
    .A1(net468),
    .A2(taps[68]));
 sg13g2_a21oi_1 u1317 (.A1(net468),
    .A2(n641),
    .Y(n580),
    .B1(n1190));
 sg13g2_o21ai_1 u1318 (.B1(net497),
    .Y(n1191),
    .A1(net470),
    .A2(taps[57]));
 sg13g2_nor2_1 u1319 (.A(net457),
    .B(taps[45]),
    .Y(n1192));
 sg13g2_tiehi u131_107 (.L_HI(net106));
 sg13g2_inv_1 u132 (.Y(n116),
    .A(\u_zcr.cross_cnt [3]));
 sg13g2_nor2_1 u1320 (.A(n1191),
    .B(n1192),
    .Y(n644));
 sg13g2_o21ai_1 u1321 (.B1(net499),
    .Y(n1193),
    .A1(net468),
    .A2(taps[69]));
 sg13g2_nor2_1 u1322 (.A(net457),
    .B(taps[57]),
    .Y(n1194));
 sg13g2_nor2_1 u1323 (.A(n1193),
    .B(n1194),
    .Y(n649));
 sg13g2_o21ai_1 u1324 (.B1(net503),
    .Y(n1195),
    .A1(net464),
    .A2(taps[83]));
 sg13g2_a21oi_1 u1325 (.A1(net464),
    .A2(n594),
    .Y(n655),
    .B1(n1195));
 sg13g2_o21ai_1 u1326 (.B1(net503),
    .Y(n1196),
    .A1(net464),
    .A2(taps[77]));
 sg13g2_a21oi_1 u1327 (.A1(net464),
    .A2(n563),
    .Y(n656),
    .B1(n1196));
 sg13g2_o21ai_1 u1328 (.B1(net503),
    .Y(n1197),
    .A1(net466),
    .A2(taps[76]));
 sg13g2_a21oi_1 u1329 (.A1(net466),
    .A2(n565),
    .Y(n658),
    .B1(n1197));
 sg13g2_nor2_1 u133 (.A(n114),
    .B(n116),
    .Y(n117));
 sg13g2_o21ai_1 u1330 (.B1(net494),
    .Y(n1198),
    .A1(net466),
    .A2(taps[75]));
 sg13g2_a21oi_1 u1331 (.A1(net466),
    .A2(n567),
    .Y(n660),
    .B1(n1198));
 sg13g2_o21ai_1 u1332 (.B1(net493),
    .Y(n1199),
    .A1(net475),
    .A2(taps[74]));
 sg13g2_nor2_1 u1333 (.A(net458),
    .B(taps[62]),
    .Y(n1200));
 sg13g2_nor2_1 u1334 (.A(n1199),
    .B(n1200),
    .Y(n662));
 sg13g2_o21ai_1 u1335 (.B1(net494),
    .Y(n1201),
    .A1(net255),
    .A2(taps[72]));
 sg13g2_a21oi_1 u1336 (.A1(net255),
    .A2(n612),
    .Y(n663),
    .B1(n1201));
 sg13g2_o21ai_1 u1337 (.B1(net494),
    .Y(n1202),
    .A1(net483),
    .A2(taps[73]));
 sg13g2_a21oi_1 u1338 (.A1(net483),
    .A2(n613),
    .Y(n664),
    .B1(n1202));
 sg13g2_o21ai_1 u1339 (.B1(net503),
    .Y(n1203),
    .A1(net464),
    .A2(taps[79]));
 sg13g2_a21oi_1 u134 (.A1(n114),
    .A2(n116),
    .Y(n118),
    .B1(n117));
 sg13g2_a21oi_1 u1340 (.A1(net464),
    .A2(n575),
    .Y(n668),
    .B1(n1203));
 sg13g2_o21ai_1 u1341 (.B1(net503),
    .Y(n1204),
    .A1(net464),
    .A2(taps[78]));
 sg13g2_a21oi_1 u1342 (.A1(net464),
    .A2(n577),
    .Y(n670),
    .B1(n1204));
 sg13g2_o21ai_1 u1343 (.B1(net502),
    .Y(n1205),
    .A1(net465),
    .A2(taps[80]));
 sg13g2_a21oi_1 u1344 (.A1(net465),
    .A2(n646),
    .Y(n673),
    .B1(n1205));
 sg13g2_o21ai_1 u1345 (.B1(net502),
    .Y(n1206),
    .A1(net465),
    .A2(taps[81]));
 sg13g2_nor2_1 u1346 (.A(net457),
    .B(taps[69]),
    .Y(n1207));
 sg13g2_nor2_1 u1347 (.A(n1206),
    .B(n1207),
    .Y(n677));
 sg13g2_o21ai_1 u1348 (.B1(net501),
    .Y(n1208),
    .A1(net463),
    .A2(net459));
 sg13g2_a21oi_1 u1349 (.A1(net463),
    .A2(n712),
    .Y(n679),
    .B1(n1208));
 sg13g2_nand2_1 u135 (.Y(n119),
    .A(net445),
    .B(n118));
 sg13g2_o21ai_1 u1350 (.B1(net501),
    .Y(n1209),
    .A1(net462),
    .A2(taps[92]));
 sg13g2_a21oi_1 u1351 (.A1(net462),
    .A2(n674),
    .Y(n680),
    .B1(n1209));
 sg13g2_o21ai_1 u1352 (.B1(net501),
    .Y(n1210),
    .A1(net462),
    .A2(taps[91]));
 sg13g2_a21oi_1 u1353 (.A1(net462),
    .A2(n669),
    .Y(n681),
    .B1(n1210));
 sg13g2_o21ai_1 u1354 (.B1(net501),
    .Y(n1211),
    .A1(net462),
    .A2(taps[90]));
 sg13g2_a21oi_1 u1355 (.A1(net462),
    .A2(n671),
    .Y(n682),
    .B1(n1211));
 sg13g2_o21ai_1 u1356 (.B1(net501),
    .Y(n1212),
    .A1(net462),
    .A2(taps[89]));
 sg13g2_a21oi_1 u1357 (.A1(net462),
    .A2(n657),
    .Y(n683),
    .B1(n1212));
 sg13g2_o21ai_1 u1358 (.B1(net501),
    .Y(n1213),
    .A1(net463),
    .A2(taps[88]));
 sg13g2_a21oi_1 u1359 (.A1(net463),
    .A2(n659),
    .Y(n684),
    .B1(n1213));
 sg13g2_nand2_1 u136 (.Y(n120),
    .A(net303),
    .B(net444));
 sg13g2_o21ai_1 u1360 (.B1(net501),
    .Y(n1214),
    .A1(net463),
    .A2(taps[87]));
 sg13g2_a21oi_1 u1361 (.A1(net463),
    .A2(n661),
    .Y(n685),
    .B1(n1214));
 sg13g2_o21ai_1 u1362 (.B1(net494),
    .Y(n1215),
    .A1(net490),
    .A2(taps[86]));
 sg13g2_nor2_1 u1363 (.A(net457),
    .B(taps[74]),
    .Y(n1216));
 sg13g2_nor2_1 u1364 (.A(n1215),
    .B(n1216),
    .Y(n686));
 sg13g2_o21ai_1 u1365 (.B1(net494),
    .Y(n1217),
    .A1(net255),
    .A2(taps[84]));
 sg13g2_a21oi_1 u1366 (.A1(net255),
    .A2(n725),
    .Y(n687),
    .B1(n1217));
 sg13g2_o21ai_1 u1367 (.B1(net494),
    .Y(n1218),
    .A1(net466),
    .A2(taps[85]));
 sg13g2_a21oi_1 u1368 (.A1(net490),
    .A2(n726),
    .Y(n688),
    .B1(n1218));
 sg13g2_o21ai_1 u1369 (.B1(net502),
    .Y(n1219),
    .A1(net465),
    .A2(taps[93]));
 sg13g2_nand2_1 u137 (.Y(n16),
    .A(n119),
    .B(n120));
 sg13g2_nor2_1 u1370 (.A(net457),
    .B(taps[81]),
    .Y(n1220));
 sg13g2_nor2_1 u1371 (.A(n1219),
    .B(n1220),
    .Y(n696));
 sg13g2_o21ai_1 u1372 (.B1(net502),
    .Y(n1221),
    .A1(net465),
    .A2(taps[82]));
 sg13g2_nor2_1 u1373 (.A(net457),
    .B(taps[70]),
    .Y(n1222));
 sg13g2_nor2_1 u1374 (.A(n1221),
    .B(n1222),
    .Y(n830));
 sg13g2_o21ai_1 u1375 (.B1(net502),
    .Y(n1223),
    .A1(net465),
    .A2(taps[94]));
 sg13g2_nor2_1 u1376 (.A(net457),
    .B(taps[82]),
    .Y(n1224));
 sg13g2_nor2_1 u1377 (.A(n1223),
    .B(n1224),
    .Y(n833));
 sg13g2_o21ai_1 u1378 (.B1(net497),
    .Y(n1225),
    .A1(net470),
    .A2(taps[58]));
 sg13g2_nor2_1 u1379 (.A(net458),
    .B(taps[46]),
    .Y(n1226));
 sg13g2_dfrbpq_1 u138 (.RESET_B(net107),
    .D(n121),
    .Q(\u_zcr.cross_cnt [4]),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_nor2_1 u1380 (.A(n1225),
    .B(n1226),
    .Y(n841));
 sg13g2_o21ai_1 u1381 (.B1(net499),
    .Y(n1227),
    .A1(net468),
    .A2(taps[70]));
 sg13g2_nor2_1 u1382 (.A(net457),
    .B(taps[58]),
    .Y(n1228));
 sg13g2_nor2_1 u1383 (.A(n1227),
    .B(n1228),
    .Y(n844));
 sg13g2_o21ai_1 u1384 (.B1(n974),
    .Y(n1229),
    .A1(n932),
    .A2(n964));
 sg13g2_a22oi_1 u1385 (.Y(n1230),
    .B1(n931),
    .B2(net446),
    .A2(n970),
    .A1(\u_class.acc [6]));
 sg13g2_o21ai_1 u1386 (.B1(n1230),
    .Y(n929),
    .A1(n965),
    .A2(n1229));
 sg13g2_nor2_1 u1387 (.A(n936),
    .B(n958),
    .Y(n1231));
 sg13g2_a21o_1 u1388 (.A2(n958),
    .A1(n936),
    .B1(n220),
    .X(n1232));
 sg13g2_a22oi_1 u1389 (.Y(n1233),
    .B1(n935),
    .B2(net446),
    .A2(n970),
    .A1(\u_class.acc [4]));
 sg13g2_tiehi u138_108 (.L_HI(net107));
 sg13g2_xor2_1 u139 (.B(\u_zcr.cross_cnt [4]),
    .A(n117),
    .X(n122));
 sg13g2_o21ai_1 u1390 (.B1(n1233),
    .Y(n933),
    .A1(n1231),
    .A2(n1232));
 sg13g2_o21ai_1 u1391 (.B1(n974),
    .Y(n1234),
    .A1(n940),
    .A2(n949));
 sg13g2_a22oi_1 u1392 (.Y(n1235),
    .B1(n939),
    .B2(n972),
    .A2(n970),
    .A1(\u_class.acc [2]));
 sg13g2_o21ai_1 u1393 (.B1(n1235),
    .Y(n937),
    .A1(n950),
    .A2(n1234));
 sg13g2_a21oi_1 u1394 (.A1(net448),
    .A2(\u_class.acc [1]),
    .Y(n1236),
    .B1(n974));
 sg13g2_a21o_1 u1395 (.A2(n942),
    .A1(\u_class.acc [1]),
    .B1(n943),
    .X(n1237));
 sg13g2_o21ai_1 u1396 (.B1(net470),
    .Y(n1238),
    .A1(n947),
    .A2(n1237));
 sg13g2_a21oi_1 u1397 (.A1(n947),
    .A2(n1237),
    .Y(n1239),
    .B1(n1238));
 sg13g2_nand2_1 u1398 (.Y(n1240),
    .A(n942),
    .B(n972));
 sg13g2_o21ai_1 u1399 (.B1(n1240),
    .Y(n941),
    .A1(n1236),
    .A2(n1239));
 sg13g2_tiehi u13_106 (.L_HI(net105));
 sg13g2_dfrbpq_1 u14 (.RESET_B(net108),
    .D(n15),
    .Q(net302),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_nand2_1 u140 (.Y(n123),
    .A(net445),
    .B(n122));
 sg13g2_nand2_1 u1400 (.Y(n1241),
    .A(net470),
    .B(n946));
 sg13g2_nand2_1 u1401 (.Y(n1242),
    .A(n968),
    .B(\u_class.acc [0]));
 sg13g2_o21ai_1 u1402 (.B1(net506),
    .Y(n1243),
    .A1(n1241),
    .A2(n1242));
 sg13g2_a21oi_1 u1403 (.A1(n1241),
    .A2(n1242),
    .Y(n944),
    .B1(n1243));
 sg13g2_a21oi_1 u1404 (.A1(net448),
    .A2(\u_class.acc [3]),
    .Y(n1244),
    .B1(n974));
 sg13g2_nand2_1 u1405 (.Y(n1245),
    .A(n957),
    .B(n955));
 sg13g2_a221oi_1 u1406 (.B2(n1245),
    .C1(net458),
    .B1(n951),
    .A1(n957),
    .Y(n1246),
    .A2(n956));
 sg13g2_nand2_1 u1407 (.Y(n1247),
    .A(n954),
    .B(n972));
 sg13g2_o21ai_1 u1408 (.B1(n1247),
    .Y(n952),
    .A1(n1244),
    .A2(n1246));
 sg13g2_a21oi_1 u1409 (.A1(net450),
    .A2(\u_class.acc [5]),
    .Y(n1248),
    .B1(n974));
 sg13g2_nand2_1 u141 (.Y(n124),
    .A(net304),
    .B(net444));
 sg13g2_nor2b_1 u1410 (.A(n962),
    .B_N(n963),
    .Y(n1249));
 sg13g2_o21ai_1 u1411 (.B1(net471),
    .Y(n1250),
    .A1(n959),
    .A2(n1249));
 sg13g2_a21oi_1 u1412 (.A1(n959),
    .A2(n1249),
    .Y(n1251),
    .B1(n1250));
 sg13g2_nand2_1 u1413 (.Y(n1252),
    .A(n961),
    .B(net446));
 sg13g2_o21ai_1 u1414 (.B1(n1252),
    .Y(n960),
    .A1(n1248),
    .A2(n1251));
 sg13g2_nand2_1 u142 (.Y(n17),
    .A(n123),
    .B(n124));
 sg13g2_nand2_1 u143 (.Y(n125),
    .A(n117),
    .B(\u_zcr.cross_cnt [4]));
 sg13g2_dfrbpq_1 u144 (.RESET_B(net109),
    .D(n126),
    .Q(\u_zcr.cross_cnt [5]),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi u144_110 (.L_HI(net109));
 sg13g2_inv_1 u145 (.Y(n127),
    .A(\u_zcr.cross_cnt [5]));
 sg13g2_nor2_1 u146 (.A(n125),
    .B(n127),
    .Y(n128));
 sg13g2_a21oi_1 u147 (.A1(n125),
    .A2(n127),
    .Y(n129),
    .B1(n128));
 sg13g2_nand2_1 u148 (.Y(n130),
    .A(net445),
    .B(n129));
 sg13g2_nand2_1 u149 (.Y(n131),
    .A(net305),
    .B(net444));
 sg13g2_tiehi u14_109 (.L_HI(net108));
 sg13g2_dfrbpq_1 u15 (.RESET_B(net110),
    .D(n16),
    .Q(net303),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_nand2_1 u150 (.Y(n18),
    .A(n130),
    .B(n131));
 sg13g2_dfrbpq_1 u151 (.RESET_B(net111),
    .D(n132),
    .Q(\u_zcr.cross_cnt [6]),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi u151_112 (.L_HI(net111));
 sg13g2_xor2_1 u152 (.B(\u_zcr.cross_cnt [6]),
    .A(n128),
    .X(n133));
 sg13g2_nand2_1 u153 (.Y(n134),
    .A(net445),
    .B(n133));
 sg13g2_nand2_1 u154 (.Y(n135),
    .A(net306),
    .B(net444));
 sg13g2_nand2_1 u155 (.Y(n19),
    .A(n134),
    .B(n135));
 sg13g2_nand2_1 u156 (.Y(n136),
    .A(n128),
    .B(\u_zcr.cross_cnt [6]));
 sg13g2_dfrbpq_1 u157 (.RESET_B(net112),
    .D(n137),
    .Q(\u_zcr.cross_cnt [7]),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi u157_113 (.L_HI(net112));
 sg13g2_xnor2_1 u158 (.Y(n138),
    .A(n136),
    .B(\u_zcr.cross_cnt [7]));
 sg13g2_nand2_1 u159 (.Y(n139),
    .A(net445),
    .B(n138));
 sg13g2_tiehi u15_111 (.L_HI(net110));
 sg13g2_dfrbpq_1 u16 (.RESET_B(net113),
    .D(n17),
    .Q(net304),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_nand2_1 u160 (.Y(n140),
    .A(net307),
    .B(net444));
 sg13g2_nand2_1 u161 (.Y(n20),
    .A(n139),
    .B(n140));
 sg13g2_dfrbpq_1 u162 (.RESET_B(net114),
    .D(n141),
    .Q(\u_class.warm ),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi u162_115 (.L_HI(net114));
 sg13g2_inv_1 u163 (.Y(n142),
    .A(\u_class.warm ));
 sg13g2_dfrbpq_1 u164 (.RESET_B(net115),
    .D(n143),
    .Q(\u_class.sat_seen ),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi u164_116 (.L_HI(net115));
 sg13g2_nor3_2 u165 (.A(n31),
    .B(n142),
    .C(\u_class.sat_seen ),
    .Y(n21));
 sg13g2_inv_1 u166 (.Y(n144),
    .A(net275));
 sg13g2_nand2b_1 u167 (.Y(n145),
    .B(\u_class.acc [8]),
    .A_N(net269));
 sg13g2_nand2_1 u168 (.Y(n146),
    .A(net269),
    .B(n36));
 sg13g2_nand3b_1 u169 (.B(\u_class.acc [7]),
    .C(n146),
    .Y(n147),
    .A_N(net268));
 sg13g2_tiehi u16_114 (.L_HI(net113));
 sg13g2_dfrbpq_1 u17 (.RESET_B(net116),
    .D(n18),
    .Q(net305),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_a22oi_1 u170 (.Y(n148),
    .B1(n145),
    .B2(n147),
    .A2(n39),
    .A1(net270));
 sg13g2_nor2_1 u171 (.A(net271),
    .B(n42),
    .Y(n149));
 sg13g2_nor2_1 u172 (.A(net270),
    .B(n39),
    .Y(n150));
 sg13g2_nor3_1 u173 (.A(n148),
    .B(n149),
    .C(n150),
    .Y(n151));
 sg13g2_a221oi_1 u174 (.B2(n45),
    .C1(n151),
    .B1(net272),
    .A1(net271),
    .Y(n152),
    .A2(n42));
 sg13g2_nand2b_1 u175 (.Y(n153),
    .B(\u_class.acc [11]),
    .A_N(net272));
 sg13g2_o21ai_1 u176 (.B1(n153),
    .Y(n154),
    .A1(net273),
    .A2(n48));
 sg13g2_nand2_1 u177 (.Y(n155),
    .A(net273),
    .B(n48));
 sg13g2_o21ai_1 u178 (.B1(n155),
    .Y(n156),
    .A1(n152),
    .A2(n154));
 sg13g2_o21ai_1 u179 (.B1(n156),
    .Y(n157),
    .A1(net274),
    .A2(n51));
 sg13g2_tiehi u17_117 (.L_HI(net116));
 sg13g2_dfrbpq_1 u18 (.RESET_B(net117),
    .D(n19),
    .Q(net306),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_a22oi_1 u180 (.Y(n158),
    .B1(net275),
    .B2(n54),
    .A2(n51),
    .A1(net274));
 sg13g2_nor2_1 u181 (.A(net276),
    .B(n57),
    .Y(n159));
 sg13g2_a221oi_1 u182 (.B2(n158),
    .C1(n159),
    .B1(n157),
    .A1(n144),
    .Y(n160),
    .A2(\u_class.acc [14]));
 sg13g2_a221oi_1 u183 (.B2(n60),
    .C1(n160),
    .B1(net277),
    .A1(net276),
    .Y(n161),
    .A2(n57));
 sg13g2_a22oi_1 u184 (.Y(n162),
    .B1(net279),
    .B2(n66),
    .A2(n63),
    .A1(net278));
 sg13g2_nand2b_1 u185 (.Y(n163),
    .B(\u_class.acc [16]),
    .A_N(net277));
 sg13g2_inv_1 u186 (.Y(n164),
    .A(net278));
 sg13g2_inv_1 u187 (.Y(n165),
    .A(net279));
 sg13g2_a22oi_1 u188 (.Y(n166),
    .B1(n165),
    .B2(\u_class.acc [18]),
    .A2(\u_class.acc [17]),
    .A1(n164));
 sg13g2_nand3_1 u189 (.B(n163),
    .C(n166),
    .A(n162),
    .Y(n167));
 sg13g2_tiehi u18_118 (.L_HI(net117));
 sg13g2_dfrbpq_1 u19 (.RESET_B(net118),
    .D(n20),
    .Q(net307),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_inv_1 u190 (.Y(n168),
    .A(net287));
 sg13g2_inv_1 u191 (.Y(n169),
    .A(net306));
 sg13g2_inv_1 u192 (.Y(n170),
    .A(net285));
 sg13g2_inv_1 u193 (.Y(n171),
    .A(net303));
 sg13g2_inv_1 u194 (.Y(n172),
    .A(net304));
 sg13g2_inv_1 u195 (.Y(n173),
    .A(net282));
 sg13g2_inv_1 u196 (.Y(n174),
    .A(net301));
 sg13g2_nor2b_1 u197 (.A(net300),
    .B_N(net280),
    .Y(n175));
 sg13g2_o21ai_1 u198 (.B1(n175),
    .Y(n176),
    .A1(net281),
    .A2(n174));
 sg13g2_inv_1 u199 (.Y(n177),
    .A(net302));
 sg13g2_tiehi u19_119 (.L_HI(net118));
 sg13g2_tiehi u1_94 (.L_HI(net93));
 sg13g2_dfrbpq_1 u2 (.RESET_B(net119),
    .D(n3),
    .Q(net290),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_dfrbpq_1 u20 (.RESET_B(net120),
    .D(n21),
    .Q(net308),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_a22oi_1 u200 (.Y(n178),
    .B1(net282),
    .B2(n177),
    .A2(n174),
    .A1(net281));
 sg13g2_nor2_1 u201 (.A(net283),
    .B(n171),
    .Y(n179));
 sg13g2_a221oi_1 u202 (.B2(n178),
    .C1(n179),
    .B1(n176),
    .A1(n173),
    .Y(n180),
    .A2(net302));
 sg13g2_a221oi_1 u203 (.B2(n172),
    .C1(n180),
    .B1(net284),
    .A1(net283),
    .Y(n181),
    .A2(n171));
 sg13g2_inv_1 u204 (.Y(n182),
    .A(net284));
 sg13g2_a22oi_1 u205 (.Y(n183),
    .B1(n170),
    .B2(net305),
    .A2(net304),
    .A1(n182));
 sg13g2_nand2b_1 u206 (.Y(n184),
    .B(n183),
    .A_N(n181));
 sg13g2_o21ai_1 u207 (.B1(n184),
    .Y(n185),
    .A1(n170),
    .A2(net305));
 sg13g2_o21ai_1 u208 (.B1(n185),
    .Y(n186),
    .A1(net286),
    .A2(n169));
 sg13g2_inv_1 u209 (.Y(n187),
    .A(net307));
 sg13g2_tiehi u20_121 (.L_HI(net120));
 sg13g2_dfrbpq_1 u21 (.RESET_B(net121),
    .D(n22),
    .Q(net309),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_a22oi_1 u210 (.Y(n188),
    .B1(net287),
    .B2(n187),
    .A2(n169),
    .A1(net286));
 sg13g2_a21oi_1 u211 (.A1(n165),
    .A2(\u_class.acc [18]),
    .Y(n189),
    .B1(n162));
 sg13g2_a221oi_1 u212 (.B2(n188),
    .C1(n189),
    .B1(n186),
    .A1(n168),
    .Y(n190),
    .A2(net307));
 sg13g2_o21ai_1 u213 (.B1(n190),
    .Y(n191),
    .A1(n161),
    .A2(n167));
 sg13g2_nor4_1 u214 (.A(\u_class.acc [15]),
    .B(\u_class.acc [16]),
    .C(\u_class.acc [17]),
    .D(\u_class.acc [18]),
    .Y(n192));
 sg13g2_o21ai_1 u215 (.B1(\u_class.acc [11]),
    .Y(n193),
    .A1(\u_class.acc [9]),
    .A2(\u_class.acc [10]));
 sg13g2_nor3_1 u216 (.A(\u_class.acc [12]),
    .B(\u_class.acc [13]),
    .C(\u_class.acc [14]),
    .Y(n194));
 sg13g2_nand3_1 u217 (.B(n193),
    .C(n194),
    .A(n192),
    .Y(n195));
 sg13g2_nand2_1 u218 (.Y(n196),
    .A(n21),
    .B(n195));
 sg13g2_nand2_1 u219 (.Y(n197),
    .A(net309),
    .B(net447));
 sg13g2_tiehi u21_122 (.L_HI(net121));
 sg13g2_dfrbpq_1 u22 (.RESET_B(net122),
    .D(n23),
    .Q(net310),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_o21ai_1 u220 (.B1(n197),
    .Y(n22),
    .A1(n191),
    .A2(n196));
 sg13g2_nand2_1 u221 (.Y(n198),
    .A(net310),
    .B(net447));
 sg13g2_nand3_1 u222 (.B(n42),
    .C(n45),
    .A(n39),
    .Y(n199));
 sg13g2_nand3_1 u223 (.B(\u_class.acc [13]),
    .C(n199),
    .A(\u_class.acc [12]),
    .Y(n200));
 sg13g2_nand3_1 u224 (.B(n192),
    .C(n200),
    .A(n54),
    .Y(n201));
 sg13g2_nand2_1 u225 (.Y(n202),
    .A(n174),
    .B(n177));
 sg13g2_nand3_1 u226 (.B(n172),
    .C(n202),
    .A(net303),
    .Y(n203));
 sg13g2_nor4_1 u227 (.A(net305),
    .B(net306),
    .C(net307),
    .D(n203),
    .Y(n204));
 sg13g2_nand3_1 u228 (.B(net301),
    .C(net302),
    .A(net300),
    .Y(n205));
 sg13g2_nand3_1 u229 (.B(n204),
    .C(n205),
    .A(n201),
    .Y(n206));
 sg13g2_tiehi u22_123 (.L_HI(net122));
 sg13g2_dfrbpq_1 u23 (.RESET_B(net123),
    .D(n24),
    .Q(net311),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_nand3b_1 u230 (.B(n21),
    .C(n191),
    .Y(n207),
    .A_N(n206));
 sg13g2_nand2_1 u231 (.Y(n23),
    .A(n198),
    .B(n207));
 sg13g2_nand2_1 u232 (.Y(n208),
    .A(net311),
    .B(net447));
 sg13g2_nand3_1 u233 (.B(n51),
    .C(n54),
    .A(n45),
    .Y(n209));
 sg13g2_a21oi_1 u234 (.A1(\u_class.acc [9]),
    .A2(\u_class.acc [10]),
    .Y(n210),
    .B1(n209));
 sg13g2_or3_1 u235 (.A(n57),
    .B(n194),
    .C(n210),
    .X(n211));
 sg13g2_nand4_1 u236 (.B(n63),
    .C(n66),
    .A(n60),
    .Y(n212),
    .D(n211));
 sg13g2_nand4_1 u237 (.B(n191),
    .C(n206),
    .A(n21),
    .Y(n213),
    .D(n212));
 sg13g2_nand2_1 u238 (.Y(n24),
    .A(n208),
    .B(n213));
 sg13g2_nor2b_1 u239 (.A(n195),
    .B_N(n21),
    .Y(n214));
 sg13g2_tiehi u23_124 (.L_HI(net123));
 sg13g2_dfrbpq_1 u24 (.RESET_B(net124),
    .D(n25),
    .Q(net312),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_a21o_1 u240 (.A2(net447),
    .A1(net312),
    .B1(n214),
    .X(n25));
 sg13g2_nand4_1 u241 (.B(zcr_valid),
    .C(\u_class.warm ),
    .A(net506),
    .Y(n215),
    .D(\u_class.sat_seen ));
 sg13g2_nand2_1 u242 (.Y(n216),
    .A(net313),
    .B(net447));
 sg13g2_nand2_1 u243 (.Y(n26),
    .A(n215),
    .B(n216));
 sg13g2_nand2_1 u244 (.Y(n217),
    .A(net314),
    .B(net447));
 sg13g2_nor2_1 u245 (.A(n196),
    .B(n212),
    .Y(n218));
 sg13g2_nand3_1 u246 (.B(n206),
    .C(n218),
    .A(n191),
    .Y(n219));
 sg13g2_nand2_1 u247 (.Y(n27),
    .A(n217),
    .B(n219));
 sg13g2_nand2_1 u248 (.Y(n220),
    .A(net471),
    .B(n33));
 sg13g2_dfrbpq_1 u249 (.RESET_B(net125),
    .D(n221),
    .Q(taps[11]),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi u249_126 (.L_HI(net125));
 sg13g2_tiehi u24_125 (.L_HI(net124));
 sg13g2_dfrbpq_1 u25 (.RESET_B(net126),
    .D(n26),
    .Q(net313),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_dfrbpq_1 u250 (.RESET_B(net127),
    .D(n222),
    .Q(taps[4]),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi u250_128 (.L_HI(net127));
 sg13g2_inv_1 u251 (.Y(n223),
    .A(taps[4]));
 sg13g2_dfrbpq_1 u252 (.RESET_B(net128),
    .D(n224),
    .Q(taps[3]),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi u252_129 (.L_HI(net128));
 sg13g2_inv_1 u253 (.Y(n225),
    .A(taps[3]));
 sg13g2_dfrbpq_1 u254 (.RESET_B(net129),
    .D(n226),
    .Q(taps[2]),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi u254_130 (.L_HI(net129));
 sg13g2_dfrbpq_1 u255 (.RESET_B(net130),
    .D(n227),
    .Q(taps[0]),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi u255_131 (.L_HI(net130));
 sg13g2_dfrbpq_1 u256 (.RESET_B(net131),
    .D(n228),
    .Q(taps[1]),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi u256_132 (.L_HI(net131));
 sg13g2_nor3_1 u257 (.A(taps[2]),
    .B(taps[0]),
    .C(taps[1]),
    .Y(n229));
 sg13g2_and2_1 u258 (.A(n225),
    .B(n229),
    .X(n230));
 sg13g2_nand2_1 u259 (.Y(n231),
    .A(n223),
    .B(n230));
 sg13g2_tiehi u25_127 (.L_HI(net126));
 sg13g2_dfrbpq_1 u26 (.RESET_B(net132),
    .D(n27),
    .Q(net314),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_dfrbpq_1 u260 (.RESET_B(net133),
    .D(n232),
    .Q(taps[5]),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi u260_134 (.L_HI(net133));
 sg13g2_inv_1 u261 (.Y(n233),
    .A(taps[5]));
 sg13g2_nand2b_1 u262 (.Y(n234),
    .B(n233),
    .A_N(n231));
 sg13g2_dfrbpq_1 u263 (.RESET_B(net134),
    .D(n235),
    .Q(taps[7]),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi u263_135 (.L_HI(net134));
 sg13g2_inv_1 u264 (.Y(n236),
    .A(taps[7]));
 sg13g2_dfrbpq_1 u265 (.RESET_B(net135),
    .D(n237),
    .Q(taps[6]),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi u265_136 (.L_HI(net135));
 sg13g2_inv_1 u266 (.Y(n238),
    .A(taps[6]));
 sg13g2_nand3b_1 u267 (.B(n236),
    .C(n238),
    .Y(n239),
    .A_N(n234));
 sg13g2_dfrbpq_1 u268 (.RESET_B(net136),
    .D(n240),
    .Q(taps[8]),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi u268_137 (.L_HI(net136));
 sg13g2_inv_1 u269 (.Y(n241),
    .A(taps[8]));
 sg13g2_tiehi u26_133 (.L_HI(net132));
 sg13g2_dfrbpq_1 u27 (.RESET_B(net137),
    .D(n28),
    .Q(\u_class.acc [7]),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_nand2b_1 u270 (.Y(n242),
    .B(n241),
    .A_N(n239));
 sg13g2_nand2_1 u271 (.Y(n243),
    .A(taps[11]),
    .B(n242));
 sg13g2_dfrbpq_1 u272 (.RESET_B(net138),
    .D(n244),
    .Q(taps[9]),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi u272_139 (.L_HI(net138));
 sg13g2_xnor2_1 u273 (.Y(n245),
    .A(n243),
    .B(taps[9]));
 sg13g2_dfrbpq_1 u274 (.RESET_B(net139),
    .D(n246),
    .Q(taps[23]),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi u274_140 (.L_HI(net139));
 sg13g2_dfrbpq_1 u275 (.RESET_B(net140),
    .D(n247),
    .Q(taps[17]),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi u275_141 (.L_HI(net140));
 sg13g2_inv_1 u276 (.Y(n248),
    .A(taps[17]));
 sg13g2_dfrbpq_1 u277 (.RESET_B(net141),
    .D(n249),
    .Q(taps[16]),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi u277_142 (.L_HI(net141));
 sg13g2_inv_1 u278 (.Y(n250),
    .A(taps[16]));
 sg13g2_dfrbpq_1 u279 (.RESET_B(net142),
    .D(n251),
    .Q(taps[15]),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi u279_143 (.L_HI(net142));
 sg13g2_tiehi u27_138 (.L_HI(net137));
 sg13g2_inv_1 u28 (.Y(n29),
    .A(\u_class.acc [7]));
 sg13g2_inv_1 u280 (.Y(n252),
    .A(taps[15]));
 sg13g2_dfrbpq_1 u281 (.RESET_B(net143),
    .D(n253),
    .Q(taps[14]),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi u281_144 (.L_HI(net143));
 sg13g2_dfrbpq_1 u282 (.RESET_B(net144),
    .D(n254),
    .Q(taps[12]),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi u282_145 (.L_HI(net144));
 sg13g2_dfrbpq_1 u283 (.RESET_B(net145),
    .D(n255),
    .Q(taps[13]),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi u283_146 (.L_HI(net145));
 sg13g2_nor3_1 u284 (.A(taps[14]),
    .B(taps[12]),
    .C(taps[13]),
    .Y(n256));
 sg13g2_and2_1 u285 (.A(n252),
    .B(n256),
    .X(n257));
 sg13g2_nand3_1 u286 (.B(n250),
    .C(n257),
    .A(n248),
    .Y(n258));
 sg13g2_dfrbpq_1 u287 (.RESET_B(net146),
    .D(n259),
    .Q(taps[19]),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi u287_147 (.L_HI(net146));
 sg13g2_inv_1 u288 (.Y(n260),
    .A(taps[19]));
 sg13g2_dfrbpq_1 u289 (.RESET_B(net147),
    .D(n261),
    .Q(taps[18]),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi u289_148 (.L_HI(net147));
 sg13g2_dfrbpq_1 u29 (.RESET_B(net148),
    .D(n30),
    .Q(zcr_valid),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_inv_1 u290 (.Y(n262),
    .A(taps[18]));
 sg13g2_nand3b_1 u291 (.B(n260),
    .C(n262),
    .Y(n263),
    .A_N(n258));
 sg13g2_dfrbpq_1 u292 (.RESET_B(net149),
    .D(n264),
    .Q(taps[20]),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi u292_150 (.L_HI(net149));
 sg13g2_inv_1 u293 (.Y(n265),
    .A(taps[20]));
 sg13g2_nand2b_1 u294 (.Y(n266),
    .B(n265),
    .A_N(n263));
 sg13g2_nand2_1 u295 (.Y(n267),
    .A(taps[23]),
    .B(n266));
 sg13g2_dfrbpq_1 u296 (.RESET_B(net150),
    .D(n268),
    .Q(taps[21]),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi u296_151 (.L_HI(net150));
 sg13g2_xnor2_1 u297 (.Y(n269),
    .A(n267),
    .B(taps[21]));
 sg13g2_xor2_1 u298 (.B(n269),
    .A(n245),
    .X(n270));
 sg13g2_nand2_1 u299 (.Y(n271),
    .A(taps[11]),
    .B(n239));
 sg13g2_tiehi u29_149 (.L_HI(net148));
 sg13g2_tiehi u2_120 (.L_HI(net119));
 sg13g2_dfrbpq_1 u3 (.RESET_B(net151),
    .D(n4),
    .Q(net291),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_nand2_1 u30 (.Y(n31),
    .A(net506),
    .B(zcr_valid));
 sg13g2_xnor2_1 u300 (.Y(n272),
    .A(taps[8]),
    .B(n271));
 sg13g2_nand2_1 u301 (.Y(n273),
    .A(taps[23]),
    .B(n263));
 sg13g2_xnor2_1 u302 (.Y(n274),
    .A(taps[20]),
    .B(n273));
 sg13g2_nand2_1 u303 (.Y(n275),
    .A(n272),
    .B(n274));
 sg13g2_xor2_1 u304 (.B(n274),
    .A(n272),
    .X(n276));
 sg13g2_o21ai_1 u305 (.B1(taps[11]),
    .Y(n277),
    .A1(taps[6]),
    .A2(n234));
 sg13g2_xnor2_1 u306 (.Y(n278),
    .A(taps[7]),
    .B(n277));
 sg13g2_o21ai_1 u307 (.B1(taps[23]),
    .Y(n279),
    .A1(taps[18]),
    .A2(n258));
 sg13g2_xnor2_1 u308 (.Y(n280),
    .A(taps[19]),
    .B(n279));
 sg13g2_nand2_1 u309 (.Y(n281),
    .A(n278),
    .B(n280));
 sg13g2_inv_2 u31 (.Y(n32),
    .A(net506));
 sg13g2_xor2_1 u310 (.B(n280),
    .A(n278),
    .X(n282));
 sg13g2_nand2_1 u311 (.Y(n283),
    .A(taps[11]),
    .B(n234));
 sg13g2_xnor2_1 u312 (.Y(n284),
    .A(taps[6]),
    .B(n283));
 sg13g2_nand2_1 u313 (.Y(n285),
    .A(taps[23]),
    .B(n258));
 sg13g2_xnor2_1 u314 (.Y(n286),
    .A(taps[18]),
    .B(n285));
 sg13g2_nor2_1 u315 (.A(n284),
    .B(n286),
    .Y(n287));
 sg13g2_nand2_1 u316 (.Y(n288),
    .A(taps[11]),
    .B(n231));
 sg13g2_xnor2_1 u317 (.Y(n289),
    .A(taps[5]),
    .B(n288));
 sg13g2_inv_2 u318 (.Y(n290),
    .A(taps[23]));
 sg13g2_a21oi_1 u319 (.A1(n250),
    .A2(n257),
    .Y(n291),
    .B1(n290));
 sg13g2_nor2_2 u32 (.A(n32),
    .B(zcr_valid),
    .Y(n33));
 sg13g2_xor2_1 u320 (.B(n291),
    .A(taps[17]),
    .X(n292));
 sg13g2_nor2_1 u321 (.A(n289),
    .B(n292),
    .Y(n293));
 sg13g2_inv_2 u322 (.Y(n294),
    .A(taps[11]));
 sg13g2_nor2_1 u323 (.A(n294),
    .B(n230),
    .Y(n295));
 sg13g2_xnor2_1 u324 (.Y(n296),
    .A(taps[4]),
    .B(n295));
 sg13g2_nor2_1 u325 (.A(n290),
    .B(n257),
    .Y(n297));
 sg13g2_xnor2_1 u326 (.Y(n298),
    .A(taps[16]),
    .B(n297));
 sg13g2_nand2_1 u327 (.Y(n299),
    .A(n296),
    .B(n298));
 sg13g2_nor2_1 u328 (.A(n294),
    .B(n229),
    .Y(n300));
 sg13g2_xor2_1 u329 (.B(n300),
    .A(taps[3]),
    .X(n301));
 sg13g2_nand2_1 u33 (.Y(n34),
    .A(net288),
    .B(net450));
 sg13g2_nor2_1 u330 (.A(n290),
    .B(n256),
    .Y(n302));
 sg13g2_xor2_1 u331 (.B(n302),
    .A(taps[15]),
    .X(n303));
 sg13g2_nand2_1 u332 (.Y(n304),
    .A(n301),
    .B(n303));
 sg13g2_inv_1 u333 (.Y(n305),
    .A(taps[0]));
 sg13g2_inv_1 u334 (.Y(n306),
    .A(taps[1]));
 sg13g2_a21oi_1 u335 (.A1(n305),
    .A2(n306),
    .Y(n307),
    .B1(n294));
 sg13g2_xnor2_1 u336 (.Y(n308),
    .A(taps[2]),
    .B(n307));
 sg13g2_inv_1 u337 (.Y(n309),
    .A(taps[12]));
 sg13g2_inv_1 u338 (.Y(n310),
    .A(taps[13]));
 sg13g2_a21oi_1 u339 (.A1(n309),
    .A2(n310),
    .Y(n311),
    .B1(n290));
 sg13g2_o21ai_1 u34 (.B1(n34),
    .Y(n0),
    .A1(n29),
    .A2(net451));
 sg13g2_xnor2_1 u340 (.Y(n312),
    .A(taps[14]),
    .B(n311));
 sg13g2_nor2_1 u341 (.A(n308),
    .B(n312),
    .Y(n313));
 sg13g2_nor2_1 u342 (.A(n294),
    .B(n305),
    .Y(n314));
 sg13g2_xor2_1 u343 (.B(n314),
    .A(taps[1]),
    .X(n315));
 sg13g2_nor2_1 u344 (.A(n290),
    .B(n309),
    .Y(n316));
 sg13g2_xor2_1 u345 (.B(n316),
    .A(taps[13]),
    .X(n317));
 sg13g2_nor2_1 u346 (.A(n315),
    .B(n317),
    .Y(n318));
 sg13g2_nand2_2 u347 (.Y(n319),
    .A(taps[0]),
    .B(taps[12]));
 sg13g2_nand2_1 u348 (.Y(n320),
    .A(n315),
    .B(n317));
 sg13g2_o21ai_1 u349 (.B1(n320),
    .Y(n321),
    .A1(n318),
    .A2(n319));
 sg13g2_nand2_1 u350 (.Y(n322),
    .A(n308),
    .B(n312));
 sg13g2_o21ai_1 u351 (.B1(n322),
    .Y(n323),
    .A1(n313),
    .A2(n321));
 sg13g2_nor2_1 u352 (.A(n301),
    .B(n303),
    .Y(n324));
 sg13g2_a21oi_1 u353 (.A1(n304),
    .A2(n323),
    .Y(n325),
    .B1(n324));
 sg13g2_nor2_1 u354 (.A(n296),
    .B(n298),
    .Y(n326));
 sg13g2_a21oi_1 u355 (.A1(n299),
    .A2(n325),
    .Y(n327),
    .B1(n326));
 sg13g2_nor2_1 u356 (.A(n293),
    .B(n327),
    .Y(n328));
 sg13g2_nand2_1 u357 (.Y(n329),
    .A(n289),
    .B(n292));
 sg13g2_nor2b_1 u358 (.A(n328),
    .B_N(n329),
    .Y(n330));
 sg13g2_nand2_1 u359 (.Y(n331),
    .A(n284),
    .B(n286));
 sg13g2_dfrbpq_1 u36 (.RESET_B(net152),
    .D(n35),
    .Q(\u_class.acc [8]),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_o21ai_1 u360 (.B1(n331),
    .Y(n332),
    .A1(n287),
    .A2(n330));
 sg13g2_nand2_1 u361 (.Y(n333),
    .A(n282),
    .B(n332));
 sg13g2_nand2_1 u362 (.Y(n334),
    .A(n281),
    .B(n333));
 sg13g2_nand2_1 u363 (.Y(n335),
    .A(n276),
    .B(n334));
 sg13g2_nand2_1 u364 (.Y(n336),
    .A(n275),
    .B(n335));
 sg13g2_nand2_1 u365 (.Y(n337),
    .A(n270),
    .B(n336));
 sg13g2_o21ai_1 u366 (.B1(n337),
    .Y(n338),
    .A1(n270),
    .A2(n336));
 sg13g2_dfrbpq_1 u367 (.RESET_B(net153),
    .D(n339),
    .Q(taps[35]),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi u367_154 (.L_HI(net153));
 sg13g2_dfrbpq_1 u368 (.RESET_B(net154),
    .D(n340),
    .Q(taps[29]),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi u368_155 (.L_HI(net154));
 sg13g2_inv_1 u369 (.Y(n341),
    .A(taps[29]));
 sg13g2_tiehi u36_153 (.L_HI(net152));
 sg13g2_inv_1 u37 (.Y(n36),
    .A(\u_class.acc [8]));
 sg13g2_dfrbpq_1 u370 (.RESET_B(net155),
    .D(n342),
    .Q(taps[28]),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi u370_156 (.L_HI(net155));
 sg13g2_inv_1 u371 (.Y(n343),
    .A(taps[28]));
 sg13g2_dfrbpq_1 u372 (.RESET_B(net156),
    .D(n344),
    .Q(taps[27]),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi u372_157 (.L_HI(net156));
 sg13g2_inv_1 u373 (.Y(n345),
    .A(taps[27]));
 sg13g2_dfrbpq_1 u374 (.RESET_B(net157),
    .D(n346),
    .Q(taps[26]),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi u374_158 (.L_HI(net157));
 sg13g2_dfrbpq_1 u375 (.RESET_B(net158),
    .D(n347),
    .Q(taps[24]),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi u375_159 (.L_HI(net158));
 sg13g2_dfrbpq_1 u376 (.RESET_B(net159),
    .D(n348),
    .Q(taps[25]),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi u376_160 (.L_HI(net159));
 sg13g2_nor3_1 u377 (.A(taps[26]),
    .B(taps[24]),
    .C(taps[25]),
    .Y(n349));
 sg13g2_and2_1 u378 (.A(n345),
    .B(n349),
    .X(n350));
 sg13g2_nand3_1 u379 (.B(n343),
    .C(n350),
    .A(n341),
    .Y(n351));
 sg13g2_nand2_1 u38 (.Y(n37),
    .A(net289),
    .B(net450));
 sg13g2_dfrbpq_1 u380 (.RESET_B(net160),
    .D(n352),
    .Q(taps[31]),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi u380_161 (.L_HI(net160));
 sg13g2_inv_1 u381 (.Y(n353),
    .A(taps[31]));
 sg13g2_dfrbpq_1 u382 (.RESET_B(net161),
    .D(n354),
    .Q(taps[30]),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi u382_162 (.L_HI(net161));
 sg13g2_inv_1 u383 (.Y(n355),
    .A(taps[30]));
 sg13g2_nand3b_1 u384 (.B(n353),
    .C(n355),
    .Y(n356),
    .A_N(n351));
 sg13g2_dfrbpq_1 u385 (.RESET_B(net162),
    .D(n357),
    .Q(taps[32]),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi u385_163 (.L_HI(net162));
 sg13g2_inv_1 u386 (.Y(n358),
    .A(taps[32]));
 sg13g2_nand2b_1 u387 (.Y(n359),
    .B(n358),
    .A_N(n356));
 sg13g2_nand2_1 u388 (.Y(n360),
    .A(taps[35]),
    .B(n359));
 sg13g2_dfrbpq_1 u389 (.RESET_B(net163),
    .D(n361),
    .Q(taps[33]),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi u389_164 (.L_HI(net163));
 sg13g2_o21ai_1 u39 (.B1(n37),
    .Y(n2),
    .A1(net451),
    .A2(n36));
 sg13g2_xnor2_1 u390 (.Y(n362),
    .A(n360),
    .B(taps[33]));
 sg13g2_dfrbpq_1 u391 (.RESET_B(net164),
    .D(n363),
    .Q(taps[47]),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi u391_165 (.L_HI(net164));
 sg13g2_dfrbpq_1 u392 (.RESET_B(net165),
    .D(n364),
    .Q(taps[41]),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi u392_166 (.L_HI(net165));
 sg13g2_inv_1 u393 (.Y(n365),
    .A(taps[41]));
 sg13g2_dfrbpq_1 u394 (.RESET_B(net166),
    .D(n366),
    .Q(taps[40]),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi u394_167 (.L_HI(net166));
 sg13g2_inv_1 u395 (.Y(n367),
    .A(taps[40]));
 sg13g2_dfrbpq_1 u396 (.RESET_B(net167),
    .D(n368),
    .Q(taps[39]),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi u396_168 (.L_HI(net167));
 sg13g2_inv_1 u397 (.Y(n369),
    .A(taps[39]));
 sg13g2_dfrbpq_1 u398 (.RESET_B(net168),
    .D(n370),
    .Q(taps[38]),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi u398_169 (.L_HI(net168));
 sg13g2_dfrbpq_1 u399 (.RESET_B(net169),
    .D(n371),
    .Q(taps[36]),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi u399_170 (.L_HI(net169));
 sg13g2_tiehi u3_152 (.L_HI(net151));
 sg13g2_dfrbpq_1 u4 (.RESET_B(net170),
    .D(n5),
    .Q(net292),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_dfrbpq_1 u40 (.RESET_B(net171),
    .D(n38),
    .Q(\u_class.acc [9]),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_dfrbpq_1 u400 (.RESET_B(net172),
    .D(n372),
    .Q(taps[37]),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi u400_173 (.L_HI(net172));
 sg13g2_nor3_1 u401 (.A(taps[38]),
    .B(taps[36]),
    .C(taps[37]),
    .Y(n373));
 sg13g2_and2_1 u402 (.A(n369),
    .B(n373),
    .X(n374));
 sg13g2_nand3_1 u403 (.B(n367),
    .C(n374),
    .A(n365),
    .Y(n375));
 sg13g2_dfrbpq_1 u404 (.RESET_B(net173),
    .D(n376),
    .Q(taps[43]),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi u404_174 (.L_HI(net173));
 sg13g2_inv_1 u405 (.Y(n377),
    .A(taps[43]));
 sg13g2_dfrbpq_1 u406 (.RESET_B(net174),
    .D(n378),
    .Q(taps[42]),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi u406_175 (.L_HI(net174));
 sg13g2_inv_1 u407 (.Y(n379),
    .A(taps[42]));
 sg13g2_nand3b_1 u408 (.B(n377),
    .C(n379),
    .Y(n380),
    .A_N(n375));
 sg13g2_dfrbpq_1 u409 (.RESET_B(net175),
    .D(n381),
    .Q(taps[44]),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi u409_176 (.L_HI(net175));
 sg13g2_tiehi u40_172 (.L_HI(net171));
 sg13g2_inv_2 u41 (.Y(n39),
    .A(\u_class.acc [9]));
 sg13g2_inv_1 u410 (.Y(n382),
    .A(taps[44]));
 sg13g2_nand2b_1 u411 (.Y(n383),
    .B(n382),
    .A_N(n380));
 sg13g2_nand2_1 u412 (.Y(n384),
    .A(taps[47]),
    .B(n383));
 sg13g2_dfrbpq_1 u413 (.RESET_B(net176),
    .D(n385),
    .Q(taps[45]),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi u413_177 (.L_HI(net176));
 sg13g2_xnor2_1 u414 (.Y(n386),
    .A(n384),
    .B(taps[45]));
 sg13g2_xor2_1 u415 (.B(n386),
    .A(n362),
    .X(n387));
 sg13g2_nand2_1 u416 (.Y(n388),
    .A(taps[35]),
    .B(n356));
 sg13g2_xnor2_1 u417 (.Y(n389),
    .A(taps[32]),
    .B(n388));
 sg13g2_nand2_1 u418 (.Y(n390),
    .A(taps[47]),
    .B(n380));
 sg13g2_xnor2_1 u419 (.Y(n391),
    .A(taps[44]),
    .B(n390));
 sg13g2_nand2_1 u42 (.Y(n40),
    .A(net290),
    .B(net450));
 sg13g2_nand2_1 u420 (.Y(n392),
    .A(n389),
    .B(n391));
 sg13g2_o21ai_1 u421 (.B1(taps[35]),
    .Y(n393),
    .A1(taps[30]),
    .A2(n351));
 sg13g2_xnor2_1 u422 (.Y(n394),
    .A(taps[31]),
    .B(n393));
 sg13g2_o21ai_1 u423 (.B1(taps[47]),
    .Y(n395),
    .A1(taps[42]),
    .A2(n375));
 sg13g2_xnor2_1 u424 (.Y(n396),
    .A(taps[43]),
    .B(n395));
 sg13g2_nand2_1 u425 (.Y(n397),
    .A(taps[35]),
    .B(n351));
 sg13g2_xnor2_1 u426 (.Y(n398),
    .A(taps[30]),
    .B(n397));
 sg13g2_nand2_1 u427 (.Y(n399),
    .A(taps[47]),
    .B(n375));
 sg13g2_xnor2_1 u428 (.Y(n400),
    .A(taps[42]),
    .B(n399));
 sg13g2_nand2_1 u429 (.Y(n401),
    .A(n398),
    .B(n400));
 sg13g2_o21ai_1 u43 (.B1(n40),
    .Y(n3),
    .A1(net451),
    .A2(n39));
 sg13g2_xor2_1 u430 (.B(n400),
    .A(n398),
    .X(n402));
 sg13g2_inv_2 u431 (.Y(n403),
    .A(taps[35]));
 sg13g2_a21oi_1 u432 (.A1(n343),
    .A2(n350),
    .Y(n404),
    .B1(n403));
 sg13g2_xor2_1 u433 (.B(n404),
    .A(taps[29]),
    .X(n405));
 sg13g2_inv_2 u434 (.Y(n406),
    .A(taps[47]));
 sg13g2_a21oi_1 u435 (.A1(n367),
    .A2(n374),
    .Y(n407),
    .B1(n406));
 sg13g2_xor2_1 u436 (.B(n407),
    .A(taps[41]),
    .X(n408));
 sg13g2_nand2_1 u437 (.Y(n409),
    .A(n405),
    .B(n408));
 sg13g2_nor2_1 u438 (.A(n403),
    .B(n350),
    .Y(n410));
 sg13g2_xnor2_1 u439 (.Y(n411),
    .A(taps[28]),
    .B(n410));
 sg13g2_dfrbpq_1 u44 (.RESET_B(net177),
    .D(n41),
    .Q(\u_class.acc [10]),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_nor2_1 u440 (.A(n406),
    .B(n374),
    .Y(n412));
 sg13g2_xnor2_1 u441 (.Y(n413),
    .A(taps[40]),
    .B(n412));
 sg13g2_nor2_1 u442 (.A(n411),
    .B(n413),
    .Y(n414));
 sg13g2_nor2_1 u443 (.A(n403),
    .B(n349),
    .Y(n415));
 sg13g2_xor2_1 u444 (.B(n415),
    .A(taps[27]),
    .X(n416));
 sg13g2_nor2_1 u445 (.A(n406),
    .B(n373),
    .Y(n417));
 sg13g2_xor2_1 u446 (.B(n417),
    .A(taps[39]),
    .X(n418));
 sg13g2_nor2_1 u447 (.A(n416),
    .B(n418),
    .Y(n419));
 sg13g2_inv_1 u448 (.Y(n420),
    .A(taps[24]));
 sg13g2_inv_1 u449 (.Y(n421),
    .A(taps[25]));
 sg13g2_tiehi u44_178 (.L_HI(net177));
 sg13g2_inv_2 u45 (.Y(n42),
    .A(\u_class.acc [10]));
 sg13g2_a21oi_1 u450 (.A1(n420),
    .A2(n421),
    .Y(n422),
    .B1(n403));
 sg13g2_xnor2_1 u451 (.Y(n423),
    .A(taps[26]),
    .B(n422));
 sg13g2_inv_1 u452 (.Y(n424),
    .A(taps[36]));
 sg13g2_inv_1 u453 (.Y(n425),
    .A(taps[37]));
 sg13g2_a21oi_1 u454 (.A1(n424),
    .A2(n425),
    .Y(n426),
    .B1(n406));
 sg13g2_xnor2_1 u455 (.Y(n427),
    .A(taps[38]),
    .B(n426));
 sg13g2_nand2_1 u456 (.Y(n428),
    .A(n423),
    .B(n427));
 sg13g2_nor2_1 u457 (.A(n403),
    .B(n420),
    .Y(n429));
 sg13g2_xor2_1 u458 (.B(n429),
    .A(taps[25]),
    .X(n430));
 sg13g2_nor2_1 u459 (.A(n406),
    .B(n424),
    .Y(n431));
 sg13g2_nand2_1 u46 (.Y(n43),
    .A(net291),
    .B(net450));
 sg13g2_xor2_1 u460 (.B(n431),
    .A(taps[37]),
    .X(n432));
 sg13g2_nor2_1 u461 (.A(n430),
    .B(n432),
    .Y(n433));
 sg13g2_nand2_2 u462 (.Y(n434),
    .A(taps[24]),
    .B(taps[36]));
 sg13g2_nand2_1 u463 (.Y(n435),
    .A(n430),
    .B(n432));
 sg13g2_o21ai_1 u464 (.B1(n435),
    .Y(n436),
    .A1(n433),
    .A2(n434));
 sg13g2_nor2_1 u465 (.A(n423),
    .B(n427),
    .Y(n437));
 sg13g2_a21oi_1 u466 (.A1(n428),
    .A2(n436),
    .Y(n438),
    .B1(n437));
 sg13g2_nand2_1 u467 (.Y(n439),
    .A(n416),
    .B(n418));
 sg13g2_o21ai_1 u468 (.B1(n439),
    .Y(n440),
    .A1(n419),
    .A2(n438));
 sg13g2_nand2_1 u469 (.Y(n441),
    .A(n411),
    .B(n413));
 sg13g2_o21ai_1 u47 (.B1(n43),
    .Y(n4),
    .A1(net451),
    .A2(n42));
 sg13g2_o21ai_1 u470 (.B1(n441),
    .Y(n442),
    .A1(n414),
    .A2(n440));
 sg13g2_nor2_1 u471 (.A(n405),
    .B(n408),
    .Y(n443));
 sg13g2_a21oi_1 u472 (.A1(n409),
    .A2(n442),
    .Y(n444),
    .B1(n443));
 sg13g2_nand2_1 u473 (.Y(n445),
    .A(n402),
    .B(n444));
 sg13g2_nand2_1 u474 (.Y(n446),
    .A(n401),
    .B(n445));
 sg13g2_a21o_1 u475 (.A2(n396),
    .A1(n394),
    .B1(n446),
    .X(n447));
 sg13g2_o21ai_1 u476 (.B1(n447),
    .Y(n448),
    .A1(n394),
    .A2(n396));
 sg13g2_nor2_1 u477 (.A(n389),
    .B(n391),
    .Y(n449));
 sg13g2_a21oi_1 u478 (.A1(n392),
    .A2(n448),
    .Y(n450),
    .B1(n449));
 sg13g2_nand2_1 u479 (.Y(n451),
    .A(n387),
    .B(n450));
 sg13g2_dfrbpq_1 u48 (.RESET_B(net178),
    .D(n44),
    .Q(\u_class.acc [11]),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_o21ai_1 u480 (.B1(n451),
    .Y(n452),
    .A1(n387),
    .A2(n450));
 sg13g2_and2_1 u481 (.A(n338),
    .B(n452),
    .X(n453));
 sg13g2_nor2_1 u482 (.A(n338),
    .B(n452),
    .Y(n454));
 sg13g2_o21ai_1 u483 (.B1(n335),
    .Y(n455),
    .A1(n276),
    .A2(n334));
 sg13g2_nor2b_1 u484 (.A(n449),
    .B_N(n392),
    .Y(n456));
 sg13g2_xor2_1 u485 (.B(n456),
    .A(n448),
    .X(n457));
 sg13g2_and2_1 u486 (.A(n455),
    .B(n457),
    .X(n458));
 sg13g2_nor2_1 u487 (.A(n455),
    .B(n457),
    .Y(n459));
 sg13g2_xor2_1 u488 (.B(n332),
    .A(n282),
    .X(n460));
 sg13g2_xor2_1 u489 (.B(n396),
    .A(n394),
    .X(n461));
 sg13g2_tiehi u48_179 (.L_HI(net178));
 sg13g2_inv_2 u49 (.Y(n45),
    .A(\u_class.acc [11]));
 sg13g2_xor2_1 u490 (.B(n461),
    .A(n446),
    .X(n462));
 sg13g2_nor2_1 u491 (.A(n460),
    .B(n462),
    .Y(n463));
 sg13g2_o21ai_1 u492 (.B1(n445),
    .Y(n464),
    .A1(n402),
    .A2(n444));
 sg13g2_nor2b_1 u493 (.A(n287),
    .B_N(n331),
    .Y(n465));
 sg13g2_xor2_1 u494 (.B(n465),
    .A(n330),
    .X(n466));
 sg13g2_and2_1 u495 (.A(n464),
    .B(n466),
    .X(n467));
 sg13g2_nor2_1 u496 (.A(n464),
    .B(n466),
    .Y(n468));
 sg13g2_nand2b_1 u497 (.Y(n469),
    .B(n329),
    .A_N(n293));
 sg13g2_a22oi_1 u498 (.Y(n470),
    .B1(n327),
    .B2(n469),
    .A2(n328),
    .A1(n329));
 sg13g2_nor2b_1 u499 (.A(n443),
    .B_N(n409),
    .Y(n471));
 sg13g2_tiehi u4_171 (.L_HI(net170));
 sg13g2_dfrbpq_1 u5 (.RESET_B(net179),
    .D(n6),
    .Q(net293),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_nand2_1 u50 (.Y(n46),
    .A(net292),
    .B(net449));
 sg13g2_xnor2_1 u500 (.Y(n472),
    .A(n442),
    .B(n471));
 sg13g2_nor2_1 u501 (.A(n470),
    .B(n472),
    .Y(n473));
 sg13g2_nor2b_1 u502 (.A(n414),
    .B_N(n441),
    .Y(n474));
 sg13g2_xnor2_1 u503 (.Y(n475),
    .A(n440),
    .B(n474));
 sg13g2_nor2b_1 u504 (.A(n326),
    .B_N(n299),
    .Y(n476));
 sg13g2_xnor2_1 u505 (.Y(n477),
    .A(n325),
    .B(n476));
 sg13g2_and2_1 u506 (.A(n475),
    .B(n477),
    .X(n478));
 sg13g2_nor2_1 u507 (.A(n475),
    .B(n477),
    .Y(n479));
 sg13g2_nor2b_1 u508 (.A(n324),
    .B_N(n304),
    .Y(n480));
 sg13g2_xnor2_1 u509 (.Y(n481),
    .A(n323),
    .B(n480));
 sg13g2_o21ai_1 u51 (.B1(n46),
    .Y(n5),
    .A1(net452),
    .A2(n45));
 sg13g2_nor2b_1 u510 (.A(n419),
    .B_N(n439),
    .Y(n482));
 sg13g2_xnor2_1 u511 (.Y(n483),
    .A(n438),
    .B(n482));
 sg13g2_nor2b_1 u512 (.A(n313),
    .B_N(n322),
    .Y(n484));
 sg13g2_xor2_1 u513 (.B(n484),
    .A(n321),
    .X(n485));
 sg13g2_nor2b_1 u514 (.A(n437),
    .B_N(n428),
    .Y(n486));
 sg13g2_xor2_1 u515 (.B(n486),
    .A(n436),
    .X(n487));
 sg13g2_and2_1 u516 (.A(n485),
    .B(n487),
    .X(n488));
 sg13g2_nor2_1 u517 (.A(n485),
    .B(n487),
    .Y(n489));
 sg13g2_nor2b_2 u518 (.A(n318),
    .B_N(n320),
    .Y(n490));
 sg13g2_xnor2_1 u519 (.Y(n491),
    .A(n319),
    .B(n490));
 sg13g2_dfrbpq_1 u52 (.RESET_B(net180),
    .D(n47),
    .Q(\u_class.acc [12]),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_nor2b_2 u520 (.A(n433),
    .B_N(n435),
    .Y(n492));
 sg13g2_xnor2_1 u521 (.Y(n493),
    .A(n434),
    .B(n492));
 sg13g2_nand2_1 u522 (.Y(n494),
    .A(n491),
    .B(n493));
 sg13g2_o21ai_1 u523 (.B1(n319),
    .Y(n495),
    .A1(taps[0]),
    .A2(taps[12]));
 sg13g2_o21ai_1 u524 (.B1(n434),
    .Y(n496),
    .A1(taps[24]),
    .A2(taps[36]));
 sg13g2_or2_1 u525 (.X(n497),
    .B(n496),
    .A(n495));
 sg13g2_xor2_1 u526 (.B(n492),
    .A(n490),
    .X(n498));
 sg13g2_nand2b_1 u527 (.Y(n499),
    .B(n498),
    .A_N(n497));
 sg13g2_nand2_1 u528 (.Y(n500),
    .A(n494),
    .B(n499));
 sg13g2_nor2b_1 u529 (.A(n489),
    .B_N(n500),
    .Y(n501));
 sg13g2_tiehi u52_181 (.L_HI(net180));
 sg13g2_inv_1 u53 (.Y(n48),
    .A(\u_class.acc [12]));
 sg13g2_nor2_1 u530 (.A(n488),
    .B(n501),
    .Y(n502));
 sg13g2_xor2_1 u531 (.B(n483),
    .A(n481),
    .X(n503));
 sg13g2_nor2b_1 u532 (.A(n502),
    .B_N(n503),
    .Y(n504));
 sg13g2_a21oi_1 u533 (.A1(n481),
    .A2(n483),
    .Y(n505),
    .B1(n504));
 sg13g2_nor2b_1 u534 (.A(n479),
    .B_N(n505),
    .Y(n506));
 sg13g2_nor2_1 u535 (.A(n478),
    .B(n506),
    .Y(n507));
 sg13g2_a21oi_1 u536 (.A1(n470),
    .A2(n472),
    .Y(n508),
    .B1(n507));
 sg13g2_nor2_1 u537 (.A(n473),
    .B(n508),
    .Y(n509));
 sg13g2_nor2_1 u538 (.A(n468),
    .B(n509),
    .Y(n510));
 sg13g2_or2_1 u539 (.X(n511),
    .B(n510),
    .A(n467));
 sg13g2_nand2_1 u54 (.Y(n49),
    .A(net293),
    .B(net449));
 sg13g2_nand2_1 u540 (.Y(n512),
    .A(n460),
    .B(n462));
 sg13g2_o21ai_1 u541 (.B1(n512),
    .Y(n513),
    .A1(n463),
    .A2(n511));
 sg13g2_nor2_1 u542 (.A(n459),
    .B(n513),
    .Y(n514));
 sg13g2_or2_1 u543 (.X(n515),
    .B(n514),
    .A(n458));
 sg13g2_nor2b_1 u544 (.A(n454),
    .B_N(n515),
    .Y(n516));
 sg13g2_nor2_1 u545 (.A(n453),
    .B(n516),
    .Y(n517));
 sg13g2_nand2_1 u546 (.Y(n518),
    .A(n245),
    .B(n269));
 sg13g2_nand2_1 u547 (.Y(n519),
    .A(n518),
    .B(n337));
 sg13g2_o21ai_1 u548 (.B1(taps[11]),
    .Y(n520),
    .A1(n242),
    .A2(taps[9]));
 sg13g2_dfrbpq_1 u549 (.RESET_B(net181),
    .D(n521),
    .Q(taps[10]),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi u549_182 (.L_HI(net181));
 sg13g2_o21ai_1 u55 (.B1(n49),
    .Y(n6),
    .A1(net452),
    .A2(n48));
 sg13g2_xnor2_1 u550 (.Y(n522),
    .A(n520),
    .B(taps[10]));
 sg13g2_o21ai_1 u551 (.B1(taps[23]),
    .Y(n523),
    .A1(n266),
    .A2(taps[21]));
 sg13g2_dfrbpq_1 u552 (.RESET_B(net182),
    .D(n524),
    .Q(taps[22]),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi u552_183 (.L_HI(net182));
 sg13g2_xnor2_1 u553 (.Y(n525),
    .A(n523),
    .B(taps[22]));
 sg13g2_xor2_1 u554 (.B(n525),
    .A(n522),
    .X(n526));
 sg13g2_xor2_1 u555 (.B(n526),
    .A(n519),
    .X(n527));
 sg13g2_nand2_1 u556 (.Y(n528),
    .A(n362),
    .B(n386));
 sg13g2_nand2_1 u557 (.Y(n529),
    .A(n528),
    .B(n451));
 sg13g2_o21ai_1 u558 (.B1(taps[35]),
    .Y(n530),
    .A1(n359),
    .A2(taps[33]));
 sg13g2_dfrbpq_1 u559 (.RESET_B(net183),
    .D(n531),
    .Q(taps[34]),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi u559_184 (.L_HI(net183));
 sg13g2_dfrbpq_1 u56 (.RESET_B(net184),
    .D(n50),
    .Q(\u_class.acc [13]),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_xnor2_1 u560 (.Y(n532),
    .A(n530),
    .B(taps[34]));
 sg13g2_o21ai_1 u561 (.B1(taps[47]),
    .Y(n533),
    .A1(n383),
    .A2(taps[45]));
 sg13g2_dfrbpq_1 u562 (.RESET_B(net185),
    .D(n534),
    .Q(taps[46]),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi u562_186 (.L_HI(net185));
 sg13g2_xnor2_1 u563 (.Y(n535),
    .A(n533),
    .B(taps[46]));
 sg13g2_xor2_1 u564 (.B(n535),
    .A(n532),
    .X(n536));
 sg13g2_xor2_1 u565 (.B(n536),
    .A(n529),
    .X(n537));
 sg13g2_xor2_1 u566 (.B(n537),
    .A(n527),
    .X(n538));
 sg13g2_xnor2_1 u567 (.Y(n539),
    .A(n517),
    .B(n538));
 sg13g2_dfrbpq_1 u568 (.RESET_B(net186),
    .D(n540),
    .Q(taps[59]),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi u568_187 (.L_HI(net186));
 sg13g2_dfrbpq_1 u569 (.RESET_B(net187),
    .D(n541),
    .Q(taps[53]),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi u569_188 (.L_HI(net187));
 sg13g2_tiehi u56_185 (.L_HI(net184));
 sg13g2_inv_2 u57 (.Y(n51),
    .A(\u_class.acc [13]));
 sg13g2_inv_1 u570 (.Y(n542),
    .A(taps[53]));
 sg13g2_dfrbpq_1 u571 (.RESET_B(net188),
    .D(n543),
    .Q(taps[52]),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi u571_189 (.L_HI(net188));
 sg13g2_inv_1 u572 (.Y(n544),
    .A(taps[52]));
 sg13g2_dfrbpq_1 u573 (.RESET_B(net189),
    .D(n545),
    .Q(taps[51]),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi u573_190 (.L_HI(net189));
 sg13g2_inv_1 u574 (.Y(n546),
    .A(taps[51]));
 sg13g2_dfrbpq_1 u575 (.RESET_B(net190),
    .D(n547),
    .Q(taps[50]),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi u575_191 (.L_HI(net190));
 sg13g2_dfrbpq_1 u576 (.RESET_B(net191),
    .D(n548),
    .Q(taps[48]),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi u576_192 (.L_HI(net191));
 sg13g2_dfrbpq_1 u577 (.RESET_B(net192),
    .D(n549),
    .Q(taps[49]),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi u577_193 (.L_HI(net192));
 sg13g2_nor3_1 u578 (.A(taps[50]),
    .B(taps[48]),
    .C(taps[49]),
    .Y(n550));
 sg13g2_and2_1 u579 (.A(n546),
    .B(n550),
    .X(n551));
 sg13g2_nand2_1 u58 (.Y(n52),
    .A(net294),
    .B(net449));
 sg13g2_nand3_1 u580 (.B(n544),
    .C(n551),
    .A(n542),
    .Y(n552));
 sg13g2_dfrbpq_1 u581 (.RESET_B(net193),
    .D(n553),
    .Q(taps[55]),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi u581_194 (.L_HI(net193));
 sg13g2_inv_1 u582 (.Y(n554),
    .A(taps[55]));
 sg13g2_dfrbpq_1 u583 (.RESET_B(net194),
    .D(n555),
    .Q(taps[54]),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi u583_195 (.L_HI(net194));
 sg13g2_inv_1 u584 (.Y(n556),
    .A(taps[54]));
 sg13g2_nand3b_1 u585 (.B(n554),
    .C(n556),
    .Y(n557),
    .A_N(n552));
 sg13g2_nand2_1 u586 (.Y(n558),
    .A(taps[59]),
    .B(n557));
 sg13g2_dfrbpq_1 u587 (.RESET_B(net195),
    .D(n559),
    .Q(taps[56]),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi u587_196 (.L_HI(net195));
 sg13g2_xnor2_1 u588 (.Y(n560),
    .A(n558),
    .B(taps[56]));
 sg13g2_dfrbpq_1 u589 (.RESET_B(net196),
    .D(n561),
    .Q(taps[71]),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi u589_197 (.L_HI(net196));
 sg13g2_o21ai_1 u59 (.B1(n52),
    .Y(n7),
    .A1(net452),
    .A2(n51));
 sg13g2_dfrbpq_1 u590 (.RESET_B(net197),
    .D(n562),
    .Q(taps[65]),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi u590_198 (.L_HI(net197));
 sg13g2_inv_1 u591 (.Y(n563),
    .A(taps[65]));
 sg13g2_dfrbpq_1 u592 (.RESET_B(net198),
    .D(n564),
    .Q(taps[64]),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi u592_199 (.L_HI(net198));
 sg13g2_inv_1 u593 (.Y(n565),
    .A(taps[64]));
 sg13g2_dfrbpq_1 u594 (.RESET_B(net199),
    .D(n566),
    .Q(taps[63]),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi u594_200 (.L_HI(net199));
 sg13g2_inv_1 u595 (.Y(n567),
    .A(taps[63]));
 sg13g2_dfrbpq_1 u596 (.RESET_B(net200),
    .D(n568),
    .Q(taps[62]),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi u596_201 (.L_HI(net200));
 sg13g2_dfrbpq_1 u597 (.RESET_B(net201),
    .D(n569),
    .Q(taps[60]),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi u597_202 (.L_HI(net201));
 sg13g2_dfrbpq_1 u598 (.RESET_B(net202),
    .D(n570),
    .Q(taps[61]),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi u598_203 (.L_HI(net202));
 sg13g2_nor3_1 u599 (.A(taps[62]),
    .B(taps[60]),
    .C(taps[61]),
    .Y(n571));
 sg13g2_tiehi u5_180 (.L_HI(net179));
 sg13g2_dfrbpq_1 u6 (.RESET_B(net203),
    .D(n7),
    .Q(net294),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_dfrbpq_1 u60 (.RESET_B(net204),
    .D(n53),
    .Q(\u_class.acc [14]),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_and2_1 u600 (.A(n567),
    .B(n571),
    .X(n572));
 sg13g2_nand3_1 u601 (.B(n565),
    .C(n572),
    .A(n563),
    .Y(n573));
 sg13g2_dfrbpq_1 u602 (.RESET_B(net205),
    .D(n574),
    .Q(taps[67]),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi u602_206 (.L_HI(net205));
 sg13g2_inv_1 u603 (.Y(n575),
    .A(taps[67]));
 sg13g2_dfrbpq_1 u604 (.RESET_B(net206),
    .D(n576),
    .Q(taps[66]),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi u604_207 (.L_HI(net206));
 sg13g2_inv_1 u605 (.Y(n577),
    .A(taps[66]));
 sg13g2_nand3b_1 u606 (.B(n575),
    .C(n577),
    .Y(n578),
    .A_N(n573));
 sg13g2_nand2_1 u607 (.Y(n579),
    .A(taps[71]),
    .B(n578));
 sg13g2_dfrbpq_1 u608 (.RESET_B(net207),
    .D(n580),
    .Q(taps[68]),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi u608_208 (.L_HI(net207));
 sg13g2_xnor2_1 u609 (.Y(n581),
    .A(n579),
    .B(taps[68]));
 sg13g2_tiehi u60_205 (.L_HI(net204));
 sg13g2_inv_2 u61 (.Y(n54),
    .A(\u_class.acc [14]));
 sg13g2_o21ai_1 u610 (.B1(taps[59]),
    .Y(n582),
    .A1(taps[54]),
    .A2(n552));
 sg13g2_xnor2_1 u611 (.Y(n583),
    .A(taps[55]),
    .B(n582));
 sg13g2_o21ai_1 u612 (.B1(taps[71]),
    .Y(n584),
    .A1(taps[66]),
    .A2(n573));
 sg13g2_xnor2_1 u613 (.Y(n585),
    .A(taps[67]),
    .B(n584));
 sg13g2_nand2_1 u614 (.Y(n586),
    .A(taps[59]),
    .B(n552));
 sg13g2_xor2_1 u615 (.B(n586),
    .A(taps[54]),
    .X(n587));
 sg13g2_nand2_1 u616 (.Y(n588),
    .A(taps[71]),
    .B(n573));
 sg13g2_xor2_1 u617 (.B(n588),
    .A(taps[66]),
    .X(n589));
 sg13g2_nor2_1 u618 (.A(n587),
    .B(n589),
    .Y(n590));
 sg13g2_inv_2 u619 (.Y(n591),
    .A(taps[59]));
 sg13g2_nand2_1 u62 (.Y(n55),
    .A(net295),
    .B(net449));
 sg13g2_a21oi_1 u620 (.A1(n544),
    .A2(n551),
    .Y(n592),
    .B1(n591));
 sg13g2_xor2_1 u621 (.B(n592),
    .A(taps[53]),
    .X(n593));
 sg13g2_inv_2 u622 (.Y(n594),
    .A(taps[71]));
 sg13g2_a21oi_1 u623 (.A1(n565),
    .A2(n572),
    .Y(n595),
    .B1(n594));
 sg13g2_xor2_1 u624 (.B(n595),
    .A(taps[65]),
    .X(n596));
 sg13g2_nand2_1 u625 (.Y(n597),
    .A(n593),
    .B(n596));
 sg13g2_nor2_1 u626 (.A(n591),
    .B(n551),
    .Y(n598));
 sg13g2_xnor2_1 u627 (.Y(n599),
    .A(taps[52]),
    .B(n598));
 sg13g2_nor2_1 u628 (.A(n594),
    .B(n572),
    .Y(n600));
 sg13g2_xnor2_1 u629 (.Y(n601),
    .A(taps[64]),
    .B(n600));
 sg13g2_o21ai_1 u63 (.B1(n55),
    .Y(n8),
    .A1(net452),
    .A2(n54));
 sg13g2_nor2_1 u630 (.A(n599),
    .B(n601),
    .Y(n602));
 sg13g2_nor2_1 u631 (.A(n591),
    .B(n550),
    .Y(n603));
 sg13g2_xor2_1 u632 (.B(n603),
    .A(taps[51]),
    .X(n604));
 sg13g2_nor2_1 u633 (.A(n594),
    .B(n571),
    .Y(n605));
 sg13g2_xor2_1 u634 (.B(n605),
    .A(taps[63]),
    .X(n606));
 sg13g2_nor2_1 u635 (.A(n604),
    .B(n606),
    .Y(n607));
 sg13g2_inv_1 u636 (.Y(n608),
    .A(taps[48]));
 sg13g2_inv_1 u637 (.Y(n609),
    .A(taps[49]));
 sg13g2_a21oi_1 u638 (.A1(n608),
    .A2(n609),
    .Y(n610),
    .B1(n591));
 sg13g2_xnor2_1 u639 (.Y(n611),
    .A(taps[50]),
    .B(n610));
 sg13g2_dfrbpq_1 u64 (.RESET_B(net208),
    .D(n56),
    .Q(\u_class.acc [15]),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_inv_1 u640 (.Y(n612),
    .A(taps[60]));
 sg13g2_inv_1 u641 (.Y(n613),
    .A(taps[61]));
 sg13g2_a21oi_1 u642 (.A1(n612),
    .A2(n613),
    .Y(n614),
    .B1(n594));
 sg13g2_xnor2_1 u643 (.Y(n615),
    .A(taps[62]),
    .B(n614));
 sg13g2_nor2_1 u644 (.A(n611),
    .B(n615),
    .Y(n616));
 sg13g2_nor2_1 u645 (.A(n591),
    .B(n608),
    .Y(n617));
 sg13g2_xor2_1 u646 (.B(n617),
    .A(taps[49]),
    .X(n618));
 sg13g2_nor2_1 u647 (.A(n594),
    .B(n612),
    .Y(n619));
 sg13g2_xor2_1 u648 (.B(n619),
    .A(taps[61]),
    .X(n620));
 sg13g2_nor2_1 u649 (.A(n618),
    .B(n620),
    .Y(n621));
 sg13g2_tiehi u64_209 (.L_HI(net208));
 sg13g2_inv_2 u65 (.Y(n57),
    .A(\u_class.acc [15]));
 sg13g2_nand2_2 u650 (.Y(n622),
    .A(taps[48]),
    .B(taps[60]));
 sg13g2_nand2_1 u651 (.Y(n623),
    .A(n618),
    .B(n620));
 sg13g2_o21ai_1 u652 (.B1(n623),
    .Y(n624),
    .A1(n621),
    .A2(n622));
 sg13g2_nand2_1 u653 (.Y(n625),
    .A(n611),
    .B(n615));
 sg13g2_o21ai_1 u654 (.B1(n625),
    .Y(n626),
    .A1(n616),
    .A2(n624));
 sg13g2_nand2_1 u655 (.Y(n627),
    .A(n604),
    .B(n606));
 sg13g2_o21ai_1 u656 (.B1(n627),
    .Y(n628),
    .A1(n607),
    .A2(n626));
 sg13g2_nand2_1 u657 (.Y(n629),
    .A(n599),
    .B(n601));
 sg13g2_o21ai_1 u658 (.B1(n629),
    .Y(n630),
    .A1(n602),
    .A2(n628));
 sg13g2_nor2_1 u659 (.A(n593),
    .B(n596),
    .Y(n631));
 sg13g2_nand2_1 u66 (.Y(n58),
    .A(net296),
    .B(net449));
 sg13g2_a21oi_1 u660 (.A1(n597),
    .A2(n630),
    .Y(n632),
    .B1(n631));
 sg13g2_nand2_1 u661 (.Y(n633),
    .A(n587),
    .B(n589));
 sg13g2_o21ai_1 u662 (.B1(n633),
    .Y(n634),
    .A1(n590),
    .A2(n632));
 sg13g2_xor2_1 u663 (.B(n585),
    .A(n583),
    .X(n635));
 sg13g2_nor2b_1 u664 (.A(n634),
    .B_N(n635),
    .Y(n636));
 sg13g2_a21oi_1 u665 (.A1(n583),
    .A2(n585),
    .Y(n637),
    .B1(n636));
 sg13g2_xor2_1 u666 (.B(n581),
    .A(n560),
    .X(n638));
 sg13g2_nor2b_1 u667 (.A(n637),
    .B_N(n638),
    .Y(n639));
 sg13g2_a21oi_1 u668 (.A1(n560),
    .A2(n581),
    .Y(n640),
    .B1(n639));
 sg13g2_inv_1 u669 (.Y(n641),
    .A(taps[56]));
 sg13g2_o21ai_1 u67 (.B1(n58),
    .Y(n9),
    .A1(net452),
    .A2(n57));
 sg13g2_nand2b_1 u670 (.Y(n642),
    .B(n641),
    .A_N(n557));
 sg13g2_nand2_1 u671 (.Y(n643),
    .A(taps[59]),
    .B(n642));
 sg13g2_dfrbpq_1 u672 (.RESET_B(net209),
    .D(n644),
    .Q(taps[57]),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi u672_210 (.L_HI(net209));
 sg13g2_xnor2_1 u673 (.Y(n645),
    .A(n643),
    .B(taps[57]));
 sg13g2_inv_1 u674 (.Y(n646),
    .A(taps[68]));
 sg13g2_nand2b_1 u675 (.Y(n647),
    .B(n646),
    .A_N(n578));
 sg13g2_nand2_1 u676 (.Y(n648),
    .A(taps[71]),
    .B(n647));
 sg13g2_dfrbpq_1 u677 (.RESET_B(net210),
    .D(n649),
    .Q(taps[69]),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi u677_211 (.L_HI(net210));
 sg13g2_xnor2_1 u678 (.Y(n650),
    .A(n648),
    .B(taps[69]));
 sg13g2_nor2_1 u679 (.A(n645),
    .B(n650),
    .Y(n651));
 sg13g2_dfrbpq_1 u68 (.RESET_B(net211),
    .D(n59),
    .Q(\u_class.acc [16]),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_nand2_1 u680 (.Y(n652),
    .A(n645),
    .B(n650));
 sg13g2_nor2b_1 u681 (.A(n651),
    .B_N(n652),
    .Y(n653));
 sg13g2_xnor2_1 u682 (.Y(n654),
    .A(n640),
    .B(n653));
 sg13g2_dfrbpq_1 u683 (.RESET_B(net212),
    .D(n655),
    .Q(taps[83]),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi u683_213 (.L_HI(net212));
 sg13g2_dfrbpq_1 u684 (.RESET_B(net213),
    .D(n656),
    .Q(taps[77]),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi u684_214 (.L_HI(net213));
 sg13g2_inv_1 u685 (.Y(n657),
    .A(taps[77]));
 sg13g2_dfrbpq_1 u686 (.RESET_B(net214),
    .D(n658),
    .Q(taps[76]),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi u686_215 (.L_HI(net214));
 sg13g2_inv_1 u687 (.Y(n659),
    .A(taps[76]));
 sg13g2_dfrbpq_1 u688 (.RESET_B(net215),
    .D(n660),
    .Q(taps[75]),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi u688_216 (.L_HI(net215));
 sg13g2_inv_1 u689 (.Y(n661),
    .A(taps[75]));
 sg13g2_tiehi u68_212 (.L_HI(net211));
 sg13g2_inv_1 u69 (.Y(n60),
    .A(\u_class.acc [16]));
 sg13g2_dfrbpq_1 u690 (.RESET_B(net216),
    .D(n662),
    .Q(taps[74]),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi u690_217 (.L_HI(net216));
 sg13g2_dfrbpq_1 u691 (.RESET_B(net217),
    .D(n663),
    .Q(taps[72]),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi u691_218 (.L_HI(net217));
 sg13g2_dfrbpq_1 u692 (.RESET_B(net218),
    .D(n664),
    .Q(taps[73]),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi u692_219 (.L_HI(net218));
 sg13g2_nor3_1 u693 (.A(taps[74]),
    .B(taps[72]),
    .C(taps[73]),
    .Y(n665));
 sg13g2_and2_1 u694 (.A(n661),
    .B(n665),
    .X(n666));
 sg13g2_nand3_1 u695 (.B(n659),
    .C(n666),
    .A(n657),
    .Y(n667));
 sg13g2_dfrbpq_1 u696 (.RESET_B(net219),
    .D(n668),
    .Q(taps[79]),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi u696_220 (.L_HI(net219));
 sg13g2_inv_1 u697 (.Y(n669),
    .A(taps[79]));
 sg13g2_dfrbpq_1 u698 (.RESET_B(net220),
    .D(n670),
    .Q(taps[78]),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi u698_221 (.L_HI(net220));
 sg13g2_inv_1 u699 (.Y(n671),
    .A(taps[78]));
 sg13g2_tiehi u6_204 (.L_HI(net203));
 sg13g2_dfrbpq_1 u7 (.RESET_B(net221),
    .D(n8),
    .Q(net295),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_nand2_1 u70 (.Y(n61),
    .A(net297),
    .B(net449));
 sg13g2_nand3b_1 u700 (.B(n669),
    .C(n671),
    .Y(n672),
    .A_N(n667));
 sg13g2_dfrbpq_1 u701 (.RESET_B(net222),
    .D(n673),
    .Q(taps[80]),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi u701_223 (.L_HI(net222));
 sg13g2_inv_1 u702 (.Y(n674),
    .A(taps[80]));
 sg13g2_nand2b_1 u703 (.Y(n675),
    .B(n674),
    .A_N(n672));
 sg13g2_nand2_1 u704 (.Y(n676),
    .A(taps[83]),
    .B(n675));
 sg13g2_dfrbpq_1 u705 (.RESET_B(net223),
    .D(n677),
    .Q(taps[81]),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi u705_224 (.L_HI(net223));
 sg13g2_xor2_1 u706 (.B(taps[81]),
    .A(n676),
    .X(n678));
 sg13g2_dfrbpq_1 u707 (.RESET_B(net224),
    .D(n679),
    .Q(taps[95]),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi u707_225 (.L_HI(net224));
 sg13g2_dfrbpq_1 u708 (.RESET_B(net225),
    .D(n680),
    .Q(taps[92]),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi u708_226 (.L_HI(net225));
 sg13g2_dfrbpq_1 u709 (.RESET_B(net226),
    .D(n681),
    .Q(taps[91]),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi u709_227 (.L_HI(net226));
 sg13g2_o21ai_1 u71 (.B1(n61),
    .Y(n10),
    .A1(net452),
    .A2(n60));
 sg13g2_dfrbpq_1 u710 (.RESET_B(net227),
    .D(n682),
    .Q(taps[90]),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi u710_228 (.L_HI(net227));
 sg13g2_dfrbpq_1 u711 (.RESET_B(net228),
    .D(n683),
    .Q(taps[89]),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi u711_229 (.L_HI(net228));
 sg13g2_dfrbpq_1 u712 (.RESET_B(net229),
    .D(n684),
    .Q(taps[88]),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi u712_230 (.L_HI(net229));
 sg13g2_dfrbpq_1 u713 (.RESET_B(net230),
    .D(n685),
    .Q(taps[87]),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi u713_231 (.L_HI(net230));
 sg13g2_dfrbpq_1 u714 (.RESET_B(net231),
    .D(n686),
    .Q(taps[86]),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi u714_232 (.L_HI(net231));
 sg13g2_dfrbpq_1 u715 (.RESET_B(net232),
    .D(n687),
    .Q(taps[84]),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi u715_233 (.L_HI(net232));
 sg13g2_dfrbpq_1 u716 (.RESET_B(net233),
    .D(n688),
    .Q(taps[85]),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi u716_234 (.L_HI(net233));
 sg13g2_nor3_1 u717 (.A(taps[86]),
    .B(taps[84]),
    .C(taps[85]),
    .Y(n689));
 sg13g2_nor2b_1 u718 (.A(taps[87]),
    .B_N(n689),
    .Y(n690));
 sg13g2_nand2b_1 u719 (.Y(n691),
    .B(n690),
    .A_N(taps[88]));
 sg13g2_dfrbpq_1 u72 (.RESET_B(net234),
    .D(n62),
    .Q(\u_class.acc [17]),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_or2_1 u720 (.X(n692),
    .B(n691),
    .A(taps[89]));
 sg13g2_or3_1 u721 (.A(taps[91]),
    .B(taps[90]),
    .C(n692),
    .X(n693));
 sg13g2_or2_1 u722 (.X(n694),
    .B(n693),
    .A(taps[92]));
 sg13g2_nand2_1 u723 (.Y(n695),
    .A(net459),
    .B(n694));
 sg13g2_dfrbpq_1 u724 (.RESET_B(net235),
    .D(n696),
    .Q(taps[93]),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi u724_236 (.L_HI(net235));
 sg13g2_xor2_1 u725 (.B(taps[93]),
    .A(n695),
    .X(n697));
 sg13g2_and2_1 u726 (.A(n678),
    .B(n697),
    .X(n698));
 sg13g2_nor2_1 u727 (.A(n678),
    .B(n697),
    .Y(n699));
 sg13g2_nor2_1 u728 (.A(n698),
    .B(n699),
    .Y(n700));
 sg13g2_nand2_1 u729 (.Y(n701),
    .A(taps[83]),
    .B(n672));
 sg13g2_tiehi u72_235 (.L_HI(net234));
 sg13g2_inv_1 u73 (.Y(n63),
    .A(\u_class.acc [17]));
 sg13g2_xnor2_1 u730 (.Y(n702),
    .A(taps[80]),
    .B(n701));
 sg13g2_nand2_1 u731 (.Y(n703),
    .A(net459),
    .B(n693));
 sg13g2_xnor2_1 u732 (.Y(n704),
    .A(taps[92]),
    .B(n703));
 sg13g2_nand2_1 u733 (.Y(n705),
    .A(n702),
    .B(n704));
 sg13g2_xor2_1 u734 (.B(n704),
    .A(n702),
    .X(n706));
 sg13g2_o21ai_1 u735 (.B1(taps[83]),
    .Y(n707),
    .A1(taps[78]),
    .A2(n667));
 sg13g2_xnor2_1 u736 (.Y(n708),
    .A(taps[79]),
    .B(n707));
 sg13g2_o21ai_1 u737 (.B1(net459),
    .Y(n709),
    .A1(taps[90]),
    .A2(n692));
 sg13g2_xnor2_1 u738 (.Y(n710),
    .A(taps[91]),
    .B(n709));
 sg13g2_nand2_1 u739 (.Y(n711),
    .A(n708),
    .B(n710));
 sg13g2_nand2_1 u74 (.Y(n64),
    .A(net298),
    .B(net448));
 sg13g2_inv_2 u740 (.Y(n712),
    .A(taps[83]));
 sg13g2_a21oi_1 u741 (.A1(n659),
    .A2(n666),
    .Y(n713),
    .B1(n712));
 sg13g2_xnor2_1 u742 (.Y(n714),
    .A(taps[77]),
    .B(n713));
 sg13g2_nand2_1 u743 (.Y(n715),
    .A(net459),
    .B(n691));
 sg13g2_xor2_1 u744 (.B(n715),
    .A(taps[89]),
    .X(n716));
 sg13g2_and2_1 u745 (.A(n714),
    .B(n716),
    .X(n717));
 sg13g2_nor2_1 u746 (.A(n714),
    .B(n716),
    .Y(n718));
 sg13g2_nor2_1 u747 (.A(n712),
    .B(n666),
    .Y(n719));
 sg13g2_xor2_1 u748 (.B(n719),
    .A(taps[76]),
    .X(n720));
 sg13g2_inv_1 u749 (.Y(n721),
    .A(net459));
 sg13g2_o21ai_1 u75 (.B1(n64),
    .Y(n11),
    .A1(n31),
    .A2(n63));
 sg13g2_nor2_1 u750 (.A(n721),
    .B(n690),
    .Y(n722));
 sg13g2_xor2_1 u751 (.B(n722),
    .A(taps[88]),
    .X(n723));
 sg13g2_nor2_1 u752 (.A(n720),
    .B(n723),
    .Y(n724));
 sg13g2_inv_1 u753 (.Y(n725),
    .A(taps[72]));
 sg13g2_inv_1 u754 (.Y(n726),
    .A(taps[73]));
 sg13g2_a21oi_1 u755 (.A1(n725),
    .A2(n726),
    .Y(n727),
    .B1(n712));
 sg13g2_xor2_1 u756 (.B(n727),
    .A(taps[74]),
    .X(n728));
 sg13g2_o21ai_1 u757 (.B1(taps[95]),
    .Y(n729),
    .A1(taps[84]),
    .A2(taps[85]));
 sg13g2_xnor2_1 u758 (.Y(n730),
    .A(taps[86]),
    .B(n729));
 sg13g2_nand2_1 u759 (.Y(n731),
    .A(n728),
    .B(n730));
 sg13g2_dfrbpq_1 u76 (.RESET_B(net236),
    .D(n65),
    .Q(\u_class.acc [18]),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_xor2_1 u760 (.B(n730),
    .A(n728),
    .X(n732));
 sg13g2_nor2_1 u761 (.A(n712),
    .B(n725),
    .Y(n733));
 sg13g2_xor2_1 u762 (.B(n733),
    .A(taps[73]),
    .X(n734));
 sg13g2_nand2_1 u763 (.Y(n735),
    .A(taps[95]),
    .B(taps[84]));
 sg13g2_xnor2_1 u764 (.Y(n736),
    .A(taps[85]),
    .B(n735));
 sg13g2_nor2_1 u765 (.A(n734),
    .B(n736),
    .Y(n737));
 sg13g2_nand2_2 u766 (.Y(n738),
    .A(taps[72]),
    .B(taps[84]));
 sg13g2_nand2_1 u767 (.Y(n739),
    .A(n734),
    .B(n736));
 sg13g2_o21ai_1 u768 (.B1(n739),
    .Y(n740),
    .A1(n737),
    .A2(n738));
 sg13g2_nand2_1 u769 (.Y(n741),
    .A(n732),
    .B(n740));
 sg13g2_tiehi u76_237 (.L_HI(net236));
 sg13g2_inv_2 u77 (.Y(n66),
    .A(\u_class.acc [18]));
 sg13g2_nand2_1 u770 (.Y(n742),
    .A(n731),
    .B(n741));
 sg13g2_nor2_1 u771 (.A(n712),
    .B(n665),
    .Y(n743));
 sg13g2_xnor2_1 u772 (.Y(n744),
    .A(taps[75]),
    .B(n743));
 sg13g2_nor2_1 u773 (.A(n721),
    .B(n689),
    .Y(n745));
 sg13g2_xnor2_1 u774 (.Y(n746),
    .A(taps[87]),
    .B(n745));
 sg13g2_nand2_1 u775 (.Y(n747),
    .A(n744),
    .B(n746));
 sg13g2_nor2_1 u776 (.A(n744),
    .B(n746),
    .Y(n748));
 sg13g2_a21oi_1 u777 (.A1(n742),
    .A2(n747),
    .Y(n749),
    .B1(n748));
 sg13g2_nand2_1 u778 (.Y(n750),
    .A(n720),
    .B(n723));
 sg13g2_o21ai_1 u779 (.B1(n750),
    .Y(n751),
    .A1(n724),
    .A2(n749));
 sg13g2_nand2_1 u78 (.Y(n67),
    .A(net299),
    .B(net449));
 sg13g2_nor2_1 u780 (.A(n718),
    .B(n751),
    .Y(n752));
 sg13g2_nor2_1 u781 (.A(n717),
    .B(n752),
    .Y(n753));
 sg13g2_nand2_1 u782 (.Y(n754),
    .A(taps[83]),
    .B(n667));
 sg13g2_xor2_1 u783 (.B(n754),
    .A(taps[78]),
    .X(n755));
 sg13g2_nand2_1 u784 (.Y(n756),
    .A(net459),
    .B(n692));
 sg13g2_xor2_1 u785 (.B(n756),
    .A(taps[90]),
    .X(n757));
 sg13g2_or2_1 u786 (.X(n758),
    .B(n757),
    .A(n755));
 sg13g2_nor2b_1 u787 (.A(n753),
    .B_N(n758),
    .Y(n759));
 sg13g2_nand2_1 u788 (.Y(n760),
    .A(n755),
    .B(n757));
 sg13g2_nand2b_1 u789 (.Y(n761),
    .B(n760),
    .A_N(n759));
 sg13g2_o21ai_1 u79 (.B1(n67),
    .Y(n12),
    .A1(net452),
    .A2(n66));
 sg13g2_nor2_1 u790 (.A(n708),
    .B(n710),
    .Y(n762));
 sg13g2_a21oi_1 u791 (.A1(n711),
    .A2(n761),
    .Y(n763),
    .B1(n762));
 sg13g2_nand2_1 u792 (.Y(n764),
    .A(n706),
    .B(n763));
 sg13g2_nand2_1 u793 (.Y(n765),
    .A(n705),
    .B(n764));
 sg13g2_xor2_1 u794 (.B(n765),
    .A(n700),
    .X(n766));
 sg13g2_nor2_1 u795 (.A(n654),
    .B(n766),
    .Y(n767));
 sg13g2_xor2_1 u796 (.B(n637),
    .A(n638),
    .X(n768));
 sg13g2_o21ai_1 u797 (.B1(n764),
    .Y(n769),
    .A1(n706),
    .A2(n763));
 sg13g2_and2_1 u798 (.A(n768),
    .B(n769),
    .X(n770));
 sg13g2_nor2_1 u799 (.A(n768),
    .B(n769),
    .Y(n771));
 sg13g2_tiehi u7_222 (.L_HI(net221));
 sg13g2_dfrbpq_1 u8 (.RESET_B(net237),
    .D(n9),
    .Q(net296),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_dfrbpq_1 u80 (.RESET_B(net238),
    .D(n68),
    .Q(\u_zcr.cross_cnt [0]),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_xnor2_1 u800 (.Y(n772),
    .A(n635),
    .B(n634));
 sg13g2_nor2b_1 u801 (.A(n762),
    .B_N(n711),
    .Y(n773));
 sg13g2_xnor2_1 u802 (.Y(n774),
    .A(n761),
    .B(n773));
 sg13g2_nor2_1 u803 (.A(n772),
    .B(n774),
    .Y(n775));
 sg13g2_nand2_1 u804 (.Y(n776),
    .A(n760),
    .B(n758));
 sg13g2_a22oi_1 u805 (.Y(n777),
    .B1(n753),
    .B2(n776),
    .A2(n759),
    .A1(n760));
 sg13g2_nor2b_1 u806 (.A(n590),
    .B_N(n633),
    .Y(n778));
 sg13g2_xor2_1 u807 (.B(n778),
    .A(n632),
    .X(n779));
 sg13g2_nand2b_1 u808 (.Y(n780),
    .B(n779),
    .A_N(n777));
 sg13g2_nor2_1 u809 (.A(n717),
    .B(n718),
    .Y(n781));
 sg13g2_tiehi u80_239 (.L_HI(net238));
 sg13g2_dfrbpq_1 u81 (.RESET_B(net239),
    .D(n69),
    .Q(\u_zcr.pol ),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_xor2_1 u810 (.B(n781),
    .A(n751),
    .X(n782));
 sg13g2_nor2b_1 u811 (.A(n631),
    .B_N(n597),
    .Y(n783));
 sg13g2_xnor2_1 u812 (.Y(n784),
    .A(n630),
    .B(n783));
 sg13g2_and2_1 u813 (.A(n782),
    .B(n784),
    .X(n785));
 sg13g2_nor2_1 u814 (.A(n782),
    .B(n784),
    .Y(n786));
 sg13g2_nor2b_1 u815 (.A(n724),
    .B_N(n750),
    .Y(n787));
 sg13g2_xnor2_1 u816 (.Y(n788),
    .A(n749),
    .B(n787));
 sg13g2_nor2b_1 u817 (.A(n602),
    .B_N(n629),
    .Y(n789));
 sg13g2_xor2_1 u818 (.B(n789),
    .A(n628),
    .X(n790));
 sg13g2_nor2_1 u819 (.A(n788),
    .B(n790),
    .Y(n791));
 sg13g2_tiehi u81_240 (.L_HI(net239));
 sg13g2_inv_1 u82 (.Y(n70),
    .A(net263));
 sg13g2_nor2b_1 u820 (.A(n607),
    .B_N(n627),
    .Y(n792));
 sg13g2_xnor2_1 u821 (.Y(n793),
    .A(n626),
    .B(n792));
 sg13g2_nor2b_1 u822 (.A(n748),
    .B_N(n747),
    .Y(n794));
 sg13g2_xor2_1 u823 (.B(n794),
    .A(n742),
    .X(n795));
 sg13g2_and2_1 u824 (.A(n793),
    .B(n795),
    .X(n796));
 sg13g2_nor2_1 u825 (.A(n793),
    .B(n795),
    .Y(n797));
 sg13g2_xor2_1 u826 (.B(n740),
    .A(n732),
    .X(n798));
 sg13g2_nor2b_1 u827 (.A(n616),
    .B_N(n625),
    .Y(n799));
 sg13g2_xor2_1 u828 (.B(n799),
    .A(n624),
    .X(n800));
 sg13g2_nor2_1 u829 (.A(n798),
    .B(n800),
    .Y(n801));
 sg13g2_inv_1 u83 (.Y(n71),
    .A(net264));
 sg13g2_nor2b_2 u830 (.A(n621),
    .B_N(n623),
    .Y(n802));
 sg13g2_xnor2_1 u831 (.Y(n803),
    .A(n622),
    .B(n802));
 sg13g2_nor2b_2 u832 (.A(n737),
    .B_N(n739),
    .Y(n804));
 sg13g2_xnor2_1 u833 (.Y(n805),
    .A(n738),
    .B(n804));
 sg13g2_nand2_1 u834 (.Y(n806),
    .A(n803),
    .B(n805));
 sg13g2_o21ai_1 u835 (.B1(n622),
    .Y(n807),
    .A1(taps[48]),
    .A2(taps[60]));
 sg13g2_o21ai_1 u836 (.B1(n738),
    .Y(n808),
    .A1(taps[72]),
    .A2(taps[84]));
 sg13g2_or2_1 u837 (.X(n809),
    .B(n808),
    .A(n807));
 sg13g2_a21oi_1 u838 (.A1(n802),
    .A2(n804),
    .Y(n810),
    .B1(n809));
 sg13g2_o21ai_1 u839 (.B1(n810),
    .Y(n811),
    .A1(n802),
    .A2(n804));
 sg13g2_inv_1 u84 (.Y(n72),
    .A(net265));
 sg13g2_and2_1 u840 (.A(n806),
    .B(n811),
    .X(n812));
 sg13g2_nand2_1 u841 (.Y(n813),
    .A(n798),
    .B(n800));
 sg13g2_o21ai_1 u842 (.B1(n813),
    .Y(n814),
    .A1(n801),
    .A2(n812));
 sg13g2_nor2b_1 u843 (.A(n797),
    .B_N(n814),
    .Y(n815));
 sg13g2_nor2_1 u844 (.A(n796),
    .B(n815),
    .Y(n816));
 sg13g2_nand2_1 u845 (.Y(n817),
    .A(n788),
    .B(n790));
 sg13g2_o21ai_1 u846 (.B1(n817),
    .Y(n818),
    .A1(n791),
    .A2(n816));
 sg13g2_nor2b_1 u847 (.A(n786),
    .B_N(n818),
    .Y(n819));
 sg13g2_nor2_1 u848 (.A(n785),
    .B(n819),
    .Y(n820));
 sg13g2_nor2b_1 u849 (.A(n779),
    .B_N(n777),
    .Y(n821));
 sg13g2_inv_1 u85 (.Y(n73),
    .A(net266));
 sg13g2_a21o_1 u850 (.A2(n820),
    .A1(n780),
    .B1(n821),
    .X(n822));
 sg13g2_nand2_1 u851 (.Y(n823),
    .A(n772),
    .B(n774));
 sg13g2_o21ai_1 u852 (.B1(n823),
    .Y(n824),
    .A1(n775),
    .A2(n822));
 sg13g2_nor2_1 u853 (.A(n771),
    .B(n824),
    .Y(n825));
 sg13g2_or2_1 u854 (.X(n826),
    .B(n825),
    .A(n770));
 sg13g2_nand2_1 u855 (.Y(n827),
    .A(n654),
    .B(n766));
 sg13g2_o21ai_1 u856 (.B1(n827),
    .Y(n828),
    .A1(n767),
    .A2(n826));
 sg13g2_o21ai_1 u857 (.B1(taps[83]),
    .Y(n829),
    .A1(n675),
    .A2(taps[81]));
 sg13g2_dfrbpq_1 u858 (.RESET_B(net240),
    .D(n830),
    .Q(taps[82]),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi u858_241 (.L_HI(net240));
 sg13g2_xnor2_1 u859 (.Y(n831),
    .A(n829),
    .B(taps[82]));
 sg13g2_nand4_1 u86 (.B(n71),
    .C(n72),
    .A(n70),
    .Y(n74),
    .D(n73));
 sg13g2_o21ai_1 u860 (.B1(net459),
    .Y(n832),
    .A1(n694),
    .A2(taps[93]));
 sg13g2_dfrbpq_1 u861 (.RESET_B(net241),
    .D(n833),
    .Q(taps[94]),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi u861_242 (.L_HI(net241));
 sg13g2_xnor2_1 u862 (.Y(n834),
    .A(n832),
    .B(taps[94]));
 sg13g2_xor2_1 u863 (.B(n834),
    .A(n831),
    .X(n835));
 sg13g2_nor2_1 u864 (.A(n699),
    .B(n765),
    .Y(n836));
 sg13g2_nor2_1 u865 (.A(n698),
    .B(n836),
    .Y(n837));
 sg13g2_nand2_1 u866 (.Y(n838),
    .A(n835),
    .B(n837));
 sg13g2_o21ai_1 u867 (.B1(n838),
    .Y(n839),
    .A1(n835),
    .A2(n837));
 sg13g2_o21ai_1 u868 (.B1(taps[59]),
    .Y(n840),
    .A1(n642),
    .A2(taps[57]));
 sg13g2_dfrbpq_1 u869 (.RESET_B(net242),
    .D(n841),
    .Q(taps[58]),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi u869_243 (.L_HI(net242));
 sg13g2_nor3_1 u87 (.A(net261),
    .B(net262),
    .C(n74),
    .Y(n75));
 sg13g2_xnor2_1 u870 (.Y(n842),
    .A(n840),
    .B(taps[58]));
 sg13g2_o21ai_1 u871 (.B1(taps[71]),
    .Y(n843),
    .A1(n647),
    .A2(taps[69]));
 sg13g2_dfrbpq_1 u872 (.RESET_B(net243),
    .D(n844),
    .Q(taps[70]),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi u872_244 (.L_HI(net243));
 sg13g2_xnor2_1 u873 (.Y(n845),
    .A(n843),
    .B(taps[70]));
 sg13g2_xor2_1 u874 (.B(n845),
    .A(n842),
    .X(n846));
 sg13g2_o21ai_1 u875 (.B1(n652),
    .Y(n847),
    .A1(n640),
    .A2(n651));
 sg13g2_nand2_1 u876 (.Y(n848),
    .A(n846),
    .B(n847));
 sg13g2_o21ai_1 u877 (.B1(n848),
    .Y(n849),
    .A1(n846),
    .A2(n847));
 sg13g2_and2_1 u878 (.A(n839),
    .B(n849),
    .X(n850));
 sg13g2_nor2_1 u879 (.A(n839),
    .B(n849),
    .Y(n851));
 sg13g2_or4_1 u88 (.A(net256),
    .B(net257),
    .C(net258),
    .D(net259),
    .X(n76));
 sg13g2_nor2_1 u880 (.A(n850),
    .B(n851),
    .Y(n852));
 sg13g2_xnor2_1 u881 (.Y(n853),
    .A(n828),
    .B(n852));
 sg13g2_and2_1 u882 (.A(n539),
    .B(n853),
    .X(n854));
 sg13g2_nor2_1 u883 (.A(n539),
    .B(n853),
    .Y(n855));
 sg13g2_nor2_1 u884 (.A(n854),
    .B(n855),
    .Y(n856));
 sg13g2_nor2_1 u885 (.A(n453),
    .B(n454),
    .Y(n857));
 sg13g2_xnor2_1 u886 (.Y(n858),
    .A(n515),
    .B(n857));
 sg13g2_nor2b_1 u887 (.A(n767),
    .B_N(n827),
    .Y(n859));
 sg13g2_xnor2_1 u888 (.Y(n860),
    .A(n826),
    .B(n859));
 sg13g2_and2_1 u889 (.A(n858),
    .B(n860),
    .X(n861));
 sg13g2_nand2_1 u89 (.Y(n77),
    .A(net260),
    .B(n76));
 sg13g2_nor2_1 u890 (.A(n770),
    .B(n771),
    .Y(n862));
 sg13g2_xor2_1 u891 (.B(n862),
    .A(n824),
    .X(n863));
 sg13g2_nor2_1 u892 (.A(n458),
    .B(n459),
    .Y(n864));
 sg13g2_xor2_1 u893 (.B(n864),
    .A(n513),
    .X(n865));
 sg13g2_nor2b_1 u894 (.A(n463),
    .B_N(n512),
    .Y(n866));
 sg13g2_xnor2_1 u895 (.Y(n867),
    .A(n511),
    .B(n866));
 sg13g2_nor2b_1 u896 (.A(n775),
    .B_N(n823),
    .Y(n868));
 sg13g2_xnor2_1 u897 (.Y(n869),
    .A(n822),
    .B(n868));
 sg13g2_nor2_1 u898 (.A(n867),
    .B(n869),
    .Y(n870));
 sg13g2_nor2b_1 u899 (.A(n821),
    .B_N(n780),
    .Y(n871));
 sg13g2_tiehi u8_238 (.L_HI(net237));
 sg13g2_dfrbpq_1 u9 (.RESET_B(net244),
    .D(n10),
    .Q(net297),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_a21o_1 u90 (.A2(n77),
    .A1(n75),
    .B1(net267),
    .X(n78));
 sg13g2_xnor2_1 u900 (.Y(n872),
    .A(n820),
    .B(n871));
 sg13g2_nor2_1 u901 (.A(n467),
    .B(n468),
    .Y(n873));
 sg13g2_xor2_1 u902 (.B(n873),
    .A(n509),
    .X(n874));
 sg13g2_and2_1 u903 (.A(n872),
    .B(n874),
    .X(n875));
 sg13g2_nor2_1 u904 (.A(n872),
    .B(n874),
    .Y(n876));
 sg13g2_a21oi_1 u905 (.A1(n470),
    .A2(n472),
    .Y(n877),
    .B1(n473));
 sg13g2_xnor2_1 u906 (.Y(n878),
    .A(n507),
    .B(n877));
 sg13g2_nor2_1 u907 (.A(n785),
    .B(n786),
    .Y(n879));
 sg13g2_xnor2_1 u908 (.Y(n880),
    .A(n818),
    .B(n879));
 sg13g2_and2_1 u909 (.A(n878),
    .B(n880),
    .X(n881));
 sg13g2_nand2b_1 u91 (.Y(n79),
    .B(n78),
    .A_N(\u_zcr.pol ));
 sg13g2_nor2_1 u910 (.A(n878),
    .B(n880),
    .Y(n882));
 sg13g2_nor2b_1 u911 (.A(n791),
    .B_N(n817),
    .Y(n883));
 sg13g2_xnor2_1 u912 (.Y(n884),
    .A(n816),
    .B(n883));
 sg13g2_nor2_1 u913 (.A(n478),
    .B(n479),
    .Y(n885));
 sg13g2_xnor2_1 u914 (.Y(n886),
    .A(n505),
    .B(n885));
 sg13g2_xnor2_1 u915 (.Y(n887),
    .A(n503),
    .B(n502));
 sg13g2_nor2_1 u916 (.A(n796),
    .B(n797),
    .Y(n888));
 sg13g2_xor2_1 u917 (.B(n888),
    .A(n814),
    .X(n889));
 sg13g2_and2_1 u918 (.A(n887),
    .B(n889),
    .X(n890));
 sg13g2_nor2_1 u919 (.A(n887),
    .B(n889),
    .Y(n891));
 sg13g2_dfrbpq_1 u92 (.RESET_B(net245),
    .D(n80),
    .Q(\u_zcr.pol_valid ),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_nor2_1 u920 (.A(n488),
    .B(n489),
    .Y(n892));
 sg13g2_xnor2_1 u921 (.Y(n893),
    .A(n500),
    .B(n892));
 sg13g2_nor2b_1 u922 (.A(n801),
    .B_N(n813),
    .Y(n894));
 sg13g2_xor2_1 u923 (.B(n894),
    .A(n812),
    .X(n895));
 sg13g2_a22oi_1 u924 (.Y(n896),
    .B1(n807),
    .B2(n808),
    .A2(n496),
    .A1(n495));
 sg13g2_nand3_1 u925 (.B(n809),
    .C(n896),
    .A(n497),
    .Y(n897));
 sg13g2_o21ai_1 u926 (.B1(n494),
    .Y(n898),
    .A1(n491),
    .A2(n493));
 sg13g2_nand2_1 u927 (.Y(n899),
    .A(n497),
    .B(n898));
 sg13g2_nand2_1 u928 (.Y(n900),
    .A(n499),
    .B(n899));
 sg13g2_nand2_1 u929 (.Y(n901),
    .A(n897),
    .B(n900));
 sg13g2_tiehi u92_246 (.L_HI(net245));
 sg13g2_inv_1 u93 (.Y(n81),
    .A(net267));
 sg13g2_o21ai_1 u930 (.B1(n806),
    .Y(n902),
    .A1(n803),
    .A2(n805));
 sg13g2_nand2_1 u931 (.Y(n903),
    .A(n809),
    .B(n902));
 sg13g2_nand2_1 u932 (.Y(n904),
    .A(n811),
    .B(n903));
 sg13g2_o21ai_1 u933 (.B1(n904),
    .Y(n905),
    .A1(n897),
    .A2(n898));
 sg13g2_nor2_1 u934 (.A(n893),
    .B(n895),
    .Y(n906));
 sg13g2_a21oi_1 u935 (.A1(n901),
    .A2(n905),
    .Y(n907),
    .B1(n906));
 sg13g2_a21oi_1 u936 (.A1(n893),
    .A2(n895),
    .Y(n908),
    .B1(n907));
 sg13g2_nor2b_1 u937 (.A(n891),
    .B_N(n908),
    .Y(n909));
 sg13g2_nor2_1 u938 (.A(n890),
    .B(n909),
    .Y(n910));
 sg13g2_xor2_1 u939 (.B(n886),
    .A(n884),
    .X(n911));
 sg13g2_nand4_1 u94 (.B(net261),
    .C(net262),
    .A(net260),
    .Y(n82),
    .D(net263));
 sg13g2_nor2b_1 u940 (.A(n910),
    .B_N(n911),
    .Y(n912));
 sg13g2_a21oi_1 u941 (.A1(n884),
    .A2(n886),
    .Y(n913),
    .B1(n912));
 sg13g2_nor2b_1 u942 (.A(n882),
    .B_N(n913),
    .Y(n914));
 sg13g2_nor2_1 u943 (.A(n881),
    .B(n914),
    .Y(n915));
 sg13g2_nor2b_1 u944 (.A(n876),
    .B_N(n915),
    .Y(n916));
 sg13g2_nor2_1 u945 (.A(n875),
    .B(n916),
    .Y(n917));
 sg13g2_nor2_1 u946 (.A(n870),
    .B(n917),
    .Y(n918));
 sg13g2_nand2_1 u947 (.Y(n919),
    .A(n867),
    .B(n869));
 sg13g2_nor2b_1 u948 (.A(n918),
    .B_N(n919),
    .Y(n920));
 sg13g2_xor2_1 u949 (.B(n865),
    .A(n863),
    .X(n921));
 sg13g2_nor4_1 u95 (.A(n71),
    .B(n72),
    .C(n73),
    .D(n82),
    .Y(n83));
 sg13g2_nor2b_1 u950 (.A(n920),
    .B_N(n921),
    .Y(n922));
 sg13g2_a21oi_1 u951 (.A1(n863),
    .A2(n865),
    .Y(n923),
    .B1(n922));
 sg13g2_nor2_1 u952 (.A(n858),
    .B(n860),
    .Y(n924));
 sg13g2_nor2_1 u953 (.A(n923),
    .B(n924),
    .Y(n925));
 sg13g2_or2_1 u954 (.X(n926),
    .B(n925),
    .A(n861));
 sg13g2_xor2_1 u955 (.B(n926),
    .A(n856),
    .X(n927));
 sg13g2_xor2_1 u956 (.B(n927),
    .A(\u_class.acc [7]),
    .X(n928));
 sg13g2_dfrbpq_1 u957 (.RESET_B(net246),
    .D(n929),
    .Q(\u_class.acc [6]),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi u957_247 (.L_HI(net246));
 sg13g2_nor2_1 u958 (.A(n861),
    .B(n924),
    .Y(n930));
 sg13g2_xnor2_1 u959 (.Y(n931),
    .A(n923),
    .B(n930));
 sg13g2_o21ai_1 u96 (.B1(\u_zcr.pol ),
    .Y(n84),
    .A1(n81),
    .A2(n83));
 sg13g2_xor2_1 u960 (.B(n931),
    .A(\u_class.acc [6]),
    .X(n932));
 sg13g2_dfrbpq_1 u961 (.RESET_B(net247),
    .D(n933),
    .Q(\u_class.acc [4]),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi u961_248 (.L_HI(net247));
 sg13g2_nand2b_1 u962 (.Y(n934),
    .B(n919),
    .A_N(n870));
 sg13g2_a22oi_1 u963 (.Y(n935),
    .B1(n917),
    .B2(n934),
    .A2(n918),
    .A1(n919));
 sg13g2_xor2_1 u964 (.B(n935),
    .A(\u_class.acc [4]),
    .X(n936));
 sg13g2_dfrbpq_1 u965 (.RESET_B(net248),
    .D(n937),
    .Q(\u_class.acc [2]),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi u965_249 (.L_HI(net248));
 sg13g2_nor2_1 u966 (.A(n881),
    .B(n882),
    .Y(n938));
 sg13g2_xnor2_1 u967 (.Y(n939),
    .A(n913),
    .B(n938));
 sg13g2_xor2_1 u968 (.B(n939),
    .A(\u_class.acc [2]),
    .X(n940));
 sg13g2_dfrbpq_1 u969 (.RESET_B(net249),
    .D(n941),
    .Q(\u_class.acc [1]),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi u969_250 (.L_HI(net249));
 sg13g2_and4_1 u97 (.A(net255),
    .B(n79),
    .C(\u_zcr.pol_valid ),
    .D(n84),
    .X(n85));
 sg13g2_xnor2_1 u970 (.Y(n942),
    .A(n911),
    .B(n910));
 sg13g2_nor2_1 u971 (.A(\u_class.acc [1]),
    .B(n942),
    .Y(n943));
 sg13g2_dfrbpq_1 u972 (.RESET_B(net250),
    .D(n944),
    .Q(\u_class.acc [0]),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_tiehi u972_251 (.L_HI(net250));
 sg13g2_nor2_1 u973 (.A(n890),
    .B(n891),
    .Y(n945));
 sg13g2_xor2_1 u974 (.B(n945),
    .A(n908),
    .X(n946));
 sg13g2_and2_1 u975 (.A(\u_class.acc [0]),
    .B(n946),
    .X(n947));
 sg13g2_a21oi_1 u976 (.A1(\u_class.acc [1]),
    .A2(n942),
    .Y(n948),
    .B1(n947));
 sg13g2_nor2_1 u977 (.A(n943),
    .B(n948),
    .Y(n949));
 sg13g2_and2_1 u978 (.A(n940),
    .B(n949),
    .X(n950));
 sg13g2_a21o_1 u979 (.A2(n939),
    .A1(\u_class.acc [2]),
    .B1(n950),
    .X(n951));
 sg13g2_xor2_1 u98 (.B(n85),
    .A(\u_zcr.cross_cnt [0]),
    .X(n86));
 sg13g2_dfrbpq_1 u980 (.RESET_B(net251),
    .D(n952),
    .Q(\u_class.acc [3]),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_tiehi u980_252 (.L_HI(net251));
 sg13g2_nor2_1 u981 (.A(n875),
    .B(n876),
    .Y(n953));
 sg13g2_xor2_1 u982 (.B(n953),
    .A(n915),
    .X(n954));
 sg13g2_nand2_1 u983 (.Y(n955),
    .A(\u_class.acc [3]),
    .B(n954));
 sg13g2_nor2b_1 u984 (.A(n951),
    .B_N(n955),
    .Y(n956));
 sg13g2_or2_1 u985 (.X(n957),
    .B(n954),
    .A(\u_class.acc [3]));
 sg13g2_nor2b_1 u986 (.A(n956),
    .B_N(n957),
    .Y(n958));
 sg13g2_a22oi_1 u987 (.Y(n959),
    .B1(n936),
    .B2(n958),
    .A2(n935),
    .A1(\u_class.acc [4]));
 sg13g2_dfrbpq_1 u988 (.RESET_B(net252),
    .D(n960),
    .Q(\u_class.acc [5]),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi u988_253 (.L_HI(net252));
 sg13g2_xnor2_1 u989 (.Y(n961),
    .A(n921),
    .B(n920));
 sg13g2_dfrbpq_1 u99 (.RESET_B(net253),
    .D(n87),
    .Q(\u_zcr.win_cnt [6]),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_nor2_1 u990 (.A(\u_class.acc [5]),
    .B(n961),
    .Y(n962));
 sg13g2_nand2_1 u991 (.Y(n963),
    .A(\u_class.acc [5]),
    .B(n961));
 sg13g2_o21ai_1 u992 (.B1(n963),
    .Y(n964),
    .A1(n959),
    .A2(n962));
 sg13g2_and2_1 u993 (.A(n932),
    .B(n964),
    .X(n965));
 sg13g2_a21o_1 u994 (.A2(n931),
    .A1(\u_class.acc [6]),
    .B1(n965),
    .X(n966));
 sg13g2_xnor2_1 u995 (.Y(n967),
    .A(n928),
    .B(n966));
 sg13g2_inv_2 u996 (.Y(n968),
    .A(zcr_valid));
 sg13g2_nand2_2 u997 (.Y(n969),
    .A(net506),
    .B(n968));
 sg13g2_nor2_2 u998 (.A(net471),
    .B(n969),
    .Y(n970));
 sg13g2_inv_4 u999 (.A(net483),
    .Y(n971));
 sg13g2_tiehi u99_254 (.L_HI(net253));
 sg13g2_tiehi u9_245 (.L_HI(net244));
endmodule
