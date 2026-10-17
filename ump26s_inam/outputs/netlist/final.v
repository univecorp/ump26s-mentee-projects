module top (clk,
    rst_n,
    start,
    operation_mode,
    digit_valid,
    submit,
    busy,
    done,
    diagnosis_valid,
    bcd_digit,
    bug_id,
    confidence,
    correct_result,
    digit_index,
    error_col,
    error_row,
    field_id,
    mismatch_score);
 input clk;
 input rst_n;
 input start;
 input operation_mode;
 input digit_valid;
 input submit;
 output busy;
 output done;
 output diagnosis_valid;
 input [3:0] bcd_digit;
 output [3:0] bug_id;
 output [1:0] confidence;
 output [19:0] correct_result;
 input [2:0] digit_index;
 output [2:0] error_col;
 output [1:0] error_row;
 input [2:0] field_id;
 output [3:0] mismatch_score;

 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
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
 wire n1;
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
 wire \engine.operation_reg ;
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
 wire n141;
 wire n142;
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
 wire \engine.invalid_bcd ;
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
 wire net196;
 wire net195;
 wire net194;
 wire net210;
 wire net193;
 wire net;
 wire net57;
 wire net197;
 wire net198;
 wire net209;
 wire net202;
 wire clknet_4_2_0_clk;
 wire clknet_4_1_0_clk;
 wire net203;
 wire clknet_4_0_0_clk;
 wire clknet_4_9_0_clk;
 wire net204;
 wire net205;
 wire net206;
 wire net207;
 wire net208;
 wire net214;
 wire net213;
 wire net212;
 wire net217;
 wire net215;
 wire net216;
 wire clknet_4_8_0_clk;
 wire clknet_0_clk;
 wire clknet_4_6_0_clk;
 wire clknet_4_7_0_clk;
 wire clknet_4_5_0_clk;
 wire clknet_4_3_0_clk;
 wire clknet_4_4_0_clk;
 wire net191;
 wire net201;
 wire net199;
 wire net200;
 wire net221;
 wire net218;
 wire net219;
 wire net220;
 wire net222;
 wire clknet_4_12_0_clk;
 wire clknet_4_11_0_clk;
 wire clknet_4_10_0_clk;
 wire net223;
 wire net224;
 wire net225;
 wire clknet_4_13_0_clk;
 wire net192;
 wire net211;
 wire clknet_4_14_0_clk;
 wire clknet_4_15_0_clk;
 wire [3:0] \engine.carries_bcd ;
 wire [0:0] \engine.carries_mask ;
 wire [3:0] \engine.final_bcd ;
 wire [5:0] \engine.final_mask ;
 wire [3:0] \engine.operand_a_bcd ;
 wire [2:0] \engine.operand_a_mask ;
 wire [3:0] \engine.operand_b_bcd ;
 wire [2:0] \engine.operand_b_mask ;
 wire [3:0] \engine.partial_0_bcd ;
 wire [5:0] \engine.partial_0_mask ;
 wire [3:0] \engine.partial_1_bcd ;

 sg13g2_buf_8 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
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
 sg13g2_inv_1 clkload0 (.A(clknet_4_1_0_clk));
 sg13g2_inv_1 clkload1 (.A(clknet_4_2_0_clk));
 sg13g2_inv_1 clkload10 (.A(clknet_4_11_0_clk));
 sg13g2_inv_1 clkload11 (.A(clknet_4_12_0_clk));
 sg13g2_inv_1 clkload12 (.A(clknet_4_13_0_clk));
 sg13g2_inv_1 clkload13 (.A(clknet_4_14_0_clk));
 sg13g2_inv_1 clkload14 (.A(clknet_4_15_0_clk));
 sg13g2_inv_1 clkload2 (.A(clknet_4_3_0_clk));
 sg13g2_inv_1 clkload3 (.A(clknet_4_4_0_clk));
 sg13g2_inv_1 clkload4 (.A(clknet_4_5_0_clk));
 sg13g2_inv_1 clkload5 (.A(clknet_4_6_0_clk));
 sg13g2_inv_1 clkload6 (.A(clknet_4_7_0_clk));
 sg13g2_inv_1 clkload7 (.A(clknet_4_8_0_clk));
 sg13g2_inv_1 clkload8 (.A(clknet_4_9_0_clk));
 sg13g2_inv_1 clkload9 (.A(clknet_4_10_0_clk));
 sg13g2_buf_1 input58 (.A(rst_n),
    .X(net58));
 sg13g2_buf_1 input59 (.A(start),
    .X(net59));
 sg13g2_buf_1 input60 (.A(operation_mode),
    .X(net60));
 sg13g2_buf_1 input61 (.A(digit_valid),
    .X(net61));
 sg13g2_buf_1 input62 (.A(submit),
    .X(net62));
 sg13g2_buf_1 input63 (.A(field_id[0]),
    .X(net63));
 sg13g2_buf_1 input64 (.A(field_id[1]),
    .X(net64));
 sg13g2_buf_1 input65 (.A(field_id[2]),
    .X(net65));
 sg13g2_buf_1 input66 (.A(digit_index[0]),
    .X(net66));
 sg13g2_buf_1 input67 (.A(digit_index[1]),
    .X(net67));
 sg13g2_buf_1 input68 (.A(digit_index[2]),
    .X(net68));
 sg13g2_buf_1 input69 (.A(bcd_digit[0]),
    .X(net69));
 sg13g2_buf_1 input70 (.A(bcd_digit[1]),
    .X(net70));
 sg13g2_buf_1 input71 (.A(bcd_digit[2]),
    .X(net71));
 sg13g2_buf_1 input72 (.A(bcd_digit[3]),
    .X(net72));
 sg13g2_buf_1 output100 (.A(net100),
    .X(correct_result[14]));
 sg13g2_buf_1 output101 (.A(net101),
    .X(correct_result[15]));
 sg13g2_buf_1 output102 (.A(net102),
    .X(correct_result[16]));
 sg13g2_buf_1 output103 (.A(net103),
    .X(correct_result[17]));
 sg13g2_buf_1 output104 (.A(net104),
    .X(correct_result[18]));
 sg13g2_buf_1 output105 (.A(net105),
    .X(correct_result[19]));
 sg13g2_buf_1 output106 (.A(net106),
    .X(mismatch_score[0]));
 sg13g2_buf_1 output107 (.A(net107),
    .X(mismatch_score[1]));
 sg13g2_buf_1 output108 (.A(net108),
    .X(mismatch_score[2]));
 sg13g2_buf_1 output73 (.A(net73),
    .X(busy));
 sg13g2_buf_1 output74 (.A(net74),
    .X(done));
 sg13g2_buf_1 output75 (.A(net75),
    .X(diagnosis_valid));
 sg13g2_buf_1 output76 (.A(net76),
    .X(bug_id[0]));
 sg13g2_buf_1 output77 (.A(net77),
    .X(bug_id[1]));
 sg13g2_buf_1 output78 (.A(net78),
    .X(bug_id[2]));
 sg13g2_buf_1 output79 (.A(net79),
    .X(bug_id[3]));
 sg13g2_buf_1 output80 (.A(net80),
    .X(error_row[0]));
 sg13g2_buf_1 output81 (.A(net81),
    .X(error_row[1]));
 sg13g2_buf_1 output82 (.A(net82),
    .X(error_col[0]));
 sg13g2_buf_1 output83 (.A(net83),
    .X(error_col[1]));
 sg13g2_buf_1 output84 (.A(net84),
    .X(confidence[0]));
 sg13g2_buf_1 output85 (.A(net85),
    .X(confidence[1]));
 sg13g2_buf_1 output86 (.A(net86),
    .X(correct_result[0]));
 sg13g2_buf_1 output87 (.A(net87),
    .X(correct_result[1]));
 sg13g2_buf_1 output88 (.A(net88),
    .X(correct_result[2]));
 sg13g2_buf_1 output89 (.A(net89),
    .X(correct_result[3]));
 sg13g2_buf_1 output90 (.A(net90),
    .X(correct_result[4]));
 sg13g2_buf_1 output91 (.A(net91),
    .X(correct_result[5]));
 sg13g2_buf_1 output92 (.A(net92),
    .X(correct_result[6]));
 sg13g2_buf_1 output93 (.A(net93),
    .X(correct_result[7]));
 sg13g2_buf_1 output94 (.A(net94),
    .X(correct_result[8]));
 sg13g2_buf_1 output95 (.A(net95),
    .X(correct_result[9]));
 sg13g2_buf_1 output96 (.A(net96),
    .X(correct_result[10]));
 sg13g2_buf_1 output97 (.A(net97),
    .X(correct_result[11]));
 sg13g2_buf_1 output98 (.A(net98),
    .X(correct_result[12]));
 sg13g2_buf_1 output99 (.A(net99),
    .X(correct_result[13]));
 sg13g2_buf_1 place191 (.A(n107),
    .X(net191));
 sg13g2_buf_1 place192 (.A(n465),
    .X(net192));
 sg13g2_buf_1 place193 (.A(n439),
    .X(net193));
 sg13g2_buf_1 place194 (.A(n432),
    .X(net194));
 sg13g2_buf_1 place195 (.A(n421),
    .X(net195));
 sg13g2_buf_1 place196 (.A(n416),
    .X(net196));
 sg13g2_buf_1 place197 (.A(n123),
    .X(net197));
 sg13g2_buf_1 place198 (.A(n40),
    .X(net198));
 sg13g2_buf_1 place199 (.A(net200),
    .X(net199));
 sg13g2_buf_1 place200 (.A(net201),
    .X(net200));
 sg13g2_buf_1 place201 (.A(n40),
    .X(net201));
 sg13g2_buf_1 place202 (.A(\engine.operand_b_bcd [0]),
    .X(net202));
 sg13g2_buf_1 place203 (.A(\engine.operand_b_bcd [1]),
    .X(net203));
 sg13g2_buf_1 place204 (.A(\engine.operand_b_bcd [3]),
    .X(net204));
 sg13g2_buf_1 place205 (.A(\engine.operand_b_bcd [2]),
    .X(net205));
 sg13g2_buf_1 place206 (.A(\engine.operand_a_bcd [0]),
    .X(net206));
 sg13g2_buf_1 place207 (.A(\engine.operand_a_bcd [1]),
    .X(net207));
 sg13g2_buf_1 place208 (.A(net211),
    .X(net208));
 sg13g2_buf_1 place209 (.A(net210),
    .X(net209));
 sg13g2_buf_1 place210 (.A(net211),
    .X(net210));
 sg13g2_buf_1 place211 (.A(n38),
    .X(net211));
 sg13g2_buf_1 place212 (.A(net59),
    .X(net212));
 sg13g2_buf_1 place213 (.A(net59),
    .X(net213));
 sg13g2_buf_1 place214 (.A(net59),
    .X(net214));
 sg13g2_buf_1 place215 (.A(net216),
    .X(net215));
 sg13g2_buf_1 place216 (.A(net217),
    .X(net216));
 sg13g2_buf_1 place217 (.A(net218),
    .X(net217));
 sg13g2_buf_1 place218 (.A(net219),
    .X(net218));
 sg13g2_buf_1 place219 (.A(net220),
    .X(net219));
 sg13g2_buf_1 place220 (.A(net221),
    .X(net220));
 sg13g2_buf_1 place221 (.A(net58),
    .X(net221));
 sg13g2_buf_1 place222 (.A(net224),
    .X(net222));
 sg13g2_buf_1 place223 (.A(net224),
    .X(net223));
 sg13g2_buf_1 place224 (.A(net225),
    .X(net224));
 sg13g2_buf_1 place225 (.A(net58),
    .X(net225));
 sg13g2_tielo top (.L_LO(net));
 sg13g2_tielo top_57 (.L_LO(net57));
 sg13g2_dfrbpq_1 u0 (.RESET_B(net220),
    .D(n1),
    .Q(net73),
    .CLK(clknet_4_6_0_clk));
 sg13g2_dfrbpq_1 u1 (.RESET_B(net219),
    .D(n2),
    .Q(net74),
    .CLK(clknet_4_13_0_clk));
 sg13g2_dfrbpq_1 u10 (.RESET_B(net215),
    .D(n11),
    .Q(net83),
    .CLK(clknet_4_8_0_clk));
 sg13g2_nor2b_2 u100 (.A(n95),
    .B_N(n97),
    .Y(n98));
 sg13g2_nor2b_1 u101 (.A(n74),
    .B_N(n96),
    .Y(n99));
 sg13g2_nand2b_1 u102 (.Y(n100),
    .B(n64),
    .A_N(n80));
 sg13g2_nor2_1 u103 (.A(n99),
    .B(n100),
    .Y(n101));
 sg13g2_nor2b_1 u104 (.A(n101),
    .B_N(n88),
    .Y(n102));
 sg13g2_or2_1 u105 (.X(n103),
    .B(n82),
    .A(n101));
 sg13g2_nand2b_1 u106 (.Y(n104),
    .B(n98),
    .A_N(n103));
 sg13g2_nor2_1 u107 (.A(n82),
    .B(n88),
    .Y(n105));
 sg13g2_and2_1 u108 (.A(n104),
    .B(n105),
    .X(n106));
 sg13g2_a221oi_1 u109 (.B2(n102),
    .C1(n106),
    .B1(n98),
    .A1(n82),
    .Y(n107),
    .A2(n88));
 sg13g2_xor2_1 u110 (.B(n98),
    .A(n103),
    .X(n108));
 sg13g2_xor2_1 u111 (.B(n97),
    .A(n95),
    .X(n109));
 sg13g2_nand2_1 u112 (.Y(n110),
    .A(n108),
    .B(n109));
 sg13g2_or2_1 u113 (.X(n111),
    .B(n110),
    .A(n107));
 sg13g2_nor2_1 u114 (.A(n82),
    .B(n87),
    .Y(n112));
 sg13g2_a21o_1 u115 (.A2(n112),
    .A1(n104),
    .B1(n85),
    .X(n113));
 sg13g2_nand2b_2 u116 (.Y(n114),
    .B(n113),
    .A_N(n111));
 sg13g2_dfrbpq_1 u117 (.RESET_B(net225),
    .D(n115),
    .Q(\engine.final_bcd [3]),
    .CLK(clknet_4_6_0_clk));
 sg13g2_nor2_1 u118 (.A(n92),
    .B(n94),
    .Y(n116));
 sg13g2_nor2b_1 u119 (.A(n116),
    .B_N(n95),
    .Y(n117));
 sg13g2_dfrbpq_1 u12 (.RESET_B(net217),
    .D(n12),
    .Q(net84),
    .CLK(clknet_4_14_0_clk));
 sg13g2_xor2_1 u120 (.B(n117),
    .A(\engine.final_bcd [3]),
    .X(n118));
 sg13g2_dfrbpq_1 u121 (.RESET_B(net223),
    .D(n119),
    .Q(\engine.final_bcd [2]),
    .CLK(clknet_4_0_0_clk));
 sg13g2_and4_1 u122 (.A(net207),
    .B(net203),
    .C(net206),
    .D(net202),
    .X(n120));
 sg13g2_xnor2_1 u123 (.Y(n121),
    .A(n69),
    .B(n90));
 sg13g2_nand2_1 u124 (.Y(n122),
    .A(n120),
    .B(n121));
 sg13g2_o21ai_1 u125 (.B1(n122),
    .Y(n123),
    .A1(n120),
    .A2(n121));
 sg13g2_dfrbpq_1 u126 (.RESET_B(net223),
    .D(n124),
    .Q(\engine.final_bcd [1]),
    .CLK(clknet_4_1_0_clk));
 sg13g2_inv_2 u127 (.Y(n125),
    .A(\engine.final_bcd [1]));
 sg13g2_a22oi_1 u128 (.Y(n126),
    .B1(net203),
    .B2(net206),
    .A2(net202),
    .A1(net207));
 sg13g2_nor2_2 u129 (.A(n120),
    .B(n126),
    .Y(n127));
 sg13g2_dfrbpq_1 u13 (.RESET_B(net217),
    .D(n13),
    .Q(net85),
    .CLK(clknet_4_9_0_clk));
 sg13g2_and2_1 u130 (.A(net206),
    .B(net202),
    .X(n128));
 sg13g2_dfrbpq_1 u131 (.RESET_B(net225),
    .D(n129),
    .Q(\engine.final_bcd [0]),
    .CLK(clknet_4_12_0_clk));
 sg13g2_xor2_1 u132 (.B(\engine.final_bcd [0]),
    .A(n128),
    .X(n130));
 sg13g2_a21oi_1 u133 (.A1(n125),
    .A2(n127),
    .Y(n131),
    .B1(n130));
 sg13g2_o21ai_1 u134 (.B1(n131),
    .Y(n132),
    .A1(n125),
    .A2(n127));
 sg13g2_a21oi_1 u135 (.A1(\engine.final_bcd [2]),
    .A2(net197),
    .Y(n133),
    .B1(n132));
 sg13g2_o21ai_1 u136 (.B1(n133),
    .Y(n134),
    .A1(\engine.final_bcd [2]),
    .A2(net197));
 sg13g2_nor2_1 u137 (.A(n118),
    .B(n134),
    .Y(n135));
 sg13g2_nand2b_1 u138 (.Y(n136),
    .B(n135),
    .A_N(n114));
 sg13g2_nand2b_1 u139 (.Y(n137),
    .B(n95),
    .A_N(n116));
 sg13g2_dfrbpq_1 u14 (.RESET_B(net219),
    .D(n14),
    .Q(net86),
    .CLK(clknet_4_13_0_clk));
 sg13g2_dfrbpq_1 u140 (.RESET_B(net223),
    .D(n138),
    .Q(\engine.partial_0_bcd [3]),
    .CLK(clknet_4_3_0_clk));
 sg13g2_dfrbpq_1 u141 (.RESET_B(net223),
    .D(n139),
    .Q(\engine.partial_0_bcd [2]),
    .CLK(clknet_4_0_0_clk));
 sg13g2_dfrbpq_1 u142 (.RESET_B(net223),
    .D(n140),
    .Q(\engine.partial_0_bcd [1]),
    .CLK(clknet_4_0_0_clk));
 sg13g2_xor2_1 u143 (.B(\engine.partial_0_bcd [1]),
    .A(n127),
    .X(n141));
 sg13g2_dfrbpq_1 u144 (.RESET_B(net223),
    .D(n142),
    .Q(\engine.partial_0_bcd [0]),
    .CLK(clknet_4_3_0_clk));
 sg13g2_xnor2_1 u145 (.Y(n143),
    .A(n128),
    .B(\engine.partial_0_bcd [0]));
 sg13g2_nor2b_1 u146 (.A(n141),
    .B_N(n143),
    .Y(n144));
 sg13g2_o21ai_1 u147 (.B1(n144),
    .Y(n145),
    .A1(net197),
    .A2(\engine.partial_0_bcd [2]));
 sg13g2_a221oi_1 u148 (.B2(\engine.partial_0_bcd [2]),
    .C1(n145),
    .B1(net197),
    .A1(n137),
    .Y(n146),
    .A2(\engine.partial_0_bcd [3]));
 sg13g2_o21ai_1 u149 (.B1(n146),
    .Y(n147),
    .A1(n137),
    .A2(\engine.partial_0_bcd [3]));
 sg13g2_dfrbpq_1 u15 (.RESET_B(net219),
    .D(n15),
    .Q(net87),
    .CLK(clknet_4_12_0_clk));
 sg13g2_nor2_1 u150 (.A(n136),
    .B(n147),
    .Y(n148));
 sg13g2_nor2_1 u151 (.A(n43),
    .B(n148),
    .Y(n149));
 sg13g2_nand2_2 u152 (.Y(n150),
    .A(net206),
    .B(net202));
 sg13g2_nand2_1 u153 (.Y(n151),
    .A(n91),
    .B(n126));
 sg13g2_o21ai_1 u154 (.B1(n95),
    .Y(n152),
    .A1(n94),
    .A2(n151));
 sg13g2_nand2_1 u155 (.Y(n153),
    .A(n150),
    .B(n152));
 sg13g2_dfrbpq_1 u156 (.RESET_B(net220),
    .D(n154),
    .Q(\engine.partial_0_mask [0]),
    .CLK(clknet_4_6_0_clk));
 sg13g2_dfrbpq_1 u157 (.RESET_B(net220),
    .D(n155),
    .Q(\engine.partial_0_mask [1]),
    .CLK(clknet_4_6_0_clk));
 sg13g2_nor2_1 u158 (.A(\engine.partial_0_mask [0]),
    .B(\engine.partial_0_mask [1]),
    .Y(n156));
 sg13g2_dfrbpq_1 u159 (.RESET_B(net221),
    .D(n157),
    .Q(\engine.partial_0_mask [2]),
    .CLK(clknet_4_5_0_clk));
 sg13g2_dfrbpq_1 u16 (.RESET_B(net216),
    .D(n16),
    .Q(net88),
    .CLK(clknet_4_11_0_clk));
 sg13g2_dfrbpq_1 u160 (.RESET_B(net221),
    .D(n158),
    .Q(\engine.partial_0_mask [3]),
    .CLK(clknet_4_7_0_clk));
 sg13g2_dfrbpq_1 u161 (.RESET_B(net221),
    .D(n159),
    .Q(\engine.partial_0_mask [4]),
    .CLK(clknet_4_7_0_clk));
 sg13g2_dfrbpq_1 u162 (.RESET_B(net221),
    .D(n160),
    .Q(\engine.partial_0_mask [5]),
    .CLK(clknet_4_7_0_clk));
 sg13g2_nor4_1 u163 (.A(\engine.partial_0_mask [2]),
    .B(\engine.partial_0_mask [3]),
    .C(\engine.partial_0_mask [4]),
    .D(\engine.partial_0_mask [5]),
    .Y(n161));
 sg13g2_nand2_1 u164 (.Y(n162),
    .A(n156),
    .B(n161));
 sg13g2_dfrbpq_2 u165 (.RESET_B(net224),
    .D(n163),
    .Q(\engine.partial_1_bcd [0]),
    .CLK(clknet_4_0_0_clk));
 sg13g2_dfrbpq_1 u166 (.RESET_B(net224),
    .D(n164),
    .Q(\engine.partial_1_bcd [1]),
    .CLK(clknet_4_0_0_clk));
 sg13g2_dfrbpq_1 u167 (.RESET_B(net224),
    .D(n165),
    .Q(\engine.partial_1_bcd [2]),
    .CLK(clknet_4_0_0_clk));
 sg13g2_dfrbpq_1 u168 (.RESET_B(net224),
    .D(n166),
    .Q(\engine.partial_1_bcd [3]),
    .CLK(clknet_4_1_0_clk));
 sg13g2_or4_1 u169 (.A(\engine.partial_1_bcd [0]),
    .B(\engine.partial_1_bcd [1]),
    .C(\engine.partial_1_bcd [2]),
    .D(\engine.partial_1_bcd [3]),
    .X(n167));
 sg13g2_dfrbpq_1 u17 (.RESET_B(net216),
    .D(n17),
    .Q(net89),
    .CLK(clknet_4_10_0_clk));
 sg13g2_xor2_1 u170 (.B(\engine.partial_1_bcd [2]),
    .A(\engine.final_bcd [2]),
    .X(n168));
 sg13g2_or4_1 u171 (.A(\engine.final_bcd [1]),
    .B(\engine.final_bcd [0]),
    .C(\engine.final_bcd [3]),
    .D(\engine.partial_1_bcd [3]),
    .X(n169));
 sg13g2_nor4_1 u172 (.A(n162),
    .B(n167),
    .C(n168),
    .D(n169),
    .Y(n170));
 sg13g2_o21ai_1 u173 (.B1(n170),
    .Y(n171),
    .A1(n114),
    .A2(n153));
 sg13g2_and2_1 u174 (.A(n149),
    .B(n171),
    .X(n172));
 sg13g2_nand2_1 u175 (.Y(n173),
    .A(\engine.partial_0_bcd [3]),
    .B(\engine.partial_1_bcd [3]));
 sg13g2_nand2_1 u176 (.Y(n174),
    .A(\engine.partial_0_bcd [0]),
    .B(\engine.partial_1_bcd [0]));
 sg13g2_o21ai_1 u177 (.B1(n174),
    .Y(n175),
    .A1(\engine.partial_0_bcd [0]),
    .A2(\engine.partial_1_bcd [0]));
 sg13g2_xor2_1 u178 (.B(n175),
    .A(\engine.final_bcd [0]),
    .X(n176));
 sg13g2_xnor2_1 u179 (.Y(n177),
    .A(\engine.final_bcd [1]),
    .B(n174));
 sg13g2_dfrbpq_1 u18 (.RESET_B(net216),
    .D(n18),
    .Q(net90),
    .CLK(clknet_4_9_0_clk));
 sg13g2_nor2_1 u180 (.A(\engine.partial_0_bcd [1]),
    .B(\engine.partial_1_bcd [1]),
    .Y(n178));
 sg13g2_a21oi_1 u181 (.A1(\engine.partial_0_bcd [1]),
    .A2(\engine.partial_1_bcd [1]),
    .Y(n179),
    .B1(n178));
 sg13g2_xnor2_1 u182 (.Y(n180),
    .A(n177),
    .B(n179));
 sg13g2_nand4_1 u183 (.B(n173),
    .C(n176),
    .A(n162),
    .Y(n181),
    .D(n180));
 sg13g2_xor2_1 u184 (.B(n168),
    .A(\engine.partial_0_bcd [2]),
    .X(n182));
 sg13g2_nor2_1 u185 (.A(n174),
    .B(n178),
    .Y(n183));
 sg13g2_a21oi_1 u186 (.A1(\engine.partial_0_bcd [1]),
    .A2(\engine.partial_1_bcd [1]),
    .Y(n184),
    .B1(n183));
 sg13g2_xnor2_1 u187 (.Y(n185),
    .A(n182),
    .B(n184));
 sg13g2_o21ai_1 u188 (.B1(n173),
    .Y(n186),
    .A1(\engine.partial_0_bcd [3]),
    .A2(\engine.partial_1_bcd [3]));
 sg13g2_nor2_1 u189 (.A(\engine.partial_0_bcd [2]),
    .B(\engine.partial_1_bcd [2]),
    .Y(n187));
 sg13g2_dfrbpq_1 u19 (.RESET_B(net216),
    .D(n19),
    .Q(net91),
    .CLK(clknet_4_10_0_clk));
 sg13g2_nor2_1 u190 (.A(n184),
    .B(n187),
    .Y(n188));
 sg13g2_a21oi_1 u191 (.A1(\engine.partial_0_bcd [2]),
    .A2(\engine.partial_1_bcd [2]),
    .Y(n189),
    .B1(n188));
 sg13g2_nor2_1 u192 (.A(n186),
    .B(n189),
    .Y(n190));
 sg13g2_nand2_1 u193 (.Y(n191),
    .A(n186),
    .B(n189));
 sg13g2_xor2_1 u194 (.B(n191),
    .A(\engine.final_bcd [3]),
    .X(n192));
 sg13g2_nor4_1 u195 (.A(n181),
    .B(n185),
    .C(n190),
    .D(n192),
    .Y(n193));
 sg13g2_nor2_1 u196 (.A(n114),
    .B(n147),
    .Y(n194));
 sg13g2_nand2b_1 u197 (.Y(n195),
    .B(n194),
    .A_N(n167));
 sg13g2_nand2_2 u198 (.Y(n196),
    .A(n193),
    .B(n195));
 sg13g2_nand2_1 u199 (.Y(n197),
    .A(n137),
    .B(n123));
 sg13g2_dfrbpq_1 u2 (.RESET_B(net217),
    .D(n3),
    .Q(net75),
    .CLK(clknet_4_9_0_clk));
 sg13g2_dfrbpq_1 u20 (.RESET_B(net216),
    .D(n20),
    .Q(net92),
    .CLK(clknet_4_11_0_clk));
 sg13g2_nor2b_1 u200 (.A(n109),
    .B_N(n197),
    .Y(n198));
 sg13g2_nor2b_1 u201 (.A(n107),
    .B_N(n108),
    .Y(n199));
 sg13g2_nand2b_1 u202 (.Y(n200),
    .B(n199),
    .A_N(n198));
 sg13g2_and3_1 u203 (.X(n201),
    .A(n122),
    .B(n94),
    .C(n151));
 sg13g2_nor2_1 u204 (.A(n111),
    .B(n201),
    .Y(n202));
 sg13g2_nor2_1 u205 (.A(n127),
    .B(n202),
    .Y(n203));
 sg13g2_or2_1 u206 (.X(n204),
    .B(n203),
    .A(n200));
 sg13g2_nor2_1 u207 (.A(n123),
    .B(n204),
    .Y(n205));
 sg13g2_and2_1 u208 (.A(n123),
    .B(n204),
    .X(n206));
 sg13g2_nand2_1 u209 (.Y(n207),
    .A(n121),
    .B(n127));
 sg13g2_dfrbpq_1 u21 (.RESET_B(net216),
    .D(n21),
    .Q(net93),
    .CLK(clknet_4_8_0_clk));
 sg13g2_nand2b_1 u210 (.Y(n208),
    .B(n94),
    .A_N(n207));
 sg13g2_o21ai_1 u211 (.B1(n199),
    .Y(n209),
    .A1(n109),
    .A2(n208));
 sg13g2_a21o_1 u212 (.A2(n137),
    .A1(n109),
    .B1(n103),
    .X(n210));
 sg13g2_nor2_1 u213 (.A(n103),
    .B(n109),
    .Y(n211));
 sg13g2_nand2b_2 u214 (.Y(n212),
    .B(n211),
    .A_N(n152));
 sg13g2_nor2b_1 u215 (.A(n107),
    .B_N(n212),
    .Y(n213));
 sg13g2_o21ai_1 u216 (.B1(n213),
    .Y(n214),
    .A1(n123),
    .A2(n210));
 sg13g2_nor4_1 u217 (.A(n205),
    .B(n206),
    .C(n209),
    .D(n214),
    .Y(n215));
 sg13g2_nor2b_1 u218 (.A(n107),
    .B_N(n210),
    .Y(n216));
 sg13g2_nand3_1 u219 (.B(n151),
    .C(n207),
    .A(n122),
    .Y(n217));
 sg13g2_dfrbpq_1 u22 (.RESET_B(net215),
    .D(n22),
    .Q(net94),
    .CLK(clknet_4_11_0_clk));
 sg13g2_nand2_1 u220 (.Y(n218),
    .A(n209),
    .B(n217));
 sg13g2_a21oi_1 u221 (.A1(n216),
    .A2(n218),
    .Y(n219),
    .B1(n214));
 sg13g2_nand2_1 u222 (.Y(n220),
    .A(n116),
    .B(n207));
 sg13g2_nand2_1 u223 (.Y(n221),
    .A(n95),
    .B(n220));
 sg13g2_nor2b_1 u224 (.A(n221),
    .B_N(net191),
    .Y(n222));
 sg13g2_nand2b_1 u225 (.Y(n223),
    .B(n94),
    .A_N(n123));
 sg13g2_nor2b_1 u226 (.A(n223),
    .B_N(n211),
    .Y(n224));
 sg13g2_nor2_1 u227 (.A(n107),
    .B(n224),
    .Y(n225));
 sg13g2_o21ai_1 u228 (.B1(n225),
    .Y(n226),
    .A1(n212),
    .A2(n217));
 sg13g2_o21ai_1 u229 (.B1(net191),
    .Y(n227),
    .A1(n123),
    .A2(n220));
 sg13g2_dfrbpq_1 u23 (.RESET_B(net215),
    .D(n23),
    .Q(net95),
    .CLK(clknet_4_10_0_clk));
 sg13g2_and2_1 u230 (.A(net191),
    .B(n110),
    .X(n228));
 sg13g2_a221oi_1 u231 (.B2(n227),
    .C1(n228),
    .B1(n226),
    .A1(n217),
    .Y(n229),
    .A2(n222));
 sg13g2_nand2b_1 u232 (.Y(n230),
    .B(n229),
    .A_N(n219));
 sg13g2_nor2_1 u233 (.A(n215),
    .B(n230),
    .Y(n231));
 sg13g2_nand2b_1 u234 (.Y(n232),
    .B(n228),
    .A_N(net197));
 sg13g2_nand2b_1 u235 (.Y(n233),
    .B(n232),
    .A_N(n231));
 sg13g2_nor2_1 u236 (.A(n152),
    .B(n201),
    .Y(n234));
 sg13g2_a221oi_1 u237 (.B2(n202),
    .C1(n200),
    .B1(n117),
    .A1(n111),
    .Y(n235),
    .A2(n234));
 sg13g2_o21ai_1 u238 (.B1(n225),
    .Y(n236),
    .A1(n201),
    .A2(n212));
 sg13g2_a221oi_1 u239 (.B2(n88),
    .C1(n137),
    .B1(n82),
    .A1(n101),
    .Y(n237),
    .A2(n105));
 sg13g2_dfrbpq_1 u24 (.RESET_B(net215),
    .D(n24),
    .Q(net96),
    .CLK(clknet_4_8_0_clk));
 sg13g2_nor2_1 u240 (.A(n236),
    .B(n237),
    .Y(n238));
 sg13g2_a21oi_1 u241 (.A1(n198),
    .A2(n223),
    .Y(n239),
    .B1(n209));
 sg13g2_nand2_1 u242 (.Y(n240),
    .A(n238),
    .B(n239));
 sg13g2_nor2b_1 u243 (.A(n221),
    .B_N(n208),
    .Y(n241));
 sg13g2_nand2b_1 u244 (.Y(n242),
    .B(n241),
    .A_N(n108));
 sg13g2_nand2_1 u245 (.Y(n243),
    .A(n216),
    .B(n242));
 sg13g2_or2_1 u246 (.X(n244),
    .B(n236),
    .A(n212));
 sg13g2_nand3_1 u247 (.B(n197),
    .C(n223),
    .A(n107),
    .Y(n245));
 sg13g2_nor2_1 u248 (.A(n228),
    .B(n222),
    .Y(n246));
 sg13g2_nand3_1 u249 (.B(n245),
    .C(n246),
    .A(n244),
    .Y(n247));
 sg13g2_dfrbpq_1 u25 (.RESET_B(net215),
    .D(n25),
    .Q(net97),
    .CLK(clknet_4_8_0_clk));
 sg13g2_a21oi_1 u250 (.A1(n238),
    .A2(n243),
    .Y(n248),
    .B1(n247));
 sg13g2_o21ai_1 u251 (.B1(n248),
    .Y(n249),
    .A1(n235),
    .A2(n240));
 sg13g2_a21oi_1 u252 (.A1(net191),
    .A2(n241),
    .Y(n250),
    .B1(n228));
 sg13g2_a22oi_1 u253 (.Y(n251),
    .B1(n249),
    .B2(n250),
    .A2(n228),
    .A1(n117));
 sg13g2_nor2_1 u254 (.A(n198),
    .B(n202),
    .Y(n252));
 sg13g2_o21ai_1 u255 (.B1(n216),
    .Y(n253),
    .A1(n209),
    .A2(n252));
 sg13g2_nand2_1 u256 (.Y(n254),
    .A(n212),
    .B(n253));
 sg13g2_a21oi_1 u257 (.A1(n225),
    .A2(n254),
    .Y(n255),
    .B1(n222));
 sg13g2_a21oi_1 u258 (.A1(n137),
    .A2(n249),
    .Y(n256),
    .B1(n114));
 sg13g2_nand2_1 u259 (.Y(n257),
    .A(n255),
    .B(n256));
 sg13g2_dfrbpq_1 u26 (.RESET_B(net215),
    .D(n26),
    .Q(net98),
    .CLK(clknet_4_11_0_clk));
 sg13g2_a221oi_1 u260 (.B2(n231),
    .C1(n257),
    .B1(net197),
    .A1(n117),
    .Y(n258),
    .A2(n251));
 sg13g2_o21ai_1 u261 (.B1(n258),
    .Y(n259),
    .A1(net197),
    .A2(n233));
 sg13g2_or3_1 u262 (.A(n141),
    .B(n228),
    .C(n255),
    .X(n260));
 sg13g2_nand3_1 u263 (.B(n193),
    .C(n260),
    .A(n143),
    .Y(n261));
 sg13g2_inv_1 u264 (.Y(n262),
    .A(\engine.partial_0_bcd [2]));
 sg13g2_o21ai_1 u265 (.B1(n141),
    .Y(n263),
    .A1(n228),
    .A2(n255));
 sg13g2_o21ai_1 u266 (.B1(n263),
    .Y(n264),
    .A1(n262),
    .A2(n233));
 sg13g2_xnor2_1 u267 (.Y(n265),
    .A(\engine.partial_0_bcd [3]),
    .B(n251));
 sg13g2_and2_1 u268 (.A(n262),
    .B(n233),
    .X(n266));
 sg13g2_nor4_1 u269 (.A(n261),
    .B(n264),
    .C(n265),
    .D(n266),
    .Y(n267));
 sg13g2_dfrbpq_1 u27 (.RESET_B(net215),
    .D(n27),
    .Q(net99),
    .CLK(clknet_4_11_0_clk));
 sg13g2_nand2_2 u270 (.Y(n268),
    .A(n259),
    .B(n267));
 sg13g2_nand3_1 u271 (.B(n196),
    .C(n268),
    .A(n172),
    .Y(n269));
 sg13g2_nand2_1 u272 (.Y(n270),
    .A(n162),
    .B(n194));
 sg13g2_nor2_1 u273 (.A(n135),
    .B(n270),
    .Y(n271));
 sg13g2_nor2_1 u274 (.A(net207),
    .B(net203),
    .Y(n272));
 sg13g2_nand2_1 u275 (.Y(n273),
    .A(net207),
    .B(net203));
 sg13g2_o21ai_1 u276 (.B1(n273),
    .Y(n274),
    .A1(n272),
    .A2(n150));
 sg13g2_a22oi_1 u277 (.Y(n275),
    .B1(n274),
    .B2(n89),
    .A2(n150),
    .A1(n272));
 sg13g2_o21ai_1 u278 (.B1(n58),
    .Y(n276),
    .A1(\engine.operand_a_bcd [2]),
    .A2(net205));
 sg13g2_xnor2_1 u279 (.Y(n277),
    .A(n274),
    .B(n276));
 sg13g2_dfrbpq_1 u28 (.RESET_B(net215),
    .D(n28),
    .Q(net100),
    .CLK(clknet_4_10_0_clk));
 sg13g2_nor2_1 u280 (.A(n275),
    .B(n277),
    .Y(n278));
 sg13g2_or2_1 u281 (.X(n279),
    .B(net204),
    .A(\engine.operand_a_bcd [3]));
 sg13g2_nand2_1 u282 (.Y(n280),
    .A(n279),
    .B(n83));
 sg13g2_o21ai_1 u283 (.B1(n274),
    .Y(n281),
    .A1(\engine.operand_a_bcd [2]),
    .A2(net205));
 sg13g2_nand2_1 u284 (.Y(n282),
    .A(n58),
    .B(n281));
 sg13g2_xor2_1 u285 (.B(n282),
    .A(n280),
    .X(n283));
 sg13g2_or2_1 u286 (.X(n284),
    .B(n283),
    .A(n278));
 sg13g2_a22oi_1 u287 (.Y(n285),
    .B1(n279),
    .B2(n282),
    .A2(net204),
    .A1(\engine.operand_a_bcd [3]));
 sg13g2_nand2_2 u288 (.Y(n286),
    .A(n284),
    .B(n285));
 sg13g2_nand2b_1 u289 (.Y(n287),
    .B(n283),
    .A_N(n277));
 sg13g2_dfrbpq_1 u29 (.RESET_B(net218),
    .D(n29),
    .Q(net101),
    .CLK(clknet_4_14_0_clk));
 sg13g2_nand2b_1 u290 (.Y(n288),
    .B(n287),
    .A_N(n285));
 sg13g2_nand2_1 u291 (.Y(n289),
    .A(n286),
    .B(n288));
 sg13g2_nand2_1 u292 (.Y(n290),
    .A(n274),
    .B(n76));
 sg13g2_nand2_1 u293 (.Y(n291),
    .A(n275),
    .B(n290));
 sg13g2_nand2_1 u294 (.Y(n292),
    .A(n289),
    .B(n291));
 sg13g2_and2_1 u295 (.A(n284),
    .B(n285),
    .X(n293));
 sg13g2_o21ai_1 u296 (.B1(n288),
    .Y(n294),
    .A1(n275),
    .A2(n293));
 sg13g2_nand2_1 u297 (.Y(n295),
    .A(n292),
    .B(n294));
 sg13g2_xor2_1 u298 (.B(n294),
    .A(n277),
    .X(n296));
 sg13g2_xor2_1 u299 (.B(n296),
    .A(\engine.final_bcd [2]),
    .X(n297));
 sg13g2_dfrbpq_1 u3 (.RESET_B(net219),
    .D(n4),
    .Q(net76),
    .CLK(clknet_4_13_0_clk));
 sg13g2_dfrbpq_1 u30 (.RESET_B(net218),
    .D(n30),
    .Q(net102),
    .CLK(clknet_4_15_0_clk));
 sg13g2_xnor2_1 u300 (.Y(n298),
    .A(n295),
    .B(n297));
 sg13g2_a22oi_1 u301 (.Y(n299),
    .B1(n292),
    .B2(n294),
    .A2(n291),
    .A1(n293));
 sg13g2_xnor2_1 u302 (.Y(n300),
    .A(\engine.final_bcd [1]),
    .B(n299));
 sg13g2_o21ai_1 u303 (.B1(n283),
    .Y(n301),
    .A1(n278),
    .A2(n285));
 sg13g2_nand3_1 u304 (.B(n288),
    .C(n301),
    .A(n284),
    .Y(n302));
 sg13g2_a22oi_1 u305 (.Y(n303),
    .B1(n290),
    .B2(n302),
    .A2(n76),
    .A1(n120));
 sg13g2_nor2_1 u306 (.A(n277),
    .B(n295),
    .Y(n304));
 sg13g2_a21oi_1 u307 (.A1(n286),
    .A2(n303),
    .Y(n305),
    .B1(n304));
 sg13g2_o21ai_1 u308 (.B1(n150),
    .Y(n306),
    .A1(net206),
    .A2(net202));
 sg13g2_xor2_1 u309 (.B(n306),
    .A(\engine.final_bcd [0]),
    .X(n307));
 sg13g2_dfrbpq_1 u31 (.RESET_B(net218),
    .D(n31),
    .Q(net103),
    .CLK(clknet_4_14_0_clk));
 sg13g2_nand3_1 u310 (.B(n305),
    .C(n307),
    .A(n300),
    .Y(n308));
 sg13g2_xor2_1 u311 (.B(\engine.final_bcd [3]),
    .A(n303),
    .X(n309));
 sg13g2_nor2_1 u312 (.A(n293),
    .B(n304),
    .Y(n310));
 sg13g2_xor2_1 u313 (.B(n310),
    .A(n309),
    .X(n311));
 sg13g2_nor3_2 u314 (.A(n298),
    .B(n308),
    .C(n311),
    .Y(n312));
 sg13g2_nor2_1 u315 (.A(\engine.operation_reg ),
    .B(n312),
    .Y(n313));
 sg13g2_nand2b_1 u316 (.Y(n314),
    .B(n275),
    .A_N(n289));
 sg13g2_and2_1 u317 (.A(n292),
    .B(n314),
    .X(n315));
 sg13g2_dfrbpq_1 u318 (.RESET_B(net225),
    .D(n316),
    .Q(\engine.carries_mask [0]),
    .CLK(clknet_4_12_0_clk));
 sg13g2_dfrbpq_1 u319 (.RESET_B(net225),
    .D(n317),
    .Q(\engine.carries_bcd [3]),
    .CLK(clknet_4_1_0_clk));
 sg13g2_dfrbpq_1 u32 (.RESET_B(net218),
    .D(n32),
    .Q(net104),
    .CLK(clknet_4_15_0_clk));
 sg13g2_dfrbpq_1 u320 (.RESET_B(net224),
    .D(n318),
    .Q(\engine.carries_bcd [1]),
    .CLK(clknet_4_1_0_clk));
 sg13g2_dfrbpq_1 u321 (.RESET_B(net223),
    .D(n319),
    .Q(\engine.carries_bcd [2]),
    .CLK(clknet_4_1_0_clk));
 sg13g2_nor3_1 u322 (.A(\engine.carries_bcd [3]),
    .B(\engine.carries_bcd [1]),
    .C(\engine.carries_bcd [2]),
    .Y(n320));
 sg13g2_nand4_1 u323 (.B(n307),
    .C(\engine.carries_mask [0]),
    .A(n286),
    .Y(n321),
    .D(n320));
 sg13g2_a21oi_1 u324 (.A1(n125),
    .A2(n315),
    .Y(n322),
    .B1(n321));
 sg13g2_o21ai_1 u325 (.B1(n322),
    .Y(n323),
    .A1(n125),
    .A2(n315));
 sg13g2_or3_1 u326 (.A(n297),
    .B(n309),
    .C(n323),
    .X(n324));
 sg13g2_dfrbpq_1 u327 (.RESET_B(net220),
    .D(n325),
    .Q(\engine.final_mask [0]),
    .CLK(clknet_4_7_0_clk));
 sg13g2_dfrbpq_1 u328 (.RESET_B(net220),
    .D(n326),
    .Q(\engine.final_mask [1]),
    .CLK(clknet_4_7_0_clk));
 sg13g2_dfrbpq_1 u329 (.RESET_B(net221),
    .D(n327),
    .Q(\engine.final_mask [2]),
    .CLK(clknet_4_5_0_clk));
 sg13g2_dfrbpq_1 u33 (.RESET_B(net218),
    .D(n33),
    .Q(net105),
    .CLK(clknet_4_15_0_clk));
 sg13g2_dfrbpq_1 u330 (.RESET_B(net221),
    .D(n328),
    .Q(\engine.final_mask [3]),
    .CLK(clknet_4_4_0_clk));
 sg13g2_dfrbpq_1 u331 (.RESET_B(net221),
    .D(n329),
    .Q(\engine.final_mask [4]),
    .CLK(clknet_4_5_0_clk));
 sg13g2_dfrbpq_1 u332 (.RESET_B(net58),
    .D(n330),
    .Q(\engine.final_mask [5]),
    .CLK(clknet_4_5_0_clk));
 sg13g2_or4_1 u333 (.A(\engine.final_mask [2]),
    .B(\engine.final_mask [3]),
    .C(\engine.final_mask [4]),
    .D(\engine.final_mask [5]),
    .X(n331));
 sg13g2_nor3_1 u334 (.A(\engine.final_mask [0]),
    .B(\engine.final_mask [1]),
    .C(n331),
    .Y(n332));
 sg13g2_dfrbpq_1 u335 (.RESET_B(net225),
    .D(n333),
    .Q(\engine.operand_b_mask [1]),
    .CLK(clknet_4_4_0_clk));
 sg13g2_dfrbpq_1 u336 (.RESET_B(net58),
    .D(n334),
    .Q(\engine.operand_a_mask [2]),
    .CLK(clknet_4_4_0_clk));
 sg13g2_dfrbpq_1 u337 (.RESET_B(net225),
    .D(n335),
    .Q(\engine.operand_b_mask [0]),
    .CLK(clknet_4_5_0_clk));
 sg13g2_nand3_1 u338 (.B(\engine.operand_a_mask [2]),
    .C(\engine.operand_b_mask [0]),
    .A(\engine.operand_b_mask [1]),
    .Y(n336));
 sg13g2_dfrbpq_1 u339 (.RESET_B(net220),
    .D(n337),
    .Q(\engine.operand_b_mask [2]),
    .CLK(clknet_4_6_0_clk));
 sg13g2_dfrbpq_1 u34 (.RESET_B(net216),
    .D(n34),
    .Q(net106),
    .CLK(clknet_4_8_0_clk));
 sg13g2_nor2_1 u340 (.A(\engine.operation_reg ),
    .B(\engine.operand_b_mask [2]),
    .Y(n338));
 sg13g2_dfrbpq_1 u341 (.RESET_B(net58),
    .D(n339),
    .Q(\engine.operand_a_mask [0]),
    .CLK(clknet_4_4_0_clk));
 sg13g2_dfrbpq_1 u342 (.RESET_B(net58),
    .D(n340),
    .Q(\engine.operand_a_mask [1]),
    .CLK(clknet_4_4_0_clk));
 sg13g2_nand2_1 u343 (.Y(n341),
    .A(\engine.operand_a_mask [0]),
    .B(\engine.operand_a_mask [1]));
 sg13g2_nor4_1 u344 (.A(n332),
    .B(n336),
    .C(n338),
    .D(n341),
    .Y(n342));
 sg13g2_dfrbpq_1 u345 (.RESET_B(net220),
    .D(n343),
    .Q(\engine.invalid_bcd ),
    .CLK(clknet_4_12_0_clk));
 sg13g2_inv_1 u346 (.Y(n344),
    .A(\engine.invalid_bcd ));
 sg13g2_nand4_1 u347 (.B(net73),
    .C(n342),
    .A(net62),
    .Y(n345),
    .D(n344));
 sg13g2_a21o_1 u348 (.A2(n324),
    .A1(n313),
    .B1(n345),
    .X(n346));
 sg13g2_nor2_1 u349 (.A(net214),
    .B(n346),
    .Y(n347));
 sg13g2_dfrbpq_1 u35 (.RESET_B(net217),
    .D(n35),
    .Q(net107),
    .CLK(clknet_4_9_0_clk));
 sg13g2_o21ai_1 u350 (.B1(n347),
    .Y(n348),
    .A1(n269),
    .A2(n271));
 sg13g2_nand2_1 u351 (.Y(n3),
    .A(n41),
    .B(n348));
 sg13g2_and2_1 u352 (.A(n2),
    .B(n344),
    .X(n349));
 sg13g2_nand2_1 u353 (.Y(n350),
    .A(n149),
    .B(n349));
 sg13g2_nand2_1 u354 (.Y(n351),
    .A(n149),
    .B(n196));
 sg13g2_nor2_1 u355 (.A(n271),
    .B(n351),
    .Y(n352));
 sg13g2_dfrbpq_1 u356 (.RESET_B(net225),
    .D(n353),
    .Q(\engine.carries_bcd [0]),
    .CLK(clknet_4_12_0_clk));
 sg13g2_nand2b_1 u357 (.Y(n354),
    .B(\engine.carries_bcd [0]),
    .A_N(n324));
 sg13g2_nand2_1 u358 (.Y(n355),
    .A(n313),
    .B(n354));
 sg13g2_nand3b_1 u359 (.B(n342),
    .C(n355),
    .Y(n356),
    .A_N(n352));
 sg13g2_dfrbpq_1 u36 (.RESET_B(net218),
    .D(n36),
    .Q(net108),
    .CLK(clknet_4_15_0_clk));
 sg13g2_a22oi_1 u360 (.Y(n357),
    .B1(n349),
    .B2(n356),
    .A2(n40),
    .A1(net76));
 sg13g2_o21ai_1 u361 (.B1(n357),
    .Y(n4),
    .A1(n268),
    .A2(n350));
 sg13g2_nor2b_1 u362 (.A(net77),
    .B_N(n39),
    .Y(n358));
 sg13g2_a221oi_1 u363 (.B2(n352),
    .C1(n346),
    .B1(n268),
    .A1(n313),
    .Y(n359),
    .A2(\engine.carries_bcd [0]));
 sg13g2_nor3_1 u364 (.A(net214),
    .B(n358),
    .C(n359),
    .Y(n5));
 sg13g2_inv_1 u365 (.Y(n360),
    .A(net78));
 sg13g2_a21oi_1 u366 (.A1(n313),
    .A2(n324),
    .Y(n361),
    .B1(n345));
 sg13g2_nand2_1 u367 (.Y(n362),
    .A(n196),
    .B(n271));
 sg13g2_nand2_1 u368 (.Y(n363),
    .A(n149),
    .B(n362));
 sg13g2_a221oi_1 u369 (.B2(n363),
    .C1(net214),
    .B1(n361),
    .A1(n360),
    .Y(n6),
    .A2(n39));
 sg13g2_inv_1 u37 (.Y(n37),
    .A(net73));
 sg13g2_inv_1 u370 (.Y(n364),
    .A(net79));
 sg13g2_a221oi_1 u371 (.B2(n269),
    .C1(net214),
    .B1(n361),
    .A1(n364),
    .Y(n7),
    .A2(n39));
 sg13g2_nand2_1 u372 (.Y(n365),
    .A(net80),
    .B(net198));
 sg13g2_and3_1 u373 (.X(n366),
    .A(n2),
    .B(n342),
    .C(n344));
 sg13g2_nand2_2 u374 (.Y(n367),
    .A(\engine.operation_reg ),
    .B(n366));
 sg13g2_nor4_1 u375 (.A(n114),
    .B(n147),
    .C(n196),
    .D(n367),
    .Y(n368));
 sg13g2_nand2_1 u376 (.Y(n369),
    .A(n268),
    .B(n368));
 sg13g2_nand2_1 u377 (.Y(n8),
    .A(n365),
    .B(n369));
 sg13g2_nand2_1 u378 (.Y(n370),
    .A(net81),
    .B(net201));
 sg13g2_o21ai_1 u379 (.B1(n370),
    .Y(n9),
    .A1(n362),
    .A2(n367));
 sg13g2_inv_4 u38 (.A(net214),
    .Y(n38));
 sg13g2_nor2_1 u380 (.A(\engine.operation_reg ),
    .B(n345),
    .Y(n371));
 sg13g2_nand2_1 u381 (.Y(n372),
    .A(n38),
    .B(n371));
 sg13g2_nor3_1 u382 (.A(n312),
    .B(n354),
    .C(n372),
    .Y(n373));
 sg13g2_a21o_1 u383 (.A2(net201),
    .A1(net82),
    .B1(n373),
    .X(n10));
 sg13g2_and2_1 u384 (.A(net83),
    .B(net199),
    .X(n11));
 sg13g2_nand2_1 u385 (.Y(n374),
    .A(net84),
    .B(net198));
 sg13g2_nand3_1 u386 (.B(n268),
    .C(n362),
    .A(n172),
    .Y(n375));
 sg13g2_nand2_1 u387 (.Y(n376),
    .A(n347),
    .B(n375));
 sg13g2_nand2_1 u388 (.Y(n12),
    .A(n374),
    .B(n376));
 sg13g2_nand2_1 u389 (.Y(n377),
    .A(net85),
    .B(net201));
 sg13g2_o21ai_1 u39 (.B1(n38),
    .Y(n1),
    .A1(net62),
    .A2(n37));
 sg13g2_nand2_1 u390 (.Y(n13),
    .A(n348),
    .B(n377));
 sg13g2_nand2b_1 u391 (.Y(n378),
    .B(n371),
    .A_N(n306));
 sg13g2_nor2_1 u392 (.A(n43),
    .B(n345),
    .Y(n379));
 sg13g2_a22oi_1 u393 (.Y(n380),
    .B1(n128),
    .B2(n379),
    .A2(n39),
    .A1(net86));
 sg13g2_a21oi_1 u394 (.A1(n378),
    .A2(n380),
    .Y(n14),
    .B1(net214));
 sg13g2_nand2_1 u395 (.Y(n381),
    .A(n299),
    .B(n371));
 sg13g2_a22oi_1 u396 (.Y(n382),
    .B1(n127),
    .B2(n379),
    .A2(n39),
    .A1(net87));
 sg13g2_a21oi_1 u397 (.A1(n381),
    .A2(n382),
    .Y(n15),
    .B1(net214));
 sg13g2_nor2b_1 u398 (.A(n296),
    .B_N(n295),
    .Y(n383));
 sg13g2_nor3_1 u399 (.A(n304),
    .B(n372),
    .C(n383),
    .Y(n384));
 sg13g2_dfrbpq_1 u4 (.RESET_B(net219),
    .D(n5),
    .Q(net77),
    .CLK(clknet_4_13_0_clk));
 sg13g2_nand2_2 u40 (.Y(n39),
    .A(net62),
    .B(net73));
 sg13g2_nor2_1 u400 (.A(net197),
    .B(n367),
    .Y(n385));
 sg13g2_a21oi_1 u401 (.A1(net88),
    .A2(net200),
    .Y(n386),
    .B1(n385));
 sg13g2_nand2b_1 u402 (.Y(n16),
    .B(n386),
    .A_N(n384));
 sg13g2_nor2_1 u403 (.A(n303),
    .B(n310),
    .Y(n387));
 sg13g2_or2_1 u404 (.X(n388),
    .B(n387),
    .A(n372));
 sg13g2_a21oi_1 u405 (.A1(n303),
    .A2(n310),
    .Y(n389),
    .B1(n388));
 sg13g2_and2_1 u406 (.A(\engine.operation_reg ),
    .B(n366),
    .X(n390));
 sg13g2_a22oi_1 u407 (.Y(n391),
    .B1(n117),
    .B2(n390),
    .A2(net200),
    .A1(net89));
 sg13g2_nand2b_1 u408 (.Y(n17),
    .B(n391),
    .A_N(n389));
 sg13g2_nor2_1 u409 (.A(n109),
    .B(n367),
    .Y(n392));
 sg13g2_nor2_1 u41 (.A(net214),
    .B(n39),
    .Y(n2));
 sg13g2_a21oi_1 u410 (.A1(net90),
    .A2(net200),
    .Y(n393),
    .B1(n392));
 sg13g2_o21ai_1 u411 (.B1(n393),
    .Y(n18),
    .A1(n305),
    .A2(n372));
 sg13g2_nand2_1 u412 (.Y(n394),
    .A(net91),
    .B(net200));
 sg13g2_o21ai_1 u413 (.B1(n394),
    .Y(n19),
    .A1(n108),
    .A2(n367));
 sg13g2_nand2_1 u414 (.Y(n395),
    .A(net191),
    .B(n390));
 sg13g2_nand2_1 u415 (.Y(n396),
    .A(net92),
    .B(net200));
 sg13g2_nand2_1 u416 (.Y(n20),
    .A(n395),
    .B(n396));
 sg13g2_nand2_1 u417 (.Y(n397),
    .A(net93),
    .B(net200));
 sg13g2_o21ai_1 u418 (.B1(n397),
    .Y(n21),
    .A1(n113),
    .A2(n367));
 sg13g2_and2_1 u419 (.A(net94),
    .B(net199),
    .X(n22));
 sg13g2_and2_1 u42 (.A(n38),
    .B(n39),
    .X(n40));
 sg13g2_and2_1 u420 (.A(net95),
    .B(net199),
    .X(n23));
 sg13g2_and2_1 u421 (.A(net96),
    .B(net199),
    .X(n24));
 sg13g2_and2_1 u422 (.A(net97),
    .B(net199),
    .X(n25));
 sg13g2_and2_1 u423 (.A(net98),
    .B(net199),
    .X(n26));
 sg13g2_and2_1 u424 (.A(net99),
    .B(net199),
    .X(n27));
 sg13g2_and2_1 u425 (.A(net100),
    .B(net199),
    .X(n28));
 sg13g2_and2_1 u426 (.A(net101),
    .B(net198),
    .X(n29));
 sg13g2_and2_1 u427 (.A(net102),
    .B(net198),
    .X(n30));
 sg13g2_and2_1 u428 (.A(net103),
    .B(net198),
    .X(n31));
 sg13g2_and2_1 u429 (.A(net104),
    .B(net198),
    .X(n32));
 sg13g2_nand2_1 u43 (.Y(n41),
    .A(net75),
    .B(net201));
 sg13g2_and2_1 u430 (.A(net105),
    .B(net198),
    .X(n33));
 sg13g2_xnor2_1 u431 (.Y(n398),
    .A(n286),
    .B(\engine.carries_bcd [0]));
 sg13g2_nand2_1 u432 (.Y(n399),
    .A(n320),
    .B(n398));
 sg13g2_nand2_1 u433 (.Y(n400),
    .A(\engine.carries_mask [0]),
    .B(n399));
 sg13g2_o21ai_1 u434 (.B1(n43),
    .Y(n401),
    .A1(n312),
    .A2(n400));
 sg13g2_a21oi_1 u435 (.A1(n312),
    .A2(n400),
    .Y(n402),
    .B1(n401));
 sg13g2_a21o_1 u436 (.A2(n270),
    .A1(n136),
    .B1(n43),
    .X(n403));
 sg13g2_a21oi_1 u437 (.A1(n148),
    .A2(n162),
    .Y(n404),
    .B1(n403));
 sg13g2_o21ai_1 u438 (.B1(n366),
    .Y(n405),
    .A1(n402),
    .A2(n404));
 sg13g2_nand2_1 u439 (.Y(n406),
    .A(net106),
    .B(net201));
 sg13g2_dfrbpq_1 u44 (.RESET_B(net219),
    .D(n42),
    .Q(\engine.operation_reg ),
    .CLK(clknet_4_13_0_clk));
 sg13g2_nand2_1 u440 (.Y(n34),
    .A(n405),
    .B(n406));
 sg13g2_nand2_1 u441 (.Y(n407),
    .A(net107),
    .B(net201));
 sg13g2_nand3_1 u442 (.B(n401),
    .C(n403),
    .A(n366),
    .Y(n408));
 sg13g2_nand2_1 u443 (.Y(n35),
    .A(n407),
    .B(n408));
 sg13g2_and2_1 u444 (.A(net108),
    .B(net198),
    .X(n36));
 sg13g2_nor2_1 u445 (.A(n38),
    .B(net60),
    .Y(n409));
 sg13g2_a21oi_1 u446 (.A1(n38),
    .A2(n43),
    .Y(n42),
    .B1(n409));
 sg13g2_inv_2 u447 (.Y(n410),
    .A(net70));
 sg13g2_inv_2 u448 (.Y(n411),
    .A(net71));
 sg13g2_nand2_1 u449 (.Y(n412),
    .A(n410),
    .B(n411));
 sg13g2_inv_2 u45 (.Y(n43),
    .A(\engine.operation_reg ));
 sg13g2_a22oi_1 u450 (.Y(n413),
    .B1(net72),
    .B2(n412),
    .A2(net68),
    .A1(net67));
 sg13g2_nand3_1 u451 (.B(net73),
    .C(n413),
    .A(net61),
    .Y(n414));
 sg13g2_or4_1 u452 (.A(net66),
    .B(net67),
    .C(net68),
    .D(n414),
    .X(n415));
 sg13g2_nor4_1 u453 (.A(net63),
    .B(net64),
    .C(net65),
    .D(n415),
    .Y(n416));
 sg13g2_o21ai_1 u454 (.B1(net209),
    .Y(n417),
    .A1(\engine.operand_a_bcd [1]),
    .A2(net196));
 sg13g2_a21oi_1 u455 (.A1(n410),
    .A2(net196),
    .Y(n44),
    .B1(n417));
 sg13g2_inv_2 u456 (.Y(n418),
    .A(net69));
 sg13g2_o21ai_1 u457 (.B1(net209),
    .Y(n419),
    .A1(\engine.operand_a_bcd [0]),
    .A2(net196));
 sg13g2_a21oi_1 u458 (.A1(n418),
    .A2(net196),
    .Y(n45),
    .B1(n419));
 sg13g2_inv_2 u459 (.Y(n420),
    .A(net63));
 sg13g2_dfrbpq_1 u46 (.RESET_B(net222),
    .D(n44),
    .Q(\engine.operand_a_bcd [1]),
    .CLK(clknet_4_2_0_clk));
 sg13g2_nor4_1 u460 (.A(n420),
    .B(net64),
    .C(net65),
    .D(n415),
    .Y(n421));
 sg13g2_o21ai_1 u461 (.B1(net209),
    .Y(n422),
    .A1(\engine.operand_b_bcd [2]),
    .A2(net195));
 sg13g2_a21oi_1 u462 (.A1(n411),
    .A2(net195),
    .Y(n46),
    .B1(n422));
 sg13g2_inv_2 u463 (.Y(n423),
    .A(net72));
 sg13g2_o21ai_1 u464 (.B1(net209),
    .Y(n424),
    .A1(net204),
    .A2(net195));
 sg13g2_a21oi_1 u465 (.A1(n423),
    .A2(net195),
    .Y(n47),
    .B1(n424));
 sg13g2_o21ai_1 u466 (.B1(net209),
    .Y(n425),
    .A1(\engine.operand_b_bcd [1]),
    .A2(net195));
 sg13g2_a21oi_1 u467 (.A1(n410),
    .A2(net195),
    .Y(n49),
    .B1(n425));
 sg13g2_o21ai_1 u468 (.B1(net209),
    .Y(n426),
    .A1(\engine.operand_a_bcd [2]),
    .A2(net196));
 sg13g2_a21oi_1 u469 (.A1(n411),
    .A2(net196),
    .Y(n50),
    .B1(n426));
 sg13g2_dfrbpq_1 u47 (.RESET_B(net222),
    .D(n45),
    .Q(\engine.operand_a_bcd [0]),
    .CLK(clknet_4_3_0_clk));
 sg13g2_o21ai_1 u470 (.B1(net209),
    .Y(n427),
    .A1(\engine.operand_a_bcd [3]),
    .A2(net196));
 sg13g2_a21oi_1 u471 (.A1(n423),
    .A2(net196),
    .Y(n56),
    .B1(n427));
 sg13g2_o21ai_1 u472 (.B1(net209),
    .Y(n428),
    .A1(\engine.operand_b_bcd [0]),
    .A2(net195));
 sg13g2_a21oi_1 u473 (.A1(n418),
    .A2(net195),
    .Y(n65),
    .B1(n428));
 sg13g2_nor4_1 u474 (.A(net66),
    .B(net67),
    .C(net68),
    .D(n414),
    .Y(n429));
 sg13g2_inv_2 u475 (.Y(n430),
    .A(net65));
 sg13g2_nor3_2 u476 (.A(n420),
    .B(net64),
    .C(n430),
    .Y(n431));
 sg13g2_and2_1 u477 (.A(n429),
    .B(n431),
    .X(n432));
 sg13g2_o21ai_1 u478 (.B1(net211),
    .Y(n433),
    .A1(\engine.final_bcd [3]),
    .A2(net194));
 sg13g2_a21oi_1 u479 (.A1(n423),
    .A2(net194),
    .Y(n115),
    .B1(n433));
 sg13g2_dfrbpq_1 u48 (.RESET_B(net222),
    .D(n46),
    .Q(\engine.operand_b_bcd [2]),
    .CLK(clknet_4_3_0_clk));
 sg13g2_o21ai_1 u480 (.B1(net208),
    .Y(n434),
    .A1(\engine.final_bcd [2]),
    .A2(net194));
 sg13g2_a21oi_1 u481 (.A1(n411),
    .A2(net194),
    .Y(n119),
    .B1(n434));
 sg13g2_o21ai_1 u482 (.B1(net208),
    .Y(n435),
    .A1(\engine.final_bcd [1]),
    .A2(net194));
 sg13g2_a21oi_1 u483 (.A1(n410),
    .A2(net194),
    .Y(n124),
    .B1(n435));
 sg13g2_o21ai_1 u484 (.B1(net211),
    .Y(n436),
    .A1(\engine.final_bcd [0]),
    .A2(net194));
 sg13g2_a21oi_1 u485 (.A1(n418),
    .A2(net194),
    .Y(n129),
    .B1(n436));
 sg13g2_inv_2 u486 (.Y(n437),
    .A(net64));
 sg13g2_nor3_2 u487 (.A(n420),
    .B(n437),
    .C(net65),
    .Y(n438));
 sg13g2_and2_1 u488 (.A(n429),
    .B(n438),
    .X(n439));
 sg13g2_o21ai_1 u489 (.B1(net208),
    .Y(n440),
    .A1(\engine.partial_0_bcd [3]),
    .A2(net193));
 sg13g2_dfrbpq_1 u49 (.RESET_B(net222),
    .D(n47),
    .Q(\engine.operand_b_bcd [3]),
    .CLK(clknet_4_3_0_clk));
 sg13g2_a21oi_1 u490 (.A1(n423),
    .A2(net193),
    .Y(n138),
    .B1(n440));
 sg13g2_o21ai_1 u491 (.B1(net208),
    .Y(n441),
    .A1(\engine.partial_0_bcd [2]),
    .A2(net193));
 sg13g2_a21oi_1 u492 (.A1(n411),
    .A2(net193),
    .Y(n139),
    .B1(n441));
 sg13g2_o21ai_1 u493 (.B1(net208),
    .Y(n442),
    .A1(\engine.partial_0_bcd [1]),
    .A2(net193));
 sg13g2_a21oi_1 u494 (.A1(n410),
    .A2(net193),
    .Y(n140),
    .B1(n442));
 sg13g2_o21ai_1 u495 (.B1(net208),
    .Y(n443),
    .A1(\engine.partial_0_bcd [0]),
    .A2(net193));
 sg13g2_a21oi_1 u496 (.A1(n418),
    .A2(net193),
    .Y(n142),
    .B1(n443));
 sg13g2_nor2_1 u497 (.A(\engine.partial_0_mask [0]),
    .B(n439),
    .Y(n444));
 sg13g2_nor2_1 u498 (.A(net213),
    .B(n444),
    .Y(n154));
 sg13g2_inv_1 u499 (.Y(n445),
    .A(net66));
 sg13g2_dfrbpq_1 u5 (.RESET_B(net219),
    .D(n6),
    .Q(net78),
    .CLK(clknet_4_15_0_clk));
 sg13g2_nand4_1 u50 (.B(\engine.operand_a_bcd [0]),
    .C(net205),
    .A(\engine.operand_a_bcd [1]),
    .Y(n48),
    .D(\engine.operand_b_bcd [3]));
 sg13g2_nor3_1 u500 (.A(n445),
    .B(net67),
    .C(net68),
    .Y(n446));
 sg13g2_nor2b_1 u501 (.A(n414),
    .B_N(n446),
    .Y(n447));
 sg13g2_a21oi_1 u502 (.A1(n447),
    .A2(n438),
    .Y(n448),
    .B1(\engine.partial_0_mask [1]));
 sg13g2_nor2_1 u503 (.A(net213),
    .B(n448),
    .Y(n155));
 sg13g2_inv_1 u504 (.Y(n449),
    .A(net67));
 sg13g2_nor3_1 u505 (.A(net66),
    .B(n449),
    .C(net68),
    .Y(n450));
 sg13g2_nor2b_1 u506 (.A(n414),
    .B_N(n450),
    .Y(n451));
 sg13g2_a21oi_1 u507 (.A1(n451),
    .A2(n438),
    .Y(n452),
    .B1(\engine.partial_0_mask [2]));
 sg13g2_nor2_1 u508 (.A(net212),
    .B(n452),
    .Y(n157));
 sg13g2_nor4_1 u509 (.A(n445),
    .B(n449),
    .C(net68),
    .D(n414),
    .Y(n453));
 sg13g2_dfrbpq_1 u51 (.RESET_B(net222),
    .D(n49),
    .Q(\engine.operand_b_bcd [1]),
    .CLK(clknet_4_2_0_clk));
 sg13g2_a21oi_1 u510 (.A1(n453),
    .A2(n438),
    .Y(n454),
    .B1(\engine.partial_0_mask [3]));
 sg13g2_nor2_1 u511 (.A(net212),
    .B(n454),
    .Y(n158));
 sg13g2_inv_1 u512 (.Y(n455),
    .A(net68));
 sg13g2_nor4_1 u513 (.A(net66),
    .B(net67),
    .C(n455),
    .D(n414),
    .Y(n456));
 sg13g2_a21oi_1 u514 (.A1(n456),
    .A2(n438),
    .Y(n457),
    .B1(\engine.partial_0_mask [4]));
 sg13g2_nor2_1 u515 (.A(net212),
    .B(n457),
    .Y(n159));
 sg13g2_nor4_1 u516 (.A(n445),
    .B(net67),
    .C(n455),
    .D(n414),
    .Y(n458));
 sg13g2_a21oi_1 u517 (.A1(n458),
    .A2(n438),
    .Y(n459),
    .B1(\engine.partial_0_mask [5]));
 sg13g2_nor2_1 u518 (.A(net212),
    .B(n459),
    .Y(n160));
 sg13g2_nor4_1 u519 (.A(net63),
    .B(net64),
    .C(n430),
    .D(n415),
    .Y(n460));
 sg13g2_dfrbpq_1 u52 (.RESET_B(net222),
    .D(n50),
    .Q(\engine.operand_a_bcd [2]),
    .CLK(clknet_4_2_0_clk));
 sg13g2_o21ai_1 u520 (.B1(net210),
    .Y(n461),
    .A1(\engine.partial_1_bcd [0]),
    .A2(n460));
 sg13g2_a21oi_1 u521 (.A1(n418),
    .A2(n460),
    .Y(n163),
    .B1(n461));
 sg13g2_o21ai_1 u522 (.B1(net210),
    .Y(n462),
    .A1(\engine.partial_1_bcd [1]),
    .A2(n460));
 sg13g2_a21oi_1 u523 (.A1(n410),
    .A2(n460),
    .Y(n164),
    .B1(n462));
 sg13g2_o21ai_1 u524 (.B1(net210),
    .Y(n463),
    .A1(\engine.partial_1_bcd [2]),
    .A2(n460));
 sg13g2_a21oi_1 u525 (.A1(n411),
    .A2(n460),
    .Y(n165),
    .B1(n463));
 sg13g2_o21ai_1 u526 (.B1(net210),
    .Y(n464),
    .A1(\engine.partial_1_bcd [3]),
    .A2(n460));
 sg13g2_a21oi_1 u527 (.A1(n423),
    .A2(n460),
    .Y(n166),
    .B1(n464));
 sg13g2_nor4_1 u528 (.A(net63),
    .B(n437),
    .C(net65),
    .D(n415),
    .Y(n465));
 sg13g2_nor2_1 u529 (.A(\engine.carries_mask [0]),
    .B(net192),
    .Y(n466));
 sg13g2_nand2_1 u53 (.Y(n51),
    .A(\engine.operand_b_bcd [1]),
    .B(\engine.operand_a_bcd [2]));
 sg13g2_nor2_1 u530 (.A(net213),
    .B(n466),
    .Y(n316));
 sg13g2_o21ai_1 u531 (.B1(net211),
    .Y(n467),
    .A1(\engine.carries_bcd [3]),
    .A2(net192));
 sg13g2_a21oi_1 u532 (.A1(n423),
    .A2(net192),
    .Y(n317),
    .B1(n467));
 sg13g2_o21ai_1 u533 (.B1(net211),
    .Y(n468),
    .A1(\engine.carries_bcd [1]),
    .A2(net192));
 sg13g2_a21oi_1 u534 (.A1(n410),
    .A2(n465),
    .Y(n318),
    .B1(n468));
 sg13g2_o21ai_1 u535 (.B1(net211),
    .Y(n469),
    .A1(\engine.carries_bcd [2]),
    .A2(net192));
 sg13g2_a21oi_1 u536 (.A1(n411),
    .A2(n465),
    .Y(n319),
    .B1(n469));
 sg13g2_nor2_1 u537 (.A(\engine.final_mask [0]),
    .B(n432),
    .Y(n470));
 sg13g2_nor2_1 u538 (.A(net213),
    .B(n470),
    .Y(n325));
 sg13g2_a21oi_1 u539 (.A1(n431),
    .A2(n447),
    .Y(n471),
    .B1(\engine.final_mask [1]));
 sg13g2_a22oi_1 u54 (.Y(n52),
    .B1(\engine.operand_a_bcd [0]),
    .B2(\engine.operand_b_bcd [3]),
    .A2(net205),
    .A1(\engine.operand_a_bcd [1]));
 sg13g2_nor2_1 u540 (.A(net213),
    .B(n471),
    .Y(n326));
 sg13g2_a21oi_1 u541 (.A1(n431),
    .A2(n451),
    .Y(n472),
    .B1(\engine.final_mask [2]));
 sg13g2_nor2_1 u542 (.A(net212),
    .B(n472),
    .Y(n327));
 sg13g2_a21oi_1 u543 (.A1(n431),
    .A2(n453),
    .Y(n473),
    .B1(\engine.final_mask [3]));
 sg13g2_nor2_1 u544 (.A(net212),
    .B(n473),
    .Y(n328));
 sg13g2_a21oi_1 u545 (.A1(n431),
    .A2(n456),
    .Y(n474),
    .B1(\engine.final_mask [4]));
 sg13g2_nor2_1 u546 (.A(net212),
    .B(n474),
    .Y(n329));
 sg13g2_a21oi_1 u547 (.A1(n431),
    .A2(n458),
    .Y(n475),
    .B1(\engine.final_mask [5]));
 sg13g2_nor2_1 u548 (.A(net212),
    .B(n475),
    .Y(n330));
 sg13g2_nor3_1 u549 (.A(n420),
    .B(net64),
    .C(net65),
    .Y(n476));
 sg13g2_nor2b_1 u55 (.A(n52),
    .B_N(n48),
    .Y(n53));
 sg13g2_a21oi_1 u550 (.A1(n447),
    .A2(n476),
    .Y(n477),
    .B1(\engine.operand_b_mask [1]));
 sg13g2_nor2_1 u551 (.A(net213),
    .B(n477),
    .Y(n333));
 sg13g2_nor4_1 u552 (.A(net63),
    .B(net64),
    .C(net65),
    .D(n414),
    .Y(n478));
 sg13g2_a21oi_1 u553 (.A1(n450),
    .A2(n478),
    .Y(n479),
    .B1(\engine.operand_a_mask [2]));
 sg13g2_nor2_1 u554 (.A(net59),
    .B(n479),
    .Y(n334));
 sg13g2_nor2_1 u555 (.A(\engine.operand_b_mask [0]),
    .B(n421),
    .Y(n480));
 sg13g2_nor2_1 u556 (.A(net59),
    .B(n480),
    .Y(n335));
 sg13g2_inv_1 u557 (.Y(n481),
    .A(\engine.operand_b_mask [2]));
 sg13g2_nand2_1 u558 (.Y(n482),
    .A(n451),
    .B(n476));
 sg13g2_a21oi_1 u559 (.A1(n481),
    .A2(n482),
    .Y(n337),
    .B1(net213));
 sg13g2_nand2b_1 u56 (.Y(n54),
    .B(n53),
    .A_N(n51));
 sg13g2_nor2_1 u560 (.A(\engine.operand_a_mask [0]),
    .B(n416),
    .Y(n483));
 sg13g2_nor2_1 u561 (.A(net59),
    .B(n483),
    .Y(n339));
 sg13g2_a21oi_1 u562 (.A1(n446),
    .A2(n478),
    .Y(n484),
    .B1(\engine.operand_a_mask [1]));
 sg13g2_nor2_1 u563 (.A(net59),
    .B(n484),
    .Y(n340));
 sg13g2_o21ai_1 u564 (.B1(n413),
    .Y(n485),
    .A1(n437),
    .A2(n430));
 sg13g2_nand3_1 u565 (.B(net73),
    .C(n485),
    .A(net61),
    .Y(n486));
 sg13g2_a21oi_1 u566 (.A1(n344),
    .A2(n486),
    .Y(n343),
    .B1(net213));
 sg13g2_o21ai_1 u567 (.B1(net211),
    .Y(n487),
    .A1(\engine.carries_bcd [0]),
    .A2(net192));
 sg13g2_a21oi_1 u568 (.A1(n418),
    .A2(net192),
    .Y(n353),
    .B1(n487));
 sg13g2_and2_1 u57 (.A(n48),
    .B(n54),
    .X(n55));
 sg13g2_dfrbpq_1 u58 (.RESET_B(net222),
    .D(n56),
    .Q(\engine.operand_a_bcd [3]),
    .CLK(clknet_4_2_0_clk));
 sg13g2_nand2_1 u59 (.Y(n57),
    .A(net203),
    .B(\engine.operand_a_bcd [3]));
 sg13g2_dfrbpq_1 u6 (.RESET_B(net218),
    .D(n7),
    .Q(net79),
    .CLK(clknet_4_14_0_clk));
 sg13g2_nand2_1 u60 (.Y(n58),
    .A(\engine.operand_a_bcd [2]),
    .B(\engine.operand_b_bcd [2]));
 sg13g2_nand2_1 u61 (.Y(n59),
    .A(net207),
    .B(net204));
 sg13g2_and2_1 u62 (.A(n58),
    .B(n59),
    .X(n60));
 sg13g2_or2_1 u63 (.X(n61),
    .B(n59),
    .A(n58));
 sg13g2_nor2b_1 u64 (.A(n60),
    .B_N(n61),
    .Y(n62));
 sg13g2_xor2_1 u65 (.B(n62),
    .A(n57),
    .X(n63));
 sg13g2_or2_1 u66 (.X(n64),
    .B(n63),
    .A(n55));
 sg13g2_dfrbpq_1 u67 (.RESET_B(net222),
    .D(n65),
    .Q(\engine.operand_b_bcd [0]),
    .CLK(clknet_4_2_0_clk));
 sg13g2_nand2_1 u68 (.Y(n66),
    .A(net202),
    .B(\engine.operand_a_bcd [3]));
 sg13g2_xor2_1 u69 (.B(n53),
    .A(n51),
    .X(n67));
 sg13g2_dfrbpq_1 u7 (.RESET_B(net217),
    .D(n8),
    .Q(net80),
    .CLK(clknet_4_14_0_clk));
 sg13g2_nand2_1 u70 (.Y(n68),
    .A(n66),
    .B(n67));
 sg13g2_nand2_2 u71 (.Y(n69),
    .A(net202),
    .B(\engine.operand_a_bcd [2]));
 sg13g2_nand4_1 u72 (.B(net203),
    .C(net206),
    .A(net207),
    .Y(n70),
    .D(net205));
 sg13g2_a22oi_1 u73 (.Y(n71),
    .B1(net206),
    .B2(net205),
    .A2(net203),
    .A1(net207));
 sg13g2_a21oi_1 u74 (.A1(n69),
    .A2(n70),
    .Y(n72),
    .B1(n71));
 sg13g2_nor2_1 u75 (.A(n66),
    .B(n67),
    .Y(n73));
 sg13g2_a21oi_2 u76 (.B1(n73),
    .Y(n74),
    .A2(n72),
    .A1(n68));
 sg13g2_nand2_1 u77 (.Y(n75),
    .A(n55),
    .B(n63));
 sg13g2_and4_1 u78 (.A(\engine.operand_a_bcd [2]),
    .B(net205),
    .C(\engine.operand_a_bcd [3]),
    .D(net204),
    .X(n76));
 sg13g2_a22oi_1 u79 (.Y(n77),
    .B1(net205),
    .B2(\engine.operand_a_bcd [3]),
    .A2(net204),
    .A1(\engine.operand_a_bcd [2]));
 sg13g2_dfrbpq_1 u8 (.RESET_B(net217),
    .D(n9),
    .Q(net81),
    .CLK(clknet_4_10_0_clk));
 sg13g2_nor2_1 u80 (.A(n76),
    .B(n77),
    .Y(n78));
 sg13g2_a21oi_1 u81 (.A1(n57),
    .A2(n61),
    .Y(n79),
    .B1(n60));
 sg13g2_xor2_1 u82 (.B(n79),
    .A(n78),
    .X(n80));
 sg13g2_nand2_1 u83 (.Y(n81),
    .A(n75),
    .B(n80));
 sg13g2_a21oi_2 u84 (.B1(n81),
    .Y(n82),
    .A2(n74),
    .A1(n64));
 sg13g2_nand2_1 u85 (.Y(n83),
    .A(\engine.operand_a_bcd [3]),
    .B(net204));
 sg13g2_nand2_1 u86 (.Y(n84),
    .A(n78),
    .B(n79));
 sg13g2_and2_1 u87 (.A(n83),
    .B(n84),
    .X(n85));
 sg13g2_nor2_1 u88 (.A(n83),
    .B(n84),
    .Y(n86));
 sg13g2_or2_1 u89 (.X(n87),
    .B(n86),
    .A(n76));
 sg13g2_dfrbpq_1 u9 (.RESET_B(net217),
    .D(n10),
    .Q(net82),
    .CLK(clknet_4_9_0_clk));
 sg13g2_nor2_1 u90 (.A(n85),
    .B(n87),
    .Y(n88));
 sg13g2_nand4_1 u91 (.B(net203),
    .C(net206),
    .A(net207),
    .Y(n89),
    .D(net202));
 sg13g2_nor2b_1 u92 (.A(n71),
    .B_N(n70),
    .Y(n90));
 sg13g2_xor2_1 u93 (.B(n90),
    .A(n69),
    .X(n91));
 sg13g2_nor2_1 u94 (.A(n89),
    .B(n91),
    .Y(n92));
 sg13g2_nor2b_1 u95 (.A(n73),
    .B_N(n68),
    .Y(n93));
 sg13g2_xor2_1 u96 (.B(n93),
    .A(n72),
    .X(n94));
 sg13g2_nand2_1 u97 (.Y(n95),
    .A(n92),
    .B(n94));
 sg13g2_and2_1 u98 (.A(n75),
    .B(n64),
    .X(n96));
 sg13g2_xnor2_1 u99 (.Y(n97),
    .A(n96),
    .B(n74));
 assign error_col[2] = net;
 assign mismatch_score[3] = net57;
endmodule
