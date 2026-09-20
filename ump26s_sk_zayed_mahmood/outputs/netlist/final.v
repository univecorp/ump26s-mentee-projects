module uav_safety_controller (adverse_weather,
    alarm,
    battery_critical,
    battery_low,
    clk,
    emergency_land,
    emergency_shutdown,
    flight_active,
    flight_inhibit,
    flight_ready,
    force_manual_mode,
    manual_flight_control,
    obstacle_detected,
    propulsion_fault,
    reset,
    return_home,
    uav_active,
    warning,
    navigation_fault,
    payload_fault,
    shutdown_cmd,
    shutdown_select);
 input adverse_weather;
 output alarm;
 input battery_critical;
 input battery_low;
 input clk;
 output emergency_land;
 input emergency_shutdown;
 input flight_active;
 output flight_inhibit;
 output flight_ready;
 output force_manual_mode;
 input manual_flight_control;
 input obstacle_detected;
 input propulsion_fault;
 input reset;
 output return_home;
 input uav_active;
 output warning;
 input [1:0] navigation_fault;
 input [2:0] payload_fault;
 output [3:0] shutdown_cmd;
 input [3:0] shutdown_select;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire clknet_4_3_0_clk;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire net222;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire net221;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire net227;
 wire _0136_;
 wire net219;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire clknet_4_8_0_clk;
 wire net218;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire clknet_4_12_0_clk;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire clknet_4_11_0_clk;
 wire net220;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire net217;
 wire clknet_4_10_0_clk;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire clknet_4_9_0_clk;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire net224;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire net223;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0281_;
 wire _0282_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0311_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0413_;
 wire _0414_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0429_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0565_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire net116;
 wire net135;
 wire net117;
 wire net118;
 wire net136;
 wire net119;
 wire net120;
 wire net137;
 wire net138;
 wire net139;
 wire net121;
 wire manual_timer_expired;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net140;
 wire net141;
 wire net142;
 wire net143;
 wire net144;
 wire \shutdown_cmd_latched[0] ;
 wire \shutdown_cmd_latched[1] ;
 wire \shutdown_cmd_latched[2] ;
 wire \shutdown_cmd_latched[3] ;
 wire shutdown_committed;
 wire shutdown_confirmation_active;
 wire shutdown_request_locked_out;
 wire net130;
 wire net131;
 wire net132;
 wire net133;
 wire shutdown_selection_timer_expired;
 wire shutdown_timer_expired;
 wire \u_fsm.state[0] ;
 wire \u_fsm.state[2] ;
 wire \u_fsm.state[4] ;
 wire \u_fsm.state[5] ;
 wire \u_fsm.state[6] ;
 wire \u_fsm.state[7] ;
 wire \u_timer.manual_count[0] ;
 wire \u_timer.manual_count[10] ;
 wire \u_timer.manual_count[11] ;
 wire \u_timer.manual_count[12] ;
 wire \u_timer.manual_count[13] ;
 wire \u_timer.manual_count[14] ;
 wire \u_timer.manual_count[15] ;
 wire \u_timer.manual_count[16] ;
 wire \u_timer.manual_count[17] ;
 wire \u_timer.manual_count[18] ;
 wire \u_timer.manual_count[19] ;
 wire \u_timer.manual_count[1] ;
 wire \u_timer.manual_count[20] ;
 wire \u_timer.manual_count[21] ;
 wire \u_timer.manual_count[22] ;
 wire \u_timer.manual_count[23] ;
 wire \u_timer.manual_count[24] ;
 wire \u_timer.manual_count[25] ;
 wire \u_timer.manual_count[26] ;
 wire \u_timer.manual_count[27] ;
 wire \u_timer.manual_count[28] ;
 wire \u_timer.manual_count[29] ;
 wire \u_timer.manual_count[2] ;
 wire \u_timer.manual_count[30] ;
 wire \u_timer.manual_count[31] ;
 wire \u_timer.manual_count[3] ;
 wire \u_timer.manual_count[4] ;
 wire \u_timer.manual_count[5] ;
 wire \u_timer.manual_count[6] ;
 wire \u_timer.manual_count[7] ;
 wire \u_timer.manual_count[8] ;
 wire \u_timer.manual_count[9] ;
 wire \u_timer.shutdown_count[0] ;
 wire \u_timer.shutdown_count[10] ;
 wire \u_timer.shutdown_count[11] ;
 wire \u_timer.shutdown_count[12] ;
 wire \u_timer.shutdown_count[13] ;
 wire \u_timer.shutdown_count[14] ;
 wire \u_timer.shutdown_count[15] ;
 wire \u_timer.shutdown_count[16] ;
 wire \u_timer.shutdown_count[17] ;
 wire \u_timer.shutdown_count[18] ;
 wire \u_timer.shutdown_count[19] ;
 wire \u_timer.shutdown_count[1] ;
 wire \u_timer.shutdown_count[20] ;
 wire \u_timer.shutdown_count[21] ;
 wire \u_timer.shutdown_count[22] ;
 wire \u_timer.shutdown_count[23] ;
 wire \u_timer.shutdown_count[24] ;
 wire \u_timer.shutdown_count[25] ;
 wire \u_timer.shutdown_count[26] ;
 wire \u_timer.shutdown_count[27] ;
 wire \u_timer.shutdown_count[28] ;
 wire \u_timer.shutdown_count[29] ;
 wire \u_timer.shutdown_count[2] ;
 wire \u_timer.shutdown_count[30] ;
 wire \u_timer.shutdown_count[31] ;
 wire \u_timer.shutdown_count[3] ;
 wire \u_timer.shutdown_count[4] ;
 wire \u_timer.shutdown_count[5] ;
 wire \u_timer.shutdown_count[6] ;
 wire \u_timer.shutdown_count[7] ;
 wire \u_timer.shutdown_count[8] ;
 wire \u_timer.shutdown_count[9] ;
 wire \u_timer.shutdown_selection_count[0] ;
 wire \u_timer.shutdown_selection_count[10] ;
 wire \u_timer.shutdown_selection_count[11] ;
 wire \u_timer.shutdown_selection_count[12] ;
 wire \u_timer.shutdown_selection_count[13] ;
 wire \u_timer.shutdown_selection_count[14] ;
 wire \u_timer.shutdown_selection_count[15] ;
 wire \u_timer.shutdown_selection_count[16] ;
 wire \u_timer.shutdown_selection_count[17] ;
 wire \u_timer.shutdown_selection_count[18] ;
 wire \u_timer.shutdown_selection_count[19] ;
 wire \u_timer.shutdown_selection_count[1] ;
 wire \u_timer.shutdown_selection_count[20] ;
 wire \u_timer.shutdown_selection_count[21] ;
 wire \u_timer.shutdown_selection_count[22] ;
 wire \u_timer.shutdown_selection_count[23] ;
 wire \u_timer.shutdown_selection_count[24] ;
 wire \u_timer.shutdown_selection_count[25] ;
 wire \u_timer.shutdown_selection_count[26] ;
 wire \u_timer.shutdown_selection_count[27] ;
 wire \u_timer.shutdown_selection_count[28] ;
 wire \u_timer.shutdown_selection_count[29] ;
 wire \u_timer.shutdown_selection_count[2] ;
 wire \u_timer.shutdown_selection_count[30] ;
 wire \u_timer.shutdown_selection_count[31] ;
 wire \u_timer.shutdown_selection_count[3] ;
 wire \u_timer.shutdown_selection_count[4] ;
 wire \u_timer.shutdown_selection_count[5] ;
 wire \u_timer.shutdown_selection_count[6] ;
 wire \u_timer.shutdown_selection_count[7] ;
 wire \u_timer.shutdown_selection_count[8] ;
 wire \u_timer.shutdown_selection_count[9] ;
 wire net134;
 wire net145;
 wire net;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
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
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net226;
 wire net225;
 wire clknet_4_6_0_clk;
 wire net232;
 wire net230;
 wire net231;
 wire net228;
 wire clknet_4_7_0_clk;
 wire clknet_4_0_0_clk;
 wire net229;
 wire clknet_4_2_0_clk;
 wire clknet_4_1_0_clk;
 wire net233;
 wire net214;
 wire net213;
 wire net234;
 wire clknet_4_5_0_clk;
 wire clknet_4_4_0_clk;
 wire clknet_0_clk;
 wire net210;
 wire net209;
 wire net211;
 wire net212;
 wire net215;
 wire net216;
 wire clknet_4_13_0_clk;
 wire clknet_4_14_0_clk;
 wire clknet_4_15_0_clk;
 wire clknet_5_0__leaf_clk;
 wire clknet_5_1__leaf_clk;
 wire clknet_5_2__leaf_clk;
 wire clknet_5_3__leaf_clk;
 wire clknet_5_4__leaf_clk;
 wire clknet_5_5__leaf_clk;
 wire clknet_5_6__leaf_clk;
 wire clknet_5_7__leaf_clk;
 wire clknet_5_8__leaf_clk;
 wire clknet_5_9__leaf_clk;
 wire clknet_5_10__leaf_clk;
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

 sg13g2_and2_1 _0617_ (.A(\shutdown_cmd_latched[2] ),
    .B(\u_fsm.state[6] ),
    .X(net143));
 sg13g2_and2_1 _0618_ (.A(\shutdown_cmd_latched[1] ),
    .B(\u_fsm.state[6] ),
    .X(net142));
 sg13g2_and2_1 _0619_ (.A(\shutdown_cmd_latched[0] ),
    .B(\u_fsm.state[6] ),
    .X(net141));
 sg13g2_inv_1 _0621_ (.Y(_0117_),
    .A(shutdown_committed));
 sg13g2_nor4_1 _0622_ (.A(net132),
    .B(net131),
    .C(net130),
    .D(net133),
    .Y(_0118_));
 sg13g2_nor2_1 _0623_ (.A(shutdown_confirmation_active),
    .B(_0118_),
    .Y(_0119_));
 sg13g2_nor2b_1 _0624_ (.A(shutdown_request_locked_out),
    .B_N(net119),
    .Y(_0120_));
 sg13g2_nor2b_1 _0625_ (.A(shutdown_selection_timer_expired),
    .B_N(_0120_),
    .Y(_0121_));
 sg13g2_nand2b_1 _0627_ (.Y(_0123_),
    .B(_0121_),
    .A_N(_0119_));
 sg13g2_nand2_1 _0628_ (.Y(_0124_),
    .A(_0117_),
    .B(_0123_));
 sg13g2_nand2_1 _0629_ (.Y(_0125_),
    .A(\shutdown_cmd_latched[2] ),
    .B(_0124_));
 sg13g2_and2_1 _0630_ (.A(_0117_),
    .B(_0123_),
    .X(_0126_));
 sg13g2_nand3_1 _0631_ (.B(_0121_),
    .C(_0126_),
    .A(net132),
    .Y(_0127_));
 sg13g2_a21oi_1 _0633_ (.A1(_0125_),
    .A2(_0127_),
    .Y(_0010_),
    .B1(net234));
 sg13g2_nand2_1 _0634_ (.Y(_0129_),
    .A(\shutdown_cmd_latched[1] ),
    .B(_0124_));
 sg13g2_nand3_1 _0635_ (.B(_0121_),
    .C(_0126_),
    .A(net131),
    .Y(_0130_));
 sg13g2_a21oi_1 _0636_ (.A1(_0129_),
    .A2(_0130_),
    .Y(_0011_),
    .B1(net234));
 sg13g2_nand2_1 _0637_ (.Y(_0131_),
    .A(\shutdown_cmd_latched[0] ),
    .B(_0124_));
 sg13g2_nand3_1 _0638_ (.B(_0121_),
    .C(_0126_),
    .A(net130),
    .Y(_0132_));
 sg13g2_a21oi_1 _0639_ (.A1(_0131_),
    .A2(_0132_),
    .Y(_0012_),
    .B1(net234));
 sg13g2_nor2b_1 _0640_ (.A(net129),
    .B_N(\u_fsm.state[7] ),
    .Y(_0133_));
 sg13g2_and2_1 _0641_ (.A(\u_timer.manual_count[30] ),
    .B(_0133_),
    .X(_0013_));
 sg13g2_and2_1 _0642_ (.A(\u_timer.manual_count[29] ),
    .B(_0133_),
    .X(_0014_));
 sg13g2_and2_1 _0643_ (.A(\u_timer.manual_count[28] ),
    .B(_0133_),
    .X(_0015_));
 sg13g2_inv_1 _0644_ (.Y(_0134_),
    .A(\u_timer.manual_count[27] ));
 sg13g2_inv_1 _0646_ (.Y(_0136_),
    .A(\u_timer.manual_count[20] ));
 sg13g2_and3_1 _0648_ (.X(_0138_),
    .A(\u_timer.manual_count[14] ),
    .B(\u_timer.manual_count[15] ),
    .C(\u_timer.manual_count[16] ));
 sg13g2_nand4_1 _0649_ (.B(\u_timer.manual_count[18] ),
    .C(\u_timer.manual_count[19] ),
    .A(\u_timer.manual_count[17] ),
    .Y(_0139_),
    .D(_0138_));
 sg13g2_nor2_1 _0650_ (.A(_0136_),
    .B(_0139_),
    .Y(_0140_));
 sg13g2_and3_1 _0651_ (.X(_0141_),
    .A(\u_timer.manual_count[21] ),
    .B(\u_timer.manual_count[22] ),
    .C(\u_timer.manual_count[23] ));
 sg13g2_and3_1 _0654_ (.X(_0144_),
    .A(\u_timer.manual_count[9] ),
    .B(\u_timer.manual_count[10] ),
    .C(\u_timer.manual_count[11] ));
 sg13g2_nand3_1 _0655_ (.B(\u_timer.manual_count[13] ),
    .C(_0144_),
    .A(\u_timer.manual_count[12] ),
    .Y(_0145_));
 sg13g2_nand3_1 _0656_ (.B(\u_timer.manual_count[7] ),
    .C(\u_timer.manual_count[8] ),
    .A(\u_timer.manual_count[6] ),
    .Y(_0146_));
 sg13g2_inv_1 _0657_ (.Y(_0147_),
    .A(manual_timer_expired));
 sg13g2_nand4_1 _0658_ (.B(\u_timer.manual_count[25] ),
    .C(\u_timer.manual_count[26] ),
    .A(\u_timer.manual_count[24] ),
    .Y(_0148_),
    .D(\u_timer.manual_count[27] ));
 sg13g2_nor4_2 _0659_ (.A(\u_timer.manual_count[31] ),
    .B(\u_timer.manual_count[28] ),
    .C(\u_timer.manual_count[29] ),
    .Y(_0149_),
    .D(\u_timer.manual_count[30] ));
 sg13g2_nand3_1 _0660_ (.B(_0148_),
    .C(_0149_),
    .A(_0147_),
    .Y(_0150_));
 sg13g2_and4_1 _0661_ (.A(\u_timer.manual_count[0] ),
    .B(\u_timer.manual_count[1] ),
    .C(\u_timer.manual_count[2] ),
    .D(\u_timer.manual_count[3] ),
    .X(_0151_));
 sg13g2_nand3_1 _0662_ (.B(\u_timer.manual_count[5] ),
    .C(_0151_),
    .A(\u_timer.manual_count[4] ),
    .Y(_0152_));
 sg13g2_nor4_1 _0663_ (.A(_0145_),
    .B(_0146_),
    .C(_0150_),
    .D(_0152_),
    .Y(_0153_));
 sg13g2_and4_1 _0664_ (.A(\u_timer.manual_count[24] ),
    .B(_0140_),
    .C(_0141_),
    .D(_0153_),
    .X(_0154_));
 sg13g2_nand3_1 _0666_ (.B(\u_timer.manual_count[26] ),
    .C(_0154_),
    .A(\u_timer.manual_count[25] ),
    .Y(_0156_));
 sg13g2_inv_1 _0667_ (.Y(_0157_),
    .A(net129));
 sg13g2_nand2_1 _0668_ (.Y(_0158_),
    .A(_0157_),
    .B(\u_fsm.state[7] ));
 sg13g2_a21oi_1 _0671_ (.A1(_0134_),
    .A2(_0156_),
    .Y(_0016_),
    .B1(net231));
 sg13g2_inv_1 _0672_ (.Y(_0161_),
    .A(\u_timer.manual_count[26] ));
 sg13g2_a21o_1 _0673_ (.A2(_0154_),
    .A1(\u_timer.manual_count[25] ),
    .B1(_0161_),
    .X(_0162_));
 sg13g2_nand3_1 _0674_ (.B(_0161_),
    .C(_0154_),
    .A(\u_timer.manual_count[25] ),
    .Y(_0163_));
 sg13g2_a21oi_1 _0675_ (.A1(_0162_),
    .A2(_0163_),
    .Y(_0017_),
    .B1(net231));
 sg13g2_xnor2_1 _0676_ (.Y(_0164_),
    .A(\u_timer.manual_count[25] ),
    .B(_0154_));
 sg13g2_nor2_1 _0677_ (.A(net231),
    .B(_0164_),
    .Y(_0018_));
 sg13g2_nand2_1 _0678_ (.Y(_0165_),
    .A(_0140_),
    .B(_0141_));
 sg13g2_and3_1 _0679_ (.X(_0166_),
    .A(\u_timer.manual_count[12] ),
    .B(\u_timer.manual_count[13] ),
    .C(\u_timer.manual_count[15] ));
 sg13g2_or2_1 _0680_ (.X(_0167_),
    .B(\u_timer.manual_count[11] ),
    .A(\u_timer.manual_count[10] ));
 sg13g2_a21o_1 _0681_ (.A2(\u_timer.manual_count[9] ),
    .A1(\u_timer.manual_count[8] ),
    .B1(_0167_),
    .X(_0168_));
 sg13g2_nand2_1 _0682_ (.Y(_0169_),
    .A(\u_timer.manual_count[14] ),
    .B(\u_timer.manual_count[15] ));
 sg13g2_nor2_1 _0683_ (.A(\u_timer.manual_count[19] ),
    .B(\u_timer.manual_count[20] ),
    .Y(_0170_));
 sg13g2_nand3_1 _0684_ (.B(\u_timer.manual_count[17] ),
    .C(\u_timer.manual_count[18] ),
    .A(\u_timer.manual_count[16] ),
    .Y(_0171_));
 sg13g2_nand3_1 _0685_ (.B(_0170_),
    .C(_0171_),
    .A(_0169_),
    .Y(_0172_));
 sg13g2_a21oi_1 _0686_ (.A1(_0166_),
    .A2(_0168_),
    .Y(_0173_),
    .B1(_0172_));
 sg13g2_nand2_1 _0687_ (.Y(_0174_),
    .A(\u_timer.manual_count[17] ),
    .B(\u_timer.manual_count[18] ));
 sg13g2_nand2_1 _0688_ (.Y(_0175_),
    .A(_0174_),
    .B(_0170_));
 sg13g2_nand3_1 _0689_ (.B(\u_timer.manual_count[26] ),
    .C(\u_timer.manual_count[27] ),
    .A(\u_timer.manual_count[25] ),
    .Y(_0176_));
 sg13g2_nor2_1 _0690_ (.A(\u_timer.manual_count[24] ),
    .B(_0176_),
    .Y(_0177_));
 sg13g2_nand4_1 _0691_ (.B(_0149_),
    .C(_0175_),
    .A(_0141_),
    .Y(_0178_),
    .D(_0177_));
 sg13g2_nand2_1 _0692_ (.Y(_0179_),
    .A(_0144_),
    .B(_0151_));
 sg13g2_nand4_1 _0693_ (.B(\u_timer.manual_count[5] ),
    .C(\u_timer.manual_count[12] ),
    .A(\u_timer.manual_count[4] ),
    .Y(_0180_),
    .D(\u_timer.manual_count[13] ));
 sg13g2_nor4_1 _0694_ (.A(_0146_),
    .B(_0150_),
    .C(_0179_),
    .D(_0180_),
    .Y(_0181_));
 sg13g2_o21ai_1 _0695_ (.B1(_0181_),
    .Y(_0182_),
    .A1(_0173_),
    .A2(_0178_));
 sg13g2_o21ai_1 _0698_ (.B1(\u_timer.manual_count[24] ),
    .Y(_0185_),
    .A1(_0165_),
    .A2(net220));
 sg13g2_or3_1 _0699_ (.A(\u_timer.manual_count[24] ),
    .B(_0165_),
    .C(net220),
    .X(_0186_));
 sg13g2_a21oi_1 _0700_ (.A1(_0185_),
    .A2(_0186_),
    .Y(_0019_),
    .B1(_0158_));
 sg13g2_nand3_1 _0701_ (.B(\u_timer.manual_count[22] ),
    .C(_0140_),
    .A(\u_timer.manual_count[21] ),
    .Y(_0187_));
 sg13g2_o21ai_1 _0702_ (.B1(\u_timer.manual_count[23] ),
    .Y(_0188_),
    .A1(net220),
    .A2(_0187_));
 sg13g2_or3_1 _0703_ (.A(\u_timer.manual_count[23] ),
    .B(net220),
    .C(_0187_),
    .X(_0189_));
 sg13g2_a21oi_1 _0704_ (.A1(_0188_),
    .A2(_0189_),
    .Y(_0020_),
    .B1(net231));
 sg13g2_nand2_1 _0705_ (.Y(_0190_),
    .A(\u_timer.manual_count[21] ),
    .B(_0140_));
 sg13g2_o21ai_1 _0706_ (.B1(\u_timer.manual_count[22] ),
    .Y(_0191_),
    .A1(net220),
    .A2(_0190_));
 sg13g2_or3_1 _0707_ (.A(\u_timer.manual_count[22] ),
    .B(net220),
    .C(_0190_),
    .X(_0192_));
 sg13g2_a21oi_1 _0708_ (.A1(_0191_),
    .A2(_0192_),
    .Y(_0021_),
    .B1(net231));
 sg13g2_inv_1 _0709_ (.Y(_0193_),
    .A(_0140_));
 sg13g2_o21ai_1 _0710_ (.B1(\u_timer.manual_count[21] ),
    .Y(_0194_),
    .A1(_0193_),
    .A2(net220));
 sg13g2_or3_1 _0711_ (.A(\u_timer.manual_count[21] ),
    .B(_0193_),
    .C(net220),
    .X(_0195_));
 sg13g2_a21oi_1 _0712_ (.A1(_0194_),
    .A2(_0195_),
    .Y(_0022_),
    .B1(net231));
 sg13g2_o21ai_1 _0713_ (.B1(\u_timer.manual_count[20] ),
    .Y(_0196_),
    .A1(_0139_),
    .A2(_0182_));
 sg13g2_or3_1 _0714_ (.A(\u_timer.manual_count[20] ),
    .B(_0139_),
    .C(_0182_),
    .X(_0197_));
 sg13g2_a21oi_1 _0716_ (.A1(_0196_),
    .A2(_0197_),
    .Y(_0023_),
    .B1(net232));
 sg13g2_nand3_1 _0717_ (.B(\u_timer.manual_count[15] ),
    .C(\u_timer.manual_count[16] ),
    .A(\u_timer.manual_count[14] ),
    .Y(_0199_));
 sg13g2_or2_1 _0718_ (.X(_0200_),
    .B(_0174_),
    .A(_0199_));
 sg13g2_o21ai_1 _0719_ (.B1(\u_timer.manual_count[19] ),
    .Y(_0201_),
    .A1(_0182_),
    .A2(_0200_));
 sg13g2_or3_1 _0720_ (.A(\u_timer.manual_count[19] ),
    .B(_0182_),
    .C(_0200_),
    .X(_0202_));
 sg13g2_a21oi_1 _0721_ (.A1(_0201_),
    .A2(_0202_),
    .Y(_0024_),
    .B1(net232));
 sg13g2_nand2_1 _0722_ (.Y(_0203_),
    .A(\u_timer.manual_count[17] ),
    .B(_0138_));
 sg13g2_o21ai_1 _0723_ (.B1(\u_timer.manual_count[18] ),
    .Y(_0204_),
    .A1(net219),
    .A2(_0203_));
 sg13g2_or3_1 _0724_ (.A(\u_timer.manual_count[18] ),
    .B(net219),
    .C(_0203_),
    .X(_0205_));
 sg13g2_a21oi_1 _0725_ (.A1(_0204_),
    .A2(_0205_),
    .Y(_0025_),
    .B1(net232));
 sg13g2_o21ai_1 _0726_ (.B1(\u_timer.manual_count[17] ),
    .Y(_0206_),
    .A1(_0199_),
    .A2(net219));
 sg13g2_or3_1 _0727_ (.A(\u_timer.manual_count[17] ),
    .B(_0199_),
    .C(net219),
    .X(_0207_));
 sg13g2_a21oi_1 _0728_ (.A1(_0206_),
    .A2(_0207_),
    .Y(_0026_),
    .B1(net232));
 sg13g2_nand3_1 _0729_ (.B(\u_timer.manual_count[10] ),
    .C(\u_timer.manual_count[11] ),
    .A(\u_timer.manual_count[9] ),
    .Y(_0208_));
 sg13g2_nand4_1 _0730_ (.B(\u_timer.manual_count[13] ),
    .C(\u_timer.manual_count[14] ),
    .A(\u_timer.manual_count[12] ),
    .Y(_0209_),
    .D(\u_timer.manual_count[15] ));
 sg13g2_or2_1 _0731_ (.X(_0210_),
    .B(_0209_),
    .A(_0208_));
 sg13g2_nor3_1 _0732_ (.A(_0146_),
    .B(_0150_),
    .C(_0152_),
    .Y(_0211_));
 sg13g2_o21ai_1 _0733_ (.B1(_0211_),
    .Y(_0212_),
    .A1(_0173_),
    .A2(_0178_));
 sg13g2_o21ai_1 _0735_ (.B1(\u_timer.manual_count[16] ),
    .Y(_0214_),
    .A1(_0210_),
    .A2(net218));
 sg13g2_or3_1 _0736_ (.A(\u_timer.manual_count[16] ),
    .B(_0210_),
    .C(net218),
    .X(_0215_));
 sg13g2_a21oi_1 _0737_ (.A1(_0214_),
    .A2(_0215_),
    .Y(_0027_),
    .B1(net232));
 sg13g2_inv_1 _0738_ (.Y(_0216_),
    .A(\u_timer.manual_count[14] ));
 sg13g2_o21ai_1 _0739_ (.B1(\u_timer.manual_count[15] ),
    .Y(_0217_),
    .A1(_0216_),
    .A2(net219));
 sg13g2_or3_1 _0740_ (.A(_0216_),
    .B(\u_timer.manual_count[15] ),
    .C(net219),
    .X(_0218_));
 sg13g2_a21oi_1 _0741_ (.A1(_0217_),
    .A2(_0218_),
    .Y(_0028_),
    .B1(net232));
 sg13g2_xnor2_1 _0742_ (.Y(_0219_),
    .A(_0216_),
    .B(net219));
 sg13g2_nor2_1 _0743_ (.A(net232),
    .B(_0219_),
    .Y(_0029_));
 sg13g2_nand2_1 _0744_ (.Y(_0220_),
    .A(\u_timer.manual_count[12] ),
    .B(_0144_));
 sg13g2_o21ai_1 _0745_ (.B1(\u_timer.manual_count[13] ),
    .Y(_0221_),
    .A1(_0212_),
    .A2(_0220_));
 sg13g2_or3_1 _0746_ (.A(\u_timer.manual_count[13] ),
    .B(_0212_),
    .C(_0220_),
    .X(_0222_));
 sg13g2_a21oi_1 _0747_ (.A1(_0221_),
    .A2(_0222_),
    .Y(_0030_),
    .B1(_0158_));
 sg13g2_o21ai_1 _0748_ (.B1(\u_timer.manual_count[12] ),
    .Y(_0223_),
    .A1(_0208_),
    .A2(net218));
 sg13g2_inv_1 _0749_ (.Y(_0224_),
    .A(\u_timer.manual_count[12] ));
 sg13g2_nand3b_1 _0750_ (.B(_0224_),
    .C(_0144_),
    .Y(_0225_),
    .A_N(_0212_));
 sg13g2_a21oi_1 _0751_ (.A1(_0223_),
    .A2(_0225_),
    .Y(_0031_),
    .B1(net232));
 sg13g2_nand2_1 _0752_ (.Y(_0226_),
    .A(\u_timer.manual_count[9] ),
    .B(\u_timer.manual_count[10] ));
 sg13g2_o21ai_1 _0753_ (.B1(\u_timer.manual_count[11] ),
    .Y(_0227_),
    .A1(_0226_),
    .A2(net218));
 sg13g2_or3_1 _0754_ (.A(\u_timer.manual_count[11] ),
    .B(_0226_),
    .C(net218),
    .X(_0228_));
 sg13g2_a21oi_1 _0755_ (.A1(_0227_),
    .A2(_0228_),
    .Y(_0032_),
    .B1(net229));
 sg13g2_inv_1 _0756_ (.Y(_0229_),
    .A(\u_timer.manual_count[9] ));
 sg13g2_o21ai_1 _0757_ (.B1(\u_timer.manual_count[10] ),
    .Y(_0230_),
    .A1(_0229_),
    .A2(net218));
 sg13g2_or3_1 _0758_ (.A(_0229_),
    .B(\u_timer.manual_count[10] ),
    .C(net218),
    .X(_0231_));
 sg13g2_a21oi_1 _0759_ (.A1(_0230_),
    .A2(_0231_),
    .Y(_0033_),
    .B1(net229));
 sg13g2_xnor2_1 _0760_ (.Y(_0232_),
    .A(_0229_),
    .B(net218));
 sg13g2_nor2_1 _0761_ (.A(net229),
    .B(_0232_),
    .Y(_0034_));
 sg13g2_inv_1 _0762_ (.Y(_0233_),
    .A(\u_timer.manual_count[7] ));
 sg13g2_inv_1 _0763_ (.Y(_0234_),
    .A(\u_timer.manual_count[24] ));
 sg13g2_a21oi_1 _0764_ (.A1(_0174_),
    .A2(_0170_),
    .Y(_0235_),
    .B1(_0176_));
 sg13g2_nand4_1 _0765_ (.B(_0141_),
    .C(_0149_),
    .A(_0234_),
    .Y(_0236_),
    .D(_0235_));
 sg13g2_nand3_1 _0766_ (.B(\u_timer.manual_count[13] ),
    .C(\u_timer.manual_count[15] ),
    .A(\u_timer.manual_count[12] ),
    .Y(_0237_));
 sg13g2_nand2b_1 _0767_ (.Y(_0238_),
    .B(\u_timer.manual_count[9] ),
    .A_N(\u_timer.manual_count[14] ));
 sg13g2_nor4_1 _0768_ (.A(\u_timer.manual_count[8] ),
    .B(_0237_),
    .C(_0167_),
    .D(_0238_),
    .Y(_0239_));
 sg13g2_nand4_1 _0769_ (.B(\u_timer.manual_count[1] ),
    .C(\u_timer.manual_count[2] ),
    .A(\u_timer.manual_count[0] ),
    .Y(_0240_),
    .D(\u_timer.manual_count[3] ));
 sg13g2_nand3_1 _0770_ (.B(\u_timer.manual_count[5] ),
    .C(\u_timer.manual_count[6] ),
    .A(\u_timer.manual_count[4] ),
    .Y(_0241_));
 sg13g2_o21ai_1 _0771_ (.B1(_0233_),
    .Y(_0242_),
    .A1(_0240_),
    .A2(_0241_));
 sg13g2_a221oi_1 _0772_ (.B2(_0242_),
    .C1(_0172_),
    .B1(_0239_),
    .A1(_0166_),
    .Y(_0243_),
    .A2(_0168_));
 sg13g2_inv_1 _0773_ (.Y(_0244_),
    .A(\u_timer.manual_count[6] ));
 sg13g2_nor3_1 _0774_ (.A(_0244_),
    .B(_0150_),
    .C(_0152_),
    .Y(_0245_));
 sg13g2_o21ai_1 _0775_ (.B1(_0245_),
    .Y(_0246_),
    .A1(_0236_),
    .A2(_0243_));
 sg13g2_o21ai_1 _0776_ (.B1(\u_timer.manual_count[8] ),
    .Y(_0247_),
    .A1(_0233_),
    .A2(_0246_));
 sg13g2_or3_1 _0777_ (.A(_0233_),
    .B(\u_timer.manual_count[8] ),
    .C(_0246_),
    .X(_0248_));
 sg13g2_a21oi_1 _0778_ (.A1(_0247_),
    .A2(_0248_),
    .Y(_0035_),
    .B1(net229));
 sg13g2_nor2_1 _0779_ (.A(\u_timer.manual_count[7] ),
    .B(net229),
    .Y(_0249_));
 sg13g2_nor2_1 _0780_ (.A(_0233_),
    .B(net229),
    .Y(_0250_));
 sg13g2_mux2_1 _0781_ (.A0(_0249_),
    .A1(_0250_),
    .S(_0246_),
    .X(_0036_));
 sg13g2_and3_1 _0782_ (.X(_0251_),
    .A(_0147_),
    .B(_0148_),
    .C(_0149_));
 sg13g2_o21ai_1 _0783_ (.B1(_0251_),
    .Y(_0252_),
    .A1(_0236_),
    .A2(_0243_));
 sg13g2_o21ai_1 _0786_ (.B1(\u_timer.manual_count[6] ),
    .Y(_0255_),
    .A1(_0152_),
    .A2(_0252_));
 sg13g2_or3_1 _0787_ (.A(\u_timer.manual_count[6] ),
    .B(_0152_),
    .C(_0252_),
    .X(_0256_));
 sg13g2_a21oi_1 _0788_ (.A1(_0255_),
    .A2(_0256_),
    .Y(_0037_),
    .B1(net230));
 sg13g2_nand2_1 _0789_ (.Y(_0257_),
    .A(\u_timer.manual_count[4] ),
    .B(_0151_));
 sg13g2_o21ai_1 _0790_ (.B1(\u_timer.manual_count[5] ),
    .Y(_0258_),
    .A1(_0252_),
    .A2(_0257_));
 sg13g2_or3_1 _0791_ (.A(\u_timer.manual_count[5] ),
    .B(_0252_),
    .C(_0257_),
    .X(_0259_));
 sg13g2_a21oi_1 _0792_ (.A1(_0258_),
    .A2(_0259_),
    .Y(_0038_),
    .B1(net230));
 sg13g2_o21ai_1 _0793_ (.B1(\u_timer.manual_count[4] ),
    .Y(_0260_),
    .A1(_0240_),
    .A2(_0252_));
 sg13g2_or3_1 _0794_ (.A(\u_timer.manual_count[4] ),
    .B(_0240_),
    .C(net217),
    .X(_0261_));
 sg13g2_a21oi_1 _0795_ (.A1(_0260_),
    .A2(_0261_),
    .Y(_0039_),
    .B1(net230));
 sg13g2_nand3_1 _0796_ (.B(\u_timer.manual_count[1] ),
    .C(\u_timer.manual_count[2] ),
    .A(\u_timer.manual_count[0] ),
    .Y(_0262_));
 sg13g2_o21ai_1 _0797_ (.B1(\u_timer.manual_count[3] ),
    .Y(_0263_),
    .A1(_0262_),
    .A2(net217));
 sg13g2_or3_1 _0798_ (.A(\u_timer.manual_count[3] ),
    .B(_0262_),
    .C(net217),
    .X(_0264_));
 sg13g2_a21oi_1 _0799_ (.A1(_0263_),
    .A2(_0264_),
    .Y(_0040_),
    .B1(net229));
 sg13g2_nand2_1 _0800_ (.Y(_0265_),
    .A(\u_timer.manual_count[0] ),
    .B(\u_timer.manual_count[1] ));
 sg13g2_o21ai_1 _0801_ (.B1(\u_timer.manual_count[2] ),
    .Y(_0266_),
    .A1(_0265_),
    .A2(net217));
 sg13g2_or3_1 _0802_ (.A(\u_timer.manual_count[2] ),
    .B(_0265_),
    .C(net217),
    .X(_0267_));
 sg13g2_a21oi_1 _0803_ (.A1(_0266_),
    .A2(_0267_),
    .Y(_0041_),
    .B1(net229));
 sg13g2_inv_1 _0804_ (.Y(_0268_),
    .A(\u_timer.manual_count[0] ));
 sg13g2_o21ai_1 _0805_ (.B1(\u_timer.manual_count[1] ),
    .Y(_0269_),
    .A1(_0268_),
    .A2(net217));
 sg13g2_or3_1 _0806_ (.A(_0268_),
    .B(\u_timer.manual_count[1] ),
    .C(net217),
    .X(_0270_));
 sg13g2_a21oi_1 _0807_ (.A1(_0269_),
    .A2(_0270_),
    .Y(_0042_),
    .B1(net230));
 sg13g2_xnor2_1 _0808_ (.Y(_0271_),
    .A(_0268_),
    .B(net217));
 sg13g2_nor2_1 _0809_ (.A(net230),
    .B(_0271_),
    .Y(_0043_));
 sg13g2_nor2_1 _0810_ (.A(shutdown_committed),
    .B(net129),
    .Y(_0272_));
 sg13g2_and3_1 _0811_ (.X(_0273_),
    .A(net119),
    .B(shutdown_confirmation_active),
    .C(_0272_));
 sg13g2_and2_1 _0813_ (.A(\u_timer.shutdown_count[30] ),
    .B(_0273_),
    .X(_0044_));
 sg13g2_and2_1 _0814_ (.A(\u_timer.shutdown_count[29] ),
    .B(_0273_),
    .X(_0045_));
 sg13g2_and2_1 _0815_ (.A(\u_timer.shutdown_count[28] ),
    .B(_0273_),
    .X(_0046_));
 sg13g2_nand2_1 _0816_ (.Y(_0275_),
    .A(\u_timer.shutdown_count[25] ),
    .B(\u_timer.shutdown_count[26] ));
 sg13g2_nand3_1 _0817_ (.B(\u_timer.shutdown_count[21] ),
    .C(\u_timer.shutdown_count[22] ),
    .A(\u_timer.shutdown_count[20] ),
    .Y(_0276_));
 sg13g2_inv_1 _0818_ (.Y(_0277_),
    .A(\u_timer.shutdown_count[18] ));
 sg13g2_nand3_1 _0819_ (.B(\u_timer.shutdown_count[15] ),
    .C(\u_timer.shutdown_count[16] ),
    .A(\u_timer.shutdown_count[14] ),
    .Y(_0278_));
 sg13g2_nand3_1 _0820_ (.B(\u_timer.shutdown_count[13] ),
    .C(\u_timer.shutdown_count[17] ),
    .A(\u_timer.shutdown_count[12] ),
    .Y(_0279_));
 sg13g2_nand2_1 _0822_ (.Y(_0281_),
    .A(\u_timer.shutdown_count[11] ),
    .B(\u_timer.shutdown_count[19] ));
 sg13g2_or4_1 _0823_ (.A(_0277_),
    .B(_0278_),
    .C(_0279_),
    .D(_0281_),
    .X(_0282_));
 sg13g2_or2_1 _0825_ (.X(_0284_),
    .B(_0282_),
    .A(_0276_));
 sg13g2_nand2_1 _0826_ (.Y(_0285_),
    .A(\u_timer.shutdown_count[23] ),
    .B(\u_timer.shutdown_count[24] ));
 sg13g2_nand4_1 _0827_ (.B(\u_timer.shutdown_count[8] ),
    .C(\u_timer.shutdown_count[9] ),
    .A(\u_timer.shutdown_count[7] ),
    .Y(_0286_),
    .D(\u_timer.shutdown_count[10] ));
 sg13g2_or4_1 _0829_ (.A(\u_timer.shutdown_count[28] ),
    .B(\u_timer.shutdown_count[29] ),
    .C(\u_timer.shutdown_count[30] ),
    .D(shutdown_timer_expired),
    .X(_0288_));
 sg13g2_nand4_1 _0830_ (.B(\u_timer.shutdown_count[3] ),
    .C(\u_timer.shutdown_count[4] ),
    .A(\u_timer.shutdown_count[2] ),
    .Y(_0289_),
    .D(\u_timer.shutdown_count[5] ));
 sg13g2_nand3_1 _0831_ (.B(\u_timer.shutdown_count[1] ),
    .C(\u_timer.shutdown_count[6] ),
    .A(\u_timer.shutdown_count[0] ),
    .Y(_0290_));
 sg13g2_or4_1 _0832_ (.A(\u_timer.shutdown_count[31] ),
    .B(_0288_),
    .C(_0289_),
    .D(_0290_),
    .X(_0291_));
 sg13g2_or4_1 _0834_ (.A(_0284_),
    .B(_0285_),
    .C(_0286_),
    .D(_0291_),
    .X(_0293_));
 sg13g2_inv_1 _0835_ (.Y(_0294_),
    .A(\u_timer.shutdown_count[27] ));
 sg13g2_o21ai_1 _0836_ (.B1(_0294_),
    .Y(_0295_),
    .A1(_0275_),
    .A2(_0293_));
 sg13g2_and2_1 _0837_ (.A(_0273_),
    .B(_0295_),
    .X(_0047_));
 sg13g2_nor4_1 _0838_ (.A(\u_timer.shutdown_count[7] ),
    .B(\u_timer.shutdown_count[9] ),
    .C(\u_timer.shutdown_count[10] ),
    .D(net233),
    .Y(_0296_));
 sg13g2_o21ai_1 _0839_ (.B1(_0296_),
    .Y(_0297_),
    .A1(_0289_),
    .A2(_0290_));
 sg13g2_inv_1 _0840_ (.Y(_0298_),
    .A(\u_timer.shutdown_count[12] ));
 sg13g2_nand2_1 _0841_ (.Y(_0299_),
    .A(\u_timer.shutdown_count[14] ),
    .B(\u_timer.shutdown_count[15] ));
 sg13g2_nor4_1 _0842_ (.A(\u_timer.shutdown_count[8] ),
    .B(\u_timer.shutdown_count[9] ),
    .C(\u_timer.shutdown_count[10] ),
    .D(net233),
    .Y(_0300_));
 sg13g2_nor3_1 _0843_ (.A(_0298_),
    .B(_0299_),
    .C(_0300_),
    .Y(_0301_));
 sg13g2_nand3_1 _0844_ (.B(\u_timer.shutdown_count[14] ),
    .C(\u_timer.shutdown_count[15] ),
    .A(\u_timer.shutdown_count[13] ),
    .Y(_0302_));
 sg13g2_nor4_1 _0845_ (.A(\u_timer.shutdown_count[16] ),
    .B(\u_timer.shutdown_count[17] ),
    .C(\u_timer.shutdown_count[18] ),
    .D(\u_timer.shutdown_count[19] ),
    .Y(_0303_));
 sg13g2_nor3_1 _0846_ (.A(\u_timer.shutdown_count[24] ),
    .B(\u_timer.shutdown_count[25] ),
    .C(\u_timer.shutdown_count[26] ),
    .Y(_0304_));
 sg13g2_nand3_1 _0847_ (.B(_0303_),
    .C(_0304_),
    .A(_0302_),
    .Y(_0305_));
 sg13g2_a21oi_2 _0848_ (.B1(_0305_),
    .Y(_0306_),
    .A2(_0301_),
    .A1(_0297_));
 sg13g2_and4_1 _0849_ (.A(\u_timer.shutdown_count[20] ),
    .B(\u_timer.shutdown_count[21] ),
    .C(\u_timer.shutdown_count[22] ),
    .D(\u_timer.shutdown_count[23] ),
    .X(_0307_));
 sg13g2_inv_1 _0850_ (.Y(_0308_),
    .A(_0307_));
 sg13g2_a21o_1 _0851_ (.A2(_0308_),
    .A1(_0304_),
    .B1(_0294_),
    .X(_0309_));
 sg13g2_nor2_2 _0853_ (.A(_0306_),
    .B(_0309_),
    .Y(_0311_));
 sg13g2_nor3_2 _0855_ (.A(_0282_),
    .B(_0286_),
    .C(_0291_),
    .Y(_0313_));
 sg13g2_nand4_1 _0856_ (.B(\u_timer.shutdown_count[25] ),
    .C(_0307_),
    .A(\u_timer.shutdown_count[24] ),
    .Y(_0314_),
    .D(_0313_));
 sg13g2_o21ai_1 _0857_ (.B1(\u_timer.shutdown_count[26] ),
    .Y(_0315_),
    .A1(net216),
    .A2(_0314_));
 sg13g2_or3_1 _0858_ (.A(\u_timer.shutdown_count[26] ),
    .B(net216),
    .C(_0314_),
    .X(_0316_));
 sg13g2_nand3_1 _0859_ (.B(shutdown_confirmation_active),
    .C(_0272_),
    .A(net119),
    .Y(_0317_));
 sg13g2_a21oi_2 _0862_ (.B1(net226),
    .Y(_0048_),
    .A2(_0316_),
    .A1(_0315_));
 sg13g2_o21ai_1 _0863_ (.B1(\u_timer.shutdown_count[25] ),
    .Y(_0320_),
    .A1(_0293_),
    .A2(net216));
 sg13g2_or3_1 _0864_ (.A(\u_timer.shutdown_count[25] ),
    .B(_0293_),
    .C(net216),
    .X(_0321_));
 sg13g2_a21oi_1 _0865_ (.A1(_0320_),
    .A2(_0321_),
    .Y(_0049_),
    .B1(net226));
 sg13g2_nand2_1 _0866_ (.Y(_0322_),
    .A(_0307_),
    .B(_0313_));
 sg13g2_o21ai_1 _0867_ (.B1(\u_timer.shutdown_count[24] ),
    .Y(_0323_),
    .A1(net216),
    .A2(_0322_));
 sg13g2_nor2_1 _0868_ (.A(\u_timer.shutdown_count[31] ),
    .B(_0288_),
    .Y(_0324_));
 sg13g2_nor3_1 _0869_ (.A(_0286_),
    .B(_0289_),
    .C(_0290_),
    .Y(_0325_));
 sg13g2_and2_1 _0870_ (.A(_0324_),
    .B(_0325_),
    .X(_0326_));
 sg13g2_o21ai_1 _0871_ (.B1(_0326_),
    .Y(_0327_),
    .A1(_0306_),
    .A2(_0309_));
 sg13g2_or4_1 _0873_ (.A(\u_timer.shutdown_count[24] ),
    .B(_0282_),
    .C(_0308_),
    .D(_0327_),
    .X(_0329_));
 sg13g2_a21oi_1 _0874_ (.A1(_0323_),
    .A2(_0329_),
    .Y(_0050_),
    .B1(net226));
 sg13g2_o21ai_1 _0875_ (.B1(\u_timer.shutdown_count[23] ),
    .Y(_0330_),
    .A1(_0284_),
    .A2(_0327_));
 sg13g2_or3_1 _0876_ (.A(\u_timer.shutdown_count[23] ),
    .B(_0284_),
    .C(_0327_),
    .X(_0331_));
 sg13g2_a21oi_1 _0878_ (.A1(_0330_),
    .A2(_0331_),
    .Y(_0051_),
    .B1(net226));
 sg13g2_nand3_1 _0879_ (.B(\u_timer.shutdown_count[21] ),
    .C(_0313_),
    .A(\u_timer.shutdown_count[20] ),
    .Y(_0333_));
 sg13g2_o21ai_1 _0880_ (.B1(\u_timer.shutdown_count[22] ),
    .Y(_0334_),
    .A1(net216),
    .A2(_0333_));
 sg13g2_or3_1 _0881_ (.A(\u_timer.shutdown_count[22] ),
    .B(net216),
    .C(_0333_),
    .X(_0335_));
 sg13g2_a21oi_1 _0882_ (.A1(_0334_),
    .A2(_0335_),
    .Y(_0052_),
    .B1(net226));
 sg13g2_nand2_1 _0883_ (.Y(_0336_),
    .A(\u_timer.shutdown_count[20] ),
    .B(_0313_));
 sg13g2_o21ai_1 _0884_ (.B1(\u_timer.shutdown_count[21] ),
    .Y(_0337_),
    .A1(net216),
    .A2(_0336_));
 sg13g2_inv_1 _0885_ (.Y(_0338_),
    .A(\u_timer.shutdown_count[20] ));
 sg13g2_or4_1 _0886_ (.A(_0338_),
    .B(\u_timer.shutdown_count[21] ),
    .C(_0282_),
    .D(_0327_),
    .X(_0339_));
 sg13g2_a21oi_1 _0887_ (.A1(_0337_),
    .A2(_0339_),
    .Y(_0053_),
    .B1(net226));
 sg13g2_o21ai_1 _0888_ (.B1(\u_timer.shutdown_count[20] ),
    .Y(_0340_),
    .A1(_0282_),
    .A2(_0327_));
 sg13g2_or2_1 _0889_ (.X(_0341_),
    .B(_0309_),
    .A(_0306_));
 sg13g2_nand3_1 _0891_ (.B(_0341_),
    .C(_0313_),
    .A(_0338_),
    .Y(_0343_));
 sg13g2_a21oi_1 _0892_ (.A1(_0340_),
    .A2(_0343_),
    .Y(_0054_),
    .B1(net226));
 sg13g2_nor2_1 _0893_ (.A(_0278_),
    .B(_0279_),
    .Y(_0344_));
 sg13g2_inv_1 _0894_ (.Y(_0345_),
    .A(\u_timer.shutdown_count[31] ));
 sg13g2_nor4_1 _0895_ (.A(\u_timer.shutdown_count[28] ),
    .B(\u_timer.shutdown_count[29] ),
    .C(\u_timer.shutdown_count[30] ),
    .D(shutdown_timer_expired),
    .Y(_0346_));
 sg13g2_nand4_1 _0896_ (.B(\u_timer.shutdown_count[0] ),
    .C(\u_timer.shutdown_count[1] ),
    .A(_0345_),
    .Y(_0347_),
    .D(_0346_));
 sg13g2_and2_1 _0897_ (.A(\u_timer.shutdown_count[2] ),
    .B(\u_timer.shutdown_count[3] ),
    .X(_0348_));
 sg13g2_nand4_1 _0898_ (.B(\u_timer.shutdown_count[5] ),
    .C(\u_timer.shutdown_count[6] ),
    .A(\u_timer.shutdown_count[4] ),
    .Y(_0349_),
    .D(_0348_));
 sg13g2_nor3_1 _0899_ (.A(_0286_),
    .B(_0347_),
    .C(_0349_),
    .Y(_0350_));
 sg13g2_nand4_1 _0900_ (.B(\u_timer.shutdown_count[18] ),
    .C(_0344_),
    .A(net233),
    .Y(_0351_),
    .D(_0350_));
 sg13g2_o21ai_1 _0901_ (.B1(\u_timer.shutdown_count[19] ),
    .Y(_0352_),
    .A1(_0311_),
    .A2(_0351_));
 sg13g2_or3_1 _0902_ (.A(\u_timer.shutdown_count[19] ),
    .B(_0311_),
    .C(_0351_),
    .X(_0353_));
 sg13g2_a21oi_1 _0903_ (.A1(_0352_),
    .A2(_0353_),
    .Y(_0055_),
    .B1(net225));
 sg13g2_nand3_1 _0904_ (.B(_0344_),
    .C(_0350_),
    .A(net233),
    .Y(_0354_));
 sg13g2_o21ai_1 _0905_ (.B1(\u_timer.shutdown_count[18] ),
    .Y(_0355_),
    .A1(_0311_),
    .A2(_0354_));
 sg13g2_nand3b_1 _0906_ (.B(_0341_),
    .C(_0277_),
    .Y(_0356_),
    .A_N(_0354_));
 sg13g2_a21oi_1 _0907_ (.A1(_0355_),
    .A2(_0356_),
    .Y(_0056_),
    .B1(net225));
 sg13g2_nand3_1 _0908_ (.B(\u_timer.shutdown_count[12] ),
    .C(\u_timer.shutdown_count[13] ),
    .A(net233),
    .Y(_0357_));
 sg13g2_nor3_1 _0909_ (.A(_0286_),
    .B(_0291_),
    .C(_0357_),
    .Y(_0358_));
 sg13g2_o21ai_1 _0910_ (.B1(_0358_),
    .Y(_0359_),
    .A1(_0306_),
    .A2(_0309_));
 sg13g2_o21ai_1 _0912_ (.B1(\u_timer.shutdown_count[17] ),
    .Y(_0361_),
    .A1(_0278_),
    .A2(_0359_));
 sg13g2_or3_1 _0913_ (.A(\u_timer.shutdown_count[17] ),
    .B(_0278_),
    .C(_0359_),
    .X(_0362_));
 sg13g2_a21oi_1 _0914_ (.A1(_0361_),
    .A2(_0362_),
    .Y(_0057_),
    .B1(net225));
 sg13g2_o21ai_1 _0915_ (.B1(\u_timer.shutdown_count[16] ),
    .Y(_0363_),
    .A1(_0299_),
    .A2(_0359_));
 sg13g2_or3_1 _0916_ (.A(\u_timer.shutdown_count[16] ),
    .B(_0299_),
    .C(_0359_),
    .X(_0364_));
 sg13g2_a21oi_1 _0917_ (.A1(_0363_),
    .A2(_0364_),
    .Y(_0058_),
    .B1(net226));
 sg13g2_inv_1 _0918_ (.Y(_0365_),
    .A(\u_timer.shutdown_count[14] ));
 sg13g2_o21ai_1 _0919_ (.B1(\u_timer.shutdown_count[15] ),
    .Y(_0366_),
    .A1(_0365_),
    .A2(_0359_));
 sg13g2_or3_1 _0920_ (.A(_0365_),
    .B(\u_timer.shutdown_count[15] ),
    .C(_0359_),
    .X(_0367_));
 sg13g2_a21oi_1 _0921_ (.A1(_0366_),
    .A2(_0367_),
    .Y(_0059_),
    .B1(net225));
 sg13g2_xnor2_1 _0922_ (.Y(_0368_),
    .A(_0365_),
    .B(_0359_));
 sg13g2_nor2_1 _0923_ (.A(net225),
    .B(_0368_),
    .Y(_0060_));
 sg13g2_nand3_1 _0924_ (.B(\u_timer.shutdown_count[12] ),
    .C(_0350_),
    .A(net233),
    .Y(_0369_));
 sg13g2_o21ai_1 _0925_ (.B1(\u_timer.shutdown_count[13] ),
    .Y(_0370_),
    .A1(_0311_),
    .A2(_0369_));
 sg13g2_inv_1 _0926_ (.Y(_0371_),
    .A(net233));
 sg13g2_or4_1 _0927_ (.A(_0371_),
    .B(_0298_),
    .C(\u_timer.shutdown_count[13] ),
    .D(_0327_),
    .X(_0372_));
 sg13g2_a21oi_1 _0928_ (.A1(_0370_),
    .A2(_0372_),
    .Y(_0061_),
    .B1(net225));
 sg13g2_o21ai_1 _0929_ (.B1(\u_timer.shutdown_count[12] ),
    .Y(_0373_),
    .A1(_0371_),
    .A2(_0327_));
 sg13g2_nand4_1 _0930_ (.B(_0298_),
    .C(_0326_),
    .A(net233),
    .Y(_0374_),
    .D(_0341_));
 sg13g2_a21oi_1 _0931_ (.A1(_0373_),
    .A2(_0374_),
    .Y(_0062_),
    .B1(net225));
 sg13g2_xnor2_1 _0932_ (.Y(_0375_),
    .A(_0371_),
    .B(_0327_));
 sg13g2_nor2_1 _0933_ (.A(net225),
    .B(_0375_),
    .Y(_0063_));
 sg13g2_and2_1 _0934_ (.A(\u_timer.shutdown_count[10] ),
    .B(_0273_),
    .X(_0376_));
 sg13g2_nor2_1 _0935_ (.A(\u_timer.shutdown_count[10] ),
    .B(net227),
    .Y(_0377_));
 sg13g2_inv_1 _0936_ (.Y(_0378_),
    .A(\u_timer.shutdown_count[9] ));
 sg13g2_nand2_1 _0937_ (.Y(_0379_),
    .A(\u_timer.shutdown_count[7] ),
    .B(\u_timer.shutdown_count[8] ));
 sg13g2_nor4_1 _0938_ (.A(_0378_),
    .B(_0379_),
    .C(_0291_),
    .D(net215),
    .Y(_0380_));
 sg13g2_mux2_1 _0939_ (.A0(_0376_),
    .A1(_0377_),
    .S(_0380_),
    .X(_0064_));
 sg13g2_or2_1 _0940_ (.X(_0381_),
    .B(_0291_),
    .A(_0379_));
 sg13g2_o21ai_1 _0941_ (.B1(\u_timer.shutdown_count[9] ),
    .Y(_0382_),
    .A1(net215),
    .A2(_0381_));
 sg13g2_or3_1 _0942_ (.A(\u_timer.shutdown_count[9] ),
    .B(net215),
    .C(_0381_),
    .X(_0383_));
 sg13g2_a21oi_1 _0943_ (.A1(_0382_),
    .A2(_0383_),
    .Y(_0065_),
    .B1(net227));
 sg13g2_nor2_1 _0944_ (.A(_0347_),
    .B(_0349_),
    .Y(_0384_));
 sg13g2_nand2_1 _0945_ (.Y(_0385_),
    .A(\u_timer.shutdown_count[7] ),
    .B(_0384_));
 sg13g2_o21ai_1 _0946_ (.B1(\u_timer.shutdown_count[8] ),
    .Y(_0386_),
    .A1(net215),
    .A2(_0385_));
 sg13g2_or3_1 _0947_ (.A(\u_timer.shutdown_count[8] ),
    .B(net215),
    .C(_0385_),
    .X(_0387_));
 sg13g2_a21oi_1 _0948_ (.A1(_0386_),
    .A2(_0387_),
    .Y(_0066_),
    .B1(net227));
 sg13g2_o21ai_1 _0949_ (.B1(\u_timer.shutdown_count[7] ),
    .Y(_0388_),
    .A1(_0291_),
    .A2(net215));
 sg13g2_nand3b_1 _0950_ (.B(_0384_),
    .C(_0341_),
    .Y(_0389_),
    .A_N(\u_timer.shutdown_count[7] ));
 sg13g2_a21oi_1 _0951_ (.A1(_0388_),
    .A2(_0389_),
    .Y(_0067_),
    .B1(net227));
 sg13g2_and3_1 _0952_ (.X(_0390_),
    .A(\u_timer.shutdown_count[0] ),
    .B(\u_timer.shutdown_count[1] ),
    .C(_0324_));
 sg13g2_o21ai_1 _0953_ (.B1(_0390_),
    .Y(_0391_),
    .A1(_0306_),
    .A2(_0309_));
 sg13g2_o21ai_1 _0954_ (.B1(\u_timer.shutdown_count[6] ),
    .Y(_0392_),
    .A1(_0289_),
    .A2(_0391_));
 sg13g2_or3_1 _0955_ (.A(\u_timer.shutdown_count[6] ),
    .B(_0289_),
    .C(_0391_),
    .X(_0393_));
 sg13g2_a21oi_1 _0956_ (.A1(_0392_),
    .A2(_0393_),
    .Y(_0068_),
    .B1(_0317_));
 sg13g2_inv_1 _0957_ (.Y(_0394_),
    .A(\u_timer.shutdown_count[4] ));
 sg13g2_inv_1 _0958_ (.Y(_0395_),
    .A(\u_timer.shutdown_count[2] ));
 sg13g2_inv_1 _0959_ (.Y(_0396_),
    .A(\u_timer.shutdown_count[3] ));
 sg13g2_nor3_1 _0960_ (.A(_0395_),
    .B(_0396_),
    .C(_0347_),
    .Y(_0397_));
 sg13g2_o21ai_1 _0961_ (.B1(_0397_),
    .Y(_0398_),
    .A1(_0306_),
    .A2(_0309_));
 sg13g2_nor2_1 _0962_ (.A(_0394_),
    .B(_0398_),
    .Y(_0399_));
 sg13g2_nand2_1 _0963_ (.Y(_0400_),
    .A(\u_timer.shutdown_count[5] ),
    .B(_0273_));
 sg13g2_or4_1 _0964_ (.A(_0394_),
    .B(\u_timer.shutdown_count[5] ),
    .C(_0317_),
    .D(_0398_),
    .X(_0401_));
 sg13g2_o21ai_1 _0965_ (.B1(_0401_),
    .Y(_0069_),
    .A1(_0399_),
    .A2(_0400_));
 sg13g2_xnor2_1 _0966_ (.Y(_0402_),
    .A(_0394_),
    .B(_0398_));
 sg13g2_nor2_1 _0967_ (.A(_0317_),
    .B(_0402_),
    .Y(_0070_));
 sg13g2_o21ai_1 _0968_ (.B1(\u_timer.shutdown_count[3] ),
    .Y(_0403_),
    .A1(_0395_),
    .A2(_0391_));
 sg13g2_nand4_1 _0969_ (.B(_0396_),
    .C(_0390_),
    .A(\u_timer.shutdown_count[2] ),
    .Y(_0404_),
    .D(_0341_));
 sg13g2_a21oi_1 _0970_ (.A1(_0403_),
    .A2(_0404_),
    .Y(_0071_),
    .B1(_0317_));
 sg13g2_xnor2_1 _0971_ (.Y(_0405_),
    .A(_0395_),
    .B(_0391_));
 sg13g2_nor2_1 _0972_ (.A(_0317_),
    .B(_0405_),
    .Y(_0072_));
 sg13g2_and2_1 _0973_ (.A(\u_timer.shutdown_count[0] ),
    .B(_0324_),
    .X(_0406_));
 sg13g2_o21ai_1 _0974_ (.B1(_0406_),
    .Y(_0407_),
    .A1(_0306_),
    .A2(_0309_));
 sg13g2_xor2_1 _0975_ (.B(_0407_),
    .A(\u_timer.shutdown_count[1] ),
    .X(_0408_));
 sg13g2_nor2_1 _0976_ (.A(net227),
    .B(_0408_),
    .Y(_0073_));
 sg13g2_o21ai_1 _0977_ (.B1(_0324_),
    .Y(_0409_),
    .A1(_0306_),
    .A2(_0309_));
 sg13g2_xor2_1 _0978_ (.B(_0409_),
    .A(\u_timer.shutdown_count[0] ),
    .X(_0410_));
 sg13g2_nor2_1 _0979_ (.A(_0317_),
    .B(_0410_),
    .Y(_0074_));
 sg13g2_inv_1 _0980_ (.Y(_0411_),
    .A(\u_timer.shutdown_selection_count[30] ));
 sg13g2_and2_1 _0982_ (.A(\u_timer.shutdown_selection_count[21] ),
    .B(\u_timer.shutdown_selection_count[22] ),
    .X(_0413_));
 sg13g2_or3_1 _0983_ (.A(\u_timer.shutdown_selection_count[16] ),
    .B(\u_timer.shutdown_selection_count[17] ),
    .C(\u_timer.shutdown_selection_count[18] ),
    .X(_0414_));
 sg13g2_and3_1 _0985_ (.X(_0416_),
    .A(\u_timer.shutdown_selection_count[19] ),
    .B(\u_timer.shutdown_selection_count[21] ),
    .C(\u_timer.shutdown_selection_count[22] ));
 sg13g2_a221oi_1 _0986_ (.B2(_0416_),
    .C1(\u_timer.shutdown_selection_count[23] ),
    .B1(_0414_),
    .A1(\u_timer.shutdown_selection_count[20] ),
    .Y(_0417_),
    .A2(_0413_));
 sg13g2_nand2_1 _0987_ (.Y(_0418_),
    .A(\u_timer.shutdown_selection_count[27] ),
    .B(\u_timer.shutdown_selection_count[28] ));
 sg13g2_or2_1 _0988_ (.X(_0419_),
    .B(\u_timer.shutdown_selection_count[26] ),
    .A(\u_timer.shutdown_selection_count[25] ));
 sg13g2_nand2b_1 _0989_ (.Y(_0420_),
    .B(\u_timer.shutdown_selection_count[30] ),
    .A_N(\u_timer.shutdown_selection_count[29] ));
 sg13g2_nand2b_1 _0990_ (.Y(_0421_),
    .B(\u_timer.shutdown_selection_count[24] ),
    .A_N(\u_timer.shutdown_selection_count[31] ));
 sg13g2_nor4_1 _0991_ (.A(_0418_),
    .B(_0419_),
    .C(_0420_),
    .D(_0421_),
    .Y(_0422_));
 sg13g2_nand2b_1 _0992_ (.Y(_0423_),
    .B(_0422_),
    .A_N(_0417_));
 sg13g2_and2_1 _0993_ (.A(\u_timer.shutdown_selection_count[27] ),
    .B(\u_timer.shutdown_selection_count[28] ),
    .X(_0424_));
 sg13g2_a21o_1 _0994_ (.A2(_0419_),
    .A1(_0424_),
    .B1(\u_timer.shutdown_selection_count[29] ),
    .X(_0425_));
 sg13g2_or2_1 _0995_ (.X(_0426_),
    .B(shutdown_selection_timer_expired),
    .A(\u_timer.shutdown_selection_count[31] ));
 sg13g2_a21oi_2 _0996_ (.B1(_0426_),
    .Y(_0427_),
    .A2(_0425_),
    .A1(\u_timer.shutdown_selection_count[30] ));
 sg13g2_nor3_1 _0998_ (.A(\u_timer.shutdown_selection_count[12] ),
    .B(\u_timer.shutdown_selection_count[14] ),
    .C(\u_timer.shutdown_selection_count[15] ),
    .Y(_0429_));
 sg13g2_nand3_1 _1000_ (.B(\u_timer.shutdown_selection_count[10] ),
    .C(\u_timer.shutdown_selection_count[11] ),
    .A(\u_timer.shutdown_selection_count[9] ),
    .Y(_0431_));
 sg13g2_nand2_1 _1001_ (.Y(_0432_),
    .A(_0429_),
    .B(_0431_));
 sg13g2_inv_1 _1002_ (.Y(_0433_),
    .A(\u_timer.shutdown_selection_count[19] ));
 sg13g2_nand2_1 _1003_ (.Y(_0434_),
    .A(\u_timer.shutdown_selection_count[21] ),
    .B(\u_timer.shutdown_selection_count[22] ));
 sg13g2_nor4_1 _1004_ (.A(_0433_),
    .B(\u_timer.shutdown_selection_count[20] ),
    .C(\u_timer.shutdown_selection_count[23] ),
    .D(_0434_),
    .Y(_0435_));
 sg13g2_nor3_1 _1005_ (.A(\u_timer.shutdown_selection_count[13] ),
    .B(\u_timer.shutdown_selection_count[14] ),
    .C(\u_timer.shutdown_selection_count[15] ),
    .Y(_0436_));
 sg13g2_nor2_1 _1006_ (.A(_0414_),
    .B(_0436_),
    .Y(_0437_));
 sg13g2_nand4_1 _1007_ (.B(_0432_),
    .C(_0435_),
    .A(_0422_),
    .Y(_0438_),
    .D(_0437_));
 sg13g2_inv_1 _1008_ (.Y(_0439_),
    .A(\u_timer.shutdown_selection_count[6] ));
 sg13g2_inv_1 _1009_ (.Y(_0440_),
    .A(\u_timer.shutdown_selection_count[7] ));
 sg13g2_nand4_1 _1010_ (.B(\u_timer.shutdown_selection_count[1] ),
    .C(\u_timer.shutdown_selection_count[2] ),
    .A(\u_timer.shutdown_selection_count[0] ),
    .Y(_0441_),
    .D(\u_timer.shutdown_selection_count[3] ));
 sg13g2_nand2_1 _1011_ (.Y(_0442_),
    .A(\u_timer.shutdown_selection_count[4] ),
    .B(\u_timer.shutdown_selection_count[5] ));
 sg13g2_nor4_2 _1012_ (.A(_0439_),
    .B(_0440_),
    .C(_0441_),
    .Y(_0443_),
    .D(_0442_));
 sg13g2_nand4_1 _1013_ (.B(_0427_),
    .C(_0438_),
    .A(_0423_),
    .Y(_0444_),
    .D(_0443_));
 sg13g2_and2_1 _1016_ (.A(\u_timer.shutdown_selection_count[29] ),
    .B(_0424_),
    .X(_0447_));
 sg13g2_and2_1 _1017_ (.A(\u_timer.shutdown_selection_count[23] ),
    .B(\u_timer.shutdown_selection_count[24] ),
    .X(_0448_));
 sg13g2_nand3_1 _1018_ (.B(\u_timer.shutdown_selection_count[26] ),
    .C(_0448_),
    .A(\u_timer.shutdown_selection_count[25] ),
    .Y(_0449_));
 sg13g2_and4_1 _1019_ (.A(\u_timer.shutdown_selection_count[12] ),
    .B(\u_timer.shutdown_selection_count[13] ),
    .C(\u_timer.shutdown_selection_count[14] ),
    .D(\u_timer.shutdown_selection_count[15] ),
    .X(_0450_));
 sg13g2_nand2_1 _1020_ (.Y(_0451_),
    .A(\u_timer.shutdown_selection_count[16] ),
    .B(_0450_));
 sg13g2_and4_1 _1021_ (.A(\u_timer.shutdown_selection_count[8] ),
    .B(\u_timer.shutdown_selection_count[9] ),
    .C(\u_timer.shutdown_selection_count[10] ),
    .D(\u_timer.shutdown_selection_count[11] ),
    .X(_0452_));
 sg13g2_and2_1 _1023_ (.A(\u_timer.shutdown_selection_count[17] ),
    .B(\u_timer.shutdown_selection_count[18] ),
    .X(_0454_));
 sg13g2_nand4_1 _1024_ (.B(\u_timer.shutdown_selection_count[20] ),
    .C(_0452_),
    .A(\u_timer.shutdown_selection_count[19] ),
    .Y(_0455_),
    .D(_0454_));
 sg13g2_nor4_1 _1025_ (.A(_0434_),
    .B(_0449_),
    .C(_0451_),
    .D(_0455_),
    .Y(_0456_));
 sg13g2_nand3b_1 _1026_ (.B(_0447_),
    .C(_0456_),
    .Y(_0457_),
    .A_N(_0444_));
 sg13g2_inv_1 _1027_ (.Y(_0458_),
    .A(shutdown_confirmation_active));
 sg13g2_nand4_1 _1028_ (.B(_0120_),
    .C(_0118_),
    .A(_0458_),
    .Y(_0459_),
    .D(_0272_));
 sg13g2_a21oi_1 _1031_ (.A1(_0411_),
    .A2(_0457_),
    .Y(_0075_),
    .B1(net224));
 sg13g2_nand4_1 _1033_ (.B(_0427_),
    .C(_0443_),
    .A(_0424_),
    .Y(_0463_),
    .D(_0456_));
 sg13g2_xor2_1 _1034_ (.B(_0463_),
    .A(\u_timer.shutdown_selection_count[29] ),
    .X(_0464_));
 sg13g2_nor2_1 _1035_ (.A(_0459_),
    .B(_0464_),
    .Y(_0076_));
 sg13g2_nand4_1 _1036_ (.B(_0427_),
    .C(_0443_),
    .A(\u_timer.shutdown_selection_count[27] ),
    .Y(_0465_),
    .D(_0456_));
 sg13g2_xor2_1 _1037_ (.B(_0465_),
    .A(\u_timer.shutdown_selection_count[28] ),
    .X(_0466_));
 sg13g2_nor2_1 _1038_ (.A(_0459_),
    .B(_0466_),
    .Y(_0077_));
 sg13g2_nand3_1 _1039_ (.B(_0443_),
    .C(_0456_),
    .A(_0427_),
    .Y(_0467_));
 sg13g2_xor2_1 _1040_ (.B(_0467_),
    .A(\u_timer.shutdown_selection_count[27] ),
    .X(_0468_));
 sg13g2_nor2_1 _1041_ (.A(net222),
    .B(_0468_),
    .Y(_0078_));
 sg13g2_and2_1 _1042_ (.A(\u_timer.shutdown_selection_count[16] ),
    .B(_0450_),
    .X(_0469_));
 sg13g2_and4_1 _1044_ (.A(\u_timer.shutdown_selection_count[19] ),
    .B(\u_timer.shutdown_selection_count[20] ),
    .C(_0452_),
    .D(_0454_),
    .X(_0471_));
 sg13g2_and4_1 _1045_ (.A(_0413_),
    .B(_0443_),
    .C(_0469_),
    .D(_0471_),
    .X(_0472_));
 sg13g2_nand4_1 _1046_ (.B(_0427_),
    .C(_0448_),
    .A(\u_timer.shutdown_selection_count[25] ),
    .Y(_0473_),
    .D(_0472_));
 sg13g2_xor2_1 _1047_ (.B(_0473_),
    .A(\u_timer.shutdown_selection_count[26] ),
    .X(_0474_));
 sg13g2_nor2_1 _1048_ (.A(net224),
    .B(_0474_),
    .Y(_0079_));
 sg13g2_nand4_1 _1049_ (.B(_0427_),
    .C(_0448_),
    .A(_0423_),
    .Y(_0475_),
    .D(_0472_));
 sg13g2_xor2_1 _1050_ (.B(_0475_),
    .A(\u_timer.shutdown_selection_count[25] ),
    .X(_0476_));
 sg13g2_nor2_1 _1051_ (.A(net224),
    .B(_0476_),
    .Y(_0080_));
 sg13g2_nand4_1 _1052_ (.B(_0423_),
    .C(_0427_),
    .A(\u_timer.shutdown_selection_count[23] ),
    .Y(_0477_),
    .D(_0472_));
 sg13g2_xor2_1 _1053_ (.B(_0477_),
    .A(\u_timer.shutdown_selection_count[24] ),
    .X(_0478_));
 sg13g2_nor2_1 _1054_ (.A(net224),
    .B(_0478_),
    .Y(_0081_));
 sg13g2_inv_1 _1055_ (.Y(_0479_),
    .A(\u_timer.shutdown_selection_count[23] ));
 sg13g2_nand3_1 _1056_ (.B(_0427_),
    .C(_0472_),
    .A(_0423_),
    .Y(_0480_));
 sg13g2_xnor2_1 _1057_ (.Y(_0481_),
    .A(_0479_),
    .B(_0480_));
 sg13g2_nor2_1 _1058_ (.A(net224),
    .B(_0481_),
    .Y(_0082_));
 sg13g2_and2_1 _1060_ (.A(_0469_),
    .B(_0471_),
    .X(_0483_));
 sg13g2_nand2_1 _1061_ (.Y(_0484_),
    .A(\u_timer.shutdown_selection_count[21] ),
    .B(_0483_));
 sg13g2_o21ai_1 _1062_ (.B1(\u_timer.shutdown_selection_count[22] ),
    .Y(_0485_),
    .A1(net212),
    .A2(_0484_));
 sg13g2_or3_1 _1063_ (.A(\u_timer.shutdown_selection_count[22] ),
    .B(net212),
    .C(_0484_),
    .X(_0486_));
 sg13g2_a21oi_1 _1064_ (.A1(_0485_),
    .A2(_0486_),
    .Y(_0083_),
    .B1(net223));
 sg13g2_inv_1 _1065_ (.Y(_0487_),
    .A(_0483_));
 sg13g2_o21ai_1 _1066_ (.B1(\u_timer.shutdown_selection_count[21] ),
    .Y(_0488_),
    .A1(net212),
    .A2(_0487_));
 sg13g2_or3_1 _1067_ (.A(\u_timer.shutdown_selection_count[21] ),
    .B(net212),
    .C(_0487_),
    .X(_0489_));
 sg13g2_a21oi_1 _1068_ (.A1(_0488_),
    .A2(_0489_),
    .Y(_0084_),
    .B1(net223));
 sg13g2_nand4_1 _1069_ (.B(_0469_),
    .C(_0452_),
    .A(\u_timer.shutdown_selection_count[19] ),
    .Y(_0490_),
    .D(_0454_));
 sg13g2_o21ai_1 _1070_ (.B1(\u_timer.shutdown_selection_count[20] ),
    .Y(_0491_),
    .A1(net214),
    .A2(_0490_));
 sg13g2_or3_1 _1071_ (.A(\u_timer.shutdown_selection_count[20] ),
    .B(net214),
    .C(_0490_),
    .X(_0492_));
 sg13g2_a21oi_1 _1072_ (.A1(_0491_),
    .A2(_0492_),
    .Y(_0085_),
    .B1(net223));
 sg13g2_nand3_1 _1073_ (.B(_0452_),
    .C(_0454_),
    .A(_0469_),
    .Y(_0493_));
 sg13g2_o21ai_1 _1074_ (.B1(\u_timer.shutdown_selection_count[19] ),
    .Y(_0494_),
    .A1(net212),
    .A2(_0493_));
 sg13g2_or3_1 _1076_ (.A(\u_timer.shutdown_selection_count[19] ),
    .B(net212),
    .C(_0493_),
    .X(_0496_));
 sg13g2_a21oi_1 _1077_ (.A1(_0494_),
    .A2(_0496_),
    .Y(_0086_),
    .B1(net223));
 sg13g2_nand3_1 _1078_ (.B(_0469_),
    .C(net228),
    .A(\u_timer.shutdown_selection_count[17] ),
    .Y(_0497_));
 sg13g2_o21ai_1 _1079_ (.B1(\u_timer.shutdown_selection_count[18] ),
    .Y(_0498_),
    .A1(net214),
    .A2(_0497_));
 sg13g2_or3_1 _1080_ (.A(\u_timer.shutdown_selection_count[18] ),
    .B(net214),
    .C(_0497_),
    .X(_0499_));
 sg13g2_a21oi_1 _1081_ (.A1(_0498_),
    .A2(_0499_),
    .Y(_0087_),
    .B1(net223));
 sg13g2_nand2_1 _1082_ (.Y(_0500_),
    .A(_0469_),
    .B(net228));
 sg13g2_o21ai_1 _1083_ (.B1(\u_timer.shutdown_selection_count[17] ),
    .Y(_0501_),
    .A1(net214),
    .A2(_0500_));
 sg13g2_or3_1 _1084_ (.A(\u_timer.shutdown_selection_count[17] ),
    .B(net214),
    .C(_0500_),
    .X(_0502_));
 sg13g2_a21oi_1 _1085_ (.A1(_0501_),
    .A2(_0502_),
    .Y(_0088_),
    .B1(net223));
 sg13g2_nand2_1 _1086_ (.Y(_0503_),
    .A(_0450_),
    .B(net228));
 sg13g2_o21ai_1 _1087_ (.B1(\u_timer.shutdown_selection_count[16] ),
    .Y(_0504_),
    .A1(net213),
    .A2(_0503_));
 sg13g2_or3_1 _1088_ (.A(\u_timer.shutdown_selection_count[16] ),
    .B(net213),
    .C(_0503_),
    .X(_0505_));
 sg13g2_a21oi_1 _1089_ (.A1(_0504_),
    .A2(_0505_),
    .Y(_0089_),
    .B1(net223));
 sg13g2_nand4_1 _1090_ (.B(\u_timer.shutdown_selection_count[13] ),
    .C(\u_timer.shutdown_selection_count[14] ),
    .A(\u_timer.shutdown_selection_count[12] ),
    .Y(_0506_),
    .D(net228));
 sg13g2_o21ai_1 _1091_ (.B1(\u_timer.shutdown_selection_count[15] ),
    .Y(_0507_),
    .A1(net213),
    .A2(_0506_));
 sg13g2_or3_1 _1092_ (.A(\u_timer.shutdown_selection_count[15] ),
    .B(net213),
    .C(_0506_),
    .X(_0508_));
 sg13g2_a21oi_1 _1093_ (.A1(_0507_),
    .A2(_0508_),
    .Y(_0090_),
    .B1(net222));
 sg13g2_nand3_1 _1094_ (.B(\u_timer.shutdown_selection_count[13] ),
    .C(net228),
    .A(\u_timer.shutdown_selection_count[12] ),
    .Y(_0509_));
 sg13g2_o21ai_1 _1095_ (.B1(\u_timer.shutdown_selection_count[14] ),
    .Y(_0510_),
    .A1(net213),
    .A2(_0509_));
 sg13g2_or3_1 _1096_ (.A(\u_timer.shutdown_selection_count[14] ),
    .B(net213),
    .C(_0509_),
    .X(_0511_));
 sg13g2_a21oi_1 _1098_ (.A1(_0510_),
    .A2(_0511_),
    .Y(_0091_),
    .B1(net222));
 sg13g2_nand2_1 _1099_ (.Y(_0513_),
    .A(\u_timer.shutdown_selection_count[12] ),
    .B(net228));
 sg13g2_o21ai_1 _1100_ (.B1(\u_timer.shutdown_selection_count[13] ),
    .Y(_0514_),
    .A1(net213),
    .A2(_0513_));
 sg13g2_or3_1 _1101_ (.A(\u_timer.shutdown_selection_count[13] ),
    .B(net213),
    .C(_0513_),
    .X(_0515_));
 sg13g2_a21oi_1 _1102_ (.A1(_0514_),
    .A2(_0515_),
    .Y(_0092_),
    .B1(net223));
 sg13g2_nand4_1 _1103_ (.B(\u_timer.shutdown_selection_count[9] ),
    .C(\u_timer.shutdown_selection_count[10] ),
    .A(\u_timer.shutdown_selection_count[8] ),
    .Y(_0516_),
    .D(\u_timer.shutdown_selection_count[11] ));
 sg13g2_o21ai_1 _1104_ (.B1(\u_timer.shutdown_selection_count[12] ),
    .Y(_0517_),
    .A1(net211),
    .A2(_0516_));
 sg13g2_or3_1 _1105_ (.A(\u_timer.shutdown_selection_count[12] ),
    .B(net211),
    .C(_0516_),
    .X(_0518_));
 sg13g2_a21oi_1 _1106_ (.A1(_0517_),
    .A2(_0518_),
    .Y(_0093_),
    .B1(net222));
 sg13g2_nand3_1 _1107_ (.B(\u_timer.shutdown_selection_count[9] ),
    .C(\u_timer.shutdown_selection_count[10] ),
    .A(\u_timer.shutdown_selection_count[8] ),
    .Y(_0519_));
 sg13g2_o21ai_1 _1108_ (.B1(\u_timer.shutdown_selection_count[11] ),
    .Y(_0520_),
    .A1(net211),
    .A2(_0519_));
 sg13g2_or3_1 _1109_ (.A(\u_timer.shutdown_selection_count[11] ),
    .B(net211),
    .C(_0519_),
    .X(_0521_));
 sg13g2_a21oi_1 _1110_ (.A1(_0520_),
    .A2(_0521_),
    .Y(_0094_),
    .B1(net222));
 sg13g2_nand2_1 _1111_ (.Y(_0522_),
    .A(\u_timer.shutdown_selection_count[8] ),
    .B(\u_timer.shutdown_selection_count[9] ));
 sg13g2_o21ai_1 _1112_ (.B1(\u_timer.shutdown_selection_count[10] ),
    .Y(_0523_),
    .A1(net211),
    .A2(_0522_));
 sg13g2_or3_1 _1113_ (.A(\u_timer.shutdown_selection_count[10] ),
    .B(net211),
    .C(_0522_),
    .X(_0524_));
 sg13g2_a21oi_1 _1114_ (.A1(_0523_),
    .A2(_0524_),
    .Y(_0095_),
    .B1(net222));
 sg13g2_inv_1 _1115_ (.Y(_0525_),
    .A(\u_timer.shutdown_selection_count[8] ));
 sg13g2_o21ai_1 _1116_ (.B1(\u_timer.shutdown_selection_count[9] ),
    .Y(_0526_),
    .A1(_0525_),
    .A2(_0444_));
 sg13g2_or3_1 _1117_ (.A(_0525_),
    .B(\u_timer.shutdown_selection_count[9] ),
    .C(_0444_),
    .X(_0527_));
 sg13g2_a21oi_1 _1118_ (.A1(_0526_),
    .A2(_0527_),
    .Y(_0096_),
    .B1(net222));
 sg13g2_xnor2_1 _1119_ (.Y(_0528_),
    .A(_0525_),
    .B(_0444_));
 sg13g2_nor2_1 _1120_ (.A(net222),
    .B(_0528_),
    .Y(_0097_));
 sg13g2_a21oi_1 _1121_ (.A1(\u_timer.shutdown_selection_count[19] ),
    .A2(_0414_),
    .Y(_0529_),
    .B1(\u_timer.shutdown_selection_count[20] ));
 sg13g2_o21ai_1 _1122_ (.B1(_0479_),
    .Y(_0530_),
    .A1(_0434_),
    .A2(_0529_));
 sg13g2_and4_1 _1123_ (.A(_0422_),
    .B(_0432_),
    .C(_0435_),
    .D(_0437_),
    .X(_0531_));
 sg13g2_and2_1 _1124_ (.A(_0525_),
    .B(_0429_),
    .X(_0532_));
 sg13g2_nand2b_1 _1125_ (.Y(_0533_),
    .B(_0532_),
    .A_N(_0443_));
 sg13g2_a21o_1 _1126_ (.A2(_0425_),
    .A1(\u_timer.shutdown_selection_count[30] ),
    .B1(_0426_),
    .X(_0534_));
 sg13g2_a221oi_1 _1127_ (.B2(_0533_),
    .C1(_0534_),
    .B1(_0531_),
    .A1(_0422_),
    .Y(_0535_),
    .A2(_0530_));
 sg13g2_nor3_1 _1130_ (.A(_0439_),
    .B(_0441_),
    .C(_0442_),
    .Y(_0538_));
 sg13g2_a21o_1 _1131_ (.A2(_0538_),
    .A1(_0535_),
    .B1(_0440_),
    .X(_0539_));
 sg13g2_nand3_1 _1132_ (.B(_0535_),
    .C(_0538_),
    .A(_0440_),
    .Y(_0540_));
 sg13g2_a21oi_1 _1133_ (.A1(_0539_),
    .A2(_0540_),
    .Y(_0098_),
    .B1(net221));
 sg13g2_nor2_1 _1134_ (.A(_0441_),
    .B(_0442_),
    .Y(_0541_));
 sg13g2_a21o_1 _1135_ (.A2(_0535_),
    .A1(_0541_),
    .B1(_0439_),
    .X(_0542_));
 sg13g2_nand3_1 _1136_ (.B(_0541_),
    .C(net210),
    .A(_0439_),
    .Y(_0543_));
 sg13g2_a21oi_1 _1137_ (.A1(_0542_),
    .A2(_0543_),
    .Y(_0099_),
    .B1(net221));
 sg13g2_inv_1 _1138_ (.Y(_0544_),
    .A(\u_timer.shutdown_selection_count[4] ));
 sg13g2_nor2_1 _1139_ (.A(_0544_),
    .B(_0441_),
    .Y(_0545_));
 sg13g2_inv_1 _1140_ (.Y(_0546_),
    .A(\u_timer.shutdown_selection_count[5] ));
 sg13g2_a21o_1 _1141_ (.A2(net209),
    .A1(_0545_),
    .B1(_0546_),
    .X(_0547_));
 sg13g2_nand3_1 _1142_ (.B(_0545_),
    .C(net209),
    .A(_0546_),
    .Y(_0548_));
 sg13g2_a21oi_1 _1143_ (.A1(_0547_),
    .A2(_0548_),
    .Y(_0100_),
    .B1(net221));
 sg13g2_and2_1 _1144_ (.A(\u_timer.shutdown_selection_count[0] ),
    .B(\u_timer.shutdown_selection_count[1] ),
    .X(_0549_));
 sg13g2_and2_1 _1145_ (.A(\u_timer.shutdown_selection_count[2] ),
    .B(_0549_),
    .X(_0550_));
 sg13g2_and2_1 _1146_ (.A(\u_timer.shutdown_selection_count[3] ),
    .B(_0550_),
    .X(_0551_));
 sg13g2_a21o_1 _1147_ (.A2(net209),
    .A1(_0551_),
    .B1(_0544_),
    .X(_0552_));
 sg13g2_nand3_1 _1148_ (.B(_0551_),
    .C(net209),
    .A(_0544_),
    .Y(_0553_));
 sg13g2_a21oi_1 _1149_ (.A1(_0552_),
    .A2(_0553_),
    .Y(_0101_),
    .B1(net221));
 sg13g2_inv_1 _1150_ (.Y(_0554_),
    .A(\u_timer.shutdown_selection_count[3] ));
 sg13g2_a21o_1 _1151_ (.A2(net209),
    .A1(_0550_),
    .B1(_0554_),
    .X(_0555_));
 sg13g2_nand3_1 _1152_ (.B(_0550_),
    .C(net209),
    .A(_0554_),
    .Y(_0556_));
 sg13g2_a21oi_1 _1153_ (.A1(_0555_),
    .A2(_0556_),
    .Y(_0102_),
    .B1(net221));
 sg13g2_inv_1 _1154_ (.Y(_0557_),
    .A(\u_timer.shutdown_selection_count[2] ));
 sg13g2_a21o_1 _1155_ (.A2(net209),
    .A1(_0549_),
    .B1(_0557_),
    .X(_0558_));
 sg13g2_nand3_1 _1156_ (.B(_0549_),
    .C(net209),
    .A(_0557_),
    .Y(_0559_));
 sg13g2_a21oi_1 _1157_ (.A1(_0558_),
    .A2(_0559_),
    .Y(_0103_),
    .B1(net221));
 sg13g2_inv_1 _1158_ (.Y(_0560_),
    .A(\u_timer.shutdown_selection_count[1] ));
 sg13g2_a21o_1 _1159_ (.A2(net210),
    .A1(\u_timer.shutdown_selection_count[0] ),
    .B1(_0560_),
    .X(_0561_));
 sg13g2_nand3_1 _1160_ (.B(_0560_),
    .C(net210),
    .A(\u_timer.shutdown_selection_count[0] ),
    .Y(_0562_));
 sg13g2_a21oi_1 _1161_ (.A1(_0561_),
    .A2(_0562_),
    .Y(_0104_),
    .B1(net221));
 sg13g2_xnor2_1 _1162_ (.Y(_0563_),
    .A(\u_timer.shutdown_selection_count[0] ),
    .B(net210));
 sg13g2_nor2_1 _1163_ (.A(net221),
    .B(_0563_),
    .Y(_0105_));
 sg13g2_nand3_1 _1164_ (.B(shutdown_timer_expired),
    .C(_0121_),
    .A(shutdown_confirmation_active),
    .Y(_0564_));
 sg13g2_a21oi_1 _1165_ (.A1(_0117_),
    .A2(_0564_),
    .Y(_0106_),
    .B1(net234));
 sg13g2_nand2_1 _1166_ (.Y(_0565_),
    .A(\shutdown_cmd_latched[3] ),
    .B(_0124_));
 sg13g2_nand3_1 _1167_ (.B(_0121_),
    .C(_0126_),
    .A(net133),
    .Y(_0566_));
 sg13g2_a21oi_1 _1168_ (.A1(_0565_),
    .A2(_0566_),
    .Y(_0107_),
    .B1(net234));
 sg13g2_nor2b_1 _1169_ (.A(shutdown_timer_expired),
    .B_N(_0121_),
    .Y(_0567_));
 sg13g2_o21ai_1 _1170_ (.B1(shutdown_confirmation_active),
    .Y(_0568_),
    .A1(shutdown_committed),
    .A2(_0567_));
 sg13g2_nand3_1 _1171_ (.B(_0121_),
    .C(_0119_),
    .A(_0117_),
    .Y(_0569_));
 sg13g2_a21oi_1 _1172_ (.A1(_0568_),
    .A2(_0569_),
    .Y(_0108_),
    .B1(net234));
 sg13g2_o21ai_1 _1173_ (.B1(_0157_),
    .Y(_0570_),
    .A1(net119),
    .A2(shutdown_committed));
 sg13g2_a21oi_1 _1174_ (.A1(_0117_),
    .A2(shutdown_selection_timer_expired),
    .Y(_0571_),
    .B1(shutdown_request_locked_out));
 sg13g2_nor2_1 _1175_ (.A(_0570_),
    .B(_0571_),
    .Y(_0109_));
 sg13g2_and2_1 _1176_ (.A(\u_timer.manual_count[31] ),
    .B(_0133_),
    .X(_0110_));
 sg13g2_and2_1 _1177_ (.A(_0133_),
    .B(_0252_),
    .X(_0111_));
 sg13g2_nor2_1 _1178_ (.A(_0345_),
    .B(net227),
    .Y(_0112_));
 sg13g2_and2_1 _1179_ (.A(_0273_),
    .B(_0409_),
    .X(_0113_));
 sg13g2_inv_1 _1180_ (.Y(_0572_),
    .A(\u_timer.shutdown_selection_count[31] ));
 sg13g2_nor2_1 _1181_ (.A(_0572_),
    .B(_0459_),
    .Y(_0114_));
 sg13g2_nor2_1 _1182_ (.A(_0459_),
    .B(_0535_),
    .Y(_0115_));
 sg13g2_nor2_1 _1183_ (.A(_0157_),
    .B(net120),
    .Y(_0573_));
 sg13g2_a21oi_1 _1184_ (.A1(_0157_),
    .A2(\u_fsm.state[0] ),
    .Y(_0574_),
    .B1(_0573_));
 sg13g2_nor3_1 _1185_ (.A(shutdown_committed),
    .B(net134),
    .C(_0574_),
    .Y(_0000_));
 sg13g2_nor2_1 _1186_ (.A(\u_fsm.state[2] ),
    .B(net129),
    .Y(_0575_));
 sg13g2_nor2_1 _1187_ (.A(\u_fsm.state[7] ),
    .B(net140),
    .Y(_0576_));
 sg13g2_nor4_1 _1188_ (.A(net117),
    .B(net128),
    .C(net123),
    .D(net127),
    .Y(_0577_));
 sg13g2_a21oi_1 _1189_ (.A1(_0575_),
    .A2(_0576_),
    .Y(_0578_),
    .B1(_0577_));
 sg13g2_a21oi_1 _1190_ (.A1(net136),
    .A2(_0157_),
    .Y(_0579_),
    .B1(_0578_));
 sg13g2_nand2_1 _1191_ (.Y(_0580_),
    .A(_0117_),
    .B(net120));
 sg13g2_nor2_1 _1192_ (.A(net121),
    .B(_0580_),
    .Y(_0581_));
 sg13g2_nor2b_1 _1193_ (.A(_0579_),
    .B_N(_0581_),
    .Y(_0001_));
 sg13g2_nand3_1 _1194_ (.B(net138),
    .C(_0272_),
    .A(net120),
    .Y(_0582_));
 sg13g2_nor3_1 _1195_ (.A(net121),
    .B(_0580_),
    .C(_0575_),
    .Y(_0583_));
 sg13g2_nand2b_1 _1196_ (.Y(_0584_),
    .B(_0583_),
    .A_N(net116));
 sg13g2_nor2_1 _1197_ (.A(net126),
    .B(net122),
    .Y(_0585_));
 sg13g2_nand2_1 _1198_ (.Y(_0586_),
    .A(_0577_),
    .B(_0585_));
 sg13g2_or3_1 _1199_ (.A(net125),
    .B(net118),
    .C(_0586_),
    .X(_0587_));
 sg13g2_a21oi_1 _1200_ (.A1(_0582_),
    .A2(_0584_),
    .Y(_0002_),
    .B1(_0587_));
 sg13g2_nand2_1 _1201_ (.Y(_0588_),
    .A(_0117_),
    .B(_0157_));
 sg13g2_inv_1 _1202_ (.Y(_0589_),
    .A(net120));
 sg13g2_a21oi_1 _1203_ (.A1(_0589_),
    .A2(net138),
    .Y(_0590_),
    .B1(\u_fsm.state[5] ));
 sg13g2_nor3_1 _1204_ (.A(_0588_),
    .B(_0587_),
    .C(_0590_),
    .Y(_0003_));
 sg13g2_inv_1 _1205_ (.Y(_0591_),
    .A(net121));
 sg13g2_and2_1 _1206_ (.A(\u_fsm.state[7] ),
    .B(manual_timer_expired),
    .X(net139));
 sg13g2_and3_1 _1207_ (.X(_0592_),
    .A(_0591_),
    .B(_0577_),
    .C(net139));
 sg13g2_o21ai_1 _1208_ (.B1(_0157_),
    .Y(_0593_),
    .A1(\u_fsm.state[4] ),
    .A2(_0592_));
 sg13g2_nand2_1 _1209_ (.Y(_0594_),
    .A(_0575_),
    .B(_0576_));
 sg13g2_o21ai_1 _1210_ (.B1(net121),
    .Y(_0595_),
    .A1(net136),
    .A2(_0594_));
 sg13g2_a21oi_1 _1211_ (.A1(_0593_),
    .A2(_0595_),
    .Y(_0004_),
    .B1(_0580_));
 sg13g2_a21oi_1 _1212_ (.A1(net134),
    .A2(_0589_),
    .Y(_0596_),
    .B1(shutdown_committed));
 sg13g2_and2_1 _1213_ (.A(net134),
    .B(\u_fsm.state[0] ),
    .X(_0597_));
 sg13g2_nor3_1 _1214_ (.A(\u_fsm.state[2] ),
    .B(\u_fsm.state[4] ),
    .C(net136),
    .Y(_0598_));
 sg13g2_a21oi_1 _1215_ (.A1(_0576_),
    .A2(_0598_),
    .Y(_0599_),
    .B1(net120));
 sg13g2_o21ai_1 _1216_ (.B1(_0272_),
    .Y(_0600_),
    .A1(_0597_),
    .A2(_0599_));
 sg13g2_o21ai_1 _1217_ (.B1(_0600_),
    .Y(_0005_),
    .A1(_0157_),
    .A2(_0596_));
 sg13g2_inv_1 _1218_ (.Y(_0601_),
    .A(\u_fsm.state[6] ));
 sg13g2_a21oi_1 _1219_ (.A1(_0117_),
    .A2(_0601_),
    .Y(_0006_),
    .B1(net234));
 sg13g2_nor3_1 _1220_ (.A(\u_fsm.state[2] ),
    .B(net129),
    .C(net140),
    .Y(_0602_));
 sg13g2_or2_1 _1221_ (.X(_0603_),
    .B(_0602_),
    .A(_0585_));
 sg13g2_o21ai_1 _1222_ (.B1(_0603_),
    .Y(_0604_),
    .A1(manual_timer_expired),
    .A2(net230));
 sg13g2_and3_1 _1223_ (.X(_0007_),
    .A(_0581_),
    .B(_0577_),
    .C(_0604_));
 sg13g2_inv_1 _1224_ (.Y(_0605_),
    .A(net137));
 sg13g2_o21ai_1 _1225_ (.B1(_0587_),
    .Y(_0606_),
    .A1(net138),
    .A2(\u_fsm.state[5] ));
 sg13g2_a21oi_1 _1226_ (.A1(_0605_),
    .A2(_0606_),
    .Y(_0008_),
    .B1(_0588_));
 sg13g2_nor3_1 _1227_ (.A(net125),
    .B(net118),
    .C(net116),
    .Y(_0607_));
 sg13g2_nand2b_1 _1228_ (.Y(_0608_),
    .B(_0583_),
    .A_N(_0607_));
 sg13g2_nand4_1 _1229_ (.B(_0591_),
    .C(net140),
    .A(net120),
    .Y(_0609_),
    .D(_0272_));
 sg13g2_a21oi_1 _1230_ (.A1(_0608_),
    .A2(_0609_),
    .Y(_0009_),
    .B1(_0586_));
 sg13g2_and2_1 _1231_ (.A(\shutdown_cmd_latched[3] ),
    .B(\u_fsm.state[6] ),
    .X(net144));
 sg13g2_nor2_1 _1232_ (.A(\u_fsm.state[2] ),
    .B(\u_fsm.state[4] ),
    .Y(_0610_));
 sg13g2_nor3_1 _1233_ (.A(\u_fsm.state[6] ),
    .B(net136),
    .C(net137),
    .Y(_0611_));
 sg13g2_o21ai_1 _1234_ (.B1(_0611_),
    .Y(net135),
    .A1(_0577_),
    .A2(_0610_));
 sg13g2_nor4_1 _1235_ (.A(net126),
    .B(net121),
    .C(net122),
    .D(net124),
    .Y(_0612_));
 sg13g2_inv_1 _1236_ (.Y(_0613_),
    .A(\u_fsm.state[2] ));
 sg13g2_a21oi_1 _1237_ (.A1(_0607_),
    .A2(_0612_),
    .Y(_0614_),
    .B1(_0613_));
 sg13g2_o21ai_1 _1238_ (.B1(_0577_),
    .Y(_0615_),
    .A1(\u_fsm.state[4] ),
    .A2(_0614_));
 sg13g2_nand2_1 _1239_ (.Y(net145),
    .A(_0576_),
    .B(_0615_));
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
 sg13g2_buf_8 clkbuf_5_0__f_clk (.A(clknet_4_0_0_clk),
    .X(clknet_5_0__leaf_clk));
 sg13g2_buf_8 clkbuf_5_10__f_clk (.A(clknet_4_5_0_clk),
    .X(clknet_5_10__leaf_clk));
 sg13g2_buf_8 clkbuf_5_11__f_clk (.A(clknet_4_5_0_clk),
    .X(clknet_5_11__leaf_clk));
 sg13g2_buf_8 clkbuf_5_12__f_clk (.A(clknet_4_6_0_clk),
    .X(clknet_5_12__leaf_clk));
 sg13g2_buf_8 clkbuf_5_13__f_clk (.A(clknet_4_6_0_clk),
    .X(clknet_5_13__leaf_clk));
 sg13g2_buf_8 clkbuf_5_14__f_clk (.A(clknet_4_7_0_clk),
    .X(clknet_5_14__leaf_clk));
 sg13g2_buf_8 clkbuf_5_15__f_clk (.A(clknet_4_7_0_clk),
    .X(clknet_5_15__leaf_clk));
 sg13g2_buf_8 clkbuf_5_16__f_clk (.A(clknet_4_8_0_clk),
    .X(clknet_5_16__leaf_clk));
 sg13g2_buf_8 clkbuf_5_17__f_clk (.A(clknet_4_8_0_clk),
    .X(clknet_5_17__leaf_clk));
 sg13g2_buf_8 clkbuf_5_18__f_clk (.A(clknet_4_9_0_clk),
    .X(clknet_5_18__leaf_clk));
 sg13g2_buf_8 clkbuf_5_19__f_clk (.A(clknet_4_9_0_clk),
    .X(clknet_5_19__leaf_clk));
 sg13g2_buf_8 clkbuf_5_1__f_clk (.A(clknet_4_0_0_clk),
    .X(clknet_5_1__leaf_clk));
 sg13g2_buf_8 clkbuf_5_20__f_clk (.A(clknet_4_10_0_clk),
    .X(clknet_5_20__leaf_clk));
 sg13g2_buf_8 clkbuf_5_21__f_clk (.A(clknet_4_10_0_clk),
    .X(clknet_5_21__leaf_clk));
 sg13g2_buf_8 clkbuf_5_22__f_clk (.A(clknet_4_11_0_clk),
    .X(clknet_5_22__leaf_clk));
 sg13g2_buf_8 clkbuf_5_23__f_clk (.A(clknet_4_11_0_clk),
    .X(clknet_5_23__leaf_clk));
 sg13g2_buf_8 clkbuf_5_24__f_clk (.A(clknet_4_12_0_clk),
    .X(clknet_5_24__leaf_clk));
 sg13g2_buf_8 clkbuf_5_25__f_clk (.A(clknet_4_12_0_clk),
    .X(clknet_5_25__leaf_clk));
 sg13g2_buf_8 clkbuf_5_26__f_clk (.A(clknet_4_13_0_clk),
    .X(clknet_5_26__leaf_clk));
 sg13g2_buf_8 clkbuf_5_27__f_clk (.A(clknet_4_13_0_clk),
    .X(clknet_5_27__leaf_clk));
 sg13g2_buf_8 clkbuf_5_28__f_clk (.A(clknet_4_14_0_clk),
    .X(clknet_5_28__leaf_clk));
 sg13g2_buf_8 clkbuf_5_29__f_clk (.A(clknet_4_14_0_clk),
    .X(clknet_5_29__leaf_clk));
 sg13g2_buf_8 clkbuf_5_2__f_clk (.A(clknet_4_1_0_clk),
    .X(clknet_5_2__leaf_clk));
 sg13g2_buf_8 clkbuf_5_30__f_clk (.A(clknet_4_15_0_clk),
    .X(clknet_5_30__leaf_clk));
 sg13g2_buf_8 clkbuf_5_31__f_clk (.A(clknet_4_15_0_clk),
    .X(clknet_5_31__leaf_clk));
 sg13g2_buf_8 clkbuf_5_3__f_clk (.A(clknet_4_1_0_clk),
    .X(clknet_5_3__leaf_clk));
 sg13g2_buf_8 clkbuf_5_4__f_clk (.A(clknet_4_2_0_clk),
    .X(clknet_5_4__leaf_clk));
 sg13g2_buf_8 clkbuf_5_5__f_clk (.A(clknet_4_2_0_clk),
    .X(clknet_5_5__leaf_clk));
 sg13g2_buf_8 clkbuf_5_6__f_clk (.A(clknet_4_3_0_clk),
    .X(clknet_5_6__leaf_clk));
 sg13g2_buf_8 clkbuf_5_7__f_clk (.A(clknet_4_3_0_clk),
    .X(clknet_5_7__leaf_clk));
 sg13g2_buf_8 clkbuf_5_8__f_clk (.A(clknet_4_4_0_clk),
    .X(clknet_5_8__leaf_clk));
 sg13g2_buf_8 clkbuf_5_9__f_clk (.A(clknet_4_4_0_clk),
    .X(clknet_5_9__leaf_clk));
 sg13g2_inv_1 clkload0 (.A(clknet_5_3__leaf_clk));
 sg13g2_inv_1 clkload1 (.A(clknet_5_5__leaf_clk));
 sg13g2_inv_1 clkload10 (.A(clknet_5_29__leaf_clk));
 sg13g2_inv_1 clkload11 (.A(clknet_5_31__leaf_clk));
 sg13g2_inv_1 clkload2 (.A(clknet_5_7__leaf_clk));
 sg13g2_inv_1 clkload3 (.A(clknet_5_11__leaf_clk));
 sg13g2_inv_1 clkload4 (.A(clknet_5_13__leaf_clk));
 sg13g2_inv_1 clkload5 (.A(clknet_5_15__leaf_clk));
 sg13g2_inv_1 clkload6 (.A(clknet_5_19__leaf_clk));
 sg13g2_inv_1 clkload7 (.A(clknet_5_21__leaf_clk));
 sg13g2_inv_1 clkload8 (.A(clknet_5_23__leaf_clk));
 sg13g2_inv_1 clkload9 (.A(clknet_5_27__leaf_clk));
 sg13g2_buf_1 input117 (.A(adverse_weather),
    .X(net116));
 sg13g2_buf_1 input118 (.A(battery_critical),
    .X(net117));
 sg13g2_buf_1 input119 (.A(battery_low),
    .X(net118));
 sg13g2_buf_1 input120 (.A(emergency_shutdown),
    .X(net119));
 sg13g2_buf_1 input121 (.A(flight_active),
    .X(net120));
 sg13g2_buf_1 input122 (.A(manual_flight_control),
    .X(net121));
 sg13g2_buf_1 input123 (.A(navigation_fault[0]),
    .X(net122));
 sg13g2_buf_1 input124 (.A(navigation_fault[1]),
    .X(net123));
 sg13g2_buf_1 input125 (.A(obstacle_detected),
    .X(net124));
 sg13g2_buf_1 input126 (.A(payload_fault[0]),
    .X(net125));
 sg13g2_buf_1 input127 (.A(payload_fault[1]),
    .X(net126));
 sg13g2_buf_1 input128 (.A(payload_fault[2]),
    .X(net127));
 sg13g2_buf_1 input129 (.A(propulsion_fault),
    .X(net128));
 sg13g2_buf_1 input130 (.A(reset),
    .X(net129));
 sg13g2_buf_1 input131 (.A(shutdown_select[0]),
    .X(net130));
 sg13g2_buf_1 input132 (.A(shutdown_select[1]),
    .X(net131));
 sg13g2_buf_1 input133 (.A(shutdown_select[2]),
    .X(net132));
 sg13g2_buf_1 input134 (.A(shutdown_select[3]),
    .X(net133));
 sg13g2_buf_1 input135 (.A(uav_active),
    .X(net134));
 sg13g2_buf_1 output136 (.A(net135),
    .X(alarm));
 sg13g2_buf_1 output137 (.A(net136),
    .X(emergency_land));
 sg13g2_buf_1 output138 (.A(net137),
    .X(flight_inhibit));
 sg13g2_buf_1 output139 (.A(net138),
    .X(flight_ready));
 sg13g2_buf_1 output140 (.A(net139),
    .X(force_manual_mode));
 sg13g2_buf_1 output141 (.A(net140),
    .X(return_home));
 sg13g2_buf_1 output142 (.A(net141),
    .X(shutdown_cmd[0]));
 sg13g2_buf_1 output143 (.A(net142),
    .X(shutdown_cmd[1]));
 sg13g2_buf_1 output144 (.A(net143),
    .X(shutdown_cmd[2]));
 sg13g2_buf_1 output145 (.A(net144),
    .X(shutdown_cmd[3]));
 sg13g2_buf_1 output146 (.A(net145),
    .X(warning));
 sg13g2_buf_1 place210 (.A(net210),
    .X(net209));
 sg13g2_buf_1 place211 (.A(_0535_),
    .X(net210));
 sg13g2_buf_1 place212 (.A(_0444_),
    .X(net211));
 sg13g2_buf_1 place213 (.A(net214),
    .X(net212));
 sg13g2_buf_1 place214 (.A(net214),
    .X(net213));
 sg13g2_buf_1 place215 (.A(_0444_),
    .X(net214));
 sg13g2_buf_1 place216 (.A(_0311_),
    .X(net215));
 sg13g2_buf_1 place217 (.A(_0311_),
    .X(net216));
 sg13g2_buf_1 place218 (.A(_0252_),
    .X(net217));
 sg13g2_buf_1 place219 (.A(_0212_),
    .X(net218));
 sg13g2_buf_1 place220 (.A(_0182_),
    .X(net219));
 sg13g2_buf_1 place221 (.A(_0182_),
    .X(net220));
 sg13g2_buf_1 place222 (.A(_0459_),
    .X(net221));
 sg13g2_buf_1 place223 (.A(_0459_),
    .X(net222));
 sg13g2_buf_1 place224 (.A(net224),
    .X(net223));
 sg13g2_buf_1 place225 (.A(_0459_),
    .X(net224));
 sg13g2_buf_1 place226 (.A(net227),
    .X(net225));
 sg13g2_buf_1 place227 (.A(net227),
    .X(net226));
 sg13g2_buf_1 place228 (.A(_0317_),
    .X(net227));
 sg13g2_buf_1 place229 (.A(_0452_),
    .X(net228));
 sg13g2_buf_1 place230 (.A(net230),
    .X(net229));
 sg13g2_buf_1 place231 (.A(_0158_),
    .X(net230));
 sg13g2_buf_1 place232 (.A(_0158_),
    .X(net231));
 sg13g2_buf_1 place233 (.A(_0158_),
    .X(net232));
 sg13g2_buf_1 place234 (.A(\u_timer.shutdown_count[11] ),
    .X(net233));
 sg13g2_buf_1 place235 (.A(net129),
    .X(net234));
 sg13g2_dfrbpq_1 \shutdown_cmd_latched[0]$_SDFFE_PP0P_  (.RESET_B(net),
    .D(_0012_),
    .Q(\shutdown_cmd_latched[0] ),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi \shutdown_cmd_latched[0]$_SDFFE_PP0P__1  (.L_HI(net));
 sg13g2_dfrbpq_1 \shutdown_cmd_latched[1]$_SDFFE_PP0P_  (.RESET_B(net1),
    .D(_0011_),
    .Q(\shutdown_cmd_latched[1] ),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi \shutdown_cmd_latched[1]$_SDFFE_PP0P__2  (.L_HI(net1));
 sg13g2_dfrbpq_1 \shutdown_cmd_latched[2]$_SDFFE_PP0P_  (.RESET_B(net2),
    .D(_0010_),
    .Q(\shutdown_cmd_latched[2] ),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi \shutdown_cmd_latched[2]$_SDFFE_PP0P__3  (.L_HI(net2));
 sg13g2_dfrbpq_1 \shutdown_cmd_latched[3]$_SDFFE_PP0P_  (.RESET_B(net3),
    .D(_0107_),
    .Q(\shutdown_cmd_latched[3] ),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi \shutdown_cmd_latched[3]$_SDFFE_PP0P__4  (.L_HI(net3));
 sg13g2_dfrbpq_1 \shutdown_committed$_SDFF_PP0_  (.RESET_B(net4),
    .D(_0106_),
    .Q(shutdown_committed),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi \shutdown_committed$_SDFF_PP0__5  (.L_HI(net4));
 sg13g2_dfrbpq_1 \shutdown_confirmation_active$_SDFFE_PP0N_  (.RESET_B(net5),
    .D(_0108_),
    .Q(shutdown_confirmation_active),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi \shutdown_confirmation_active$_SDFFE_PP0N__6  (.L_HI(net5));
 sg13g2_dfrbpq_1 \shutdown_request_locked_out$_SDFFE_PP0P_  (.RESET_B(net6),
    .D(_0109_),
    .Q(shutdown_request_locked_out),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi \shutdown_request_locked_out$_SDFFE_PP0P__7  (.L_HI(net6));
 sg13g2_dfrbpq_1 \u_fsm.state[0]$_DFF_P_  (.RESET_B(net7),
    .D(_0000_),
    .Q(\u_fsm.state[0] ),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi \u_fsm.state[0]$_DFF_P__8  (.L_HI(net7));
 sg13g2_dfrbpq_1 \u_fsm.state[1]$_DFF_P_  (.RESET_B(net8),
    .D(_0001_),
    .Q(net136),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi \u_fsm.state[1]$_DFF_P__9  (.L_HI(net8));
 sg13g2_dfrbpq_1 \u_fsm.state[2]$_DFF_P_  (.RESET_B(net9),
    .D(_0002_),
    .Q(\u_fsm.state[2] ),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi \u_fsm.state[2]$_DFF_P__10  (.L_HI(net9));
 sg13g2_dfrbpq_1 \u_fsm.state[3]$_DFF_P_  (.RESET_B(net10),
    .D(_0003_),
    .Q(net138),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi \u_fsm.state[3]$_DFF_P__11  (.L_HI(net10));
 sg13g2_dfrbpq_1 \u_fsm.state[4]$_DFF_P_  (.RESET_B(net11),
    .D(_0004_),
    .Q(\u_fsm.state[4] ),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi \u_fsm.state[4]$_DFF_P__12  (.L_HI(net11));
 sg13g2_dfrbpq_1 \u_fsm.state[5]$_DFF_P_  (.RESET_B(net12),
    .D(_0005_),
    .Q(\u_fsm.state[5] ),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi \u_fsm.state[5]$_DFF_P__13  (.L_HI(net12));
 sg13g2_dfrbpq_1 \u_fsm.state[6]$_DFF_P_  (.RESET_B(net13),
    .D(_0006_),
    .Q(\u_fsm.state[6] ),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi \u_fsm.state[6]$_DFF_P__14  (.L_HI(net13));
 sg13g2_dfrbpq_1 \u_fsm.state[7]$_DFF_P_  (.RESET_B(net14),
    .D(_0007_),
    .Q(\u_fsm.state[7] ),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi \u_fsm.state[7]$_DFF_P__15  (.L_HI(net14));
 sg13g2_dfrbpq_1 \u_fsm.state[8]$_DFF_P_  (.RESET_B(net15),
    .D(_0008_),
    .Q(net137),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi \u_fsm.state[8]$_DFF_P__16  (.L_HI(net15));
 sg13g2_dfrbpq_1 \u_fsm.state[9]$_DFF_P_  (.RESET_B(net16),
    .D(_0009_),
    .Q(net140),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi \u_fsm.state[9]$_DFF_P__17  (.L_HI(net16));
 sg13g2_dfrbpq_1 \u_timer.manual_count[0]$_SDFFE_PP0P_  (.RESET_B(net17),
    .D(_0043_),
    .Q(\u_timer.manual_count[0] ),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[0]$_SDFFE_PP0P__18  (.L_HI(net17));
 sg13g2_dfrbpq_1 \u_timer.manual_count[10]$_SDFFE_PP0P_  (.RESET_B(net18),
    .D(_0033_),
    .Q(\u_timer.manual_count[10] ),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[10]$_SDFFE_PP0P__19  (.L_HI(net18));
 sg13g2_dfrbpq_1 \u_timer.manual_count[11]$_SDFFE_PP0P_  (.RESET_B(net19),
    .D(_0032_),
    .Q(\u_timer.manual_count[11] ),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[11]$_SDFFE_PP0P__20  (.L_HI(net19));
 sg13g2_dfrbpq_1 \u_timer.manual_count[12]$_SDFFE_PP0P_  (.RESET_B(net20),
    .D(_0031_),
    .Q(\u_timer.manual_count[12] ),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[12]$_SDFFE_PP0P__21  (.L_HI(net20));
 sg13g2_dfrbpq_1 \u_timer.manual_count[13]$_SDFFE_PP0P_  (.RESET_B(net21),
    .D(_0030_),
    .Q(\u_timer.manual_count[13] ),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[13]$_SDFFE_PP0P__22  (.L_HI(net21));
 sg13g2_dfrbpq_1 \u_timer.manual_count[14]$_SDFFE_PP0P_  (.RESET_B(net22),
    .D(_0029_),
    .Q(\u_timer.manual_count[14] ),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[14]$_SDFFE_PP0P__23  (.L_HI(net22));
 sg13g2_dfrbpq_1 \u_timer.manual_count[15]$_SDFFE_PP0P_  (.RESET_B(net23),
    .D(_0028_),
    .Q(\u_timer.manual_count[15] ),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[15]$_SDFFE_PP0P__24  (.L_HI(net23));
 sg13g2_dfrbpq_1 \u_timer.manual_count[16]$_SDFFE_PP0P_  (.RESET_B(net24),
    .D(_0027_),
    .Q(\u_timer.manual_count[16] ),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[16]$_SDFFE_PP0P__25  (.L_HI(net24));
 sg13g2_dfrbpq_1 \u_timer.manual_count[17]$_SDFFE_PP0P_  (.RESET_B(net25),
    .D(_0026_),
    .Q(\u_timer.manual_count[17] ),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[17]$_SDFFE_PP0P__26  (.L_HI(net25));
 sg13g2_dfrbpq_1 \u_timer.manual_count[18]$_SDFFE_PP0P_  (.RESET_B(net26),
    .D(_0025_),
    .Q(\u_timer.manual_count[18] ),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[18]$_SDFFE_PP0P__27  (.L_HI(net26));
 sg13g2_dfrbpq_1 \u_timer.manual_count[19]$_SDFFE_PP0P_  (.RESET_B(net27),
    .D(_0024_),
    .Q(\u_timer.manual_count[19] ),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[19]$_SDFFE_PP0P__28  (.L_HI(net27));
 sg13g2_dfrbpq_1 \u_timer.manual_count[1]$_SDFFE_PP0P_  (.RESET_B(net28),
    .D(_0042_),
    .Q(\u_timer.manual_count[1] ),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[1]$_SDFFE_PP0P__29  (.L_HI(net28));
 sg13g2_dfrbpq_1 \u_timer.manual_count[20]$_SDFFE_PP0P_  (.RESET_B(net29),
    .D(_0023_),
    .Q(\u_timer.manual_count[20] ),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[20]$_SDFFE_PP0P__30  (.L_HI(net29));
 sg13g2_dfrbpq_1 \u_timer.manual_count[21]$_SDFFE_PP0P_  (.RESET_B(net30),
    .D(_0022_),
    .Q(\u_timer.manual_count[21] ),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[21]$_SDFFE_PP0P__31  (.L_HI(net30));
 sg13g2_dfrbpq_1 \u_timer.manual_count[22]$_SDFFE_PP0P_  (.RESET_B(net31),
    .D(_0021_),
    .Q(\u_timer.manual_count[22] ),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[22]$_SDFFE_PP0P__32  (.L_HI(net31));
 sg13g2_dfrbpq_1 \u_timer.manual_count[23]$_SDFFE_PP0P_  (.RESET_B(net32),
    .D(_0020_),
    .Q(\u_timer.manual_count[23] ),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[23]$_SDFFE_PP0P__33  (.L_HI(net32));
 sg13g2_dfrbpq_1 \u_timer.manual_count[24]$_SDFFE_PP0P_  (.RESET_B(net33),
    .D(_0019_),
    .Q(\u_timer.manual_count[24] ),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[24]$_SDFFE_PP0P__34  (.L_HI(net33));
 sg13g2_dfrbpq_1 \u_timer.manual_count[25]$_SDFFE_PP0P_  (.RESET_B(net34),
    .D(_0018_),
    .Q(\u_timer.manual_count[25] ),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[25]$_SDFFE_PP0P__35  (.L_HI(net34));
 sg13g2_dfrbpq_1 \u_timer.manual_count[26]$_SDFFE_PP0P_  (.RESET_B(net35),
    .D(_0017_),
    .Q(\u_timer.manual_count[26] ),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[26]$_SDFFE_PP0P__36  (.L_HI(net35));
 sg13g2_dfrbpq_1 \u_timer.manual_count[27]$_SDFFE_PP0P_  (.RESET_B(net36),
    .D(_0016_),
    .Q(\u_timer.manual_count[27] ),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[27]$_SDFFE_PP0P__37  (.L_HI(net36));
 sg13g2_dfrbpq_1 \u_timer.manual_count[28]$_SDFFE_PP0P_  (.RESET_B(net37),
    .D(_0015_),
    .Q(\u_timer.manual_count[28] ),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[28]$_SDFFE_PP0P__38  (.L_HI(net37));
 sg13g2_dfrbpq_1 \u_timer.manual_count[29]$_SDFFE_PP0P_  (.RESET_B(net38),
    .D(_0014_),
    .Q(\u_timer.manual_count[29] ),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[29]$_SDFFE_PP0P__39  (.L_HI(net38));
 sg13g2_dfrbpq_1 \u_timer.manual_count[2]$_SDFFE_PP0P_  (.RESET_B(net39),
    .D(_0041_),
    .Q(\u_timer.manual_count[2] ),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[2]$_SDFFE_PP0P__40  (.L_HI(net39));
 sg13g2_dfrbpq_1 \u_timer.manual_count[30]$_SDFFE_PP0P_  (.RESET_B(net40),
    .D(_0013_),
    .Q(\u_timer.manual_count[30] ),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[30]$_SDFFE_PP0P__41  (.L_HI(net40));
 sg13g2_dfrbpq_1 \u_timer.manual_count[31]$_SDFFE_PP0P_  (.RESET_B(net41),
    .D(_0110_),
    .Q(\u_timer.manual_count[31] ),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[31]$_SDFFE_PP0P__42  (.L_HI(net41));
 sg13g2_dfrbpq_1 \u_timer.manual_count[3]$_SDFFE_PP0P_  (.RESET_B(net42),
    .D(_0040_),
    .Q(\u_timer.manual_count[3] ),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[3]$_SDFFE_PP0P__43  (.L_HI(net42));
 sg13g2_dfrbpq_1 \u_timer.manual_count[4]$_SDFFE_PP0P_  (.RESET_B(net43),
    .D(_0039_),
    .Q(\u_timer.manual_count[4] ),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[4]$_SDFFE_PP0P__44  (.L_HI(net43));
 sg13g2_dfrbpq_1 \u_timer.manual_count[5]$_SDFFE_PP0P_  (.RESET_B(net44),
    .D(_0038_),
    .Q(\u_timer.manual_count[5] ),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[5]$_SDFFE_PP0P__45  (.L_HI(net44));
 sg13g2_dfrbpq_1 \u_timer.manual_count[6]$_SDFFE_PP0P_  (.RESET_B(net45),
    .D(_0037_),
    .Q(\u_timer.manual_count[6] ),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[6]$_SDFFE_PP0P__46  (.L_HI(net45));
 sg13g2_dfrbpq_1 \u_timer.manual_count[7]$_SDFFE_PP0P_  (.RESET_B(net46),
    .D(_0036_),
    .Q(\u_timer.manual_count[7] ),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[7]$_SDFFE_PP0P__47  (.L_HI(net46));
 sg13g2_dfrbpq_1 \u_timer.manual_count[8]$_SDFFE_PP0P_  (.RESET_B(net47),
    .D(_0035_),
    .Q(\u_timer.manual_count[8] ),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[8]$_SDFFE_PP0P__48  (.L_HI(net47));
 sg13g2_dfrbpq_1 \u_timer.manual_count[9]$_SDFFE_PP0P_  (.RESET_B(net48),
    .D(_0034_),
    .Q(\u_timer.manual_count[9] ),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi \u_timer.manual_count[9]$_SDFFE_PP0P__49  (.L_HI(net48));
 sg13g2_dfrbpq_1 \u_timer.manual_timer_expired$_SDFF_PP0_  (.RESET_B(net49),
    .D(_0111_),
    .Q(manual_timer_expired),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi \u_timer.manual_timer_expired$_SDFF_PP0__50  (.L_HI(net49));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[0]$_SDFFE_PP0P_  (.RESET_B(net50),
    .D(_0074_),
    .Q(\u_timer.shutdown_count[0] ),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[0]$_SDFFE_PP0P__51  (.L_HI(net50));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[10]$_SDFFE_PP0P_  (.RESET_B(net51),
    .D(_0064_),
    .Q(\u_timer.shutdown_count[10] ),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[10]$_SDFFE_PP0P__52  (.L_HI(net51));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[11]$_SDFFE_PP0P_  (.RESET_B(net52),
    .D(_0063_),
    .Q(\u_timer.shutdown_count[11] ),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[11]$_SDFFE_PP0P__53  (.L_HI(net52));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[12]$_SDFFE_PP0P_  (.RESET_B(net53),
    .D(_0062_),
    .Q(\u_timer.shutdown_count[12] ),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[12]$_SDFFE_PP0P__54  (.L_HI(net53));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[13]$_SDFFE_PP0P_  (.RESET_B(net54),
    .D(_0061_),
    .Q(\u_timer.shutdown_count[13] ),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[13]$_SDFFE_PP0P__55  (.L_HI(net54));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[14]$_SDFFE_PP0P_  (.RESET_B(net55),
    .D(_0060_),
    .Q(\u_timer.shutdown_count[14] ),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[14]$_SDFFE_PP0P__56  (.L_HI(net55));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[15]$_SDFFE_PP0P_  (.RESET_B(net56),
    .D(_0059_),
    .Q(\u_timer.shutdown_count[15] ),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[15]$_SDFFE_PP0P__57  (.L_HI(net56));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[16]$_SDFFE_PP0P_  (.RESET_B(net57),
    .D(_0058_),
    .Q(\u_timer.shutdown_count[16] ),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[16]$_SDFFE_PP0P__58  (.L_HI(net57));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[17]$_SDFFE_PP0P_  (.RESET_B(net58),
    .D(_0057_),
    .Q(\u_timer.shutdown_count[17] ),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[17]$_SDFFE_PP0P__59  (.L_HI(net58));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[18]$_SDFFE_PP0P_  (.RESET_B(net59),
    .D(_0056_),
    .Q(\u_timer.shutdown_count[18] ),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[18]$_SDFFE_PP0P__60  (.L_HI(net59));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[19]$_SDFFE_PP0P_  (.RESET_B(net60),
    .D(_0055_),
    .Q(\u_timer.shutdown_count[19] ),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[19]$_SDFFE_PP0P__61  (.L_HI(net60));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[1]$_SDFFE_PP0P_  (.RESET_B(net61),
    .D(_0073_),
    .Q(\u_timer.shutdown_count[1] ),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[1]$_SDFFE_PP0P__62  (.L_HI(net61));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[20]$_SDFFE_PP0P_  (.RESET_B(net62),
    .D(_0054_),
    .Q(\u_timer.shutdown_count[20] ),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[20]$_SDFFE_PP0P__63  (.L_HI(net62));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[21]$_SDFFE_PP0P_  (.RESET_B(net63),
    .D(_0053_),
    .Q(\u_timer.shutdown_count[21] ),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[21]$_SDFFE_PP0P__64  (.L_HI(net63));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[22]$_SDFFE_PP0P_  (.RESET_B(net64),
    .D(_0052_),
    .Q(\u_timer.shutdown_count[22] ),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[22]$_SDFFE_PP0P__65  (.L_HI(net64));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[23]$_SDFFE_PP0P_  (.RESET_B(net65),
    .D(_0051_),
    .Q(\u_timer.shutdown_count[23] ),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[23]$_SDFFE_PP0P__66  (.L_HI(net65));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[24]$_SDFFE_PP0P_  (.RESET_B(net66),
    .D(_0050_),
    .Q(\u_timer.shutdown_count[24] ),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[24]$_SDFFE_PP0P__67  (.L_HI(net66));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[25]$_SDFFE_PP0P_  (.RESET_B(net67),
    .D(_0049_),
    .Q(\u_timer.shutdown_count[25] ),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[25]$_SDFFE_PP0P__68  (.L_HI(net67));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[26]$_SDFFE_PP0P_  (.RESET_B(net68),
    .D(_0048_),
    .Q(\u_timer.shutdown_count[26] ),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[26]$_SDFFE_PP0P__69  (.L_HI(net68));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[27]$_SDFFE_PP0P_  (.RESET_B(net69),
    .D(_0047_),
    .Q(\u_timer.shutdown_count[27] ),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[27]$_SDFFE_PP0P__70  (.L_HI(net69));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[28]$_SDFFE_PP0P_  (.RESET_B(net70),
    .D(_0046_),
    .Q(\u_timer.shutdown_count[28] ),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[28]$_SDFFE_PP0P__71  (.L_HI(net70));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[29]$_SDFFE_PP0P_  (.RESET_B(net71),
    .D(_0045_),
    .Q(\u_timer.shutdown_count[29] ),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[29]$_SDFFE_PP0P__72  (.L_HI(net71));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[2]$_SDFFE_PP0P_  (.RESET_B(net72),
    .D(_0072_),
    .Q(\u_timer.shutdown_count[2] ),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[2]$_SDFFE_PP0P__73  (.L_HI(net72));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[30]$_SDFFE_PP0P_  (.RESET_B(net73),
    .D(_0044_),
    .Q(\u_timer.shutdown_count[30] ),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[30]$_SDFFE_PP0P__74  (.L_HI(net73));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[31]$_SDFFE_PP0P_  (.RESET_B(net74),
    .D(_0112_),
    .Q(\u_timer.shutdown_count[31] ),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[31]$_SDFFE_PP0P__75  (.L_HI(net74));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[3]$_SDFFE_PP0P_  (.RESET_B(net75),
    .D(_0071_),
    .Q(\u_timer.shutdown_count[3] ),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[3]$_SDFFE_PP0P__76  (.L_HI(net75));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[4]$_SDFFE_PP0P_  (.RESET_B(net76),
    .D(_0070_),
    .Q(\u_timer.shutdown_count[4] ),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[4]$_SDFFE_PP0P__77  (.L_HI(net76));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[5]$_SDFFE_PP0P_  (.RESET_B(net77),
    .D(_0069_),
    .Q(\u_timer.shutdown_count[5] ),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[5]$_SDFFE_PP0P__78  (.L_HI(net77));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[6]$_SDFFE_PP0P_  (.RESET_B(net78),
    .D(_0068_),
    .Q(\u_timer.shutdown_count[6] ),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[6]$_SDFFE_PP0P__79  (.L_HI(net78));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[7]$_SDFFE_PP0P_  (.RESET_B(net79),
    .D(_0067_),
    .Q(\u_timer.shutdown_count[7] ),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[7]$_SDFFE_PP0P__80  (.L_HI(net79));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[8]$_SDFFE_PP0P_  (.RESET_B(net80),
    .D(_0066_),
    .Q(\u_timer.shutdown_count[8] ),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[8]$_SDFFE_PP0P__81  (.L_HI(net80));
 sg13g2_dfrbpq_1 \u_timer.shutdown_count[9]$_SDFFE_PP0P_  (.RESET_B(net81),
    .D(_0065_),
    .Q(\u_timer.shutdown_count[9] ),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_count[9]$_SDFFE_PP0P__82  (.L_HI(net81));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[0]$_SDFFE_PP0P_  (.RESET_B(net82),
    .D(_0105_),
    .Q(\u_timer.shutdown_selection_count[0] ),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[0]$_SDFFE_PP0P__83  (.L_HI(net82));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[10]$_SDFFE_PP0P_  (.RESET_B(net83),
    .D(_0095_),
    .Q(\u_timer.shutdown_selection_count[10] ),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[10]$_SDFFE_PP0P__84  (.L_HI(net83));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[11]$_SDFFE_PP0P_  (.RESET_B(net84),
    .D(_0094_),
    .Q(\u_timer.shutdown_selection_count[11] ),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[11]$_SDFFE_PP0P__85  (.L_HI(net84));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[12]$_SDFFE_PP0P_  (.RESET_B(net85),
    .D(_0093_),
    .Q(\u_timer.shutdown_selection_count[12] ),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[12]$_SDFFE_PP0P__86  (.L_HI(net85));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[13]$_SDFFE_PP0P_  (.RESET_B(net86),
    .D(_0092_),
    .Q(\u_timer.shutdown_selection_count[13] ),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[13]$_SDFFE_PP0P__87  (.L_HI(net86));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[14]$_SDFFE_PP0P_  (.RESET_B(net87),
    .D(_0091_),
    .Q(\u_timer.shutdown_selection_count[14] ),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[14]$_SDFFE_PP0P__88  (.L_HI(net87));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[15]$_SDFFE_PP0P_  (.RESET_B(net88),
    .D(_0090_),
    .Q(\u_timer.shutdown_selection_count[15] ),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[15]$_SDFFE_PP0P__89  (.L_HI(net88));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[16]$_SDFFE_PP0P_  (.RESET_B(net89),
    .D(_0089_),
    .Q(\u_timer.shutdown_selection_count[16] ),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[16]$_SDFFE_PP0P__90  (.L_HI(net89));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[17]$_SDFFE_PP0P_  (.RESET_B(net90),
    .D(_0088_),
    .Q(\u_timer.shutdown_selection_count[17] ),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[17]$_SDFFE_PP0P__91  (.L_HI(net90));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[18]$_SDFFE_PP0P_  (.RESET_B(net91),
    .D(_0087_),
    .Q(\u_timer.shutdown_selection_count[18] ),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[18]$_SDFFE_PP0P__92  (.L_HI(net91));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[19]$_SDFFE_PP0P_  (.RESET_B(net92),
    .D(_0086_),
    .Q(\u_timer.shutdown_selection_count[19] ),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[19]$_SDFFE_PP0P__93  (.L_HI(net92));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[1]$_SDFFE_PP0P_  (.RESET_B(net93),
    .D(_0104_),
    .Q(\u_timer.shutdown_selection_count[1] ),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[1]$_SDFFE_PP0P__94  (.L_HI(net93));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[20]$_SDFFE_PP0P_  (.RESET_B(net94),
    .D(_0085_),
    .Q(\u_timer.shutdown_selection_count[20] ),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[20]$_SDFFE_PP0P__95  (.L_HI(net94));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[21]$_SDFFE_PP0P_  (.RESET_B(net95),
    .D(_0084_),
    .Q(\u_timer.shutdown_selection_count[21] ),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[21]$_SDFFE_PP0P__96  (.L_HI(net95));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[22]$_SDFFE_PP0P_  (.RESET_B(net96),
    .D(_0083_),
    .Q(\u_timer.shutdown_selection_count[22] ),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[22]$_SDFFE_PP0P__97  (.L_HI(net96));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[23]$_SDFFE_PP0P_  (.RESET_B(net97),
    .D(_0082_),
    .Q(\u_timer.shutdown_selection_count[23] ),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[23]$_SDFFE_PP0P__98  (.L_HI(net97));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[24]$_SDFFE_PP0P_  (.RESET_B(net98),
    .D(_0081_),
    .Q(\u_timer.shutdown_selection_count[24] ),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[24]$_SDFFE_PP0P__99  (.L_HI(net98));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[25]$_SDFFE_PP0P_  (.RESET_B(net99),
    .D(_0080_),
    .Q(\u_timer.shutdown_selection_count[25] ),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[25]$_SDFFE_PP0P__100  (.L_HI(net99));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[26]$_SDFFE_PP0P_  (.RESET_B(net100),
    .D(_0079_),
    .Q(\u_timer.shutdown_selection_count[26] ),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[26]$_SDFFE_PP0P__101  (.L_HI(net100));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[27]$_SDFFE_PP0P_  (.RESET_B(net101),
    .D(_0078_),
    .Q(\u_timer.shutdown_selection_count[27] ),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[27]$_SDFFE_PP0P__102  (.L_HI(net101));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[28]$_SDFFE_PP0P_  (.RESET_B(net102),
    .D(_0077_),
    .Q(\u_timer.shutdown_selection_count[28] ),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[28]$_SDFFE_PP0P__103  (.L_HI(net102));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[29]$_SDFFE_PP0P_  (.RESET_B(net103),
    .D(_0076_),
    .Q(\u_timer.shutdown_selection_count[29] ),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[29]$_SDFFE_PP0P__104  (.L_HI(net103));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[2]$_SDFFE_PP0P_  (.RESET_B(net104),
    .D(_0103_),
    .Q(\u_timer.shutdown_selection_count[2] ),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[2]$_SDFFE_PP0P__105  (.L_HI(net104));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[30]$_SDFFE_PP0P_  (.RESET_B(net105),
    .D(_0075_),
    .Q(\u_timer.shutdown_selection_count[30] ),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[30]$_SDFFE_PP0P__106  (.L_HI(net105));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[31]$_SDFFE_PP0P_  (.RESET_B(net106),
    .D(_0114_),
    .Q(\u_timer.shutdown_selection_count[31] ),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[31]$_SDFFE_PP0P__107  (.L_HI(net106));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[3]$_SDFFE_PP0P_  (.RESET_B(net107),
    .D(_0102_),
    .Q(\u_timer.shutdown_selection_count[3] ),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[3]$_SDFFE_PP0P__108  (.L_HI(net107));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[4]$_SDFFE_PP0P_  (.RESET_B(net108),
    .D(_0101_),
    .Q(\u_timer.shutdown_selection_count[4] ),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[4]$_SDFFE_PP0P__109  (.L_HI(net108));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[5]$_SDFFE_PP0P_  (.RESET_B(net109),
    .D(_0100_),
    .Q(\u_timer.shutdown_selection_count[5] ),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[5]$_SDFFE_PP0P__110  (.L_HI(net109));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[6]$_SDFFE_PP0P_  (.RESET_B(net110),
    .D(_0099_),
    .Q(\u_timer.shutdown_selection_count[6] ),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[6]$_SDFFE_PP0P__111  (.L_HI(net110));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[7]$_SDFFE_PP0P_  (.RESET_B(net111),
    .D(_0098_),
    .Q(\u_timer.shutdown_selection_count[7] ),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[7]$_SDFFE_PP0P__112  (.L_HI(net111));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[8]$_SDFFE_PP0P_  (.RESET_B(net112),
    .D(_0097_),
    .Q(\u_timer.shutdown_selection_count[8] ),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[8]$_SDFFE_PP0P__113  (.L_HI(net112));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_count[9]$_SDFFE_PP0P_  (.RESET_B(net113),
    .D(_0096_),
    .Q(\u_timer.shutdown_selection_count[9] ),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_count[9]$_SDFFE_PP0P__114  (.L_HI(net113));
 sg13g2_dfrbpq_1 \u_timer.shutdown_selection_timer_expired$_SDFF_PP0_  (.RESET_B(net114),
    .D(_0115_),
    .Q(shutdown_selection_timer_expired),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_selection_timer_expired$_SDFF_PP0__115  (.L_HI(net114));
 sg13g2_dfrbpq_1 \u_timer.shutdown_timer_expired$_SDFF_PP0_  (.RESET_B(net115),
    .D(_0113_),
    .Q(shutdown_timer_expired),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi \u_timer.shutdown_timer_expired$_SDFF_PP0__116  (.L_HI(net115));
endmodule
