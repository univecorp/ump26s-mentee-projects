module gridguard_top (clk,
    fault_event_o,
    reg_re,
    reg_we,
    rst_n,
    cmd_close,
    cmd_open,
    cmd_reset,
    current_i,
    reg_addr,
    reg_rdata,
    reg_wdata,
    status_o,
    trip_o);
 input clk;
 output fault_event_o;
 input reg_re;
 input reg_we;
 input rst_n;
 input [3:0] cmd_close;
 input [3:0] cmd_open;
 input [3:0] cmd_reset;
 input [47:0] current_i;
 input [5:0] reg_addr;
 output [15:0] reg_rdata;
 input [15:0] reg_wdata;
 output [7:0] status_o;
 output [3:0] trip_o;

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
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
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
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
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
 wire _0183_;
 wire _0184_;
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
 wire _0198_;
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
 wire _0213_;
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
 wire _0253_;
 wire _0254_;
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
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
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
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire net609;
 wire net555;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire net607;
 wire net556;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire net606;
 wire _0367_;
 wire net605;
 wire _0369_;
 wire net557;
 wire net604;
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
 wire net561;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire net560;
 wire net558;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire net603;
 wire net559;
 wire net617;
 wire net602;
 wire net598;
 wire _0406_;
 wire net599;
 wire _0408_;
 wire net597;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire net579;
 wire net569;
 wire net568;
 wire _0418_;
 wire net567;
 wire _0420_;
 wire net616;
 wire net608;
 wire net595;
 wire _0424_;
 wire _0425_;
 wire net566;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire net565;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire net564;
 wire _0439_;
 wire _0440_;
 wire net563;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire net562;
 wire net578;
 wire _0456_;
 wire net570;
 wire _0458_;
 wire net577;
 wire net572;
 wire _0461_;
 wire net571;
 wire _0463_;
 wire net576;
 wire _0465_;
 wire net575;
 wire _0467_;
 wire net574;
 wire _0469_;
 wire net573;
 wire _0472_;
 wire net584;
 wire net581;
 wire net580;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire net583;
 wire net582;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0492_;
 wire net592;
 wire net585;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire net591;
 wire net586;
 wire _0504_;
 wire net590;
 wire _0506_;
 wire net589;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire net588;
 wire _0513_;
 wire net587;
 wire _0516_;
 wire _0517_;
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
 wire _0536_;
 wire _0537_;
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
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire net593;
 wire _0559_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0576_;
 wire _0579_;
 wire _0581_;
 wire _0582_;
 wire _0585_;
 wire _0586_;
 wire _0588_;
 wire clknet_3_6__leaf_clk;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire net596;
 wire net594;
 wire _0596_;
 wire net548;
 wire net546;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire net547;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire clknet_3_5__leaf_clk;
 wire _0610_;
 wire net601;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0622_;
 wire _0623_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0641_;
 wire _0642_;
 wire net600;
 wire net544;
 wire net543;
 wire _0646_;
 wire net549;
 wire net541;
 wire _0649_;
 wire _0650_;
 wire clknet_leaf_8_clk;
 wire clknet_leaf_7_clk;
 wire _0653_;
 wire clknet_leaf_6_clk;
 wire _0655_;
 wire _0656_;
 wire _0657_;
 wire _0658_;
 wire _0659_;
 wire _0660_;
 wire _0661_;
 wire _0662_;
 wire _0663_;
 wire _0664_;
 wire _0665_;
 wire _0666_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0670_;
 wire _0671_;
 wire net545;
 wire net542;
 wire _0674_;
 wire _0675_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0679_;
 wire net538;
 wire net537;
 wire _0682_;
 wire _0683_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire _0692_;
 wire _0693_;
 wire _0694_;
 wire _0695_;
 wire _0696_;
 wire _0697_;
 wire _0698_;
 wire _0699_;
 wire _0700_;
 wire _0701_;
 wire _0702_;
 wire _0703_;
 wire _0704_;
 wire _0705_;
 wire _0706_;
 wire _0707_;
 wire _0708_;
 wire _0709_;
 wire _0710_;
 wire net539;
 wire net550;
 wire _0713_;
 wire net533;
 wire clknet_3_4__leaf_clk;
 wire net540;
 wire _0717_;
 wire _0718_;
 wire _0719_;
 wire net535;
 wire net532;
 wire net534;
 wire net536;
 wire _0724_;
 wire _0725_;
 wire net530;
 wire _0727_;
 wire _0728_;
 wire _0729_;
 wire _0730_;
 wire net529;
 wire _0732_;
 wire _0733_;
 wire _0734_;
 wire _0735_;
 wire _0736_;
 wire net526;
 wire _0738_;
 wire _0739_;
 wire _0740_;
 wire _0741_;
 wire _0742_;
 wire _0743_;
 wire _0744_;
 wire _0745_;
 wire _0746_;
 wire _0747_;
 wire net531;
 wire _0749_;
 wire _0750_;
 wire _0751_;
 wire net525;
 wire _0753_;
 wire _0754_;
 wire _0755_;
 wire _0756_;
 wire _0757_;
 wire _0758_;
 wire _0759_;
 wire _0760_;
 wire net523;
 wire _0762_;
 wire _0763_;
 wire _0764_;
 wire _0765_;
 wire _0766_;
 wire _0767_;
 wire _0768_;
 wire _0769_;
 wire _0770_;
 wire _0771_;
 wire net524;
 wire _0773_;
 wire _0774_;
 wire _0775_;
 wire _0776_;
 wire _0777_;
 wire _0778_;
 wire _0779_;
 wire _0780_;
 wire _0781_;
 wire net522;
 wire _0783_;
 wire clknet_3_2__leaf_clk;
 wire net521;
 wire net520;
 wire clknet_leaf_12_clk;
 wire _0788_;
 wire net519;
 wire _0790_;
 wire net518;
 wire _0792_;
 wire _0793_;
 wire _0794_;
 wire net517;
 wire _0796_;
 wire net516;
 wire clknet_leaf_11_clk;
 wire _0799_;
 wire clknet_leaf_10_clk;
 wire _0801_;
 wire _0802_;
 wire clknet_leaf_9_clk;
 wire _0804_;
 wire _0805_;
 wire _0806_;
 wire net514;
 wire _0808_;
 wire _0809_;
 wire _0810_;
 wire _0811_;
 wire _0812_;
 wire _0813_;
 wire _0814_;
 wire clknet_leaf_13_clk;
 wire _0816_;
 wire _0817_;
 wire _0818_;
 wire _0819_;
 wire _0820_;
 wire _0821_;
 wire _0822_;
 wire _0823_;
 wire _0824_;
 wire _0825_;
 wire _0826_;
 wire _0827_;
 wire _0828_;
 wire _0829_;
 wire _0830_;
 wire _0831_;
 wire net513;
 wire net512;
 wire _0834_;
 wire _0835_;
 wire _0836_;
 wire _0837_;
 wire net515;
 wire net511;
 wire net510;
 wire _0841_;
 wire clknet_3_1__leaf_clk;
 wire _0843_;
 wire net509;
 wire _0845_;
 wire _0846_;
 wire _0847_;
 wire _0848_;
 wire net508;
 wire clknet_leaf_25_clk;
 wire _0851_;
 wire _0852_;
 wire _0853_;
 wire _0854_;
 wire _0855_;
 wire _0856_;
 wire _0857_;
 wire clknet_leaf_14_clk;
 wire net507;
 wire net506;
 wire net505;
 wire net502;
 wire _0863_;
 wire net504;
 wire net501;
 wire _0866_;
 wire clknet_leaf_17_clk;
 wire _0868_;
 wire _0869_;
 wire _0870_;
 wire _0871_;
 wire _0872_;
 wire clknet_leaf_16_clk;
 wire net500;
 wire _0875_;
 wire _0876_;
 wire clknet_leaf_23_clk;
 wire _0878_;
 wire clknet_leaf_15_clk;
 wire _0880_;
 wire _0881_;
 wire _0882_;
 wire _0883_;
 wire net503;
 wire _0885_;
 wire net499;
 wire net528;
 wire _0888_;
 wire _0889_;
 wire net495;
 wire clknet_leaf_20_clk;
 wire net496;
 wire _0893_;
 wire _0894_;
 wire _0895_;
 wire _0896_;
 wire net493;
 wire _0898_;
 wire _0899_;
 wire _0900_;
 wire _0901_;
 wire clknet_leaf_19_clk;
 wire _0903_;
 wire _0904_;
 wire clknet_leaf_22_clk;
 wire net527;
 wire _0907_;
 wire _0908_;
 wire _0909_;
 wire _0910_;
 wire _0911_;
 wire _0912_;
 wire _0913_;
 wire _0914_;
 wire _0915_;
 wire _0916_;
 wire _0917_;
 wire _0918_;
 wire _0919_;
 wire _0920_;
 wire _0921_;
 wire clknet_leaf_24_clk;
 wire _0923_;
 wire _0924_;
 wire _0925_;
 wire _0926_;
 wire clknet_leaf_21_clk;
 wire _0928_;
 wire clknet_leaf_18_clk;
 wire _0930_;
 wire _0931_;
 wire _0932_;
 wire _0933_;
 wire _0934_;
 wire _0935_;
 wire _0936_;
 wire _0937_;
 wire _0938_;
 wire _0939_;
 wire _0940_;
 wire _0941_;
 wire _0942_;
 wire _0943_;
 wire net551;
 wire _0945_;
 wire _0946_;
 wire _0947_;
 wire _0948_;
 wire _0949_;
 wire _0950_;
 wire _0951_;
 wire _0952_;
 wire _0953_;
 wire _0954_;
 wire _0955_;
 wire _0956_;
 wire _0957_;
 wire _0958_;
 wire _0959_;
 wire _0960_;
 wire _0961_;
 wire _0962_;
 wire _0963_;
 wire _0964_;
 wire _0965_;
 wire _0966_;
 wire _0967_;
 wire net498;
 wire _0969_;
 wire _0970_;
 wire _0971_;
 wire _0972_;
 wire _0973_;
 wire _0974_;
 wire _0975_;
 wire _0976_;
 wire _0977_;
 wire _0978_;
 wire net497;
 wire _0980_;
 wire net494;
 wire _0982_;
 wire _0983_;
 wire _0984_;
 wire _0985_;
 wire _0986_;
 wire _0987_;
 wire _0988_;
 wire _0989_;
 wire _0990_;
 wire _0991_;
 wire _0992_;
 wire _0993_;
 wire _0994_;
 wire _0995_;
 wire _0996_;
 wire net492;
 wire _0998_;
 wire _0999_;
 wire net487;
 wire _1001_;
 wire _1002_;
 wire _1003_;
 wire _1004_;
 wire _1005_;
 wire _1006_;
 wire _1007_;
 wire _1008_;
 wire _1009_;
 wire _1010_;
 wire _1011_;
 wire _1012_;
 wire _1013_;
 wire _1014_;
 wire _1015_;
 wire _1016_;
 wire _1017_;
 wire _1018_;
 wire _1019_;
 wire _1020_;
 wire _1021_;
 wire net491;
 wire _1023_;
 wire _1024_;
 wire _1025_;
 wire _1026_;
 wire _1027_;
 wire net490;
 wire _1029_;
 wire _1030_;
 wire _1031_;
 wire _1032_;
 wire _1033_;
 wire _1034_;
 wire _1035_;
 wire _1036_;
 wire net486;
 wire net489;
 wire _1039_;
 wire _1040_;
 wire _1041_;
 wire _1042_;
 wire net488;
 wire _1044_;
 wire _1045_;
 wire _1046_;
 wire _1047_;
 wire _1048_;
 wire _1049_;
 wire _1050_;
 wire _1051_;
 wire _1052_;
 wire _1053_;
 wire _1054_;
 wire net480;
 wire _1056_;
 wire _1057_;
 wire _1058_;
 wire net479;
 wire _1060_;
 wire _1061_;
 wire _1062_;
 wire _1063_;
 wire _1064_;
 wire _1065_;
 wire _1066_;
 wire _1067_;
 wire _1068_;
 wire _1069_;
 wire _1070_;
 wire _1071_;
 wire _1072_;
 wire _1073_;
 wire _1074_;
 wire _1075_;
 wire _1076_;
 wire _1077_;
 wire _1078_;
 wire _1079_;
 wire _1080_;
 wire _1081_;
 wire _1082_;
 wire net484;
 wire _1084_;
 wire _1085_;
 wire _1086_;
 wire _1087_;
 wire _1088_;
 wire _1089_;
 wire _1090_;
 wire _1091_;
 wire _1092_;
 wire _1093_;
 wire _1094_;
 wire _1095_;
 wire _1096_;
 wire _1097_;
 wire _1098_;
 wire _1099_;
 wire _1100_;
 wire net476;
 wire net475;
 wire _1103_;
 wire _1104_;
 wire net477;
 wire _1106_;
 wire _1107_;
 wire _1108_;
 wire _1109_;
 wire _1110_;
 wire _1111_;
 wire _1112_;
 wire _1113_;
 wire _1114_;
 wire _1115_;
 wire _1116_;
 wire _1117_;
 wire _1118_;
 wire _1119_;
 wire _1120_;
 wire _1121_;
 wire _1122_;
 wire _1123_;
 wire _1124_;
 wire _1125_;
 wire _1126_;
 wire _1127_;
 wire _1128_;
 wire _1129_;
 wire _1130_;
 wire _1131_;
 wire _1132_;
 wire _1133_;
 wire _1134_;
 wire _1135_;
 wire _1136_;
 wire _1137_;
 wire _1138_;
 wire _1139_;
 wire _1140_;
 wire _1141_;
 wire _1142_;
 wire _1143_;
 wire _1144_;
 wire _1145_;
 wire _1146_;
 wire _1147_;
 wire _1148_;
 wire _1149_;
 wire net474;
 wire _1151_;
 wire _1154_;
 wire _1155_;
 wire _1156_;
 wire _1157_;
 wire _1158_;
 wire _1159_;
 wire _1160_;
 wire _1161_;
 wire _1162_;
 wire _1163_;
 wire _1164_;
 wire _1165_;
 wire _1166_;
 wire _1168_;
 wire _1169_;
 wire _1170_;
 wire _1171_;
 wire _1172_;
 wire _1173_;
 wire _1175_;
 wire _1176_;
 wire _1177_;
 wire _1178_;
 wire _1179_;
 wire _1180_;
 wire _1181_;
 wire _1182_;
 wire _1183_;
 wire _1184_;
 wire _1185_;
 wire _1186_;
 wire _1187_;
 wire _1188_;
 wire _1189_;
 wire _1190_;
 wire _1191_;
 wire _1192_;
 wire _1193_;
 wire _1194_;
 wire _1195_;
 wire _1196_;
 wire _1197_;
 wire _1198_;
 wire _1199_;
 wire _1200_;
 wire _1201_;
 wire _1202_;
 wire _1203_;
 wire _1204_;
 wire _1205_;
 wire _1206_;
 wire _1207_;
 wire _1208_;
 wire _1209_;
 wire _1210_;
 wire _1211_;
 wire _1212_;
 wire _1213_;
 wire _1214_;
 wire _1215_;
 wire _1216_;
 wire _1217_;
 wire _1218_;
 wire _1219_;
 wire _1220_;
 wire _1221_;
 wire _1222_;
 wire _1223_;
 wire _1224_;
 wire _1225_;
 wire _1226_;
 wire _1227_;
 wire _1228_;
 wire _1229_;
 wire _1230_;
 wire _1231_;
 wire _1232_;
 wire _1233_;
 wire _1234_;
 wire _1235_;
 wire _1236_;
 wire _1239_;
 wire _1240_;
 wire _1241_;
 wire _1242_;
 wire _1243_;
 wire _1244_;
 wire _1245_;
 wire _1246_;
 wire _1247_;
 wire _1249_;
 wire _1250_;
 wire _1252_;
 wire _1254_;
 wire _1255_;
 wire _1256_;
 wire _1258_;
 wire _1259_;
 wire _1260_;
 wire _1261_;
 wire _1262_;
 wire _1263_;
 wire _1264_;
 wire _1266_;
 wire _1267_;
 wire _1268_;
 wire _1269_;
 wire _1270_;
 wire _1272_;
 wire _1274_;
 wire _1275_;
 wire _1277_;
 wire _1278_;
 wire _1279_;
 wire _1281_;
 wire _1282_;
 wire _1283_;
 wire _1285_;
 wire _1286_;
 wire _1287_;
 wire _1288_;
 wire _1290_;
 wire _1291_;
 wire _1292_;
 wire _1294_;
 wire _1295_;
 wire _1296_;
 wire _1297_;
 wire _1298_;
 wire _1299_;
 wire _1300_;
 wire _1301_;
 wire _1302_;
 wire _1303_;
 wire _1304_;
 wire _1305_;
 wire _1306_;
 wire _1307_;
 wire _1308_;
 wire _1309_;
 wire _1310_;
 wire _1311_;
 wire _1312_;
 wire _1313_;
 wire _1314_;
 wire _1315_;
 wire _1316_;
 wire _1317_;
 wire _1318_;
 wire _1319_;
 wire _1321_;
 wire _1323_;
 wire _1325_;
 wire _1326_;
 wire _1327_;
 wire _1329_;
 wire _1330_;
 wire _1331_;
 wire _1332_;
 wire _1333_;
 wire _1335_;
 wire _1337_;
 wire _1338_;
 wire _1339_;
 wire _1340_;
 wire _1343_;
 wire _1344_;
 wire _1345_;
 wire _1346_;
 wire _1347_;
 wire _1349_;
 wire _1350_;
 wire _1352_;
 wire _1353_;
 wire _1354_;
 wire _1355_;
 wire _1356_;
 wire _1357_;
 wire _1358_;
 wire _1359_;
 wire _1361_;
 wire _1362_;
 wire _1363_;
 wire _1364_;
 wire _1365_;
 wire _1366_;
 wire _1367_;
 wire _1368_;
 wire _1369_;
 wire _1370_;
 wire _1371_;
 wire _1372_;
 wire _1373_;
 wire _1374_;
 wire _1375_;
 wire _1376_;
 wire _1377_;
 wire _1378_;
 wire _1379_;
 wire _1380_;
 wire _1381_;
 wire _1382_;
 wire _1383_;
 wire _1384_;
 wire _1385_;
 wire _1386_;
 wire _1387_;
 wire _1388_;
 wire _1389_;
 wire _1390_;
 wire _1391_;
 wire _1392_;
 wire _1393_;
 wire _1394_;
 wire _1395_;
 wire _1396_;
 wire _1397_;
 wire _1398_;
 wire _1399_;
 wire _1400_;
 wire _1403_;
 wire _1404_;
 wire _1405_;
 wire _1406_;
 wire _1407_;
 wire _1408_;
 wire _1409_;
 wire _1410_;
 wire _1411_;
 wire _1412_;
 wire _1413_;
 wire _1414_;
 wire _1415_;
 wire _1417_;
 wire _1419_;
 wire _1420_;
 wire _1421_;
 wire _1422_;
 wire _1423_;
 wire _1424_;
 wire _1425_;
 wire _1426_;
 wire _1427_;
 wire _1428_;
 wire _1429_;
 wire _1430_;
 wire _1431_;
 wire _1432_;
 wire _1433_;
 wire _1434_;
 wire _1435_;
 wire _1436_;
 wire _1437_;
 wire _1438_;
 wire _1439_;
 wire _1441_;
 wire _1442_;
 wire _1444_;
 wire _1445_;
 wire _1446_;
 wire _1448_;
 wire _1449_;
 wire _1450_;
 wire _1452_;
 wire _1454_;
 wire _1455_;
 wire _1456_;
 wire _1457_;
 wire _1458_;
 wire _1459_;
 wire _1460_;
 wire _1461_;
 wire _1462_;
 wire _1463_;
 wire _1464_;
 wire _1465_;
 wire _1466_;
 wire _1467_;
 wire _1468_;
 wire _1469_;
 wire _1471_;
 wire _1472_;
 wire _1473_;
 wire _1474_;
 wire _1475_;
 wire _1476_;
 wire _1477_;
 wire _1478_;
 wire _1479_;
 wire _1481_;
 wire _1482_;
 wire _1483_;
 wire _1484_;
 wire _1485_;
 wire _1486_;
 wire _1487_;
 wire _1488_;
 wire _1489_;
 wire _1490_;
 wire _1491_;
 wire _1494_;
 wire _1495_;
 wire _1496_;
 wire _1497_;
 wire _1498_;
 wire _1499_;
 wire _1501_;
 wire _1502_;
 wire _1504_;
 wire _1505_;
 wire _1506_;
 wire _1507_;
 wire _1508_;
 wire _1510_;
 wire _1512_;
 wire _1513_;
 wire _1514_;
 wire _1515_;
 wire _1516_;
 wire _1517_;
 wire _1519_;
 wire _1521_;
 wire _1522_;
 wire _1523_;
 wire _1524_;
 wire _1525_;
 wire _1526_;
 wire _1527_;
 wire _1528_;
 wire _1529_;
 wire _1530_;
 wire _1531_;
 wire _1532_;
 wire _1534_;
 wire _1535_;
 wire _1536_;
 wire _1537_;
 wire _1538_;
 wire _1539_;
 wire _1540_;
 wire _1541_;
 wire _1542_;
 wire _1543_;
 wire _1544_;
 wire _1545_;
 wire _1546_;
 wire _1547_;
 wire _1548_;
 wire _1550_;
 wire _1551_;
 wire _1552_;
 wire _1553_;
 wire _1554_;
 wire _1555_;
 wire _1556_;
 wire _1557_;
 wire _1558_;
 wire _1559_;
 wire _1560_;
 wire _1561_;
 wire _1562_;
 wire _1563_;
 wire _1564_;
 wire _1565_;
 wire _1566_;
 wire _1567_;
 wire _1568_;
 wire _1569_;
 wire _1570_;
 wire _1571_;
 wire _1572_;
 wire _1573_;
 wire _1574_;
 wire _1575_;
 wire _1576_;
 wire _1577_;
 wire _1578_;
 wire _1579_;
 wire _1580_;
 wire _1581_;
 wire _1582_;
 wire _1583_;
 wire _1586_;
 wire _1587_;
 wire _1588_;
 wire _1589_;
 wire _1590_;
 wire _1591_;
 wire _1594_;
 wire _1595_;
 wire _1596_;
 wire _1597_;
 wire _1598_;
 wire _1599_;
 wire _1600_;
 wire _1601_;
 wire _1602_;
 wire _1604_;
 wire _1605_;
 wire _1606_;
 wire _1607_;
 wire _1608_;
 wire _1609_;
 wire _1610_;
 wire _1611_;
 wire _1612_;
 wire _1613_;
 wire _1614_;
 wire _1615_;
 wire _1617_;
 wire _1618_;
 wire _1619_;
 wire _1620_;
 wire _1621_;
 wire _1622_;
 wire _1623_;
 wire _1624_;
 wire _1625_;
 wire _1626_;
 wire _1627_;
 wire _1628_;
 wire _1629_;
 wire _1630_;
 wire _1631_;
 wire _1632_;
 wire _1633_;
 wire _1634_;
 wire _1635_;
 wire _1636_;
 wire _1637_;
 wire _1638_;
 wire _1639_;
 wire _1640_;
 wire _1641_;
 wire _1642_;
 wire _1643_;
 wire _1644_;
 wire _1647_;
 wire _1648_;
 wire _1649_;
 wire _1650_;
 wire _1651_;
 wire _1652_;
 wire _1653_;
 wire _1654_;
 wire _1655_;
 wire _1656_;
 wire _1657_;
 wire _1658_;
 wire _1659_;
 wire _1660_;
 wire _1661_;
 wire _1662_;
 wire _1663_;
 wire _1664_;
 wire _1665_;
 wire _1666_;
 wire _1667_;
 wire _1668_;
 wire _1669_;
 wire _1670_;
 wire _1671_;
 wire _1672_;
 wire _1673_;
 wire _1674_;
 wire _1675_;
 wire _1676_;
 wire _1677_;
 wire _1678_;
 wire _1679_;
 wire _1680_;
 wire _1681_;
 wire _1682_;
 wire _1683_;
 wire _1684_;
 wire _1685_;
 wire _1686_;
 wire _1687_;
 wire _1688_;
 wire _1689_;
 wire _1690_;
 wire _1691_;
 wire _1692_;
 wire _1697_;
 wire _1699_;
 wire _1701_;
 wire _1703_;
 wire _1704_;
 wire _1705_;
 wire _1707_;
 wire _1708_;
 wire _1709_;
 wire _1710_;
 wire _1711_;
 wire _1712_;
 wire _1713_;
 wire _1715_;
 wire _1716_;
 wire _1717_;
 wire _1718_;
 wire _1719_;
 wire _1720_;
 wire _1721_;
 wire _1722_;
 wire _1723_;
 wire _1724_;
 wire _1725_;
 wire _1727_;
 wire _1728_;
 wire _1731_;
 wire _1732_;
 wire _1733_;
 wire _1735_;
 wire _1736_;
 wire _1737_;
 wire _1739_;
 wire _1741_;
 wire _1742_;
 wire _1743_;
 wire _1745_;
 wire _1746_;
 wire _1749_;
 wire _1750_;
 wire _1751_;
 wire _1752_;
 wire _1753_;
 wire _1756_;
 wire _1757_;
 wire _1760_;
 wire _1762_;
 wire _1763_;
 wire _1764_;
 wire _1767_;
 wire _1768_;
 wire _1769_;
 wire _1770_;
 wire _1771_;
 wire _1772_;
 wire _1773_;
 wire _1774_;
 wire _1775_;
 wire _1776_;
 wire _1777_;
 wire _1778_;
 wire _1779_;
 wire _1780_;
 wire _1781_;
 wire _1782_;
 wire _1783_;
 wire _1784_;
 wire _1785_;
 wire _1786_;
 wire _1787_;
 wire _1788_;
 wire _1789_;
 wire _1790_;
 wire _1794_;
 wire _1796_;
 wire _1797_;
 wire _1802_;
 wire _1803_;
 wire _1805_;
 wire _1806_;
 wire _1807_;
 wire _1808_;
 wire _1810_;
 wire _1811_;
 wire _1812_;
 wire _1813_;
 wire _1815_;
 wire _1816_;
 wire _1817_;
 wire _1818_;
 wire _1819_;
 wire _1820_;
 wire _1824_;
 wire _1825_;
 wire _1826_;
 wire _1827_;
 wire _1829_;
 wire _1830_;
 wire _1831_;
 wire _1832_;
 wire _1833_;
 wire _1835_;
 wire _1836_;
 wire _1838_;
 wire _1839_;
 wire _1840_;
 wire _1841_;
 wire _1842_;
 wire _1843_;
 wire _1844_;
 wire _1845_;
 wire _1847_;
 wire _1849_;
 wire _1850_;
 wire _1851_;
 wire _1853_;
 wire _1855_;
 wire _1856_;
 wire _1857_;
 wire _1858_;
 wire _1859_;
 wire _1860_;
 wire _1861_;
 wire _1862_;
 wire _1863_;
 wire _1864_;
 wire _1865_;
 wire _1868_;
 wire _1870_;
 wire _1871_;
 wire _1872_;
 wire _1873_;
 wire _1875_;
 wire _1877_;
 wire _1879_;
 wire _1880_;
 wire _1881_;
 wire _1882_;
 wire _1883_;
 wire _1884_;
 wire _1885_;
 wire _1886_;
 wire _1887_;
 wire _1888_;
 wire _1889_;
 wire _1890_;
 wire _1891_;
 wire _1892_;
 wire _1893_;
 wire _1894_;
 wire _1895_;
 wire _1896_;
 wire _1897_;
 wire net471;
 wire _1899_;
 wire net470;
 wire _1901_;
 wire net552;
 wire net485;
 wire _1904_;
 wire net553;
 wire clknet_leaf_3_clk;
 wire _1907_;
 wire clknet_leaf_2_clk;
 wire clknet_leaf_1_clk;
 wire _1910_;
 wire _1911_;
 wire _1912_;
 wire _1913_;
 wire clknet_leaf_0_clk;
 wire _1915_;
 wire _1916_;
 wire net554;
 wire _1918_;
 wire _1919_;
 wire _1920_;
 wire _1921_;
 wire _1922_;
 wire _1923_;
 wire _1924_;
 wire _1925_;
 wire _1926_;
 wire _1927_;
 wire _1928_;
 wire clknet_leaf_4_clk;
 wire net624;
 wire _1931_;
 wire _1932_;
 wire _1933_;
 wire _1934_;
 wire net623;
 wire _1936_;
 wire net622;
 wire net620;
 wire _1939_;
 wire net619;
 wire _1941_;
 wire _1942_;
 wire _1943_;
 wire _1944_;
 wire clknet_leaf_5_clk;
 wire net618;
 wire _1947_;
 wire _1948_;
 wire _1949_;
 wire _1950_;
 wire _1951_;
 wire _1952_;
 wire net615;
 wire _1954_;
 wire _1955_;
 wire _1956_;
 wire _1957_;
 wire _1958_;
 wire _1959_;
 wire _1960_;
 wire _1961_;
 wire _1962_;
 wire _1963_;
 wire _1964_;
 wire _1965_;
 wire _1966_;
 wire _1967_;
 wire net614;
 wire net612;
 wire _1970_;
 wire net621;
 wire _1972_;
 wire _1973_;
 wire _1974_;
 wire _1975_;
 wire _1976_;
 wire _1977_;
 wire net613;
 wire _1979_;
 wire _1980_;
 wire net610;
 wire net611;
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
 wire \delay_all[0] ;
 wire \delay_all[10] ;
 wire \delay_all[11] ;
 wire \delay_all[12] ;
 wire \delay_all[13] ;
 wire \delay_all[14] ;
 wire \delay_all[15] ;
 wire \delay_all[16] ;
 wire \delay_all[17] ;
 wire \delay_all[19] ;
 wire \delay_all[1] ;
 wire \delay_all[20] ;
 wire \delay_all[23] ;
 wire \delay_all[24] ;
 wire \delay_all[25] ;
 wire \delay_all[26] ;
 wire \delay_all[27] ;
 wire \delay_all[28] ;
 wire \delay_all[29] ;
 wire \delay_all[30] ;
 wire \delay_all[31] ;
 wire \delay_all[32] ;
 wire \delay_all[33] ;
 wire \delay_all[35] ;
 wire \delay_all[36] ;
 wire \delay_all[39] ;
 wire \delay_all[3] ;
 wire \delay_all[40] ;
 wire \delay_all[41] ;
 wire \delay_all[42] ;
 wire \delay_all[43] ;
 wire \delay_all[44] ;
 wire \delay_all[45] ;
 wire \delay_all[46] ;
 wire \delay_all[47] ;
 wire \delay_all[48] ;
 wire \delay_all[49] ;
 wire \delay_all[4] ;
 wire \delay_all[51] ;
 wire \delay_all[52] ;
 wire \delay_all[55] ;
 wire \delay_all[56] ;
 wire \delay_all[57] ;
 wire \delay_all[58] ;
 wire \delay_all[59] ;
 wire \delay_all[60] ;
 wire \delay_all[61] ;
 wire \delay_all[62] ;
 wire \delay_all[63] ;
 wire \delay_all[7] ;
 wire \delay_all[8] ;
 wire \delay_all[9] ;
 wire net86;
 wire \fltcnt_all[0] ;
 wire \fltcnt_all[10] ;
 wire \fltcnt_all[11] ;
 wire \fltcnt_all[12] ;
 wire \fltcnt_all[13] ;
 wire \fltcnt_all[14] ;
 wire \fltcnt_all[15] ;
 wire \fltcnt_all[16] ;
 wire \fltcnt_all[17] ;
 wire \fltcnt_all[18] ;
 wire \fltcnt_all[19] ;
 wire \fltcnt_all[1] ;
 wire \fltcnt_all[20] ;
 wire \fltcnt_all[21] ;
 wire \fltcnt_all[22] ;
 wire \fltcnt_all[23] ;
 wire \fltcnt_all[24] ;
 wire \fltcnt_all[25] ;
 wire \fltcnt_all[26] ;
 wire \fltcnt_all[27] ;
 wire \fltcnt_all[28] ;
 wire \fltcnt_all[29] ;
 wire \fltcnt_all[2] ;
 wire \fltcnt_all[30] ;
 wire \fltcnt_all[31] ;
 wire \fltcnt_all[3] ;
 wire \fltcnt_all[4] ;
 wire \fltcnt_all[5] ;
 wire \fltcnt_all[6] ;
 wire \fltcnt_all[7] ;
 wire \fltcnt_all[8] ;
 wire \fltcnt_all[9] ;
 wire \fltcur_all[0] ;
 wire \fltcur_all[10] ;
 wire \fltcur_all[11] ;
 wire \fltcur_all[12] ;
 wire \fltcur_all[13] ;
 wire \fltcur_all[14] ;
 wire \fltcur_all[15] ;
 wire \fltcur_all[16] ;
 wire \fltcur_all[17] ;
 wire \fltcur_all[18] ;
 wire \fltcur_all[19] ;
 wire \fltcur_all[1] ;
 wire \fltcur_all[20] ;
 wire \fltcur_all[21] ;
 wire \fltcur_all[22] ;
 wire \fltcur_all[23] ;
 wire \fltcur_all[24] ;
 wire \fltcur_all[25] ;
 wire \fltcur_all[26] ;
 wire \fltcur_all[27] ;
 wire \fltcur_all[28] ;
 wire \fltcur_all[29] ;
 wire \fltcur_all[2] ;
 wire \fltcur_all[30] ;
 wire \fltcur_all[31] ;
 wire \fltcur_all[32] ;
 wire \fltcur_all[33] ;
 wire \fltcur_all[34] ;
 wire \fltcur_all[35] ;
 wire \fltcur_all[36] ;
 wire \fltcur_all[37] ;
 wire \fltcur_all[38] ;
 wire \fltcur_all[39] ;
 wire \fltcur_all[3] ;
 wire \fltcur_all[40] ;
 wire \fltcur_all[41] ;
 wire \fltcur_all[42] ;
 wire \fltcur_all[43] ;
 wire \fltcur_all[44] ;
 wire \fltcur_all[45] ;
 wire \fltcur_all[46] ;
 wire \fltcur_all[47] ;
 wire \fltcur_all[4] ;
 wire \fltcur_all[5] ;
 wire \fltcur_all[6] ;
 wire \fltcur_all[7] ;
 wire \fltcur_all[8] ;
 wire \fltcur_all[9] ;
 wire \g_feeder[0].streak[0] ;
 wire \g_feeder[0].streak[1] ;
 wire \g_feeder[0].threshold[0] ;
 wire \g_feeder[0].threshold[11] ;
 wire \g_feeder[0].threshold[1] ;
 wire \g_feeder[0].threshold[2] ;
 wire \g_feeder[0].threshold[3] ;
 wire \g_feeder[0].threshold[5] ;
 wire \g_feeder[0].trip_timer[0] ;
 wire \g_feeder[0].trip_timer[10] ;
 wire \g_feeder[0].trip_timer[11] ;
 wire \g_feeder[0].trip_timer[12] ;
 wire \g_feeder[0].trip_timer[13] ;
 wire \g_feeder[0].trip_timer[14] ;
 wire \g_feeder[0].trip_timer[15] ;
 wire \g_feeder[0].trip_timer[1] ;
 wire \g_feeder[0].trip_timer[2] ;
 wire \g_feeder[0].trip_timer[3] ;
 wire \g_feeder[0].trip_timer[4] ;
 wire \g_feeder[0].trip_timer[5] ;
 wire \g_feeder[0].trip_timer[6] ;
 wire \g_feeder[0].trip_timer[7] ;
 wire \g_feeder[0].trip_timer[8] ;
 wire \g_feeder[0].trip_timer[9] ;
 wire \g_feeder[1].streak[0] ;
 wire \g_feeder[1].streak[1] ;
 wire \g_feeder[1].threshold[0] ;
 wire \g_feeder[1].threshold[11] ;
 wire \g_feeder[1].threshold[1] ;
 wire \g_feeder[1].threshold[2] ;
 wire \g_feeder[1].threshold[3] ;
 wire \g_feeder[1].threshold[5] ;
 wire \g_feeder[1].trip_timer[0] ;
 wire \g_feeder[1].trip_timer[10] ;
 wire \g_feeder[1].trip_timer[11] ;
 wire \g_feeder[1].trip_timer[12] ;
 wire \g_feeder[1].trip_timer[13] ;
 wire \g_feeder[1].trip_timer[14] ;
 wire \g_feeder[1].trip_timer[15] ;
 wire \g_feeder[1].trip_timer[1] ;
 wire \g_feeder[1].trip_timer[2] ;
 wire \g_feeder[1].trip_timer[3] ;
 wire \g_feeder[1].trip_timer[4] ;
 wire \g_feeder[1].trip_timer[5] ;
 wire \g_feeder[1].trip_timer[6] ;
 wire \g_feeder[1].trip_timer[7] ;
 wire \g_feeder[1].trip_timer[8] ;
 wire \g_feeder[1].trip_timer[9] ;
 wire \g_feeder[2].streak[0] ;
 wire \g_feeder[2].streak[1] ;
 wire \g_feeder[2].threshold[0] ;
 wire \g_feeder[2].threshold[11] ;
 wire \g_feeder[2].threshold[1] ;
 wire \g_feeder[2].threshold[2] ;
 wire \g_feeder[2].threshold[3] ;
 wire \g_feeder[2].threshold[5] ;
 wire \g_feeder[2].trip_timer[0] ;
 wire \g_feeder[2].trip_timer[10] ;
 wire \g_feeder[2].trip_timer[11] ;
 wire \g_feeder[2].trip_timer[12] ;
 wire \g_feeder[2].trip_timer[13] ;
 wire \g_feeder[2].trip_timer[14] ;
 wire \g_feeder[2].trip_timer[15] ;
 wire \g_feeder[2].trip_timer[1] ;
 wire \g_feeder[2].trip_timer[2] ;
 wire \g_feeder[2].trip_timer[3] ;
 wire \g_feeder[2].trip_timer[4] ;
 wire \g_feeder[2].trip_timer[5] ;
 wire \g_feeder[2].trip_timer[6] ;
 wire \g_feeder[2].trip_timer[7] ;
 wire \g_feeder[2].trip_timer[8] ;
 wire \g_feeder[2].trip_timer[9] ;
 wire \g_feeder[3].streak[0] ;
 wire \g_feeder[3].streak[1] ;
 wire \g_feeder[3].threshold[0] ;
 wire \g_feeder[3].threshold[11] ;
 wire \g_feeder[3].threshold[1] ;
 wire \g_feeder[3].threshold[2] ;
 wire \g_feeder[3].threshold[3] ;
 wire \g_feeder[3].threshold[5] ;
 wire \g_feeder[3].trip_timer[0] ;
 wire \g_feeder[3].trip_timer[10] ;
 wire \g_feeder[3].trip_timer[11] ;
 wire \g_feeder[3].trip_timer[12] ;
 wire \g_feeder[3].trip_timer[13] ;
 wire \g_feeder[3].trip_timer[14] ;
 wire \g_feeder[3].trip_timer[15] ;
 wire \g_feeder[3].trip_timer[1] ;
 wire \g_feeder[3].trip_timer[2] ;
 wire \g_feeder[3].trip_timer[3] ;
 wire \g_feeder[3].trip_timer[4] ;
 wire \g_feeder[3].trip_timer[5] ;
 wire \g_feeder[3].trip_timer[6] ;
 wire \g_feeder[3].trip_timer[7] ;
 wire \g_feeder[3].trip_timer[8] ;
 wire \g_feeder[3].trip_timer[9] ;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
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
 wire rst_n_sync;
 wire rst_sync_ff1;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net110;
 wire \tick_cnt[0] ;
 wire \tick_cnt[10] ;
 wire \tick_cnt[11] ;
 wire \tick_cnt[12] ;
 wire \tick_cnt[13] ;
 wire \tick_cnt[14] ;
 wire \tick_cnt[15] ;
 wire \tick_cnt[1] ;
 wire \tick_cnt[2] ;
 wire \tick_cnt[3] ;
 wire \tick_cnt[4] ;
 wire \tick_cnt[5] ;
 wire \tick_cnt[6] ;
 wire \tick_cnt[7] ;
 wire \tick_cnt[8] ;
 wire \tick_cnt[9] ;
 wire net;
 wire net478;
 wire net472;
 wire net473;
 wire net481;
 wire net482;
 wire net483;
 wire clknet_3_0__leaf_clk;
 wire clknet_leaf_26_clk;
 wire clknet_0_clk;
 wire clknet_leaf_27_clk;
 wire clknet_leaf_37_clk;
 wire clknet_leaf_36_clk;
 wire clknet_leaf_28_clk;
 wire clknet_leaf_35_clk;
 wire clknet_leaf_30_clk;
 wire clknet_leaf_29_clk;
 wire clknet_leaf_34_clk;
 wire clknet_leaf_32_clk;
 wire clknet_leaf_31_clk;
 wire clknet_leaf_33_clk;
 wire clknet_leaf_38_clk;
 wire clknet_3_3__leaf_clk;
 wire clknet_3_7__leaf_clk;

 sg13g2_inv_1 _1984_ (.Y(_1886_),
    .A(_0042_));
 sg13g2_inv_1 _1985_ (.Y(_1887_),
    .A(\delay_all[36] ));
 sg13g2_nand3_1 _1986_ (.B(_1887_),
    .C(\g_feeder[2].trip_timer[5] ),
    .A(\g_feeder[2].trip_timer[4] ),
    .Y(_1888_));
 sg13g2_a21oi_1 _1987_ (.A1(\g_feeder[2].trip_timer[4] ),
    .A2(_1887_),
    .Y(_1889_),
    .B1(\g_feeder[2].trip_timer[5] ));
 sg13g2_a21oi_1 _1988_ (.A1(_1886_),
    .A2(_1888_),
    .Y(_1890_),
    .B1(_1889_));
 sg13g2_a21oi_1 _1989_ (.A1(_1871_),
    .A2(_1885_),
    .Y(_1891_),
    .B1(_1890_));
 sg13g2_xnor2_1 _1990_ (.Y(_1892_),
    .A(_0043_),
    .B(\g_feeder[2].trip_timer[6] ));
 sg13g2_nand3_1 _1991_ (.B(_1856_),
    .C(_1853_),
    .A(_1855_),
    .Y(_1893_));
 sg13g2_nor4_1 _1992_ (.A(_1847_),
    .B(_1849_),
    .C(_1892_),
    .D(_1893_),
    .Y(_1894_));
 sg13g2_nand2_1 _1993_ (.Y(_1895_),
    .A(_1864_),
    .B(_1894_));
 sg13g2_a21oi_1 _1994_ (.A1(_1884_),
    .A2(_1891_),
    .Y(_1896_),
    .B1(_1895_));
 sg13g2_or3_1 _1995_ (.A(_1845_),
    .B(_1865_),
    .C(_1896_),
    .X(_1897_));
 sg13g2_nor2_1 _1997_ (.A(_1816_),
    .B(_1790_),
    .Y(_1899_));
 sg13g2_nand2_2 _1999_ (.Y(_1901_),
    .A(_1897_),
    .B(_1899_));
 sg13g2_mux2_1 _2002_ (.A0(_1811_),
    .A1(_1818_),
    .S(net473),
    .X(_0053_));
 sg13g2_inv_1 _2003_ (.Y(_1904_),
    .A(\fltcnt_all[6] ));
 sg13g2_xor2_1 _2006_ (.B(\delay_all[4] ),
    .A(\g_feeder[0].trip_timer[4] ),
    .X(_1907_));
 sg13g2_xnor2_1 _2009_ (.Y(_1910_),
    .A(_0024_),
    .B(\g_feeder[0].trip_timer[5] ));
 sg13g2_nor2b_1 _2010_ (.A(\delay_all[3] ),
    .B_N(\g_feeder[0].trip_timer[3] ),
    .Y(_1911_));
 sg13g2_nand2b_1 _2011_ (.Y(_1912_),
    .B(\delay_all[3] ),
    .A_N(\g_feeder[0].trip_timer[3] ));
 sg13g2_nand2b_1 _2012_ (.Y(_1913_),
    .B(_1912_),
    .A_N(_1911_));
 sg13g2_xnor2_1 _2014_ (.Y(_1915_),
    .A(_0023_),
    .B(\g_feeder[0].trip_timer[2] ));
 sg13g2_nor4_1 _2015_ (.A(_1907_),
    .B(_1910_),
    .C(_1913_),
    .D(_1915_),
    .Y(_1916_));
 sg13g2_nor2b_1 _2017_ (.A(\g_feeder[0].trip_timer[0] ),
    .B_N(\delay_all[0] ),
    .Y(_1918_));
 sg13g2_inv_1 _2018_ (.Y(_1919_),
    .A(\g_feeder[0].trip_timer[1] ));
 sg13g2_a21o_1 _2019_ (.A2(_1918_),
    .A1(\delay_all[1] ),
    .B1(_1919_),
    .X(_1920_));
 sg13g2_o21ai_1 _2020_ (.B1(_1920_),
    .Y(_1921_),
    .A1(\delay_all[1] ),
    .A2(_1918_));
 sg13g2_inv_1 _2021_ (.Y(_1922_),
    .A(\g_feeder[0].trip_timer[4] ));
 sg13g2_and2_1 _2022_ (.A(_0023_),
    .B(\g_feeder[0].trip_timer[2] ),
    .X(_1923_));
 sg13g2_a21oi_1 _2023_ (.A1(_1912_),
    .A2(_1923_),
    .Y(_1924_),
    .B1(_1911_));
 sg13g2_o21ai_1 _2024_ (.B1(_1924_),
    .Y(_1925_),
    .A1(_1922_),
    .A2(\delay_all[4] ));
 sg13g2_inv_1 _2025_ (.Y(_1926_),
    .A(_0024_));
 sg13g2_inv_1 _2026_ (.Y(_1927_),
    .A(\g_feeder[0].trip_timer[5] ));
 sg13g2_a22oi_1 _2027_ (.Y(_1928_),
    .B1(_1922_),
    .B2(\delay_all[4] ),
    .A2(_1927_),
    .A1(_1926_));
 sg13g2_nor2b_1 _2030_ (.A(\delay_all[7] ),
    .B_N(\g_feeder[0].trip_timer[7] ),
    .Y(_1931_));
 sg13g2_a221oi_1 _2031_ (.B2(_0025_),
    .C1(_1931_),
    .B1(\g_feeder[0].trip_timer[6] ),
    .A1(_0024_),
    .Y(_1932_),
    .A2(\g_feeder[0].trip_timer[5] ));
 sg13g2_inv_1 _2032_ (.Y(_1933_),
    .A(_1932_));
 sg13g2_a221oi_1 _2033_ (.B2(_1928_),
    .C1(_1933_),
    .B1(_1925_),
    .A1(_1916_),
    .Y(_1934_),
    .A2(_1921_));
 sg13g2_xnor2_1 _2035_ (.Y(_1936_),
    .A(\g_feeder[0].trip_timer[11] ),
    .B(\delay_all[11] ));
 sg13g2_xnor2_1 _2038_ (.Y(_1939_),
    .A(\g_feeder[0].trip_timer[10] ),
    .B(\delay_all[10] ));
 sg13g2_nand2b_1 _2040_ (.Y(_1941_),
    .B(\delay_all[9] ),
    .A_N(\g_feeder[0].trip_timer[9] ));
 sg13g2_nand3_1 _2041_ (.B(_1939_),
    .C(_1941_),
    .A(_1936_),
    .Y(_1942_));
 sg13g2_nor2b_1 _2042_ (.A(\delay_all[9] ),
    .B_N(\g_feeder[0].trip_timer[9] ),
    .Y(_1943_));
 sg13g2_nor2b_1 _2043_ (.A(\delay_all[8] ),
    .B_N(\g_feeder[0].trip_timer[8] ),
    .Y(_1944_));
 sg13g2_xor2_1 _2046_ (.B(\delay_all[12] ),
    .A(\g_feeder[0].trip_timer[12] ),
    .X(_1947_));
 sg13g2_nor3_1 _2047_ (.A(_0025_),
    .B(\g_feeder[0].trip_timer[6] ),
    .C(_1931_),
    .Y(_1948_));
 sg13g2_nor4_1 _2048_ (.A(_1943_),
    .B(_1944_),
    .C(_1947_),
    .D(_1948_),
    .Y(_1949_));
 sg13g2_inv_1 _2049_ (.Y(_1950_),
    .A(\g_feeder[0].trip_timer[8] ));
 sg13g2_inv_1 _2050_ (.Y(_1951_),
    .A(\g_feeder[0].trip_timer[7] ));
 sg13g2_inv_1 _2051_ (.Y(_1952_),
    .A(\g_feeder[0].trip_timer[13] ));
 sg13g2_nor2_1 _2053_ (.A(_1952_),
    .B(\delay_all[13] ),
    .Y(_1954_));
 sg13g2_a221oi_1 _2054_ (.B2(\delay_all[7] ),
    .C1(_1954_),
    .B1(_1951_),
    .A1(\delay_all[8] ),
    .Y(_1955_),
    .A2(_1950_));
 sg13g2_nand3b_1 _2055_ (.B(_1949_),
    .C(_1955_),
    .Y(_1956_),
    .A_N(_1942_));
 sg13g2_inv_1 _2056_ (.Y(_1957_),
    .A(\delay_all[11] ));
 sg13g2_nor2b_1 _2057_ (.A(\delay_all[10] ),
    .B_N(\g_feeder[0].trip_timer[10] ),
    .Y(_1958_));
 sg13g2_a21oi_1 _2058_ (.A1(_1957_),
    .A2(_1958_),
    .Y(_1959_),
    .B1(\g_feeder[0].trip_timer[11] ));
 sg13g2_o21ai_1 _2059_ (.B1(\g_feeder[0].trip_timer[12] ),
    .Y(_1960_),
    .A1(_1957_),
    .A2(_1958_));
 sg13g2_o21ai_1 _2060_ (.B1(\delay_all[12] ),
    .Y(_1961_),
    .A1(_1959_),
    .A2(_1960_));
 sg13g2_nor2_1 _2061_ (.A(_1957_),
    .B(_1958_),
    .Y(_1962_));
 sg13g2_inv_1 _2062_ (.Y(_1963_),
    .A(\g_feeder[0].trip_timer[12] ));
 sg13g2_o21ai_1 _2063_ (.B1(_1963_),
    .Y(_1964_),
    .A1(_1959_),
    .A2(_1962_));
 sg13g2_nand2b_1 _2064_ (.Y(_1965_),
    .B(\delay_all[12] ),
    .A_N(\g_feeder[0].trip_timer[12] ));
 sg13g2_o21ai_1 _2065_ (.B1(_1965_),
    .Y(_1966_),
    .A1(_1943_),
    .A2(_1944_));
 sg13g2_inv_1 _2066_ (.Y(_1967_),
    .A(\delay_all[13] ));
 sg13g2_nand2b_1 _2069_ (.Y(_1970_),
    .B(\delay_all[15] ),
    .A_N(\g_feeder[0].trip_timer[15] ));
 sg13g2_nor2b_1 _2071_ (.A(\delay_all[14] ),
    .B_N(\g_feeder[0].trip_timer[14] ),
    .Y(_1972_));
 sg13g2_nor2b_1 _2072_ (.A(\delay_all[15] ),
    .B_N(\g_feeder[0].trip_timer[15] ),
    .Y(_1973_));
 sg13g2_a221oi_1 _2073_ (.B2(_1972_),
    .C1(_1973_),
    .B1(_1970_),
    .A1(\g_feeder[0].trip_timer[13] ),
    .Y(_1974_),
    .A2(_1967_));
 sg13g2_o21ai_1 _2074_ (.B1(_1974_),
    .Y(_1975_),
    .A1(_1942_),
    .A2(_1966_));
 sg13g2_a21oi_1 _2075_ (.A1(_1961_),
    .A2(_1964_),
    .Y(_1976_),
    .B1(_1975_));
 sg13g2_o21ai_1 _2076_ (.B1(_1976_),
    .Y(_1977_),
    .A1(_1934_),
    .A2(_1956_));
 sg13g2_nor2b_1 _2078_ (.A(\g_feeder[0].threshold[5] ),
    .B_N(net56),
    .Y(_1979_));
 sg13g2_a21oi_1 _2079_ (.A1(_0018_),
    .A2(net55),
    .Y(_1980_),
    .B1(_1979_));
 sg13g2_xnor2_1 _2082_ (.Y(_0341_),
    .A(_0020_),
    .B(net58));
 sg13g2_nor2b_1 _2083_ (.A(net56),
    .B_N(\g_feeder[0].threshold[5] ),
    .Y(_0342_));
 sg13g2_xnor2_1 _2084_ (.Y(_0343_),
    .A(_0019_),
    .B(net57));
 sg13g2_nor3_2 _2085_ (.A(_0341_),
    .B(_0342_),
    .C(_0343_),
    .Y(_0344_));
 sg13g2_nor2b_1 _2086_ (.A(_1980_),
    .B_N(_0344_),
    .Y(_0345_));
 sg13g2_nand2b_2 _2089_ (.Y(_0348_),
    .B(\g_feeder[0].threshold[11] ),
    .A_N(net15));
 sg13g2_and2_1 _2090_ (.A(_0017_),
    .B(net14),
    .X(_0349_));
 sg13g2_nor2b_1 _2091_ (.A(\g_feeder[0].threshold[11] ),
    .B_N(net15),
    .Y(_0350_));
 sg13g2_a21oi_1 _2092_ (.A1(_0348_),
    .A2(_0349_),
    .Y(_0351_),
    .B1(_0350_));
 sg13g2_and2_1 _2095_ (.A(_0022_),
    .B(net60),
    .X(_0354_));
 sg13g2_a221oi_1 _2096_ (.B2(_0020_),
    .C1(_0354_),
    .B1(net58),
    .A1(_0021_),
    .Y(_0355_),
    .A2(net59));
 sg13g2_and2_1 _2097_ (.A(_0019_),
    .B(net57),
    .X(_0356_));
 sg13g2_o21ai_1 _2098_ (.B1(_0356_),
    .Y(_0357_),
    .A1(_0020_),
    .A2(net58));
 sg13g2_nand3_1 _2099_ (.B(_0355_),
    .C(_0357_),
    .A(_0351_),
    .Y(_0358_));
 sg13g2_nand2b_1 _2100_ (.Y(_0359_),
    .B(net15),
    .A_N(\g_feeder[0].threshold[11] ));
 sg13g2_xor2_1 _2101_ (.B(net14),
    .A(_0017_),
    .X(_0360_));
 sg13g2_or2_1 _2102_ (.X(_0361_),
    .B(net60),
    .A(_0022_));
 sg13g2_nand4_1 _2103_ (.B(_0359_),
    .C(_0360_),
    .A(_0348_),
    .Y(_0362_),
    .D(_0361_));
 sg13g2_nor3_1 _2104_ (.A(_0021_),
    .B(net59),
    .C(_0354_),
    .Y(_0363_));
 sg13g2_o21ai_1 _2105_ (.B1(_0351_),
    .Y(_0364_),
    .A1(_0362_),
    .A2(_0363_));
 sg13g2_o21ai_1 _2106_ (.B1(_0364_),
    .Y(_0365_),
    .A1(_0345_),
    .A2(_0358_));
 sg13g2_nor2b_1 _2108_ (.A(\g_feeder[0].threshold[3] ),
    .B_N(net46),
    .Y(_0367_));
 sg13g2_inv_1 _2110_ (.Y(_0369_),
    .A(net35));
 sg13g2_nand2b_1 _2113_ (.Y(_0372_),
    .B(net24),
    .A_N(\g_feeder[0].threshold[1] ));
 sg13g2_nor2b_1 _2114_ (.A(net13),
    .B_N(\g_feeder[0].threshold[0] ),
    .Y(_0373_));
 sg13g2_nor2b_1 _2115_ (.A(net24),
    .B_N(\g_feeder[0].threshold[1] ),
    .Y(_0374_));
 sg13g2_a221oi_1 _2116_ (.B2(_0373_),
    .C1(_0374_),
    .B1(_0372_),
    .A1(\g_feeder[0].threshold[2] ),
    .Y(_0375_),
    .A2(_0369_));
 sg13g2_nor2_1 _2117_ (.A(\g_feeder[0].threshold[2] ),
    .B(_0369_),
    .Y(_0376_));
 sg13g2_nor3_1 _2118_ (.A(_0367_),
    .B(_0375_),
    .C(_0376_),
    .Y(_0377_));
 sg13g2_nor2b_1 _2119_ (.A(net46),
    .B_N(\g_feeder[0].threshold[3] ),
    .Y(_0378_));
 sg13g2_xnor2_1 _2120_ (.Y(_0379_),
    .A(_0021_),
    .B(net59));
 sg13g2_xnor2_1 _2121_ (.Y(_0380_),
    .A(_0018_),
    .B(net55));
 sg13g2_nor4_1 _2122_ (.A(_0354_),
    .B(_1979_),
    .C(_0379_),
    .D(_0380_),
    .Y(_0381_));
 sg13g2_nand3b_1 _2123_ (.B(_0344_),
    .C(_0381_),
    .Y(_0382_),
    .A_N(_0362_));
 sg13g2_or3_1 _2124_ (.A(_0377_),
    .B(_0378_),
    .C(_0382_),
    .X(_0383_));
 sg13g2_inv_1 _2126_ (.Y(_0385_),
    .A(\g_feeder[0].trip_timer[14] ));
 sg13g2_a22oi_1 _2127_ (.Y(_0386_),
    .B1(\delay_all[13] ),
    .B2(_1952_),
    .A2(_0385_),
    .A1(\delay_all[14] ));
 sg13g2_o21ai_1 _2128_ (.B1(_1970_),
    .Y(_0387_),
    .A1(_1972_),
    .A2(_0386_));
 sg13g2_nand2b_1 _2129_ (.Y(_0388_),
    .B(\g_feeder[0].trip_timer[15] ),
    .A_N(\delay_all[15] ));
 sg13g2_nand2b_1 _2130_ (.Y(_0389_),
    .B(\g_feeder[0].threshold[1] ),
    .A_N(net24));
 sg13g2_xnor2_1 _2131_ (.Y(_0390_),
    .A(\g_feeder[0].threshold[2] ),
    .B(net35));
 sg13g2_nor2b_1 _2132_ (.A(\g_feeder[0].threshold[0] ),
    .B_N(net13),
    .Y(_0391_));
 sg13g2_nor4_1 _2133_ (.A(_0367_),
    .B(_0373_),
    .C(_0378_),
    .D(_0391_),
    .Y(_0392_));
 sg13g2_nand4_1 _2134_ (.B(_0389_),
    .C(_0390_),
    .A(_0372_),
    .Y(_0393_),
    .D(_0392_));
 sg13g2_inv_1 _2137_ (.Y(_0396_),
    .A(net103));
 sg13g2_nor2_1 _2138_ (.A(net104),
    .B(_0396_),
    .Y(_0397_));
 sg13g2_o21ai_1 _2139_ (.B1(_0397_),
    .Y(_0398_),
    .A1(_0382_),
    .A2(_0393_));
 sg13g2_a221oi_1 _2140_ (.B2(_0388_),
    .C1(_0398_),
    .B1(_0387_),
    .A1(_0365_),
    .Y(_0399_),
    .A2(_0383_));
 sg13g2_nand2_1 _2141_ (.Y(_0400_),
    .A(_1977_),
    .B(_0399_));
 sg13g2_and4_1 _2147_ (.A(\fltcnt_all[3] ),
    .B(\fltcnt_all[2] ),
    .C(\fltcnt_all[1] ),
    .D(\fltcnt_all[0] ),
    .X(_0406_));
 sg13g2_nand3_1 _2149_ (.B(\fltcnt_all[4] ),
    .C(_0406_),
    .A(\fltcnt_all[5] ),
    .Y(_0408_));
 sg13g2_or2_1 _2151_ (.X(_0410_),
    .B(_0408_),
    .A(_0400_));
 sg13g2_nor3_1 _2152_ (.A(_1904_),
    .B(\fltcnt_all[7] ),
    .C(_0408_),
    .Y(_0411_));
 sg13g2_and2_1 _2153_ (.A(_1977_),
    .B(_0399_),
    .X(_0412_));
 sg13g2_nor2b_1 _2159_ (.A(net63),
    .B_N(net61),
    .Y(_0418_));
 sg13g2_and2_1 _2161_ (.A(net620),
    .B(net602),
    .X(_0420_));
 sg13g2_nor3_2 _2165_ (.A(net66),
    .B(net611),
    .C(net64),
    .Y(_0424_));
 sg13g2_nand3_1 _2166_ (.B(net545),
    .C(_0424_),
    .A(net84),
    .Y(_0425_));
 sg13g2_nor2_1 _2168_ (.A(net490),
    .B(_0425_),
    .Y(_0427_));
 sg13g2_a221oi_1 _2169_ (.B2(net490),
    .C1(_0427_),
    .B1(_0411_),
    .A1(_1904_),
    .Y(_0054_),
    .A2(_0410_));
 sg13g2_inv_1 _2170_ (.Y(_0428_),
    .A(\fltcnt_all[5] ));
 sg13g2_nand3_1 _2171_ (.B(net490),
    .C(_0406_),
    .A(\fltcnt_all[4] ),
    .Y(_0429_));
 sg13g2_nand2_1 _2172_ (.Y(_0430_),
    .A(\fltcnt_all[6] ),
    .B(\fltcnt_all[7] ));
 sg13g2_nor2b_1 _2173_ (.A(_0408_),
    .B_N(_0430_),
    .Y(_0431_));
 sg13g2_a221oi_1 _2174_ (.B2(net490),
    .C1(_0427_),
    .B1(_0431_),
    .A1(_0428_),
    .Y(_0055_),
    .A2(_0429_));
 sg13g2_a21oi_1 _2175_ (.A1(net490),
    .A2(_0406_),
    .Y(_0432_),
    .B1(\fltcnt_all[4] ));
 sg13g2_or2_1 _2176_ (.X(_0433_),
    .B(_0430_),
    .A(_0408_));
 sg13g2_nand2_1 _2178_ (.Y(_0435_),
    .A(_0406_),
    .B(_0433_));
 sg13g2_inv_1 _2179_ (.Y(_0436_),
    .A(_0435_));
 sg13g2_and3_1 _2180_ (.X(_0437_),
    .A(\fltcnt_all[4] ),
    .B(net491),
    .C(_0436_));
 sg13g2_nor3_1 _2181_ (.A(_0427_),
    .B(_0432_),
    .C(_0437_),
    .Y(_0056_));
 sg13g2_nand4_1 _2183_ (.B(\fltcnt_all[1] ),
    .C(\fltcnt_all[0] ),
    .A(\fltcnt_all[2] ),
    .Y(_0439_),
    .D(net491));
 sg13g2_o21ai_1 _2184_ (.B1(\fltcnt_all[3] ),
    .Y(_0440_),
    .A1(net491),
    .A2(_0425_));
 sg13g2_a22oi_1 _2185_ (.Y(_0057_),
    .B1(_0439_),
    .B2(_0440_),
    .A2(_0436_),
    .A1(net491));
 sg13g2_nand2_1 _2187_ (.Y(_0442_),
    .A(\fltcnt_all[2] ),
    .B(net521));
 sg13g2_nand3_1 _2188_ (.B(\fltcnt_all[0] ),
    .C(_0433_),
    .A(\fltcnt_all[1] ),
    .Y(_0443_));
 sg13g2_nor2_1 _2189_ (.A(\fltcnt_all[2] ),
    .B(_0443_),
    .Y(_0444_));
 sg13g2_and2_1 _2190_ (.A(\fltcnt_all[2] ),
    .B(_0443_),
    .X(_0445_));
 sg13g2_o21ai_1 _2191_ (.B1(net489),
    .Y(_0446_),
    .A1(_0444_),
    .A2(_0445_));
 sg13g2_o21ai_1 _2192_ (.B1(_0446_),
    .Y(_0058_),
    .A1(net489),
    .A2(_0442_));
 sg13g2_nand2_1 _2193_ (.Y(_0447_),
    .A(\fltcnt_all[1] ),
    .B(net521));
 sg13g2_nand2_1 _2194_ (.Y(_0448_),
    .A(\fltcnt_all[0] ),
    .B(_0433_));
 sg13g2_nor2_1 _2195_ (.A(\fltcnt_all[1] ),
    .B(_0448_),
    .Y(_0449_));
 sg13g2_and2_1 _2196_ (.A(\fltcnt_all[1] ),
    .B(_0448_),
    .X(_0450_));
 sg13g2_o21ai_1 _2197_ (.B1(net489),
    .Y(_0451_),
    .A1(_0449_),
    .A2(_0450_));
 sg13g2_o21ai_1 _2198_ (.B1(_0451_),
    .Y(_0059_),
    .A1(net489),
    .A2(_0447_));
 sg13g2_nand2_1 _2199_ (.Y(_0452_),
    .A(\fltcnt_all[0] ),
    .B(net521));
 sg13g2_nand2_1 _2200_ (.Y(_0453_),
    .A(net489),
    .B(_0448_));
 sg13g2_o21ai_1 _2201_ (.B1(_0453_),
    .Y(_0060_),
    .A1(net489),
    .A2(_0452_));
 sg13g2_nor3_1 _2204_ (.A(net616),
    .B(net624),
    .C(net619),
    .Y(_0456_));
 sg13g2_nand3_1 _2206_ (.B(_0424_),
    .C(net600),
    .A(net84),
    .Y(_0458_));
 sg13g2_nand2_1 _2209_ (.Y(_0461_),
    .A(_0017_),
    .B(net541));
 sg13g2_o21ai_1 _2210_ (.B1(_0461_),
    .Y(_0061_),
    .A1(net69),
    .A2(net541));
 sg13g2_nand2_1 _2212_ (.Y(_0463_),
    .A(_0022_),
    .B(net541));
 sg13g2_o21ai_1 _2213_ (.B1(_0463_),
    .Y(_0062_),
    .A1(net83),
    .A2(net541));
 sg13g2_nand2_1 _2215_ (.Y(_0465_),
    .A(_0021_),
    .B(net541));
 sg13g2_o21ai_1 _2216_ (.B1(_0465_),
    .Y(_0063_),
    .A1(net82),
    .A2(net541));
 sg13g2_nand2_1 _2218_ (.Y(_0467_),
    .A(_0020_),
    .B(net542));
 sg13g2_o21ai_1 _2219_ (.B1(_0467_),
    .Y(_0064_),
    .A1(net81),
    .A2(net541));
 sg13g2_nand2_1 _2221_ (.Y(_0469_),
    .A(_0019_),
    .B(net542));
 sg13g2_o21ai_1 _2222_ (.B1(_0469_),
    .Y(_0065_),
    .A1(net80),
    .A2(net542));
 sg13g2_mux2_1 _2224_ (.A0(net79),
    .A1(\g_feeder[0].threshold[5] ),
    .S(net542),
    .X(_0066_));
 sg13g2_nand2_1 _2226_ (.Y(_0472_),
    .A(_0018_),
    .B(net542));
 sg13g2_o21ai_1 _2227_ (.B1(_0472_),
    .Y(_0067_),
    .A1(net78),
    .A2(net542));
 sg13g2_mux2_1 _2229_ (.A0(net77),
    .A1(\g_feeder[0].threshold[3] ),
    .S(net542),
    .X(_0068_));
 sg13g2_mux2_1 _2230_ (.A0(net76),
    .A1(\g_feeder[0].threshold[2] ),
    .S(_0458_),
    .X(_0069_));
 sg13g2_mux2_1 _2232_ (.A0(net605),
    .A1(\g_feeder[0].threshold[1] ),
    .S(_0458_),
    .X(_0070_));
 sg13g2_mux2_1 _2234_ (.A0(net68),
    .A1(\g_feeder[0].threshold[0] ),
    .S(_0458_),
    .X(_0071_));
 sg13g2_inv_1 _2235_ (.Y(_0476_),
    .A(net107));
 sg13g2_or2_1 _2236_ (.X(_0477_),
    .B(_1813_),
    .A(_0476_));
 sg13g2_nor2_1 _2237_ (.A(_1845_),
    .B(_0477_),
    .Y(_0478_));
 sg13g2_nor2_1 _2238_ (.A(_1865_),
    .B(_1896_),
    .Y(_0479_));
 sg13g2_nor4_1 _2239_ (.A(_1816_),
    .B(_1767_),
    .C(_1782_),
    .D(_1788_),
    .Y(_0480_));
 sg13g2_o21ai_1 _2240_ (.B1(_0480_),
    .Y(_0481_),
    .A1(_1753_),
    .A2(_1775_));
 sg13g2_nor2b_1 _2243_ (.A(_0477_),
    .B_N(net498),
    .Y(_0484_));
 sg13g2_a221oi_1 _2244_ (.B2(_0479_),
    .C1(_0484_),
    .B1(_0478_),
    .A1(net107),
    .Y(_0485_),
    .A2(_1808_));
 sg13g2_inv_1 _2245_ (.Y(_0486_),
    .A(\g_feeder[2].streak[1] ));
 sg13g2_nor2_1 _2246_ (.A(_0486_),
    .B(net498),
    .Y(_0487_));
 sg13g2_a21oi_1 _2247_ (.A1(net75),
    .A2(_1805_),
    .Y(_0488_),
    .B1(net3));
 sg13g2_nor3_1 _2248_ (.A(net107),
    .B(_1813_),
    .C(_0488_),
    .Y(_0489_));
 sg13g2_a22oi_1 _2249_ (.Y(_0490_),
    .B1(_0489_),
    .B2(_1790_),
    .A2(_0487_),
    .A1(net492));
 sg13g2_nand2_1 _2250_ (.Y(_0072_),
    .A(_0485_),
    .B(_0490_));
 sg13g2_nor2b_1 _2252_ (.A(\g_feeder[1].threshold[3] ),
    .B_N(net19),
    .Y(_0492_));
 sg13g2_nand2b_1 _2255_ (.Y(_0495_),
    .B(net17),
    .A_N(\g_feeder[1].threshold[1] ));
 sg13g2_nor2b_1 _2256_ (.A(net16),
    .B_N(\g_feeder[1].threshold[0] ),
    .Y(_0496_));
 sg13g2_nor2b_1 _2257_ (.A(net17),
    .B_N(\g_feeder[1].threshold[1] ),
    .Y(_0497_));
 sg13g2_a21oi_1 _2258_ (.A1(_0495_),
    .A2(_0496_),
    .Y(_0498_),
    .B1(_0497_));
 sg13g2_nor3_1 _2259_ (.A(net18),
    .B(_0492_),
    .C(_0498_),
    .Y(_0499_));
 sg13g2_nand2b_1 _2260_ (.Y(_0500_),
    .B(\g_feeder[1].threshold[2] ),
    .A_N(_0492_));
 sg13g2_a21oi_1 _2261_ (.A1(net18),
    .A2(_0498_),
    .Y(_0501_),
    .B1(_0500_));
 sg13g2_xnor2_1 _2264_ (.Y(_0504_),
    .A(_0031_),
    .B(net26));
 sg13g2_xor2_1 _2266_ (.B(\g_feeder[1].threshold[11] ),
    .A(net28),
    .X(_0506_));
 sg13g2_xnor2_1 _2268_ (.Y(_0508_),
    .A(_0030_),
    .B(net25));
 sg13g2_xnor2_1 _2269_ (.Y(_0509_),
    .A(_0026_),
    .B(net27));
 sg13g2_nor4_2 _2270_ (.A(_0504_),
    .B(_0506_),
    .C(_0508_),
    .Y(_0510_),
    .D(_0509_));
 sg13g2_xor2_1 _2271_ (.B(net23),
    .A(_0029_),
    .X(_0511_));
 sg13g2_xor2_1 _2273_ (.B(_0027_),
    .A(net20),
    .X(_0513_));
 sg13g2_nor2b_1 _2276_ (.A(net21),
    .B_N(\g_feeder[1].threshold[5] ),
    .Y(_0516_));
 sg13g2_nor2b_1 _2277_ (.A(\g_feeder[1].threshold[5] ),
    .B_N(net21),
    .Y(_0517_));
 sg13g2_xnor2_1 _2280_ (.Y(_0520_),
    .A(_0028_),
    .B(net22));
 sg13g2_nor3_1 _2281_ (.A(_0516_),
    .B(_0517_),
    .C(_0520_),
    .Y(_0521_));
 sg13g2_nand4_1 _2282_ (.B(_0511_),
    .C(_0513_),
    .A(_0510_),
    .Y(_0522_),
    .D(_0521_));
 sg13g2_nor2b_1 _2283_ (.A(net19),
    .B_N(\g_feeder[1].threshold[3] ),
    .Y(_0523_));
 sg13g2_or4_1 _2284_ (.A(_0499_),
    .B(_0501_),
    .C(_0522_),
    .D(_0523_),
    .X(_0524_));
 sg13g2_inv_1 _2285_ (.Y(_0525_),
    .A(_0029_));
 sg13g2_inv_1 _2286_ (.Y(_0526_),
    .A(net23));
 sg13g2_nand2_1 _2287_ (.Y(_0527_),
    .A(_0525_),
    .B(_0526_));
 sg13g2_nand2b_1 _2288_ (.Y(_0528_),
    .B(\g_feeder[1].threshold[5] ),
    .A_N(net21));
 sg13g2_or2_1 _2289_ (.X(_0529_),
    .B(net22),
    .A(_0028_));
 sg13g2_nand4_1 _2290_ (.B(_0027_),
    .C(_0528_),
    .A(net20),
    .Y(_0530_),
    .D(_0529_));
 sg13g2_nand2_1 _2291_ (.Y(_0531_),
    .A(net22),
    .B(_0517_));
 sg13g2_o21ai_1 _2292_ (.B1(_0028_),
    .Y(_0532_),
    .A1(net22),
    .A2(_0517_));
 sg13g2_nand4_1 _2293_ (.B(_0530_),
    .C(_0531_),
    .A(_0526_),
    .Y(_0533_),
    .D(_0532_));
 sg13g2_nand4_1 _2294_ (.B(_0530_),
    .C(_0531_),
    .A(_0525_),
    .Y(_0534_),
    .D(_0532_));
 sg13g2_nand4_1 _2295_ (.B(_0527_),
    .C(_0533_),
    .A(_0510_),
    .Y(_0535_),
    .D(_0534_));
 sg13g2_inv_1 _2296_ (.Y(_0536_),
    .A(\g_feeder[1].threshold[11] ));
 sg13g2_nor2_1 _2297_ (.A(_0031_),
    .B(net26),
    .Y(_0537_));
 sg13g2_a22oi_1 _2298_ (.Y(_0538_),
    .B1(net25),
    .B2(_0030_),
    .A2(net26),
    .A1(_0031_));
 sg13g2_inv_1 _2299_ (.Y(_0539_),
    .A(net27));
 sg13g2_o21ai_1 _2300_ (.B1(_0539_),
    .Y(_0540_),
    .A1(_0537_),
    .A2(_0538_));
 sg13g2_inv_1 _2301_ (.Y(_0541_),
    .A(_0026_));
 sg13g2_nor2_1 _2302_ (.A(net28),
    .B(_0536_),
    .Y(_0542_));
 sg13g2_nor2_1 _2303_ (.A(_0541_),
    .B(_0542_),
    .Y(_0543_));
 sg13g2_nor4_1 _2304_ (.A(_0539_),
    .B(_0537_),
    .C(_0542_),
    .D(_0538_),
    .Y(_0544_));
 sg13g2_a221oi_1 _2305_ (.B2(_0543_),
    .C1(_0544_),
    .B1(_0540_),
    .A1(net28),
    .Y(_0545_),
    .A2(_0536_));
 sg13g2_and3_1 _2306_ (.X(_0546_),
    .A(_0524_),
    .B(_0535_),
    .C(_0545_));
 sg13g2_xor2_1 _2307_ (.B(\g_feeder[1].threshold[1] ),
    .A(net17),
    .X(_0547_));
 sg13g2_nand2b_1 _2308_ (.Y(_0548_),
    .B(net16),
    .A_N(\g_feeder[1].threshold[0] ));
 sg13g2_xnor2_1 _2309_ (.Y(_0549_),
    .A(\g_feeder[1].threshold[2] ),
    .B(net18));
 sg13g2_nand3b_1 _2310_ (.B(_0548_),
    .C(_0549_),
    .Y(_0550_),
    .A_N(_0496_));
 sg13g2_or4_1 _2311_ (.A(_0492_),
    .B(_0523_),
    .C(_0547_),
    .D(_0550_),
    .X(_0551_));
 sg13g2_inv_1 _2314_ (.Y(_0554_),
    .A(net105));
 sg13g2_nor2_1 _2315_ (.A(net106),
    .B(_0554_),
    .Y(_0555_));
 sg13g2_o21ai_1 _2316_ (.B1(_0555_),
    .Y(_0556_),
    .A1(_0522_),
    .A2(_0551_));
 sg13g2_inv_1 _2319_ (.Y(_0559_),
    .A(\g_feeder[1].trip_timer[5] ));
 sg13g2_nand2b_1 _2322_ (.Y(_0562_),
    .B(\g_feeder[1].trip_timer[4] ),
    .A_N(\delay_all[20] ));
 sg13g2_inv_1 _2323_ (.Y(_0563_),
    .A(_0033_));
 sg13g2_a21oi_1 _2324_ (.A1(_0559_),
    .A2(_0562_),
    .Y(_0564_),
    .B1(_0563_));
 sg13g2_inv_1 _2326_ (.Y(_0566_),
    .A(_0034_));
 sg13g2_inv_1 _2327_ (.Y(_0567_),
    .A(\g_feeder[1].trip_timer[6] ));
 sg13g2_nand3b_1 _2328_ (.B(\g_feeder[1].trip_timer[4] ),
    .C(\g_feeder[1].trip_timer[5] ),
    .Y(_0568_),
    .A_N(\delay_all[20] ));
 sg13g2_a21oi_1 _2329_ (.A1(_0566_),
    .A2(_0567_),
    .Y(_0569_),
    .B1(_0568_));
 sg13g2_a21oi_1 _2330_ (.A1(\g_feeder[1].trip_timer[6] ),
    .A2(_0564_),
    .Y(_0570_),
    .B1(_0569_));
 sg13g2_inv_1 _2332_ (.Y(_0572_),
    .A(\delay_all[23] ));
 sg13g2_nor2_1 _2333_ (.A(_0566_),
    .B(_0567_),
    .Y(_0573_));
 sg13g2_a221oi_1 _2334_ (.B2(_0034_),
    .C1(_0573_),
    .B1(_0564_),
    .A1(\g_feeder[1].trip_timer[7] ),
    .Y(_0574_),
    .A2(_0572_));
 sg13g2_nor2b_1 _2336_ (.A(\g_feeder[1].trip_timer[13] ),
    .B_N(\delay_all[29] ),
    .Y(_0576_));
 sg13g2_xor2_1 _2339_ (.B(\delay_all[31] ),
    .A(\g_feeder[1].trip_timer[15] ),
    .X(_0579_));
 sg13g2_xor2_1 _2341_ (.B(\delay_all[30] ),
    .A(\g_feeder[1].trip_timer[14] ),
    .X(_0581_));
 sg13g2_nor3_1 _2342_ (.A(_0576_),
    .B(_0579_),
    .C(_0581_),
    .Y(_0582_));
 sg13g2_nor2b_1 _2345_ (.A(\delay_all[27] ),
    .B_N(\g_feeder[1].trip_timer[11] ),
    .Y(_0585_));
 sg13g2_nor2b_1 _2346_ (.A(\g_feeder[1].trip_timer[11] ),
    .B_N(\delay_all[27] ),
    .Y(_0586_));
 sg13g2_nor2b_1 _2348_ (.A(\g_feeder[1].trip_timer[9] ),
    .B_N(\delay_all[25] ),
    .Y(_0588_));
 sg13g2_xor2_1 _2350_ (.B(\g_feeder[1].trip_timer[10] ),
    .A(\delay_all[26] ),
    .X(_0590_));
 sg13g2_nor4_1 _2351_ (.A(_0585_),
    .B(_0586_),
    .C(_0588_),
    .D(_0590_),
    .Y(_0591_));
 sg13g2_nand2b_1 _2352_ (.Y(_0592_),
    .B(\g_feeder[1].trip_timer[13] ),
    .A_N(\delay_all[29] ));
 sg13g2_nand2b_1 _2353_ (.Y(_0593_),
    .B(\g_feeder[1].trip_timer[9] ),
    .A_N(\delay_all[25] ));
 sg13g2_xnor2_1 _2356_ (.Y(_0596_),
    .A(\g_feeder[1].trip_timer[12] ),
    .B(\delay_all[28] ));
 sg13g2_xnor2_1 _2359_ (.Y(_0599_),
    .A(\g_feeder[1].trip_timer[8] ),
    .B(\delay_all[24] ));
 sg13g2_and4_1 _2360_ (.A(_0592_),
    .B(_0593_),
    .C(_0596_),
    .D(_0599_),
    .X(_0600_));
 sg13g2_nand2b_1 _2361_ (.Y(_0601_),
    .B(\delay_all[23] ),
    .A_N(\g_feeder[1].trip_timer[7] ));
 sg13g2_nand4_1 _2362_ (.B(_0591_),
    .C(_0600_),
    .A(_0582_),
    .Y(_0602_),
    .D(_0601_));
 sg13g2_a21oi_1 _2363_ (.A1(_0570_),
    .A2(_0574_),
    .Y(_0603_),
    .B1(_0602_));
 sg13g2_nor2_1 _2365_ (.A(_0032_),
    .B(\g_feeder[1].trip_timer[2] ),
    .Y(_0605_));
 sg13g2_nor2_1 _2366_ (.A(\delay_all[19] ),
    .B(_0605_),
    .Y(_0606_));
 sg13g2_inv_1 _2367_ (.Y(_0607_),
    .A(\g_feeder[1].trip_timer[3] ));
 sg13g2_nor2_1 _2368_ (.A(_0607_),
    .B(_0605_),
    .Y(_0608_));
 sg13g2_nor2b_1 _2370_ (.A(\g_feeder[1].trip_timer[0] ),
    .B_N(\delay_all[16] ),
    .Y(_0610_));
 sg13g2_nor2b_1 _2372_ (.A(\g_feeder[1].trip_timer[1] ),
    .B_N(\delay_all[17] ),
    .Y(_0612_));
 sg13g2_nand2b_1 _2373_ (.Y(_0613_),
    .B(\g_feeder[1].trip_timer[1] ),
    .A_N(\delay_all[17] ));
 sg13g2_o21ai_1 _2374_ (.B1(_0613_),
    .Y(_0614_),
    .A1(_0610_),
    .A2(_0612_));
 sg13g2_o21ai_1 _2375_ (.B1(_0614_),
    .Y(_0615_),
    .A1(_0606_),
    .A2(_0608_));
 sg13g2_inv_1 _2376_ (.Y(_0616_),
    .A(\delay_all[19] ));
 sg13g2_nand2_1 _2377_ (.Y(_0617_),
    .A(_0032_),
    .B(\g_feeder[1].trip_timer[2] ));
 sg13g2_a21oi_1 _2378_ (.A1(_0607_),
    .A2(\delay_all[19] ),
    .Y(_0618_),
    .B1(_0617_));
 sg13g2_a21oi_1 _2379_ (.A1(\g_feeder[1].trip_timer[3] ),
    .A2(_0616_),
    .Y(_0619_),
    .B1(_0618_));
 sg13g2_xor2_1 _2380_ (.B(\g_feeder[1].trip_timer[6] ),
    .A(_0034_),
    .X(_0620_));
 sg13g2_xnor2_1 _2381_ (.Y(_0621_),
    .A(\g_feeder[1].trip_timer[4] ),
    .B(\delay_all[20] ));
 sg13g2_xor2_1 _2382_ (.B(\g_feeder[1].trip_timer[5] ),
    .A(_0033_),
    .X(_0622_));
 sg13g2_and4_1 _2383_ (.A(_0601_),
    .B(_0620_),
    .C(_0621_),
    .D(_0622_),
    .X(_0623_));
 sg13g2_nand4_1 _2384_ (.B(_0591_),
    .C(_0600_),
    .A(_0582_),
    .Y(_0624_),
    .D(_0623_));
 sg13g2_a21oi_1 _2385_ (.A1(_0615_),
    .A2(_0619_),
    .Y(_0625_),
    .B1(_0624_));
 sg13g2_inv_1 _2386_ (.Y(_0626_),
    .A(\g_feeder[1].trip_timer[8] ));
 sg13g2_o21ai_1 _2387_ (.B1(_0593_),
    .Y(_0627_),
    .A1(_0626_),
    .A2(\delay_all[24] ));
 sg13g2_nand2_1 _2388_ (.Y(_0628_),
    .A(\delay_all[28] ),
    .B(_0592_));
 sg13g2_nand2b_1 _2389_ (.Y(_0629_),
    .B(_0592_),
    .A_N(\g_feeder[1].trip_timer[12] ));
 sg13g2_nand2b_1 _2390_ (.Y(_0630_),
    .B(\g_feeder[1].trip_timer[10] ),
    .A_N(\delay_all[26] ));
 sg13g2_nand2b_1 _2391_ (.Y(_0631_),
    .B(\g_feeder[1].trip_timer[11] ),
    .A_N(\delay_all[27] ));
 sg13g2_o21ai_1 _2392_ (.B1(_0631_),
    .Y(_0632_),
    .A1(_0586_),
    .A2(_0630_));
 sg13g2_a221oi_1 _2393_ (.B2(_0629_),
    .C1(_0632_),
    .B1(_0628_),
    .A1(_0591_),
    .Y(_0633_),
    .A2(_0627_));
 sg13g2_nand3b_1 _2394_ (.B(\delay_all[28] ),
    .C(_0592_),
    .Y(_0634_),
    .A_N(\g_feeder[1].trip_timer[12] ));
 sg13g2_nand2_1 _2395_ (.Y(_0635_),
    .A(_0582_),
    .B(_0634_));
 sg13g2_nand2b_1 _2396_ (.Y(_0636_),
    .B(\g_feeder[1].trip_timer[14] ),
    .A_N(\delay_all[30] ));
 sg13g2_nor2_1 _2397_ (.A(\delay_all[31] ),
    .B(_0636_),
    .Y(_0637_));
 sg13g2_nand2_1 _2398_ (.Y(_0638_),
    .A(\delay_all[31] ),
    .B(_0636_));
 sg13g2_o21ai_1 _2399_ (.B1(_0638_),
    .Y(_0639_),
    .A1(\g_feeder[1].trip_timer[15] ),
    .A2(_0637_));
 sg13g2_o21ai_1 _2400_ (.B1(_0639_),
    .Y(_0640_),
    .A1(_0633_),
    .A2(_0635_));
 sg13g2_nor3_1 _2401_ (.A(_0603_),
    .B(_0625_),
    .C(_0640_),
    .Y(_0641_));
 sg13g2_nor3_2 _2402_ (.A(_0546_),
    .B(_0556_),
    .C(_0641_),
    .Y(_0642_));
 sg13g2_nand2_1 _2406_ (.Y(_0646_),
    .A(net621),
    .B(net602));
 sg13g2_nor2_1 _2409_ (.A(net66),
    .B(net611),
    .Y(_0649_));
 sg13g2_nand3_1 _2410_ (.B(net84),
    .C(_0649_),
    .A(net64),
    .Y(_0650_));
 sg13g2_o21ai_1 _2413_ (.B1(\fltcur_all[22] ),
    .Y(_0653_),
    .A1(net538),
    .A2(net537));
 sg13g2_nand2_1 _2415_ (.Y(_0655_),
    .A(net27),
    .B(net480));
 sg13g2_o21ai_1 _2416_ (.B1(_0655_),
    .Y(_0073_),
    .A1(net480),
    .A2(_0653_));
 sg13g2_o21ai_1 _2417_ (.B1(\fltcur_all[21] ),
    .Y(_0656_),
    .A1(net538),
    .A2(_0650_));
 sg13g2_nand2_1 _2418_ (.Y(_0657_),
    .A(net26),
    .B(net485));
 sg13g2_o21ai_1 _2419_ (.B1(_0657_),
    .Y(_0074_),
    .A1(net485),
    .A2(_0656_));
 sg13g2_o21ai_1 _2420_ (.B1(\fltcur_all[20] ),
    .Y(_0658_),
    .A1(net538),
    .A2(_0650_));
 sg13g2_nand2_1 _2421_ (.Y(_0659_),
    .A(net25),
    .B(net485));
 sg13g2_o21ai_1 _2422_ (.B1(_0659_),
    .Y(_0075_),
    .A1(net485),
    .A2(_0658_));
 sg13g2_o21ai_1 _2423_ (.B1(\fltcur_all[19] ),
    .Y(_0660_),
    .A1(net538),
    .A2(net537));
 sg13g2_nand2_1 _2424_ (.Y(_0661_),
    .A(net23),
    .B(net480));
 sg13g2_o21ai_1 _2425_ (.B1(_0661_),
    .Y(_0076_),
    .A1(net480),
    .A2(_0660_));
 sg13g2_o21ai_1 _2426_ (.B1(\fltcur_all[18] ),
    .Y(_0662_),
    .A1(net538),
    .A2(_0650_));
 sg13g2_nand2_1 _2427_ (.Y(_0663_),
    .A(net22),
    .B(net480));
 sg13g2_o21ai_1 _2428_ (.B1(_0663_),
    .Y(_0077_),
    .A1(net480),
    .A2(_0662_));
 sg13g2_o21ai_1 _2429_ (.B1(\fltcur_all[17] ),
    .Y(_0664_),
    .A1(_0646_),
    .A2(net537));
 sg13g2_nand2_1 _2430_ (.Y(_0665_),
    .A(net21),
    .B(net481));
 sg13g2_o21ai_1 _2431_ (.B1(_0665_),
    .Y(_0078_),
    .A1(net481),
    .A2(_0664_));
 sg13g2_o21ai_1 _2432_ (.B1(\fltcur_all[16] ),
    .Y(_0666_),
    .A1(net538),
    .A2(_0650_));
 sg13g2_nand2_1 _2433_ (.Y(_0667_),
    .A(net20),
    .B(net485));
 sg13g2_o21ai_1 _2434_ (.B1(_0667_),
    .Y(_0079_),
    .A1(net485),
    .A2(_0666_));
 sg13g2_o21ai_1 _2435_ (.B1(\fltcur_all[15] ),
    .Y(_0668_),
    .A1(_0646_),
    .A2(net537));
 sg13g2_nand2_1 _2436_ (.Y(_0669_),
    .A(net19),
    .B(net481));
 sg13g2_o21ai_1 _2437_ (.B1(_0669_),
    .Y(_0080_),
    .A1(net482),
    .A2(_0668_));
 sg13g2_o21ai_1 _2438_ (.B1(\fltcur_all[14] ),
    .Y(_0670_),
    .A1(net538),
    .A2(net537));
 sg13g2_nand2_1 _2439_ (.Y(_0671_),
    .A(net18),
    .B(net480));
 sg13g2_o21ai_1 _2440_ (.B1(_0671_),
    .Y(_0081_),
    .A1(net480),
    .A2(_0670_));
 sg13g2_o21ai_1 _2443_ (.B1(\fltcur_all[13] ),
    .Y(_0674_),
    .A1(_0646_),
    .A2(net537));
 sg13g2_nand2_1 _2444_ (.Y(_0675_),
    .A(net17),
    .B(net481));
 sg13g2_o21ai_1 _2445_ (.B1(_0675_),
    .Y(_0082_),
    .A1(net481),
    .A2(_0674_));
 sg13g2_o21ai_1 _2446_ (.B1(\fltcur_all[12] ),
    .Y(_0676_),
    .A1(_0646_),
    .A2(net537));
 sg13g2_nand2_1 _2447_ (.Y(_0677_),
    .A(net16),
    .B(net481));
 sg13g2_o21ai_1 _2448_ (.B1(_0677_),
    .Y(_0083_),
    .A1(net481),
    .A2(_0676_));
 sg13g2_inv_1 _2449_ (.Y(_0678_),
    .A(net603));
 sg13g2_nor3_1 _2450_ (.A(_0678_),
    .B(_1797_),
    .C(_0646_),
    .Y(_0679_));
 sg13g2_nor2b_1 _2453_ (.A(net518),
    .B_N(\fltcur_all[34] ),
    .Y(_0682_));
 sg13g2_mux2_1 _2454_ (.A0(net40),
    .A1(_0682_),
    .S(net472),
    .X(_0084_));
 sg13g2_nor2b_1 _2455_ (.A(net518),
    .B_N(\fltcur_all[33] ),
    .Y(_0683_));
 sg13g2_mux2_1 _2456_ (.A0(net39),
    .A1(_0683_),
    .S(net472),
    .X(_0085_));
 sg13g2_nor2b_1 _2457_ (.A(net518),
    .B_N(\fltcur_all[32] ),
    .Y(_0684_));
 sg13g2_mux2_1 _2458_ (.A0(net38),
    .A1(_0684_),
    .S(net472),
    .X(_0086_));
 sg13g2_nor2b_1 _2459_ (.A(net518),
    .B_N(\fltcur_all[31] ),
    .Y(_0685_));
 sg13g2_mux2_1 _2460_ (.A0(net37),
    .A1(_0685_),
    .S(net472),
    .X(_0087_));
 sg13g2_nor2b_1 _2461_ (.A(net518),
    .B_N(\fltcur_all[30] ),
    .Y(_0686_));
 sg13g2_mux2_1 _2462_ (.A0(net36),
    .A1(_0686_),
    .S(net472),
    .X(_0088_));
 sg13g2_nor2b_1 _2463_ (.A(_0679_),
    .B_N(\fltcur_all[29] ),
    .Y(_0687_));
 sg13g2_mux2_1 _2464_ (.A0(net34),
    .A1(_0687_),
    .S(net473),
    .X(_0089_));
 sg13g2_nor2b_1 _2465_ (.A(_0679_),
    .B_N(\fltcur_all[28] ),
    .Y(_0688_));
 sg13g2_mux2_1 _2466_ (.A0(net33),
    .A1(_0688_),
    .S(net473),
    .X(_0090_));
 sg13g2_nor2b_1 _2467_ (.A(_0679_),
    .B_N(\fltcur_all[27] ),
    .Y(_0689_));
 sg13g2_mux2_1 _2468_ (.A0(net32),
    .A1(_0689_),
    .S(net473),
    .X(_0091_));
 sg13g2_nor2b_1 _2469_ (.A(net519),
    .B_N(\fltcur_all[26] ),
    .Y(_0690_));
 sg13g2_mux2_1 _2470_ (.A0(net31),
    .A1(_0690_),
    .S(net473),
    .X(_0092_));
 sg13g2_nor2b_1 _2471_ (.A(_0679_),
    .B_N(\fltcur_all[25] ),
    .Y(_0691_));
 sg13g2_mux2_1 _2472_ (.A0(net30),
    .A1(_0691_),
    .S(net473),
    .X(_0093_));
 sg13g2_nor2b_1 _2473_ (.A(_0679_),
    .B_N(\fltcur_all[24] ),
    .Y(_0692_));
 sg13g2_mux2_1 _2474_ (.A0(net29),
    .A1(_0692_),
    .S(net473),
    .X(_0094_));
 sg13g2_nor2_1 _2475_ (.A(_0382_),
    .B(_0393_),
    .Y(_0693_));
 sg13g2_a21oi_1 _2476_ (.A1(_0365_),
    .A2(_0383_),
    .Y(_0694_),
    .B1(_0693_));
 sg13g2_nor2b_1 _2477_ (.A(_1803_),
    .B_N(_0424_),
    .Y(_0695_));
 sg13g2_a21o_1 _2478_ (.A2(_0695_),
    .A1(net76),
    .B1(net9),
    .X(_0696_));
 sg13g2_inv_1 _2479_ (.Y(_0697_),
    .A(_0696_));
 sg13g2_o21ai_1 _2480_ (.B1(net594),
    .Y(_0698_),
    .A1(_0694_),
    .A2(_0697_));
 sg13g2_and2_1 _2481_ (.A(\g_feeder[0].streak[0] ),
    .B(net103),
    .X(_0699_));
 sg13g2_and2_1 _2482_ (.A(_0698_),
    .B(_0699_),
    .X(_0700_));
 sg13g2_nor2_1 _2483_ (.A(\g_feeder[0].streak[1] ),
    .B(_0400_),
    .Y(_0701_));
 sg13g2_a21o_1 _2484_ (.A2(_0383_),
    .A1(_0365_),
    .B1(_0693_),
    .X(_0702_));
 sg13g2_inv_1 _2485_ (.Y(_0703_),
    .A(net594));
 sg13g2_a21oi_1 _2486_ (.A1(_0702_),
    .A2(_0696_),
    .Y(_0704_),
    .B1(_0703_));
 sg13g2_a21o_1 _2487_ (.A2(_0695_),
    .A1(net68),
    .B1(net5),
    .X(_0705_));
 sg13g2_o21ai_1 _2488_ (.B1(net103),
    .Y(_0706_),
    .A1(net594),
    .A2(_0705_));
 sg13g2_o21ai_1 _2489_ (.B1(\g_feeder[0].streak[0] ),
    .Y(_0707_),
    .A1(_0704_),
    .A2(_0706_));
 sg13g2_a22oi_1 _2490_ (.Y(_0095_),
    .B1(_0707_),
    .B2(_0400_),
    .A2(_0701_),
    .A1(_0700_));
 sg13g2_nor2_1 _2491_ (.A(_0678_),
    .B(_1797_),
    .Y(_0708_));
 sg13g2_inv_1 _2492_ (.Y(_0709_),
    .A(net621));
 sg13g2_and2_1 _2493_ (.A(_0709_),
    .B(net602),
    .X(_0710_));
 sg13g2_nand2_1 _2496_ (.Y(_0713_),
    .A(_0708_),
    .B(net535));
 sg13g2_mux2_1 _2499_ (.A0(net73),
    .A1(\delay_all[46] ),
    .S(net505),
    .X(_0096_));
 sg13g2_mux2_1 _2500_ (.A0(net72),
    .A1(\delay_all[45] ),
    .S(net505),
    .X(_0097_));
 sg13g2_mux2_1 _2501_ (.A0(net71),
    .A1(\delay_all[44] ),
    .S(net505),
    .X(_0098_));
 sg13g2_mux2_1 _2503_ (.A0(net70),
    .A1(\delay_all[43] ),
    .S(net505),
    .X(_0099_));
 sg13g2_mux2_1 _2504_ (.A0(net69),
    .A1(\delay_all[42] ),
    .S(net505),
    .X(_0100_));
 sg13g2_mux2_1 _2505_ (.A0(net83),
    .A1(\delay_all[41] ),
    .S(net505),
    .X(_0101_));
 sg13g2_mux2_1 _2506_ (.A0(net82),
    .A1(\delay_all[40] ),
    .S(_0713_),
    .X(_0102_));
 sg13g2_mux2_1 _2507_ (.A0(net81),
    .A1(\delay_all[39] ),
    .S(_0713_),
    .X(_0103_));
 sg13g2_nand2_1 _2508_ (.Y(_0717_),
    .A(_0043_),
    .B(_0713_));
 sg13g2_o21ai_1 _2509_ (.B1(_0717_),
    .Y(_0104_),
    .A1(net80),
    .A2(_0713_));
 sg13g2_nand2_1 _2510_ (.Y(_0718_),
    .A(_0042_),
    .B(net504));
 sg13g2_o21ai_1 _2511_ (.B1(_0718_),
    .Y(_0105_),
    .A1(net79),
    .A2(net504));
 sg13g2_mux2_1 _2512_ (.A0(net78),
    .A1(\delay_all[36] ),
    .S(net504),
    .X(_0106_));
 sg13g2_mux2_1 _2513_ (.A0(net77),
    .A1(\delay_all[35] ),
    .S(net504),
    .X(_0107_));
 sg13g2_nand2_1 _2514_ (.Y(_0719_),
    .A(_0041_),
    .B(net504));
 sg13g2_o21ai_1 _2515_ (.B1(_0719_),
    .Y(_0108_),
    .A1(net76),
    .A2(net504));
 sg13g2_mux2_1 _2516_ (.A0(net75),
    .A1(\delay_all[33] ),
    .S(net504),
    .X(_0109_));
 sg13g2_mux2_1 _2517_ (.A0(net606),
    .A1(\delay_all[32] ),
    .S(net504),
    .X(_0110_));
 sg13g2_and4_1 _2522_ (.A(\fltcnt_all[16] ),
    .B(\fltcnt_all[19] ),
    .C(\fltcnt_all[18] ),
    .D(\fltcnt_all[17] ),
    .X(_0724_));
 sg13g2_and2_1 _2523_ (.A(\fltcnt_all[20] ),
    .B(_0724_),
    .X(_0725_));
 sg13g2_and2_1 _2525_ (.A(\fltcnt_all[21] ),
    .B(_0725_),
    .X(_0727_));
 sg13g2_nand3_1 _2526_ (.B(_1899_),
    .C(_0727_),
    .A(net492),
    .Y(_0728_));
 sg13g2_inv_1 _2527_ (.Y(_0729_),
    .A(\fltcnt_all[22] ));
 sg13g2_nor3_1 _2528_ (.A(_1845_),
    .B(_1865_),
    .C(_1896_),
    .Y(_0730_));
 sg13g2_nand2_1 _2530_ (.Y(_0732_),
    .A(\fltcnt_all[22] ),
    .B(_0727_));
 sg13g2_nor4_1 _2531_ (.A(\fltcnt_all[23] ),
    .B(_0730_),
    .C(_0481_),
    .D(_0732_),
    .Y(_0733_));
 sg13g2_a221oi_1 _2532_ (.B2(_0729_),
    .C1(_0733_),
    .B1(_0728_),
    .A1(net472),
    .Y(_0111_),
    .A2(net518));
 sg13g2_nand3_1 _2533_ (.B(_1899_),
    .C(_0725_),
    .A(net492),
    .Y(_0734_));
 sg13g2_inv_1 _2534_ (.Y(_0735_),
    .A(\fltcnt_all[21] ));
 sg13g2_nand4_1 _2535_ (.B(\fltcnt_all[22] ),
    .C(\fltcnt_all[23] ),
    .A(\fltcnt_all[21] ),
    .Y(_0736_),
    .D(_0725_));
 sg13g2_and4_1 _2537_ (.A(net492),
    .B(_1899_),
    .C(_0727_),
    .D(_0736_),
    .X(_0738_));
 sg13g2_a221oi_1 _2538_ (.B2(_0735_),
    .C1(_0738_),
    .B1(_0734_),
    .A1(net472),
    .Y(_0112_),
    .A2(net519));
 sg13g2_nand3_1 _2539_ (.B(_1899_),
    .C(_0724_),
    .A(net492),
    .Y(_0739_));
 sg13g2_inv_1 _2540_ (.Y(_0740_),
    .A(\fltcnt_all[20] ));
 sg13g2_and4_1 _2541_ (.A(net492),
    .B(_1899_),
    .C(_0725_),
    .D(_0736_),
    .X(_0741_));
 sg13g2_a221oi_1 _2542_ (.B2(_0740_),
    .C1(_0741_),
    .B1(_0739_),
    .A1(_1901_),
    .Y(_0113_),
    .A2(net519));
 sg13g2_a21oi_1 _2543_ (.A1(net492),
    .A2(_1899_),
    .Y(_0742_),
    .B1(net518));
 sg13g2_nand4_1 _2544_ (.B(\fltcnt_all[18] ),
    .C(\fltcnt_all[17] ),
    .A(\fltcnt_all[16] ),
    .Y(_0743_),
    .D(_0736_));
 sg13g2_nand2_1 _2545_ (.Y(_0744_),
    .A(\fltcnt_all[19] ),
    .B(_0743_));
 sg13g2_or2_1 _2546_ (.X(_0745_),
    .B(_0744_),
    .A(net498));
 sg13g2_or3_1 _2547_ (.A(\fltcnt_all[19] ),
    .B(net498),
    .C(_0743_),
    .X(_0746_));
 sg13g2_a21oi_1 _2548_ (.A1(_0745_),
    .A2(_0746_),
    .Y(_0747_),
    .B1(_0730_));
 sg13g2_a21o_1 _2549_ (.A2(_0742_),
    .A1(\fltcnt_all[19] ),
    .B1(_0747_),
    .X(_0114_));
 sg13g2_inv_1 _2551_ (.Y(_0749_),
    .A(\fltcnt_all[18] ));
 sg13g2_a221oi_1 _2552_ (.B2(_0708_),
    .C1(_0749_),
    .B1(net543),
    .A1(net492),
    .Y(_0750_),
    .A2(_1899_));
 sg13g2_and2_1 _2553_ (.A(\fltcnt_all[16] ),
    .B(_0736_),
    .X(_0751_));
 sg13g2_nand2_1 _2555_ (.Y(_0753_),
    .A(\fltcnt_all[17] ),
    .B(_0751_));
 sg13g2_or3_1 _2556_ (.A(\fltcnt_all[18] ),
    .B(net498),
    .C(_0753_),
    .X(_0754_));
 sg13g2_a21oi_1 _2557_ (.A1(\fltcnt_all[17] ),
    .A2(_0751_),
    .Y(_0755_),
    .B1(_0749_));
 sg13g2_nand2b_1 _2558_ (.Y(_0756_),
    .B(_0755_),
    .A_N(net498));
 sg13g2_a21o_1 _2559_ (.A2(_0756_),
    .A1(_0754_),
    .B1(_0730_),
    .X(_0757_));
 sg13g2_nand2b_1 _2560_ (.Y(_0115_),
    .B(_0757_),
    .A_N(_0750_));
 sg13g2_a21oi_1 _2561_ (.A1(_1831_),
    .A2(_1841_),
    .Y(_0758_),
    .B1(_1844_));
 sg13g2_nand2b_1 _2562_ (.Y(_0759_),
    .B(\fltcnt_all[16] ),
    .A_N(\fltcnt_all[17] ));
 sg13g2_nand2b_1 _2563_ (.Y(_0760_),
    .B(\fltcnt_all[17] ),
    .A_N(_0751_));
 sg13g2_a221oi_1 _2565_ (.B2(_0760_),
    .C1(net498),
    .B1(_0759_),
    .A1(_0758_),
    .Y(_0762_),
    .A2(_0479_));
 sg13g2_a21o_1 _2566_ (.A2(_0742_),
    .A1(\fltcnt_all[17] ),
    .B1(_0762_),
    .X(_0116_));
 sg13g2_nor3_1 _2567_ (.A(_0730_),
    .B(net498),
    .C(_0751_),
    .Y(_0763_));
 sg13g2_a21o_1 _2568_ (.A2(_0742_),
    .A1(\fltcnt_all[16] ),
    .B1(_0763_),
    .X(_0117_));
 sg13g2_nor2_1 _2569_ (.A(_0522_),
    .B(_0551_),
    .Y(_0764_));
 sg13g2_nor2_1 _2570_ (.A(_0546_),
    .B(_0764_),
    .Y(_0765_));
 sg13g2_nand2_1 _2571_ (.Y(_0766_),
    .A(net64),
    .B(_0649_));
 sg13g2_nor2_1 _2572_ (.A(_1803_),
    .B(_0766_),
    .Y(_0767_));
 sg13g2_or2_1 _2573_ (.X(_0768_),
    .B(net6),
    .A(net106));
 sg13g2_a21o_1 _2574_ (.A2(_0767_),
    .A1(net68),
    .B1(_0768_),
    .X(_0769_));
 sg13g2_a21oi_1 _2575_ (.A1(net605),
    .A2(_0767_),
    .Y(_0770_),
    .B1(net2));
 sg13g2_nor4_1 _2576_ (.A(net105),
    .B(_0765_),
    .C(_0769_),
    .D(_0770_),
    .Y(_0771_));
 sg13g2_and2_1 _2578_ (.A(\g_feeder[1].streak[1] ),
    .B(net483),
    .X(_0773_));
 sg13g2_nor3_1 _2579_ (.A(_0554_),
    .B(net483),
    .C(_0769_),
    .Y(_0774_));
 sg13g2_a21o_1 _2580_ (.A2(_0767_),
    .A1(net604),
    .B1(net10),
    .X(_0775_));
 sg13g2_nand4_1 _2581_ (.B(_0535_),
    .C(_0545_),
    .A(_0524_),
    .Y(_0776_),
    .D(_0775_));
 sg13g2_inv_1 _2582_ (.Y(_0777_),
    .A(net106));
 sg13g2_a21oi_1 _2583_ (.A1(_0764_),
    .A2(_0775_),
    .Y(_0778_),
    .B1(_0777_));
 sg13g2_nand2_1 _2584_ (.Y(_0779_),
    .A(_0776_),
    .B(_0778_));
 sg13g2_nor2_1 _2585_ (.A(_0554_),
    .B(_0779_),
    .Y(_0780_));
 sg13g2_or4_1 _2586_ (.A(_0771_),
    .B(_0773_),
    .C(_0774_),
    .D(_0780_),
    .X(_0118_));
 sg13g2_and2_1 _2587_ (.A(net64),
    .B(_1796_),
    .X(_0781_));
 sg13g2_nand3_1 _2589_ (.B(net536),
    .C(_0781_),
    .A(net603),
    .Y(_0783_));
 sg13g2_mux2_1 _2592_ (.A0(net73),
    .A1(\delay_all[62] ),
    .S(net517),
    .X(_0119_));
 sg13g2_mux2_1 _2593_ (.A0(net72),
    .A1(\delay_all[61] ),
    .S(net517),
    .X(_0120_));
 sg13g2_mux2_1 _2594_ (.A0(net71),
    .A1(\delay_all[60] ),
    .S(net517),
    .X(_0121_));
 sg13g2_mux2_1 _2596_ (.A0(net70),
    .A1(\delay_all[59] ),
    .S(net517),
    .X(_0122_));
 sg13g2_mux2_1 _2597_ (.A0(net69),
    .A1(\delay_all[58] ),
    .S(net517),
    .X(_0123_));
 sg13g2_mux2_1 _2598_ (.A0(net83),
    .A1(\delay_all[57] ),
    .S(net517),
    .X(_0124_));
 sg13g2_mux2_1 _2599_ (.A0(net82),
    .A1(\delay_all[56] ),
    .S(_0783_),
    .X(_0125_));
 sg13g2_mux2_1 _2601_ (.A0(net81),
    .A1(\delay_all[55] ),
    .S(net517),
    .X(_0126_));
 sg13g2_nand2_1 _2602_ (.Y(_0788_),
    .A(_0052_),
    .B(net516));
 sg13g2_o21ai_1 _2603_ (.B1(_0788_),
    .Y(_0127_),
    .A1(net80),
    .A2(net516));
 sg13g2_nand2_1 _2605_ (.Y(_0790_),
    .A(_0051_),
    .B(net516));
 sg13g2_o21ai_1 _2606_ (.B1(_0790_),
    .Y(_0128_),
    .A1(net79),
    .A2(net516));
 sg13g2_mux2_1 _2607_ (.A0(net78),
    .A1(\delay_all[52] ),
    .S(net516),
    .X(_0129_));
 sg13g2_mux2_1 _2608_ (.A0(net77),
    .A1(\delay_all[51] ),
    .S(net516),
    .X(_0130_));
 sg13g2_nand2_1 _2610_ (.Y(_0792_),
    .A(_0050_),
    .B(net516));
 sg13g2_o21ai_1 _2611_ (.B1(_0792_),
    .Y(_0131_),
    .A1(net76),
    .A2(net516));
 sg13g2_mux2_1 _2612_ (.A0(net605),
    .A1(\delay_all[49] ),
    .S(_0783_),
    .X(_0132_));
 sg13g2_mux2_1 _2613_ (.A0(net606),
    .A1(\delay_all[48] ),
    .S(_0783_),
    .X(_0133_));
 sg13g2_nor2_1 _2614_ (.A(_0646_),
    .B(_0650_),
    .Y(_0793_));
 sg13g2_nor2b_1 _2615_ (.A(net482),
    .B_N(_0793_),
    .Y(_0794_));
 sg13g2_inv_1 _2617_ (.Y(_0796_),
    .A(\fltcnt_all[15] ));
 sg13g2_and3_1 _2620_ (.X(_0799_),
    .A(\fltcnt_all[10] ),
    .B(\fltcnt_all[9] ),
    .C(\fltcnt_all[8] ));
 sg13g2_and3_1 _2622_ (.X(_0801_),
    .A(\fltcnt_all[12] ),
    .B(\fltcnt_all[11] ),
    .C(_0799_));
 sg13g2_and2_1 _2623_ (.A(\fltcnt_all[13] ),
    .B(_0801_),
    .X(_0802_));
 sg13g2_and4_1 _2625_ (.A(\fltcnt_all[14] ),
    .B(_0796_),
    .C(net484),
    .D(_0802_),
    .X(_0804_));
 sg13g2_a21oi_1 _2626_ (.A1(net484),
    .A2(_0802_),
    .Y(_0805_),
    .B1(\fltcnt_all[14] ));
 sg13g2_nor3_1 _2627_ (.A(_0794_),
    .B(_0804_),
    .C(_0805_),
    .Y(_0134_));
 sg13g2_nand3_1 _2628_ (.B(\fltcnt_all[15] ),
    .C(_0802_),
    .A(\fltcnt_all[14] ),
    .Y(_0806_));
 sg13g2_and2_1 _2630_ (.A(net484),
    .B(_0806_),
    .X(_0808_));
 sg13g2_nand2_1 _2631_ (.Y(_0809_),
    .A(net484),
    .B(_0801_));
 sg13g2_inv_1 _2632_ (.Y(_0810_),
    .A(\fltcnt_all[13] ));
 sg13g2_a221oi_1 _2633_ (.B2(_0810_),
    .C1(_0794_),
    .B1(_0809_),
    .A1(_0802_),
    .Y(_0135_),
    .A2(_0808_));
 sg13g2_nand3_1 _2634_ (.B(net484),
    .C(_0799_),
    .A(\fltcnt_all[11] ),
    .Y(_0811_));
 sg13g2_inv_1 _2635_ (.Y(_0812_),
    .A(\fltcnt_all[12] ));
 sg13g2_a221oi_1 _2636_ (.B2(_0812_),
    .C1(_0794_),
    .B1(_0811_),
    .A1(_0801_),
    .Y(_0136_),
    .A2(_0808_));
 sg13g2_inv_1 _2637_ (.Y(_0813_),
    .A(\fltcnt_all[11] ));
 sg13g2_or2_1 _2638_ (.X(_0814_),
    .B(_0793_),
    .A(net482));
 sg13g2_and2_1 _2640_ (.A(_0813_),
    .B(_0799_),
    .X(_0816_));
 sg13g2_a21oi_1 _2641_ (.A1(_0799_),
    .A2(_0806_),
    .Y(_0817_),
    .B1(_0813_));
 sg13g2_o21ai_1 _2642_ (.B1(net484),
    .Y(_0818_),
    .A1(_0816_),
    .A2(_0817_));
 sg13g2_o21ai_1 _2643_ (.B1(_0818_),
    .Y(_0137_),
    .A1(_0813_),
    .A2(_0814_));
 sg13g2_inv_1 _2644_ (.Y(_0819_),
    .A(\fltcnt_all[10] ));
 sg13g2_nand3_1 _2645_ (.B(\fltcnt_all[8] ),
    .C(_0806_),
    .A(\fltcnt_all[9] ),
    .Y(_0820_));
 sg13g2_and2_1 _2646_ (.A(\fltcnt_all[10] ),
    .B(_0820_),
    .X(_0821_));
 sg13g2_nor2_1 _2647_ (.A(\fltcnt_all[10] ),
    .B(_0820_),
    .Y(_0822_));
 sg13g2_o21ai_1 _2648_ (.B1(net482),
    .Y(_0823_),
    .A1(_0821_),
    .A2(_0822_));
 sg13g2_o21ai_1 _2649_ (.B1(_0823_),
    .Y(_0138_),
    .A1(_0819_),
    .A2(_0814_));
 sg13g2_inv_1 _2650_ (.Y(_0824_),
    .A(\fltcnt_all[9] ));
 sg13g2_inv_1 _2651_ (.Y(_0825_),
    .A(\fltcnt_all[8] ));
 sg13g2_nor2_1 _2652_ (.A(\fltcnt_all[9] ),
    .B(_0825_),
    .Y(_0826_));
 sg13g2_a21oi_1 _2653_ (.A1(\fltcnt_all[8] ),
    .A2(_0806_),
    .Y(_0827_),
    .B1(_0824_));
 sg13g2_o21ai_1 _2654_ (.B1(net482),
    .Y(_0828_),
    .A1(_0826_),
    .A2(_0827_));
 sg13g2_o21ai_1 _2655_ (.B1(_0828_),
    .Y(_0139_),
    .A1(_0824_),
    .A2(_0814_));
 sg13g2_nand2_1 _2656_ (.Y(_0829_),
    .A(\fltcnt_all[8] ),
    .B(_0806_));
 sg13g2_nand2_1 _2657_ (.Y(_0830_),
    .A(net482),
    .B(_0829_));
 sg13g2_o21ai_1 _2658_ (.B1(_0830_),
    .Y(_0140_),
    .A1(_0825_),
    .A2(_0814_));
 sg13g2_nand3_1 _2659_ (.B(_0424_),
    .C(_0710_),
    .A(net84),
    .Y(_0831_));
 sg13g2_mux2_1 _2662_ (.A0(net73),
    .A1(\delay_all[14] ),
    .S(net515),
    .X(_0141_));
 sg13g2_mux2_1 _2663_ (.A0(net72),
    .A1(\delay_all[13] ),
    .S(net515),
    .X(_0142_));
 sg13g2_mux2_1 _2664_ (.A0(net71),
    .A1(\delay_all[12] ),
    .S(net515),
    .X(_0143_));
 sg13g2_mux2_1 _2665_ (.A0(net70),
    .A1(\delay_all[11] ),
    .S(net515),
    .X(_0144_));
 sg13g2_mux2_1 _2666_ (.A0(net69),
    .A1(\delay_all[10] ),
    .S(net515),
    .X(_0145_));
 sg13g2_mux2_1 _2667_ (.A0(net83),
    .A1(\delay_all[9] ),
    .S(net515),
    .X(_0146_));
 sg13g2_mux2_1 _2668_ (.A0(net82),
    .A1(\delay_all[8] ),
    .S(net515),
    .X(_0147_));
 sg13g2_mux2_1 _2669_ (.A0(net81),
    .A1(\delay_all[7] ),
    .S(_0831_),
    .X(_0148_));
 sg13g2_nand2_1 _2670_ (.Y(_0834_),
    .A(_0025_),
    .B(_0831_));
 sg13g2_o21ai_1 _2671_ (.B1(_0834_),
    .Y(_0149_),
    .A1(net80),
    .A2(_0831_));
 sg13g2_nand2_1 _2672_ (.Y(_0835_),
    .A(_0024_),
    .B(_0831_));
 sg13g2_o21ai_1 _2673_ (.B1(_0835_),
    .Y(_0150_),
    .A1(net79),
    .A2(_0831_));
 sg13g2_mux2_1 _2674_ (.A0(net78),
    .A1(\delay_all[4] ),
    .S(net514),
    .X(_0151_));
 sg13g2_mux2_1 _2675_ (.A0(net77),
    .A1(\delay_all[3] ),
    .S(net514),
    .X(_0152_));
 sg13g2_nand2_1 _2676_ (.Y(_0836_),
    .A(_0023_),
    .B(net514));
 sg13g2_o21ai_1 _2677_ (.B1(_0836_),
    .Y(_0153_),
    .A1(net76),
    .A2(net514));
 sg13g2_mux2_1 _2678_ (.A0(net605),
    .A1(\delay_all[1] ),
    .S(net514),
    .X(_0154_));
 sg13g2_mux2_1 _2679_ (.A0(net68),
    .A1(\delay_all[0] ),
    .S(net514),
    .X(_0155_));
 sg13g2_inv_1 _2680_ (.Y(_0837_),
    .A(net92));
 sg13g2_nand3b_1 _2684_ (.B(net608),
    .C(net536),
    .Y(_0841_),
    .A_N(net609));
 sg13g2_or2_1 _2686_ (.X(_0843_),
    .B(net609),
    .A(\delay_all[62] ));
 sg13g2_mux4_1 _2688_ (.S0(net610),
    .A0(\delay_all[14] ),
    .A1(\delay_all[46] ),
    .A2(\delay_all[30] ),
    .A3(_0843_),
    .S1(net613),
    .X(_0845_));
 sg13g2_nand2b_1 _2689_ (.Y(_0846_),
    .B(_0845_),
    .A_N(_0841_));
 sg13g2_o21ai_1 _2690_ (.B1(_0846_),
    .Y(_0156_),
    .A1(_0837_),
    .A2(net607));
 sg13g2_inv_1 _2691_ (.Y(_0847_),
    .A(net91));
 sg13g2_or2_1 _2692_ (.X(_0848_),
    .B(net609),
    .A(\delay_all[61] ));
 sg13g2_mux4_1 _2695_ (.S0(net595),
    .A0(\delay_all[29] ),
    .A1(\delay_all[13] ),
    .A2(_0848_),
    .A3(\delay_all[45] ),
    .S1(net610),
    .X(_0851_));
 sg13g2_nand2b_1 _2696_ (.Y(_0852_),
    .B(_0851_),
    .A_N(_0841_));
 sg13g2_o21ai_1 _2697_ (.B1(_0852_),
    .Y(_0157_),
    .A1(net607),
    .A2(_0847_));
 sg13g2_inv_1 _2698_ (.Y(_0853_),
    .A(net90));
 sg13g2_or2_1 _2699_ (.X(_0854_),
    .B(net609),
    .A(\delay_all[60] ));
 sg13g2_inv_1 _2700_ (.Y(_0855_),
    .A(net610));
 sg13g2_mux4_1 _2701_ (.S0(_0855_),
    .A0(\delay_all[44] ),
    .A1(\delay_all[12] ),
    .A2(_0854_),
    .A3(\delay_all[28] ),
    .S1(net613),
    .X(_0856_));
 sg13g2_nand2b_1 _2702_ (.Y(_0857_),
    .B(_0856_),
    .A_N(_0841_));
 sg13g2_o21ai_1 _2703_ (.B1(_0857_),
    .Y(_0158_),
    .A1(net607),
    .A2(_0853_));
 sg13g2_mux2_1 _2709_ (.A0(\fltcur_all[35] ),
    .A1(net41),
    .S(net623),
    .X(_0863_));
 sg13g2_a22oi_1 _2712_ (.Y(_0866_),
    .B1(_0863_),
    .B2(net615),
    .A2(_0418_),
    .A1(\delay_all[43] ));
 sg13g2_a21oi_1 _2714_ (.A1(\g_feeder[2].threshold[11] ),
    .A2(net601),
    .Y(_0868_),
    .B1(net522));
 sg13g2_o21ai_1 _2715_ (.B1(_0868_),
    .Y(_0869_),
    .A1(net618),
    .A2(_0866_));
 sg13g2_nand2_1 _2716_ (.Y(_0870_),
    .A(net616),
    .B(net619));
 sg13g2_nand2_1 _2717_ (.Y(_0871_),
    .A(net67),
    .B(_0870_));
 sg13g2_nor2_1 _2718_ (.A(net609),
    .B(_0871_),
    .Y(_0872_));
 sg13g2_mux2_1 _2721_ (.A0(\fltcur_all[47] ),
    .A1(net54),
    .S(net622),
    .X(_0875_));
 sg13g2_a22oi_1 _2722_ (.Y(_0876_),
    .B1(_0875_),
    .B2(net615),
    .A2(_0418_),
    .A1(\delay_all[59] ));
 sg13g2_nand2_1 _2724_ (.Y(_0878_),
    .A(net64),
    .B(_1796_));
 sg13g2_a21oi_1 _2726_ (.A1(\g_feeder[3].threshold[11] ),
    .A2(net601),
    .Y(_0880_),
    .B1(net532));
 sg13g2_o21ai_1 _2727_ (.B1(_0880_),
    .Y(_0881_),
    .A1(net618),
    .A2(_0876_));
 sg13g2_nand3_1 _2728_ (.B(_0872_),
    .C(_0881_),
    .A(_0869_),
    .Y(_0882_));
 sg13g2_nor2b_1 _2729_ (.A(net619),
    .B_N(net63),
    .Y(_0883_));
 sg13g2_and2_1 _2731_ (.A(net61),
    .B(_0883_),
    .X(_0885_));
 sg13g2_inv_1 _2734_ (.Y(_0888_),
    .A(net624));
 sg13g2_and2_1 _2735_ (.A(_0888_),
    .B(_0883_),
    .X(_0889_));
 sg13g2_a22oi_1 _2739_ (.Y(_0893_),
    .B1(net527),
    .B2(\fltcur_all[23] ),
    .A2(net529),
    .A1(net28));
 sg13g2_a22oi_1 _2740_ (.Y(_0894_),
    .B1(net534),
    .B2(\delay_all[27] ),
    .A2(net600),
    .A1(\g_feeder[1].threshold[11] ));
 sg13g2_nand3_1 _2741_ (.B(_0893_),
    .C(_0894_),
    .A(net613),
    .Y(_0895_));
 sg13g2_a22oi_1 _2742_ (.Y(_0896_),
    .B1(net529),
    .B2(net15),
    .A2(net599),
    .A1(\g_feeder[0].threshold[11] ));
 sg13g2_a22oi_1 _2744_ (.Y(_0898_),
    .B1(net525),
    .B2(\fltcur_all[11] ),
    .A2(net533),
    .A1(\delay_all[11] ));
 sg13g2_nand3_1 _2745_ (.B(_0896_),
    .C(_0898_),
    .A(net595),
    .Y(_0899_));
 sg13g2_a21oi_1 _2746_ (.A1(_0895_),
    .A2(_0899_),
    .Y(_0900_),
    .B1(net610));
 sg13g2_nand2b_1 _2747_ (.Y(_0901_),
    .B(net89),
    .A_N(net607));
 sg13g2_o21ai_1 _2748_ (.B1(_0901_),
    .Y(_0159_),
    .A1(_0882_),
    .A2(_0900_));
 sg13g2_inv_1 _2750_ (.Y(_0903_),
    .A(_0044_));
 sg13g2_nor2_1 _2751_ (.A(net63),
    .B(net61),
    .Y(_0904_));
 sg13g2_mux2_1 _2754_ (.A0(\fltcur_all[46] ),
    .A1(net53),
    .S(net622),
    .X(_0907_));
 sg13g2_a22oi_1 _2755_ (.Y(_0908_),
    .B1(_0907_),
    .B2(net615),
    .A2(_0904_),
    .A1(_0903_));
 sg13g2_a21oi_1 _2756_ (.A1(\delay_all[58] ),
    .A2(net535),
    .Y(_0909_),
    .B1(net532));
 sg13g2_o21ai_1 _2757_ (.B1(_0909_),
    .Y(_0910_),
    .A1(net618),
    .A2(_0908_));
 sg13g2_inv_1 _2758_ (.Y(_0911_),
    .A(_0035_));
 sg13g2_mux2_1 _2759_ (.A0(\fltcur_all[34] ),
    .A1(net40),
    .S(net623),
    .X(_0912_));
 sg13g2_a22oi_1 _2760_ (.Y(_0913_),
    .B1(_0912_),
    .B2(net615),
    .A2(_0904_),
    .A1(_0911_));
 sg13g2_a21oi_1 _2761_ (.A1(\delay_all[42] ),
    .A2(net535),
    .Y(_0914_),
    .B1(net522));
 sg13g2_o21ai_1 _2762_ (.B1(_0914_),
    .Y(_0915_),
    .A1(net618),
    .A2(_0913_));
 sg13g2_nand3_1 _2763_ (.B(_0910_),
    .C(_0915_),
    .A(_0872_),
    .Y(_0916_));
 sg13g2_a22oi_1 _2764_ (.Y(_0917_),
    .B1(net527),
    .B2(\fltcur_all[22] ),
    .A2(net529),
    .A1(net27));
 sg13g2_a22oi_1 _2765_ (.Y(_0918_),
    .B1(net534),
    .B2(\delay_all[26] ),
    .A2(net600),
    .A1(_0541_));
 sg13g2_nand3_1 _2766_ (.B(_0917_),
    .C(_0918_),
    .A(net613),
    .Y(_0919_));
 sg13g2_a22oi_1 _2767_ (.Y(_0920_),
    .B1(net529),
    .B2(net14),
    .A2(net533),
    .A1(\delay_all[10] ));
 sg13g2_inv_1 _2768_ (.Y(_0921_),
    .A(_0017_));
 sg13g2_a22oi_1 _2770_ (.Y(_0923_),
    .B1(net525),
    .B2(\fltcur_all[10] ),
    .A2(net599),
    .A1(_0921_));
 sg13g2_nand3_1 _2771_ (.B(_0920_),
    .C(_0923_),
    .A(net595),
    .Y(_0924_));
 sg13g2_a21oi_1 _2772_ (.A1(_0919_),
    .A2(_0924_),
    .Y(_0925_),
    .B1(net610));
 sg13g2_nand2b_1 _2773_ (.Y(_0926_),
    .B(net88),
    .A_N(net607));
 sg13g2_o21ai_1 _2774_ (.B1(_0926_),
    .Y(_0160_),
    .A1(_0916_),
    .A2(_0925_));
 sg13g2_inv_1 _2776_ (.Y(_0928_),
    .A(_0049_));
 sg13g2_mux2_1 _2778_ (.A0(\fltcur_all[45] ),
    .A1(net52),
    .S(net622),
    .X(_0930_));
 sg13g2_a22oi_1 _2779_ (.Y(_0931_),
    .B1(_0930_),
    .B2(net63),
    .A2(_0904_),
    .A1(_0928_));
 sg13g2_a21oi_1 _2780_ (.A1(\delay_all[57] ),
    .A2(net536),
    .Y(_0932_),
    .B1(net532));
 sg13g2_o21ai_1 _2781_ (.B1(_0932_),
    .Y(_0933_),
    .A1(net618),
    .A2(_0931_));
 sg13g2_inv_1 _2782_ (.Y(_0934_),
    .A(_0040_));
 sg13g2_mux2_1 _2783_ (.A0(\fltcur_all[33] ),
    .A1(net39),
    .S(net623),
    .X(_0935_));
 sg13g2_a22oi_1 _2784_ (.Y(_0936_),
    .B1(_0935_),
    .B2(net615),
    .A2(_0904_),
    .A1(_0934_));
 sg13g2_a21oi_1 _2785_ (.A1(\delay_all[41] ),
    .A2(net535),
    .Y(_0937_),
    .B1(net522));
 sg13g2_o21ai_1 _2786_ (.B1(_0937_),
    .Y(_0938_),
    .A1(net618),
    .A2(_0936_));
 sg13g2_nand3_1 _2787_ (.B(_0933_),
    .C(_0938_),
    .A(_0872_),
    .Y(_0939_));
 sg13g2_a22oi_1 _2788_ (.Y(_0940_),
    .B1(net529),
    .B2(net26),
    .A2(net534),
    .A1(\delay_all[25] ));
 sg13g2_inv_1 _2789_ (.Y(_0941_),
    .A(_0031_));
 sg13g2_a22oi_1 _2790_ (.Y(_0942_),
    .B1(net526),
    .B2(\fltcur_all[21] ),
    .A2(net600),
    .A1(_0941_));
 sg13g2_nand3_1 _2791_ (.B(_0940_),
    .C(_0942_),
    .A(net613),
    .Y(_0943_));
 sg13g2_a22oi_1 _2793_ (.Y(_0945_),
    .B1(net525),
    .B2(\fltcur_all[9] ),
    .A2(net529),
    .A1(net60));
 sg13g2_inv_1 _2794_ (.Y(_0946_),
    .A(_0022_));
 sg13g2_a22oi_1 _2795_ (.Y(_0947_),
    .B1(net533),
    .B2(\delay_all[9] ),
    .A2(net599),
    .A1(_0946_));
 sg13g2_nand3_1 _2796_ (.B(_0945_),
    .C(_0947_),
    .A(net595),
    .Y(_0948_));
 sg13g2_a21oi_1 _2797_ (.A1(_0943_),
    .A2(_0948_),
    .Y(_0949_),
    .B1(net610));
 sg13g2_nand2b_1 _2798_ (.Y(_0950_),
    .B(net102),
    .A_N(net607));
 sg13g2_o21ai_1 _2799_ (.B1(_0950_),
    .Y(_0161_),
    .A1(_0939_),
    .A2(_0949_));
 sg13g2_mux2_1 _2800_ (.A0(\fltcur_all[44] ),
    .A1(net51),
    .S(net622),
    .X(_0951_));
 sg13g2_a22oi_1 _2801_ (.Y(_0952_),
    .B1(_0951_),
    .B2(net616),
    .A2(_0418_),
    .A1(\delay_all[56] ));
 sg13g2_inv_1 _2802_ (.Y(_0953_),
    .A(_0048_));
 sg13g2_a21oi_1 _2803_ (.A1(_0953_),
    .A2(net601),
    .Y(_0954_),
    .B1(net532));
 sg13g2_o21ai_1 _2804_ (.B1(_0954_),
    .Y(_0955_),
    .A1(net618),
    .A2(_0952_));
 sg13g2_inv_1 _2805_ (.Y(_0956_),
    .A(_0039_));
 sg13g2_mux2_1 _2806_ (.A0(\fltcur_all[32] ),
    .A1(net38),
    .S(net623),
    .X(_0957_));
 sg13g2_a22oi_1 _2807_ (.Y(_0958_),
    .B1(_0957_),
    .B2(net615),
    .A2(_0904_),
    .A1(_0956_));
 sg13g2_a21oi_1 _2808_ (.A1(\delay_all[40] ),
    .A2(net535),
    .Y(_0959_),
    .B1(net522));
 sg13g2_o21ai_1 _2809_ (.B1(_0959_),
    .Y(_0960_),
    .A1(net618),
    .A2(_0958_));
 sg13g2_nand3_1 _2810_ (.B(_0955_),
    .C(_0960_),
    .A(_0872_),
    .Y(_0961_));
 sg13g2_a22oi_1 _2811_ (.Y(_0962_),
    .B1(net526),
    .B2(\fltcur_all[20] ),
    .A2(net529),
    .A1(net25));
 sg13g2_inv_1 _2812_ (.Y(_0963_),
    .A(_0030_));
 sg13g2_a22oi_1 _2813_ (.Y(_0964_),
    .B1(net534),
    .B2(\delay_all[24] ),
    .A2(net600),
    .A1(_0963_));
 sg13g2_nand3_1 _2814_ (.B(_0962_),
    .C(_0964_),
    .A(net613),
    .Y(_0965_));
 sg13g2_a22oi_1 _2815_ (.Y(_0966_),
    .B1(net529),
    .B2(net59),
    .A2(net533),
    .A1(\delay_all[8] ));
 sg13g2_inv_1 _2816_ (.Y(_0967_),
    .A(_0021_));
 sg13g2_a22oi_1 _2818_ (.Y(_0969_),
    .B1(net525),
    .B2(\fltcur_all[8] ),
    .A2(net599),
    .A1(_0967_));
 sg13g2_nand3_1 _2819_ (.B(_0966_),
    .C(_0969_),
    .A(net595),
    .Y(_0970_));
 sg13g2_a21oi_1 _2820_ (.A1(_0965_),
    .A2(_0970_),
    .Y(_0971_),
    .B1(net610));
 sg13g2_nand2b_1 _2821_ (.Y(_0972_),
    .B(net101),
    .A_N(net608));
 sg13g2_o21ai_1 _2822_ (.B1(_0972_),
    .Y(_0162_),
    .A1(_0961_),
    .A2(_0971_));
 sg13g2_inv_1 _2823_ (.Y(_0973_),
    .A(net100));
 sg13g2_mux2_1 _2824_ (.A0(\fltcur_all[7] ),
    .A1(net58),
    .S(net624),
    .X(_0974_));
 sg13g2_a22oi_1 _2825_ (.Y(_0975_),
    .B1(_0974_),
    .B2(net614),
    .A2(net602),
    .A1(\delay_all[7] ));
 sg13g2_nor2_1 _2826_ (.A(net620),
    .B(_0975_),
    .Y(_0976_));
 sg13g2_inv_1 _2827_ (.Y(_0977_),
    .A(_0020_));
 sg13g2_nor2_1 _2828_ (.A(net624),
    .B(net620),
    .Y(_0978_));
 sg13g2_nor2_1 _2830_ (.A(_0888_),
    .B(_0709_),
    .Y(_0980_));
 sg13g2_a22oi_1 _2832_ (.Y(_0982_),
    .B1(_0980_),
    .B2(\fltcnt_all[7] ),
    .A2(_0978_),
    .A1(_0977_));
 sg13g2_nor2_1 _2833_ (.A(net614),
    .B(_0982_),
    .Y(_0983_));
 sg13g2_nor3_1 _2834_ (.A(net612),
    .B(_0976_),
    .C(_0983_),
    .Y(_0984_));
 sg13g2_a22oi_1 _2835_ (.Y(_0985_),
    .B1(_0980_),
    .B2(\fltcnt_all[15] ),
    .A2(_0978_),
    .A1(_0525_));
 sg13g2_nor2_1 _2836_ (.A(net617),
    .B(_0985_),
    .Y(_0986_));
 sg13g2_mux2_1 _2837_ (.A0(\fltcur_all[19] ),
    .A1(net23),
    .S(net624),
    .X(_0987_));
 sg13g2_a22oi_1 _2838_ (.Y(_0988_),
    .B1(_0987_),
    .B2(net614),
    .A2(net602),
    .A1(\delay_all[23] ));
 sg13g2_nor2_1 _2839_ (.A(net620),
    .B(_0988_),
    .Y(_0989_));
 sg13g2_nor3_1 _2840_ (.A(_1794_),
    .B(_0986_),
    .C(_0989_),
    .Y(_0990_));
 sg13g2_o21ai_1 _2841_ (.B1(_0855_),
    .Y(_0991_),
    .A1(_0984_),
    .A2(_0990_));
 sg13g2_nand2_1 _2842_ (.Y(_0992_),
    .A(_0709_),
    .B(_0904_));
 sg13g2_nand2_1 _2843_ (.Y(_0993_),
    .A(\fltcur_all[31] ),
    .B(net528));
 sg13g2_o21ai_1 _2844_ (.B1(_0993_),
    .Y(_0994_),
    .A1(_0038_),
    .A2(_0992_));
 sg13g2_a221oi_1 _2845_ (.B2(net37),
    .C1(_0994_),
    .B1(net531),
    .A1(\fltcnt_all[23] ),
    .Y(_0995_),
    .A2(net543));
 sg13g2_a21oi_1 _2846_ (.A1(\delay_all[39] ),
    .A2(net535),
    .Y(_0996_),
    .B1(net522));
 sg13g2_o21ai_1 _2848_ (.B1(_0781_),
    .Y(_0998_),
    .A1(_0047_),
    .A2(_0992_));
 sg13g2_a221oi_1 _2849_ (.B2(\fltcur_all[43] ),
    .C1(_0998_),
    .B1(net528),
    .A1(\delay_all[55] ),
    .Y(_0999_),
    .A2(net536));
 sg13g2_a22oi_1 _2851_ (.Y(_1001_),
    .B1(_0885_),
    .B2(net50),
    .A2(net543),
    .A1(\fltcnt_all[31] ));
 sg13g2_a22oi_1 _2852_ (.Y(_1002_),
    .B1(_0999_),
    .B2(_1001_),
    .A2(_0996_),
    .A1(_0995_));
 sg13g2_nand3_1 _2853_ (.B(_0991_),
    .C(_1002_),
    .A(_0872_),
    .Y(_1003_));
 sg13g2_o21ai_1 _2854_ (.B1(_1003_),
    .Y(_0163_),
    .A1(net607),
    .A2(_0973_));
 sg13g2_inv_1 _2855_ (.Y(_1004_),
    .A(net99));
 sg13g2_inv_1 _2856_ (.Y(_1005_),
    .A(_0019_));
 sg13g2_a22oi_1 _2857_ (.Y(_1006_),
    .B1(_0980_),
    .B2(\fltcnt_all[6] ),
    .A2(_0978_),
    .A1(_1005_));
 sg13g2_nor2_1 _2858_ (.A(net614),
    .B(_1006_),
    .Y(_1007_));
 sg13g2_inv_1 _2859_ (.Y(_1008_),
    .A(_0025_));
 sg13g2_mux2_1 _2860_ (.A0(\fltcur_all[6] ),
    .A1(net57),
    .S(net624),
    .X(_1009_));
 sg13g2_a22oi_1 _2861_ (.Y(_1010_),
    .B1(_1009_),
    .B2(net614),
    .A2(net602),
    .A1(_1008_));
 sg13g2_nor2_1 _2862_ (.A(net620),
    .B(_1010_),
    .Y(_1011_));
 sg13g2_nor3_1 _2863_ (.A(net612),
    .B(_1007_),
    .C(_1011_),
    .Y(_1012_));
 sg13g2_inv_1 _2864_ (.Y(_1013_),
    .A(_0028_));
 sg13g2_a22oi_1 _2865_ (.Y(_1014_),
    .B1(_0980_),
    .B2(\fltcnt_all[14] ),
    .A2(_0978_),
    .A1(_1013_));
 sg13g2_nor2_1 _2866_ (.A(net614),
    .B(_1014_),
    .Y(_1015_));
 sg13g2_mux2_1 _2867_ (.A0(\fltcur_all[18] ),
    .A1(net22),
    .S(net624),
    .X(_1016_));
 sg13g2_a22oi_1 _2868_ (.Y(_1017_),
    .B1(_1016_),
    .B2(net614),
    .A2(net602),
    .A1(_0566_));
 sg13g2_nor2_1 _2869_ (.A(net620),
    .B(_1017_),
    .Y(_1018_));
 sg13g2_nor3_1 _2870_ (.A(_1794_),
    .B(_1015_),
    .C(_1018_),
    .Y(_1019_));
 sg13g2_o21ai_1 _2871_ (.B1(_0855_),
    .Y(_1020_),
    .A1(_1012_),
    .A2(_1019_));
 sg13g2_and2_1 _2872_ (.A(_1794_),
    .B(_1796_),
    .X(_1021_));
 sg13g2_inv_1 _2874_ (.Y(_1023_),
    .A(_0037_));
 sg13g2_a22oi_1 _2875_ (.Y(_1024_),
    .B1(net531),
    .B2(net36),
    .A2(net601),
    .A1(_1023_));
 sg13g2_a22oi_1 _2876_ (.Y(_1025_),
    .B1(net528),
    .B2(\fltcur_all[30] ),
    .A2(net543),
    .A1(\fltcnt_all[22] ));
 sg13g2_nand2b_1 _2877_ (.Y(_1026_),
    .B(net535),
    .A_N(_0043_));
 sg13g2_nand4_1 _2878_ (.B(_1024_),
    .C(_1025_),
    .A(_1021_),
    .Y(_1027_),
    .D(_1026_));
 sg13g2_inv_1 _2880_ (.Y(_1029_),
    .A(_0046_));
 sg13g2_a22oi_1 _2881_ (.Y(_1030_),
    .B1(_0885_),
    .B2(net49),
    .A2(net601),
    .A1(_1029_));
 sg13g2_a22oi_1 _2882_ (.Y(_1031_),
    .B1(net528),
    .B2(\fltcur_all[42] ),
    .A2(net543),
    .A1(\fltcnt_all[30] ));
 sg13g2_nand2b_1 _2883_ (.Y(_1032_),
    .B(net536),
    .A_N(_0052_));
 sg13g2_nand4_1 _2884_ (.B(_1030_),
    .C(_1031_),
    .A(_0781_),
    .Y(_1033_),
    .D(_1032_));
 sg13g2_nand4_1 _2885_ (.B(_1020_),
    .C(_1027_),
    .A(_0872_),
    .Y(_1034_),
    .D(_1033_));
 sg13g2_o21ai_1 _2886_ (.B1(_1034_),
    .Y(_0164_),
    .A1(net608),
    .A2(_1004_));
 sg13g2_a22oi_1 _2887_ (.Y(_1035_),
    .B1(net530),
    .B2(net21),
    .A2(_0710_),
    .A1(_0563_));
 sg13g2_and2_1 _2888_ (.A(net621),
    .B(_0904_),
    .X(_1036_));
 sg13g2_a22oi_1 _2891_ (.Y(_1039_),
    .B1(_1036_),
    .B2(\g_feeder[1].streak[1] ),
    .A2(net598),
    .A1(\g_feeder[1].threshold[5] ));
 sg13g2_a22oi_1 _2892_ (.Y(_1040_),
    .B1(net527),
    .B2(\fltcur_all[17] ),
    .A2(net544),
    .A1(\fltcnt_all[13] ));
 sg13g2_nand4_1 _2893_ (.B(_1035_),
    .C(_1039_),
    .A(net612),
    .Y(_1041_),
    .D(_1040_));
 sg13g2_a22oi_1 _2894_ (.Y(_1042_),
    .B1(net533),
    .B2(_1926_),
    .A2(net599),
    .A1(\g_feeder[0].threshold[5] ));
 sg13g2_a22oi_1 _2896_ (.Y(_1044_),
    .B1(net526),
    .B2(\fltcur_all[5] ),
    .A2(net545),
    .A1(\fltcnt_all[5] ));
 sg13g2_a22oi_1 _2897_ (.Y(_1045_),
    .B1(net523),
    .B2(\g_feeder[0].streak[1] ),
    .A2(net530),
    .A1(net56));
 sg13g2_nand4_1 _2898_ (.B(_1042_),
    .C(_1044_),
    .A(net596),
    .Y(_1046_),
    .D(_1045_));
 sg13g2_a21oi_1 _2899_ (.A1(_1041_),
    .A2(_1046_),
    .Y(_1047_),
    .B1(net611));
 sg13g2_a22oi_1 _2900_ (.Y(_1048_),
    .B1(_0980_),
    .B2(\fltcnt_all[21] ),
    .A2(_0978_),
    .A1(\g_feeder[2].threshold[5] ));
 sg13g2_mux2_1 _2901_ (.A0(\fltcur_all[29] ),
    .A1(net34),
    .S(net623),
    .X(_1049_));
 sg13g2_nand2_1 _2902_ (.Y(_1050_),
    .A(_0709_),
    .B(_0418_));
 sg13g2_o21ai_1 _2903_ (.B1(_1021_),
    .Y(_1051_),
    .A1(_0042_),
    .A2(_1050_));
 sg13g2_a221oi_1 _2904_ (.B2(_0883_),
    .C1(_1051_),
    .B1(_1049_),
    .A1(\g_feeder[2].streak[1] ),
    .Y(_1052_),
    .A2(net524));
 sg13g2_o21ai_1 _2905_ (.B1(_1052_),
    .Y(_1053_),
    .A1(net63),
    .A2(_1048_));
 sg13g2_inv_1 _2906_ (.Y(_1054_),
    .A(net616));
 sg13g2_nand2_1 _2908_ (.Y(_1056_),
    .A(net597),
    .B(\g_feeder[3].threshold[5] ));
 sg13g2_o21ai_1 _2909_ (.B1(_1056_),
    .Y(_1057_),
    .A1(_0051_),
    .A2(net597));
 sg13g2_nor2_1 _2910_ (.A(_1054_),
    .B(net597),
    .Y(_1058_));
 sg13g2_a22oi_1 _2912_ (.Y(_1060_),
    .B1(_1058_),
    .B2(net48),
    .A2(_1057_),
    .A1(_1054_));
 sg13g2_a21o_1 _2913_ (.A2(_0420_),
    .A1(\fltcnt_all[29] ),
    .B1(_0878_),
    .X(_1061_));
 sg13g2_a221oi_1 _2914_ (.B2(\g_feeder[3].streak[1] ),
    .C1(_1061_),
    .B1(net524),
    .A1(\fltcur_all[41] ),
    .Y(_1062_),
    .A2(_0889_));
 sg13g2_o21ai_1 _2915_ (.B1(_1062_),
    .Y(_1063_),
    .A1(net62),
    .A2(_1060_));
 sg13g2_nor2b_1 _2916_ (.A(net609),
    .B_N(net67),
    .Y(_1064_));
 sg13g2_nand3_1 _2917_ (.B(_1063_),
    .C(_1064_),
    .A(_1053_),
    .Y(_1065_));
 sg13g2_nand2b_1 _2918_ (.Y(_1066_),
    .B(net98),
    .A_N(net67));
 sg13g2_o21ai_1 _2919_ (.B1(_1066_),
    .Y(_0165_),
    .A1(_1047_),
    .A2(_1065_));
 sg13g2_a22oi_1 _2920_ (.Y(_1067_),
    .B1(net526),
    .B2(\fltcur_all[16] ),
    .A2(net534),
    .A1(\delay_all[20] ));
 sg13g2_a22oi_1 _2921_ (.Y(_1068_),
    .B1(_1036_),
    .B2(\g_feeder[1].streak[0] ),
    .A2(net544),
    .A1(\fltcnt_all[12] ));
 sg13g2_inv_1 _2922_ (.Y(_1069_),
    .A(_0027_));
 sg13g2_a22oi_1 _2923_ (.Y(_1070_),
    .B1(net530),
    .B2(net20),
    .A2(net598),
    .A1(_1069_));
 sg13g2_nand4_1 _2924_ (.B(_1067_),
    .C(_1068_),
    .A(net612),
    .Y(_1071_),
    .D(_1070_));
 sg13g2_a22oi_1 _2925_ (.Y(_1072_),
    .B1(net525),
    .B2(\fltcur_all[4] ),
    .A2(net533),
    .A1(\delay_all[4] ));
 sg13g2_a22oi_1 _2926_ (.Y(_1073_),
    .B1(net523),
    .B2(\g_feeder[0].streak[0] ),
    .A2(net530),
    .A1(net55));
 sg13g2_inv_1 _2927_ (.Y(_1074_),
    .A(_0018_));
 sg13g2_a22oi_1 _2928_ (.Y(_1075_),
    .B1(net598),
    .B2(_1074_),
    .A2(net545),
    .A1(\fltcnt_all[4] ));
 sg13g2_nand4_1 _2929_ (.B(_1072_),
    .C(_1073_),
    .A(net596),
    .Y(_1076_),
    .D(_1075_));
 sg13g2_a21oi_1 _2930_ (.A1(_1071_),
    .A2(_1076_),
    .Y(_1077_),
    .B1(net611));
 sg13g2_mux2_1 _2931_ (.A0(\fltcur_all[28] ),
    .A1(net33),
    .S(net623),
    .X(_1078_));
 sg13g2_a22oi_1 _2932_ (.Y(_1079_),
    .B1(_1078_),
    .B2(net615),
    .A2(_0418_),
    .A1(\delay_all[36] ));
 sg13g2_o21ai_1 _2933_ (.B1(_1021_),
    .Y(_1080_),
    .A1(_0036_),
    .A2(_0992_));
 sg13g2_a221oi_1 _2934_ (.B2(\g_feeder[2].streak[0] ),
    .C1(_1080_),
    .B1(net524),
    .A1(\fltcnt_all[20] ),
    .Y(_1081_),
    .A2(net543));
 sg13g2_o21ai_1 _2935_ (.B1(_1081_),
    .Y(_1082_),
    .A1(net619),
    .A2(_1079_));
 sg13g2_nand2_1 _2937_ (.Y(_1084_),
    .A(net61),
    .B(\delay_all[52] ));
 sg13g2_o21ai_1 _2938_ (.B1(_1084_),
    .Y(_1085_),
    .A1(_0045_),
    .A2(net622));
 sg13g2_a22oi_1 _2939_ (.Y(_1086_),
    .B1(_1085_),
    .B2(_1054_),
    .A2(_1058_),
    .A1(net47));
 sg13g2_a21o_1 _2940_ (.A2(_0420_),
    .A1(\fltcnt_all[28] ),
    .B1(_0878_),
    .X(_1087_));
 sg13g2_a221oi_1 _2941_ (.B2(\g_feeder[3].streak[0] ),
    .C1(_1087_),
    .B1(net524),
    .A1(\fltcur_all[40] ),
    .Y(_1088_),
    .A2(_0889_));
 sg13g2_o21ai_1 _2942_ (.B1(_1088_),
    .Y(_1089_),
    .A1(net62),
    .A2(_1086_));
 sg13g2_nand3_1 _2943_ (.B(_1082_),
    .C(_1089_),
    .A(_1064_),
    .Y(_1090_));
 sg13g2_nand2b_1 _2944_ (.Y(_1091_),
    .B(net97),
    .A_N(net67));
 sg13g2_o21ai_1 _2945_ (.B1(_1091_),
    .Y(_0166_),
    .A1(_1077_),
    .A2(_1090_));
 sg13g2_a22oi_1 _2946_ (.Y(_1092_),
    .B1(net533),
    .B2(\delay_all[3] ),
    .A2(net599),
    .A1(\g_feeder[0].threshold[3] ));
 sg13g2_a22oi_1 _2947_ (.Y(_1093_),
    .B1(net526),
    .B2(\fltcur_all[3] ),
    .A2(net530),
    .A1(net46));
 sg13g2_a22oi_1 _2948_ (.Y(_1094_),
    .B1(net523),
    .B2(net594),
    .A2(net545),
    .A1(\fltcnt_all[3] ));
 sg13g2_nand4_1 _2949_ (.B(_1092_),
    .C(_1093_),
    .A(net596),
    .Y(_1095_),
    .D(_1094_));
 sg13g2_a22oi_1 _2950_ (.Y(_1096_),
    .B1(_1036_),
    .B2(net106),
    .A2(net544),
    .A1(\fltcnt_all[11] ));
 sg13g2_a22oi_1 _2951_ (.Y(_1097_),
    .B1(net527),
    .B2(\fltcur_all[15] ),
    .A2(_0710_),
    .A1(\delay_all[19] ));
 sg13g2_a22oi_1 _2952_ (.Y(_1098_),
    .B1(net531),
    .B2(net19),
    .A2(net598),
    .A1(\g_feeder[1].threshold[3] ));
 sg13g2_nand4_1 _2953_ (.B(_1096_),
    .C(_1097_),
    .A(net612),
    .Y(_1099_),
    .D(_1098_));
 sg13g2_a21oi_1 _2954_ (.A1(_1095_),
    .A2(_1099_),
    .Y(_1100_),
    .B1(net611));
 sg13g2_mux2_1 _2957_ (.A0(\g_feeder[3].threshold[3] ),
    .A1(\delay_all[51] ),
    .S(net622),
    .X(_1103_));
 sg13g2_a22oi_1 _2958_ (.Y(_1104_),
    .B1(_1103_),
    .B2(_1054_),
    .A2(_1058_),
    .A1(net45));
 sg13g2_a21oi_1 _2960_ (.A1(net110),
    .A2(net524),
    .Y(_1106_),
    .B1(_0878_));
 sg13g2_a22oi_1 _2961_ (.Y(_1107_),
    .B1(_0889_),
    .B2(\fltcur_all[39] ),
    .A2(_0420_),
    .A1(\fltcnt_all[27] ));
 sg13g2_and2_1 _2962_ (.A(_1106_),
    .B(_1107_),
    .X(_1108_));
 sg13g2_o21ai_1 _2963_ (.B1(_1108_),
    .Y(_1109_),
    .A1(net621),
    .A2(_1104_));
 sg13g2_mux2_1 _2964_ (.A0(\fltcur_all[27] ),
    .A1(net32),
    .S(net623),
    .X(_1110_));
 sg13g2_a22oi_1 _2965_ (.Y(_1111_),
    .B1(_1110_),
    .B2(net615),
    .A2(_0418_),
    .A1(\delay_all[35] ));
 sg13g2_a22oi_1 _2966_ (.Y(_1112_),
    .B1(_0980_),
    .B2(\fltcnt_all[19] ),
    .A2(_0978_),
    .A1(\g_feeder[2].threshold[3] ));
 sg13g2_a21oi_1 _2967_ (.A1(net108),
    .A2(net524),
    .Y(_1113_),
    .B1(_1797_));
 sg13g2_o21ai_1 _2968_ (.B1(_1113_),
    .Y(_1114_),
    .A1(net63),
    .A2(_1112_));
 sg13g2_inv_1 _2969_ (.Y(_1115_),
    .A(_1114_));
 sg13g2_o21ai_1 _2970_ (.B1(_1115_),
    .Y(_1116_),
    .A1(net619),
    .A2(_1111_));
 sg13g2_nand3_1 _2971_ (.B(_1109_),
    .C(_1116_),
    .A(_0872_),
    .Y(_1117_));
 sg13g2_nand2b_1 _2972_ (.Y(_1118_),
    .B(net96),
    .A_N(net67));
 sg13g2_o21ai_1 _2973_ (.B1(_1118_),
    .Y(_0167_),
    .A1(_1100_),
    .A2(_1117_));
 sg13g2_nand2_1 _2974_ (.Y(_1119_),
    .A(net620),
    .B(_0904_));
 sg13g2_a22oi_1 _2975_ (.Y(_1120_),
    .B1(_0885_),
    .B2(net31),
    .A2(net601),
    .A1(\g_feeder[2].threshold[2] ));
 sg13g2_a22oi_1 _2976_ (.Y(_1121_),
    .B1(net528),
    .B2(\fltcur_all[26] ),
    .A2(net543),
    .A1(\fltcnt_all[18] ));
 sg13g2_nand2b_1 _2977_ (.Y(_1122_),
    .B(net535),
    .A_N(_0041_));
 sg13g2_and4_1 _2978_ (.A(_1021_),
    .B(_1120_),
    .C(_1121_),
    .D(_1122_),
    .X(_1123_));
 sg13g2_o21ai_1 _2979_ (.B1(_1123_),
    .Y(_1124_),
    .A1(_1790_),
    .A2(_1119_));
 sg13g2_xor2_1 _2980_ (.B(net54),
    .A(\g_feeder[3].threshold[11] ),
    .X(_1125_));
 sg13g2_xnor2_1 _2981_ (.Y(_1126_),
    .A(_0049_),
    .B(net52));
 sg13g2_xnor2_1 _2982_ (.Y(_1127_),
    .A(_0048_),
    .B(net51));
 sg13g2_xnor2_1 _2983_ (.Y(_1128_),
    .A(_0044_),
    .B(net53));
 sg13g2_nor4_2 _2984_ (.A(_1125_),
    .B(_1126_),
    .C(_1127_),
    .Y(_1129_),
    .D(_1128_));
 sg13g2_and2_1 _2985_ (.A(_0047_),
    .B(net50),
    .X(_1130_));
 sg13g2_nor2_1 _2986_ (.A(_0047_),
    .B(net50),
    .Y(_1131_));
 sg13g2_xnor2_1 _2987_ (.Y(_1132_),
    .A(_0046_),
    .B(net49));
 sg13g2_nor3_1 _2988_ (.A(_1130_),
    .B(_1131_),
    .C(_1132_),
    .Y(_1133_));
 sg13g2_nor2b_1 _2989_ (.A(net48),
    .B_N(\g_feeder[3].threshold[5] ),
    .Y(_1134_));
 sg13g2_nand2_1 _2990_ (.Y(_1135_),
    .A(_0045_),
    .B(net47));
 sg13g2_nand2b_1 _2991_ (.Y(_1136_),
    .B(net48),
    .A_N(\g_feeder[3].threshold[5] ));
 sg13g2_o21ai_1 _2992_ (.B1(_1136_),
    .Y(_1137_),
    .A1(_1134_),
    .A2(_1135_));
 sg13g2_a22oi_1 _2993_ (.Y(_1138_),
    .B1(net50),
    .B2(_0047_),
    .A2(net49),
    .A1(_0046_));
 sg13g2_nor2_1 _2994_ (.A(_1131_),
    .B(_1138_),
    .Y(_1139_));
 sg13g2_a21o_1 _2995_ (.A2(_1137_),
    .A1(_1133_),
    .B1(_1139_),
    .X(_1140_));
 sg13g2_or2_1 _2996_ (.X(_1141_),
    .B(net52),
    .A(_0049_));
 sg13g2_and2_1 _2997_ (.A(_0048_),
    .B(net51),
    .X(_1142_));
 sg13g2_and2_1 _2998_ (.A(_0049_),
    .B(net52),
    .X(_1143_));
 sg13g2_a221oi_1 _2999_ (.B2(_1142_),
    .C1(_1143_),
    .B1(_1141_),
    .A1(_0044_),
    .Y(_1144_),
    .A2(net53));
 sg13g2_nand2b_1 _3000_ (.Y(_1145_),
    .B(\g_feeder[3].threshold[11] ),
    .A_N(net54));
 sg13g2_o21ai_1 _3001_ (.B1(_1145_),
    .Y(_1146_),
    .A1(_0044_),
    .A2(net53));
 sg13g2_nand2b_1 _3002_ (.Y(_1147_),
    .B(net54),
    .A_N(\g_feeder[3].threshold[11] ));
 sg13g2_o21ai_1 _3003_ (.B1(_1147_),
    .Y(_1148_),
    .A1(_1144_),
    .A2(_1146_));
 sg13g2_a21oi_1 _3004_ (.A1(_1129_),
    .A2(_1140_),
    .Y(_1149_),
    .B1(_1148_));
 sg13g2_nand2b_1 _3006_ (.Y(_1151_),
    .B(net45),
    .A_N(\g_feeder[3].threshold[3] ));
 sg13g2_nor2b_1 _3009_ (.A(\g_feeder[3].threshold[1] ),
    .B_N(net43),
    .Y(_1154_));
 sg13g2_nand2b_1 _3010_ (.Y(_1155_),
    .B(\g_feeder[3].threshold[0] ),
    .A_N(net42));
 sg13g2_nand2b_1 _3011_ (.Y(_1156_),
    .B(\g_feeder[3].threshold[1] ),
    .A_N(net43));
 sg13g2_o21ai_1 _3012_ (.B1(_1156_),
    .Y(_1157_),
    .A1(_1154_),
    .A2(_1155_));
 sg13g2_nand3_1 _3013_ (.B(_1151_),
    .C(_1157_),
    .A(\g_feeder[3].threshold[2] ),
    .Y(_1158_));
 sg13g2_nor2b_1 _3014_ (.A(net44),
    .B_N(_1151_),
    .Y(_1159_));
 sg13g2_o21ai_1 _3015_ (.B1(_1159_),
    .Y(_1160_),
    .A1(\g_feeder[3].threshold[2] ),
    .A2(_1157_));
 sg13g2_nor2b_1 _3016_ (.A(\g_feeder[3].threshold[5] ),
    .B_N(net48),
    .Y(_1161_));
 sg13g2_xnor2_1 _3017_ (.Y(_1162_),
    .A(_0045_),
    .B(net47));
 sg13g2_nor3_1 _3018_ (.A(_1134_),
    .B(_1161_),
    .C(_1162_),
    .Y(_1163_));
 sg13g2_and3_1 _3019_ (.X(_1164_),
    .A(_1129_),
    .B(_1133_),
    .C(_1163_));
 sg13g2_nand2b_1 _3020_ (.Y(_1165_),
    .B(\g_feeder[3].threshold[3] ),
    .A_N(net45));
 sg13g2_nand4_1 _3021_ (.B(_1160_),
    .C(_1164_),
    .A(_1158_),
    .Y(_1166_),
    .D(_1165_));
 sg13g2_xor2_1 _3023_ (.B(net43),
    .A(\g_feeder[3].threshold[1] ),
    .X(_1168_));
 sg13g2_xor2_1 _3024_ (.B(\g_feeder[3].threshold[0] ),
    .A(net42),
    .X(_1169_));
 sg13g2_xor2_1 _3025_ (.B(\g_feeder[3].threshold[3] ),
    .A(net45),
    .X(_1170_));
 sg13g2_xor2_1 _3026_ (.B(net44),
    .A(\g_feeder[3].threshold[2] ),
    .X(_1171_));
 sg13g2_nor4_1 _3027_ (.A(_1168_),
    .B(_1169_),
    .C(_1170_),
    .D(_1171_),
    .Y(_1172_));
 sg13g2_a22oi_1 _3028_ (.Y(_1173_),
    .B1(_1172_),
    .B2(_1164_),
    .A2(_1166_),
    .A1(_1149_));
 sg13g2_inv_1 _3030_ (.Y(_1175_),
    .A(_0050_));
 sg13g2_a22oi_1 _3031_ (.Y(_1176_),
    .B1(_0885_),
    .B2(net44),
    .A2(net536),
    .A1(_1175_));
 sg13g2_a22oi_1 _3032_ (.Y(_1177_),
    .B1(_0889_),
    .B2(\fltcur_all[38] ),
    .A2(_0420_),
    .A1(\fltcnt_all[26] ));
 sg13g2_a21oi_1 _3033_ (.A1(\g_feeder[3].threshold[2] ),
    .A2(_0456_),
    .Y(_1178_),
    .B1(net532));
 sg13g2_nand3_1 _3034_ (.B(_1177_),
    .C(_1178_),
    .A(_1176_),
    .Y(_1179_));
 sg13g2_a21o_1 _3035_ (.A2(_1173_),
    .A1(_1802_),
    .B1(_1179_),
    .X(_1180_));
 sg13g2_nand4_1 _3036_ (.B(_0870_),
    .C(_1124_),
    .A(net608),
    .Y(_1181_),
    .D(_1180_));
 sg13g2_nor2_1 _3037_ (.A(_0766_),
    .B(_1119_),
    .Y(_1182_));
 sg13g2_and2_1 _3038_ (.A(_0424_),
    .B(_1036_),
    .X(_1183_));
 sg13g2_inv_1 _3039_ (.Y(_1184_),
    .A(_0023_));
 sg13g2_mux4_1 _3040_ (.S0(net597),
    .A0(_1184_),
    .A1(\g_feeder[0].threshold[2] ),
    .A2(net35),
    .A3(\fltcur_all[2] ),
    .S1(net614),
    .X(_1185_));
 sg13g2_nand2_1 _3041_ (.Y(_1186_),
    .A(_0855_),
    .B(net596));
 sg13g2_a221oi_1 _3042_ (.B2(_0709_),
    .C1(_1186_),
    .B1(_1185_),
    .A1(\fltcnt_all[2] ),
    .Y(_1187_),
    .A2(net545));
 sg13g2_nor3_1 _3043_ (.A(_0819_),
    .B(net617),
    .C(_0709_),
    .Y(_1188_));
 sg13g2_a21oi_1 _3044_ (.A1(net18),
    .A2(_0883_),
    .Y(_1189_),
    .B1(_1188_));
 sg13g2_nor2_1 _3045_ (.A(net597),
    .B(_1189_),
    .Y(_1190_));
 sg13g2_nor2_1 _3046_ (.A(_0032_),
    .B(net597),
    .Y(_1191_));
 sg13g2_nor2b_1 _3047_ (.A(net624),
    .B_N(\g_feeder[1].threshold[2] ),
    .Y(_1192_));
 sg13g2_o21ai_1 _3048_ (.B1(_1054_),
    .Y(_1193_),
    .A1(_1191_),
    .A2(_1192_));
 sg13g2_nand3_1 _3049_ (.B(net597),
    .C(\fltcur_all[14] ),
    .A(net617),
    .Y(_1194_));
 sg13g2_a21oi_1 _3050_ (.A1(_1193_),
    .A2(_1194_),
    .Y(_1195_),
    .B1(net620));
 sg13g2_nor4_1 _3051_ (.A(net611),
    .B(_1794_),
    .C(_1190_),
    .D(_1195_),
    .Y(_1196_));
 sg13g2_nor3_1 _3052_ (.A(net66),
    .B(_1187_),
    .C(_1196_),
    .Y(_1197_));
 sg13g2_a221oi_1 _3053_ (.B2(_0694_),
    .C1(_1197_),
    .B1(_1183_),
    .A1(_0765_),
    .Y(_1198_),
    .A2(_1182_));
 sg13g2_nand2b_1 _3054_ (.Y(_1199_),
    .B(net95),
    .A_N(net67));
 sg13g2_o21ai_1 _3055_ (.B1(_1199_),
    .Y(_0168_),
    .A1(_1181_),
    .A2(_1198_));
 sg13g2_a22oi_1 _3056_ (.Y(_1200_),
    .B1(_0980_),
    .B2(\fltcnt_all[25] ),
    .A2(_0978_),
    .A1(\g_feeder[3].threshold[1] ));
 sg13g2_o21ai_1 _3057_ (.B1(_1106_),
    .Y(_1201_),
    .A1(net617),
    .A2(_1200_));
 sg13g2_a22oi_1 _3058_ (.Y(_1202_),
    .B1(net528),
    .B2(\fltcur_all[25] ),
    .A2(net543),
    .A1(\fltcnt_all[17] ));
 sg13g2_nand2_1 _3059_ (.Y(_1203_),
    .A(_1113_),
    .B(_1202_));
 sg13g2_a21oi_1 _3060_ (.A1(_1201_),
    .A2(_1203_),
    .Y(_1204_),
    .B1(_0709_));
 sg13g2_mux2_1 _3061_ (.A0(\fltcur_all[37] ),
    .A1(net43),
    .S(net622),
    .X(_1205_));
 sg13g2_a221oi_1 _3062_ (.B2(net616),
    .C1(_1201_),
    .B1(_1205_),
    .A1(\delay_all[49] ),
    .Y(_1206_),
    .A2(_0418_));
 sg13g2_mux2_1 _3063_ (.A0(\g_feeder[2].threshold[1] ),
    .A1(\delay_all[33] ),
    .S(net623),
    .X(_1207_));
 sg13g2_a221oi_1 _3064_ (.B2(_1054_),
    .C1(_1203_),
    .B1(_1207_),
    .A1(net30),
    .Y(_1208_),
    .A2(_1058_));
 sg13g2_nand2b_1 _3065_ (.Y(_1209_),
    .B(_0872_),
    .A_N(_1208_));
 sg13g2_a22oi_1 _3066_ (.Y(_1210_),
    .B1(net527),
    .B2(\fltcur_all[13] ),
    .A2(net544),
    .A1(\fltcnt_all[9] ));
 sg13g2_a22oi_1 _3067_ (.Y(_1211_),
    .B1(_1036_),
    .B2(net106),
    .A2(_0710_),
    .A1(\delay_all[17] ));
 sg13g2_a22oi_1 _3068_ (.Y(_1212_),
    .B1(net531),
    .B2(net17),
    .A2(net600),
    .A1(\g_feeder[1].threshold[1] ));
 sg13g2_nand4_1 _3069_ (.B(_1210_),
    .C(_1211_),
    .A(net612),
    .Y(_1213_),
    .D(_1212_));
 sg13g2_a22oi_1 _3070_ (.Y(_1214_),
    .B1(net534),
    .B2(\delay_all[1] ),
    .A2(net599),
    .A1(\g_feeder[0].threshold[1] ));
 sg13g2_a22oi_1 _3071_ (.Y(_1215_),
    .B1(net523),
    .B2(net594),
    .A2(net527),
    .A1(\fltcur_all[1] ));
 sg13g2_a22oi_1 _3072_ (.Y(_1216_),
    .B1(net530),
    .B2(net24),
    .A2(net545),
    .A1(\fltcnt_all[1] ));
 sg13g2_nand4_1 _3073_ (.B(_1214_),
    .C(_1215_),
    .A(net596),
    .Y(_1217_),
    .D(_1216_));
 sg13g2_a21oi_1 _3074_ (.A1(_1213_),
    .A2(_1217_),
    .Y(_1218_),
    .B1(net611));
 sg13g2_nor4_1 _3075_ (.A(_1204_),
    .B(_1206_),
    .C(_1209_),
    .D(_1218_),
    .Y(_1219_));
 sg13g2_nand2b_1 _3076_ (.Y(_1220_),
    .B(net94),
    .A_N(net608));
 sg13g2_nand2b_1 _3077_ (.Y(_0169_),
    .B(_1220_),
    .A_N(_1219_));
 sg13g2_a22oi_1 _3078_ (.Y(_1221_),
    .B1(_0710_),
    .B2(\delay_all[16] ),
    .A2(net598),
    .A1(\g_feeder[1].threshold[0] ));
 sg13g2_a22oi_1 _3079_ (.Y(_1222_),
    .B1(net527),
    .B2(\fltcur_all[12] ),
    .A2(net544),
    .A1(\fltcnt_all[8] ));
 sg13g2_a22oi_1 _3080_ (.Y(_1223_),
    .B1(_1036_),
    .B2(net105),
    .A2(net531),
    .A1(net16));
 sg13g2_nand4_1 _3081_ (.B(_1221_),
    .C(_1222_),
    .A(net612),
    .Y(_1224_),
    .D(_1223_));
 sg13g2_a22oi_1 _3082_ (.Y(_1225_),
    .B1(net525),
    .B2(\fltcur_all[0] ),
    .A2(net533),
    .A1(\delay_all[0] ));
 sg13g2_a22oi_1 _3083_ (.Y(_1226_),
    .B1(net523),
    .B2(net103),
    .A2(net530),
    .A1(net13));
 sg13g2_a22oi_1 _3084_ (.Y(_1227_),
    .B1(net598),
    .B2(\g_feeder[0].threshold[0] ),
    .A2(net545),
    .A1(\fltcnt_all[0] ));
 sg13g2_nand4_1 _3085_ (.B(_1225_),
    .C(_1226_),
    .A(net596),
    .Y(_1228_),
    .D(_1227_));
 sg13g2_a21oi_1 _3086_ (.A1(_1224_),
    .A2(_1228_),
    .Y(_1229_),
    .B1(net611));
 sg13g2_mux2_1 _3087_ (.A0(\delay_all[32] ),
    .A1(\fltcnt_all[16] ),
    .S(net619),
    .X(_1230_));
 sg13g2_a22oi_1 _3088_ (.Y(_1231_),
    .B1(_1230_),
    .B2(_1054_),
    .A2(_0883_),
    .A1(net29));
 sg13g2_a21o_1 _3089_ (.A2(net528),
    .A1(\fltcur_all[24] ),
    .B1(_1797_),
    .X(_1232_));
 sg13g2_a221oi_1 _3090_ (.B2(net107),
    .C1(_1232_),
    .B1(net524),
    .A1(\g_feeder[2].threshold[0] ),
    .Y(_1233_),
    .A2(net601));
 sg13g2_o21ai_1 _3091_ (.B1(_1233_),
    .Y(_1234_),
    .A1(net597),
    .A2(_1231_));
 sg13g2_mux2_1 _3092_ (.A0(\g_feeder[3].threshold[0] ),
    .A1(\delay_all[48] ),
    .S(net622),
    .X(_1235_));
 sg13g2_a22oi_1 _3093_ (.Y(_1236_),
    .B1(_1235_),
    .B2(_1054_),
    .A2(_1058_),
    .A1(net42));
 sg13g2_a21o_1 _3096_ (.A2(_0420_),
    .A1(\fltcnt_all[24] ),
    .B1(_0878_),
    .X(_1239_));
 sg13g2_a221oi_1 _3097_ (.B2(net109),
    .C1(_1239_),
    .B1(net524),
    .A1(\fltcur_all[36] ),
    .Y(_1240_),
    .A2(_0889_));
 sg13g2_o21ai_1 _3098_ (.B1(_1240_),
    .Y(_1241_),
    .A1(net62),
    .A2(_1236_));
 sg13g2_nand3_1 _3099_ (.B(_1234_),
    .C(_1241_),
    .A(_1064_),
    .Y(_1242_));
 sg13g2_nand2b_1 _3100_ (.Y(_1243_),
    .B(net87),
    .A_N(net67));
 sg13g2_o21ai_1 _3101_ (.B1(_1243_),
    .Y(_0170_),
    .A1(_1229_),
    .A2(_1242_));
 sg13g2_and2_1 _3102_ (.A(net105),
    .B(_0769_),
    .X(_1244_));
 sg13g2_inv_1 _3103_ (.Y(_1245_),
    .A(\g_feeder[1].streak[0] ));
 sg13g2_a21o_1 _3104_ (.A2(_1244_),
    .A1(_0779_),
    .B1(_1245_),
    .X(_1246_));
 sg13g2_o21ai_1 _3105_ (.B1(net483),
    .Y(_1247_),
    .A1(\g_feeder[1].streak[1] ),
    .A2(_1245_));
 sg13g2_o21ai_1 _3106_ (.B1(_1247_),
    .Y(_0171_),
    .A1(net483),
    .A2(_1246_));
 sg13g2_nand2_1 _3108_ (.Y(_1249_),
    .A(_0051_),
    .B(\g_feeder[3].trip_timer[5] ));
 sg13g2_xor2_1 _3109_ (.B(\g_feeder[3].trip_timer[5] ),
    .A(_0051_),
    .X(_1250_));
 sg13g2_xor2_1 _3111_ (.B(\g_feeder[3].trip_timer[2] ),
    .A(_0050_),
    .X(_1252_));
 sg13g2_nor2b_1 _3113_ (.A(\g_feeder[3].trip_timer[0] ),
    .B_N(\delay_all[48] ),
    .Y(_1254_));
 sg13g2_inv_1 _3114_ (.Y(_1255_),
    .A(\g_feeder[3].trip_timer[1] ));
 sg13g2_o21ai_1 _3115_ (.B1(_1255_),
    .Y(_1256_),
    .A1(\delay_all[49] ),
    .A2(_1254_));
 sg13g2_xor2_1 _3117_ (.B(\delay_all[51] ),
    .A(\g_feeder[3].trip_timer[3] ),
    .X(_1258_));
 sg13g2_a21oi_1 _3118_ (.A1(\delay_all[49] ),
    .A2(_1254_),
    .Y(_1259_),
    .B1(_1258_));
 sg13g2_nand4_1 _3119_ (.B(_1252_),
    .C(_1256_),
    .A(_1250_),
    .Y(_1260_),
    .D(_1259_));
 sg13g2_inv_1 _3120_ (.Y(_1261_),
    .A(\delay_all[51] ));
 sg13g2_nor2_1 _3121_ (.A(\g_feeder[3].trip_timer[3] ),
    .B(_1261_),
    .Y(_1262_));
 sg13g2_a22oi_1 _3122_ (.Y(_1263_),
    .B1(_1261_),
    .B2(\g_feeder[3].trip_timer[3] ),
    .A2(\g_feeder[3].trip_timer[2] ),
    .A1(_0050_));
 sg13g2_or2_1 _3123_ (.X(_1264_),
    .B(_1263_),
    .A(_1262_));
 sg13g2_nand2b_1 _3125_ (.Y(_1266_),
    .B(\g_feeder[3].trip_timer[4] ),
    .A_N(\delay_all[52] ));
 sg13g2_nand4_1 _3126_ (.B(_1260_),
    .C(_1264_),
    .A(_1249_),
    .Y(_1267_),
    .D(_1266_));
 sg13g2_nand3b_1 _3127_ (.B(\delay_all[52] ),
    .C(_1249_),
    .Y(_1268_),
    .A_N(\g_feeder[3].trip_timer[4] ));
 sg13g2_nand2b_1 _3128_ (.Y(_1269_),
    .B(\g_feeder[3].trip_timer[10] ),
    .A_N(\delay_all[58] ));
 sg13g2_nand2b_1 _3129_ (.Y(_1270_),
    .B(\delay_all[58] ),
    .A_N(\g_feeder[3].trip_timer[10] ));
 sg13g2_nand2b_1 _3131_ (.Y(_1272_),
    .B(\delay_all[57] ),
    .A_N(\g_feeder[3].trip_timer[9] ));
 sg13g2_xnor2_1 _3133_ (.Y(_1274_),
    .A(\g_feeder[3].trip_timer[11] ),
    .B(\delay_all[59] ));
 sg13g2_nand4_1 _3134_ (.B(_1270_),
    .C(_1272_),
    .A(_1269_),
    .Y(_1275_),
    .D(_1274_));
 sg13g2_xnor2_1 _3136_ (.Y(_1277_),
    .A(_0052_),
    .B(\g_feeder[3].trip_timer[6] ));
 sg13g2_nand2b_1 _3137_ (.Y(_1278_),
    .B(\g_feeder[3].trip_timer[9] ),
    .A_N(\delay_all[57] ));
 sg13g2_o21ai_1 _3138_ (.B1(_1278_),
    .Y(_1279_),
    .A1(_0051_),
    .A2(\g_feeder[3].trip_timer[5] ));
 sg13g2_nand2b_1 _3140_ (.Y(_1281_),
    .B(\g_feeder[3].trip_timer[7] ),
    .A_N(\delay_all[55] ));
 sg13g2_inv_1 _3141_ (.Y(_1282_),
    .A(\g_feeder[3].trip_timer[7] ));
 sg13g2_nand2_1 _3142_ (.Y(_1283_),
    .A(\delay_all[55] ),
    .B(_1282_));
 sg13g2_nand2b_1 _3144_ (.Y(_1285_),
    .B(\g_feeder[3].trip_timer[8] ),
    .A_N(\delay_all[56] ));
 sg13g2_nand2b_1 _3145_ (.Y(_1286_),
    .B(\delay_all[56] ),
    .A_N(\g_feeder[3].trip_timer[8] ));
 sg13g2_nand4_1 _3146_ (.B(_1283_),
    .C(_1285_),
    .A(_1281_),
    .Y(_1287_),
    .D(_1286_));
 sg13g2_nor4_1 _3147_ (.A(_1275_),
    .B(_1277_),
    .C(_1279_),
    .D(_1287_),
    .Y(_1288_));
 sg13g2_nor2b_1 _3149_ (.A(\delay_all[62] ),
    .B_N(\g_feeder[3].trip_timer[14] ),
    .Y(_1290_));
 sg13g2_nor2b_1 _3150_ (.A(\g_feeder[3].trip_timer[14] ),
    .B_N(\delay_all[62] ),
    .Y(_1291_));
 sg13g2_nor2b_1 _3151_ (.A(\g_feeder[3].trip_timer[13] ),
    .B_N(\delay_all[61] ),
    .Y(_1292_));
 sg13g2_xor2_1 _3153_ (.B(\delay_all[63] ),
    .A(\g_feeder[3].trip_timer[15] ),
    .X(_1294_));
 sg13g2_nor4_1 _3154_ (.A(_1290_),
    .B(_1291_),
    .C(_1292_),
    .D(_1294_),
    .Y(_1295_));
 sg13g2_inv_1 _3155_ (.Y(_1296_),
    .A(\g_feeder[3].trip_timer[12] ));
 sg13g2_nand2b_1 _3156_ (.Y(_1297_),
    .B(\g_feeder[3].trip_timer[13] ),
    .A_N(\delay_all[61] ));
 sg13g2_o21ai_1 _3157_ (.B1(_1297_),
    .Y(_1298_),
    .A1(_1296_),
    .A2(\delay_all[60] ));
 sg13g2_a21oi_1 _3158_ (.A1(_1296_),
    .A2(\delay_all[60] ),
    .Y(_1299_),
    .B1(_1298_));
 sg13g2_and2_1 _3159_ (.A(_1295_),
    .B(_1299_),
    .X(_1300_));
 sg13g2_nand4_1 _3160_ (.B(_1268_),
    .C(_1288_),
    .A(_1267_),
    .Y(_1301_),
    .D(_1300_));
 sg13g2_nand2_1 _3161_ (.Y(_1302_),
    .A(_0052_),
    .B(\g_feeder[3].trip_timer[6] ));
 sg13g2_nor2b_1 _3162_ (.A(\g_feeder[3].trip_timer[7] ),
    .B_N(\delay_all[55] ),
    .Y(_1303_));
 sg13g2_o21ai_1 _3163_ (.B1(_1281_),
    .Y(_1304_),
    .A1(_1302_),
    .A2(_1303_));
 sg13g2_nand2_1 _3164_ (.Y(_1305_),
    .A(_1278_),
    .B(_1285_));
 sg13g2_a21oi_1 _3165_ (.A1(_1304_),
    .A2(_1286_),
    .Y(_1306_),
    .B1(_1305_));
 sg13g2_nand2_1 _3166_ (.Y(_1307_),
    .A(\delay_all[59] ),
    .B(_1269_));
 sg13g2_inv_1 _3167_ (.Y(_1308_),
    .A(\g_feeder[3].trip_timer[11] ));
 sg13g2_o21ai_1 _3168_ (.B1(_1308_),
    .Y(_1309_),
    .A1(\delay_all[59] ),
    .A2(_1269_));
 sg13g2_nand2_1 _3169_ (.Y(_1310_),
    .A(_1307_),
    .B(_1309_));
 sg13g2_o21ai_1 _3170_ (.B1(_1310_),
    .Y(_1311_),
    .A1(_1275_),
    .A2(_1306_));
 sg13g2_inv_1 _3171_ (.Y(_1312_),
    .A(\delay_all[63] ));
 sg13g2_a21oi_1 _3172_ (.A1(_1312_),
    .A2(_1290_),
    .Y(_1313_),
    .B1(\g_feeder[3].trip_timer[15] ));
 sg13g2_nor2_1 _3173_ (.A(_1312_),
    .B(_1290_),
    .Y(_1314_));
 sg13g2_nor2_1 _3174_ (.A(_1313_),
    .B(_1314_),
    .Y(_1315_));
 sg13g2_a221oi_1 _3175_ (.B2(_1311_),
    .C1(_1315_),
    .B1(_1300_),
    .A1(_1295_),
    .Y(_1316_),
    .A2(_1298_));
 sg13g2_nand4_1 _3176_ (.B(_1133_),
    .C(_1163_),
    .A(_1129_),
    .Y(_1317_),
    .D(_1172_));
 sg13g2_nand3b_1 _3177_ (.B(net109),
    .C(_1317_),
    .Y(_1318_),
    .A_N(net110));
 sg13g2_a21o_1 _3178_ (.A2(_1166_),
    .A1(_1149_),
    .B1(_1318_),
    .X(_1319_));
 sg13g2_a21o_1 _3180_ (.A2(_1316_),
    .A1(_1301_),
    .B1(_1319_),
    .X(_1321_));
 sg13g2_nand2_1 _3182_ (.Y(_1323_),
    .A(net603),
    .B(_0781_));
 sg13g2_nor2_1 _3184_ (.A(net540),
    .B(_1323_),
    .Y(_1325_));
 sg13g2_and2_1 _3185_ (.A(net479),
    .B(_1325_),
    .X(_1326_));
 sg13g2_a21oi_2 _3186_ (.B1(_1319_),
    .Y(_1327_),
    .A2(_1316_),
    .A1(_1301_));
 sg13g2_and2_1 _3188_ (.A(\fltcnt_all[25] ),
    .B(\fltcnt_all[24] ),
    .X(_1329_));
 sg13g2_and2_1 _3189_ (.A(\fltcnt_all[26] ),
    .B(_1329_),
    .X(_1330_));
 sg13g2_and2_1 _3190_ (.A(\fltcnt_all[27] ),
    .B(_1330_),
    .X(_1331_));
 sg13g2_and2_1 _3191_ (.A(\fltcnt_all[28] ),
    .B(_1331_),
    .X(_1332_));
 sg13g2_and2_1 _3192_ (.A(\fltcnt_all[29] ),
    .B(_1332_),
    .X(_1333_));
 sg13g2_a21oi_1 _3194_ (.A1(_1327_),
    .A2(_1333_),
    .Y(_1335_),
    .B1(\fltcnt_all[30] ));
 sg13g2_nand2_1 _3196_ (.Y(_1337_),
    .A(\fltcnt_all[30] ),
    .B(_1333_));
 sg13g2_nor3_1 _3197_ (.A(\fltcnt_all[31] ),
    .B(net479),
    .C(_1337_),
    .Y(_1338_));
 sg13g2_nor3_1 _3198_ (.A(_1326_),
    .B(_1335_),
    .C(_1338_),
    .Y(_0172_));
 sg13g2_nand3_1 _3199_ (.B(\fltcnt_all[30] ),
    .C(_1333_),
    .A(\fltcnt_all[31] ),
    .Y(_1339_));
 sg13g2_and2_1 _3200_ (.A(net478),
    .B(_1339_),
    .X(_1340_));
 sg13g2_a21oi_1 _3203_ (.A1(net477),
    .A2(_1332_),
    .Y(_1343_),
    .B1(\fltcnt_all[29] ));
 sg13g2_a221oi_1 _3204_ (.B2(_1340_),
    .C1(_1343_),
    .B1(_1333_),
    .A1(_1321_),
    .Y(_0173_),
    .A2(_1325_));
 sg13g2_a21oi_1 _3205_ (.A1(net477),
    .A2(_1331_),
    .Y(_1344_),
    .B1(\fltcnt_all[28] ));
 sg13g2_a221oi_1 _3206_ (.B2(_1340_),
    .C1(_1344_),
    .B1(_1332_),
    .A1(_1321_),
    .Y(_0174_),
    .A2(_1325_));
 sg13g2_a21oi_1 _3207_ (.A1(net477),
    .A2(_1330_),
    .Y(_1345_),
    .B1(\fltcnt_all[27] ));
 sg13g2_a221oi_1 _3208_ (.B2(_1340_),
    .C1(_1345_),
    .B1(_1331_),
    .A1(_1321_),
    .Y(_0175_),
    .A2(_1325_));
 sg13g2_a21oi_1 _3209_ (.A1(net477),
    .A2(_1329_),
    .Y(_1346_),
    .B1(\fltcnt_all[26] ));
 sg13g2_a221oi_1 _3210_ (.B2(_1340_),
    .C1(_1346_),
    .B1(_1330_),
    .A1(_1321_),
    .Y(_0176_),
    .A2(_1325_));
 sg13g2_a21oi_1 _3211_ (.A1(\fltcnt_all[24] ),
    .A2(net477),
    .Y(_1347_),
    .B1(\fltcnt_all[25] ));
 sg13g2_a221oi_1 _3212_ (.B2(_1340_),
    .C1(_1347_),
    .B1(_1329_),
    .A1(_1321_),
    .Y(_0177_),
    .A2(_1325_));
 sg13g2_o21ai_1 _3214_ (.B1(\fltcnt_all[24] ),
    .Y(_1349_),
    .A1(net540),
    .A2(net513));
 sg13g2_a22oi_1 _3215_ (.Y(_0178_),
    .B1(_1349_),
    .B2(_1321_),
    .A2(_1340_),
    .A1(\fltcnt_all[24] ));
 sg13g2_nand2_1 _3216_ (.Y(_1350_),
    .A(_0397_),
    .B(_0694_));
 sg13g2_nand2_1 _3218_ (.Y(_1352_),
    .A(\g_feeder[0].trip_timer[1] ),
    .B(\g_feeder[0].trip_timer[0] ));
 sg13g2_nand4_1 _3219_ (.B(\g_feeder[0].trip_timer[5] ),
    .C(\g_feeder[0].trip_timer[4] ),
    .A(\g_feeder[0].trip_timer[2] ),
    .Y(_1353_),
    .D(\g_feeder[0].trip_timer[3] ));
 sg13g2_nand3_1 _3220_ (.B(\g_feeder[0].trip_timer[8] ),
    .C(\g_feeder[0].trip_timer[7] ),
    .A(\g_feeder[0].trip_timer[6] ),
    .Y(_1354_));
 sg13g2_nor3_1 _3221_ (.A(_1352_),
    .B(_1353_),
    .C(_1354_),
    .Y(_1355_));
 sg13g2_and3_1 _3222_ (.X(_1356_),
    .A(\g_feeder[0].trip_timer[12] ),
    .B(\g_feeder[0].trip_timer[11] ),
    .C(\g_feeder[0].trip_timer[10] ));
 sg13g2_and3_1 _3223_ (.X(_1357_),
    .A(\g_feeder[0].trip_timer[13] ),
    .B(\g_feeder[0].trip_timer[9] ),
    .C(_1356_));
 sg13g2_nand4_1 _3224_ (.B(\g_feeder[0].trip_timer[14] ),
    .C(_1355_),
    .A(\g_feeder[0].trip_timer[15] ),
    .Y(_1358_),
    .D(_1357_));
 sg13g2_and2_1 _3225_ (.A(_1713_),
    .B(_1358_),
    .X(_1359_));
 sg13g2_and3_1 _3227_ (.X(_1361_),
    .A(_1355_),
    .B(_1357_),
    .C(net500));
 sg13g2_xnor2_1 _3228_ (.Y(_1362_),
    .A(\g_feeder[0].trip_timer[14] ),
    .B(_1361_));
 sg13g2_nor2_1 _3229_ (.A(_1350_),
    .B(_1362_),
    .Y(_0179_));
 sg13g2_a21oi_2 _3230_ (.B1(_0398_),
    .Y(_1363_),
    .A2(_0383_),
    .A1(_0365_));
 sg13g2_inv_1 _3231_ (.Y(_1364_),
    .A(_1359_));
 sg13g2_nor2_1 _3232_ (.A(_1352_),
    .B(_1353_),
    .Y(_1365_));
 sg13g2_and4_1 _3233_ (.A(\g_feeder[0].trip_timer[6] ),
    .B(\g_feeder[0].trip_timer[8] ),
    .C(\g_feeder[0].trip_timer[7] ),
    .D(_1365_),
    .X(_1366_));
 sg13g2_nand2_1 _3234_ (.Y(_1367_),
    .A(\g_feeder[0].trip_timer[9] ),
    .B(_1366_));
 sg13g2_a21oi_2 _3235_ (.B1(_1367_),
    .Y(_1368_),
    .A2(_1364_),
    .A1(_1363_));
 sg13g2_nand2_1 _3236_ (.Y(_1369_),
    .A(\g_feeder[0].trip_timer[13] ),
    .B(_1363_));
 sg13g2_a21oi_1 _3237_ (.A1(_1356_),
    .A2(_1368_),
    .Y(_1370_),
    .B1(_1369_));
 sg13g2_nand4_1 _3238_ (.B(_1363_),
    .C(_1356_),
    .A(_1952_),
    .Y(_1371_),
    .D(_1368_));
 sg13g2_nand2b_1 _3239_ (.Y(_0180_),
    .B(_1371_),
    .A_N(_1370_));
 sg13g2_nor2_1 _3240_ (.A(\g_feeder[0].trip_timer[12] ),
    .B(_1350_),
    .Y(_1372_));
 sg13g2_nor2_1 _3241_ (.A(_1963_),
    .B(_1350_),
    .Y(_1373_));
 sg13g2_nand3_1 _3242_ (.B(\g_feeder[0].trip_timer[10] ),
    .C(_1368_),
    .A(\g_feeder[0].trip_timer[11] ),
    .Y(_1374_));
 sg13g2_mux2_1 _3243_ (.A0(_1372_),
    .A1(_1373_),
    .S(_1374_),
    .X(_0181_));
 sg13g2_nand2_1 _3244_ (.Y(_1375_),
    .A(\g_feeder[0].trip_timer[11] ),
    .B(_1363_));
 sg13g2_a21oi_1 _3245_ (.A1(\g_feeder[0].trip_timer[10] ),
    .A2(_1368_),
    .Y(_1376_),
    .B1(_1375_));
 sg13g2_inv_1 _3246_ (.Y(_1377_),
    .A(\g_feeder[0].trip_timer[11] ));
 sg13g2_nand4_1 _3247_ (.B(\g_feeder[0].trip_timer[10] ),
    .C(_1363_),
    .A(_1377_),
    .Y(_1378_),
    .D(_1368_));
 sg13g2_nand2b_1 _3248_ (.Y(_0182_),
    .B(_1378_),
    .A_N(_1376_));
 sg13g2_xnor2_1 _3249_ (.Y(_1379_),
    .A(\g_feeder[0].trip_timer[10] ),
    .B(_1368_));
 sg13g2_nor2_1 _3250_ (.A(_1350_),
    .B(_1379_),
    .Y(_0183_));
 sg13g2_nand2_1 _3251_ (.Y(_1380_),
    .A(net500),
    .B(_1366_));
 sg13g2_xor2_1 _3252_ (.B(_1380_),
    .A(\g_feeder[0].trip_timer[9] ),
    .X(_1381_));
 sg13g2_nor2_1 _3253_ (.A(_1350_),
    .B(_1381_),
    .Y(_0184_));
 sg13g2_nand4_1 _3254_ (.B(\g_feeder[0].trip_timer[7] ),
    .C(_1365_),
    .A(\g_feeder[0].trip_timer[6] ),
    .Y(_1382_),
    .D(net500));
 sg13g2_xnor2_1 _3255_ (.Y(_1383_),
    .A(_1950_),
    .B(_1382_));
 sg13g2_nor2_1 _3256_ (.A(net474),
    .B(_1383_),
    .Y(_0185_));
 sg13g2_nand3_1 _3257_ (.B(_1365_),
    .C(net500),
    .A(\g_feeder[0].trip_timer[6] ),
    .Y(_1384_));
 sg13g2_xnor2_1 _3258_ (.Y(_1385_),
    .A(_1951_),
    .B(_1384_));
 sg13g2_nor2_1 _3259_ (.A(net474),
    .B(_1385_),
    .Y(_0186_));
 sg13g2_nand2_1 _3260_ (.Y(_1386_),
    .A(_1365_),
    .B(net500));
 sg13g2_xor2_1 _3261_ (.B(_1386_),
    .A(\g_feeder[0].trip_timer[6] ),
    .X(_1387_));
 sg13g2_nor2_1 _3262_ (.A(net474),
    .B(_1387_),
    .Y(_0187_));
 sg13g2_inv_1 _3263_ (.Y(_1388_),
    .A(\g_feeder[0].trip_timer[3] ));
 sg13g2_nand4_1 _3264_ (.B(\g_feeder[0].trip_timer[1] ),
    .C(\g_feeder[0].trip_timer[0] ),
    .A(\g_feeder[0].trip_timer[2] ),
    .Y(_1389_),
    .D(_1359_));
 sg13g2_nor3_1 _3265_ (.A(_1922_),
    .B(_1388_),
    .C(_1389_),
    .Y(_1390_));
 sg13g2_xnor2_1 _3266_ (.Y(_1391_),
    .A(\g_feeder[0].trip_timer[5] ),
    .B(_1390_));
 sg13g2_nor2_1 _3267_ (.A(net474),
    .B(_1391_),
    .Y(_0188_));
 sg13g2_nor2_1 _3268_ (.A(_1388_),
    .B(_1389_),
    .Y(_1392_));
 sg13g2_xnor2_1 _3269_ (.Y(_1393_),
    .A(\g_feeder[0].trip_timer[4] ),
    .B(_1392_));
 sg13g2_nor2_1 _3270_ (.A(_1350_),
    .B(_1393_),
    .Y(_0189_));
 sg13g2_xnor2_1 _3271_ (.Y(_1394_),
    .A(_1388_),
    .B(_1389_));
 sg13g2_nor2_1 _3272_ (.A(net474),
    .B(_1394_),
    .Y(_0190_));
 sg13g2_nor2_1 _3273_ (.A(_1352_),
    .B(_1364_),
    .Y(_1395_));
 sg13g2_xnor2_1 _3274_ (.Y(_1396_),
    .A(\g_feeder[0].trip_timer[2] ),
    .B(_1395_));
 sg13g2_nor2_1 _3275_ (.A(net474),
    .B(_1396_),
    .Y(_0191_));
 sg13g2_nand2_1 _3276_ (.Y(_1397_),
    .A(\g_feeder[0].trip_timer[0] ),
    .B(_1359_));
 sg13g2_xnor2_1 _3277_ (.Y(_1398_),
    .A(_1919_),
    .B(_1397_));
 sg13g2_nor2_1 _3278_ (.A(net474),
    .B(_1398_),
    .Y(_0192_));
 sg13g2_xnor2_1 _3279_ (.Y(_1399_),
    .A(\g_feeder[0].trip_timer[0] ),
    .B(_1359_));
 sg13g2_nor2_1 _3280_ (.A(net474),
    .B(_1399_),
    .Y(_0193_));
 sg13g2_nand3_1 _3281_ (.B(_0456_),
    .C(_0781_),
    .A(net603),
    .Y(_1400_));
 sg13g2_nand2_1 _3284_ (.Y(_1403_),
    .A(_0044_),
    .B(net510));
 sg13g2_o21ai_1 _3285_ (.B1(_1403_),
    .Y(_0194_),
    .A1(net69),
    .A2(net510));
 sg13g2_nand2_1 _3286_ (.Y(_1404_),
    .A(_0049_),
    .B(net510));
 sg13g2_o21ai_1 _3287_ (.B1(_1404_),
    .Y(_0195_),
    .A1(net83),
    .A2(net510));
 sg13g2_nand2_1 _3288_ (.Y(_1405_),
    .A(_0048_),
    .B(net510));
 sg13g2_o21ai_1 _3289_ (.B1(_1405_),
    .Y(_0196_),
    .A1(net82),
    .A2(net510));
 sg13g2_nand2_1 _3290_ (.Y(_1406_),
    .A(_0047_),
    .B(_1400_));
 sg13g2_o21ai_1 _3291_ (.B1(_1406_),
    .Y(_0197_),
    .A1(net81),
    .A2(_1400_));
 sg13g2_nand2_1 _3292_ (.Y(_1407_),
    .A(_0046_),
    .B(_1400_));
 sg13g2_o21ai_1 _3293_ (.B1(_1407_),
    .Y(_0198_),
    .A1(net80),
    .A2(_1400_));
 sg13g2_mux2_1 _3294_ (.A0(net79),
    .A1(\g_feeder[3].threshold[5] ),
    .S(net511),
    .X(_0199_));
 sg13g2_nand2_1 _3295_ (.Y(_1408_),
    .A(_0045_),
    .B(net511));
 sg13g2_o21ai_1 _3296_ (.B1(_1408_),
    .Y(_0200_),
    .A1(net78),
    .A2(net511));
 sg13g2_mux2_1 _3297_ (.A0(net77),
    .A1(\g_feeder[3].threshold[3] ),
    .S(net511),
    .X(_0201_));
 sg13g2_mux2_1 _3298_ (.A0(net604),
    .A1(\g_feeder[3].threshold[2] ),
    .S(net511),
    .X(_0202_));
 sg13g2_mux2_1 _3299_ (.A0(net75),
    .A1(\g_feeder[3].threshold[1] ),
    .S(net511),
    .X(_0203_));
 sg13g2_mux2_1 _3300_ (.A0(net606),
    .A1(\g_feeder[3].threshold[0] ),
    .S(net511),
    .X(_0204_));
 sg13g2_nor2_1 _3301_ (.A(_0703_),
    .B(_0697_),
    .Y(_1409_));
 sg13g2_a21oi_1 _3302_ (.A1(net605),
    .A2(_0695_),
    .Y(_1410_),
    .B1(net1));
 sg13g2_nor3_1 _3303_ (.A(net594),
    .B(_0705_),
    .C(_1410_),
    .Y(_1411_));
 sg13g2_o21ai_1 _3304_ (.B1(_0702_),
    .Y(_1412_),
    .A1(_1409_),
    .A2(_1411_));
 sg13g2_a21oi_1 _3305_ (.A1(_0702_),
    .A2(_0696_),
    .Y(_1413_),
    .B1(_0396_));
 sg13g2_a21oi_1 _3306_ (.A1(net103),
    .A2(_0705_),
    .Y(_1414_),
    .B1(net594));
 sg13g2_a21oi_1 _3307_ (.A1(net594),
    .A2(_1413_),
    .Y(_1415_),
    .B1(_1414_));
 sg13g2_a221oi_1 _3308_ (.B2(_0400_),
    .C1(_0701_),
    .B1(_1415_),
    .A1(_0396_),
    .Y(_0205_),
    .A2(_1412_));
 sg13g2_o21ai_1 _3310_ (.B1(\fltcur_all[46] ),
    .Y(_1417_),
    .A1(net539),
    .A2(net512));
 sg13g2_nand2_1 _3312_ (.Y(_1419_),
    .A(net53),
    .B(net475));
 sg13g2_o21ai_1 _3313_ (.B1(_1419_),
    .Y(_0206_),
    .A1(net475),
    .A2(_1417_));
 sg13g2_o21ai_1 _3314_ (.B1(\fltcur_all[45] ),
    .Y(_1420_),
    .A1(net539),
    .A2(net512));
 sg13g2_nand2_1 _3315_ (.Y(_1421_),
    .A(net52),
    .B(net475));
 sg13g2_o21ai_1 _3316_ (.B1(_1421_),
    .Y(_0207_),
    .A1(net475),
    .A2(_1420_));
 sg13g2_o21ai_1 _3317_ (.B1(\fltcur_all[44] ),
    .Y(_1422_),
    .A1(net539),
    .A2(net512));
 sg13g2_nand2_1 _3318_ (.Y(_1423_),
    .A(net51),
    .B(net475));
 sg13g2_o21ai_1 _3319_ (.B1(_1423_),
    .Y(_0208_),
    .A1(net475),
    .A2(_1422_));
 sg13g2_o21ai_1 _3320_ (.B1(\fltcur_all[43] ),
    .Y(_1424_),
    .A1(net539),
    .A2(net513));
 sg13g2_nand2_1 _3321_ (.Y(_1425_),
    .A(net50),
    .B(net476));
 sg13g2_o21ai_1 _3322_ (.B1(_1425_),
    .Y(_0209_),
    .A1(net476),
    .A2(_1424_));
 sg13g2_o21ai_1 _3323_ (.B1(\fltcur_all[42] ),
    .Y(_1426_),
    .A1(net539),
    .A2(net512));
 sg13g2_nand2_1 _3324_ (.Y(_1427_),
    .A(net49),
    .B(net476));
 sg13g2_o21ai_1 _3325_ (.B1(_1427_),
    .Y(_0210_),
    .A1(net476),
    .A2(_1426_));
 sg13g2_o21ai_1 _3326_ (.B1(\fltcur_all[41] ),
    .Y(_1428_),
    .A1(net540),
    .A2(net513));
 sg13g2_nand2_1 _3327_ (.Y(_1429_),
    .A(net48),
    .B(net477));
 sg13g2_o21ai_1 _3328_ (.B1(_1429_),
    .Y(_0211_),
    .A1(net477),
    .A2(_1428_));
 sg13g2_o21ai_1 _3329_ (.B1(\fltcur_all[40] ),
    .Y(_1430_),
    .A1(net540),
    .A2(net513));
 sg13g2_nand2_1 _3330_ (.Y(_1431_),
    .A(net47),
    .B(net478));
 sg13g2_o21ai_1 _3331_ (.B1(_1431_),
    .Y(_0212_),
    .A1(net478),
    .A2(_1430_));
 sg13g2_o21ai_1 _3332_ (.B1(\fltcur_all[39] ),
    .Y(_1432_),
    .A1(net540),
    .A2(net513));
 sg13g2_nand2_1 _3333_ (.Y(_1433_),
    .A(net45),
    .B(_1327_));
 sg13g2_o21ai_1 _3334_ (.B1(_1433_),
    .Y(_0213_),
    .A1(net478),
    .A2(_1432_));
 sg13g2_o21ai_1 _3335_ (.B1(\fltcur_all[38] ),
    .Y(_1434_),
    .A1(net539),
    .A2(net513));
 sg13g2_nand2_1 _3336_ (.Y(_1435_),
    .A(net44),
    .B(_1327_));
 sg13g2_o21ai_1 _3337_ (.B1(_1435_),
    .Y(_0214_),
    .A1(net478),
    .A2(_1434_));
 sg13g2_o21ai_1 _3338_ (.B1(\fltcur_all[37] ),
    .Y(_1436_),
    .A1(net539),
    .A2(net512));
 sg13g2_nand2_1 _3339_ (.Y(_1437_),
    .A(net43),
    .B(net476));
 sg13g2_o21ai_1 _3340_ (.B1(_1437_),
    .Y(_0215_),
    .A1(net476),
    .A2(_1436_));
 sg13g2_o21ai_1 _3341_ (.B1(\fltcur_all[36] ),
    .Y(_1438_),
    .A1(net540),
    .A2(net513));
 sg13g2_nand2_1 _3342_ (.Y(_1439_),
    .A(net42),
    .B(_1327_));
 sg13g2_o21ai_1 _3343_ (.B1(_1439_),
    .Y(_0216_),
    .A1(net478),
    .A2(_1438_));
 sg13g2_inv_1 _3345_ (.Y(_1441_),
    .A(\g_feeder[2].trip_timer[13] ));
 sg13g2_and2_1 _3346_ (.A(\g_feeder[2].trip_timer[2] ),
    .B(\g_feeder[2].trip_timer[3] ),
    .X(_1442_));
 sg13g2_and4_1 _3348_ (.A(\g_feeder[2].trip_timer[4] ),
    .B(\g_feeder[2].trip_timer[1] ),
    .C(\g_feeder[2].trip_timer[5] ),
    .D(\g_feeder[2].trip_timer[0] ),
    .X(_1444_));
 sg13g2_and4_1 _3349_ (.A(\g_feeder[2].trip_timer[8] ),
    .B(\g_feeder[2].trip_timer[9] ),
    .C(\g_feeder[2].trip_timer[7] ),
    .D(\g_feeder[2].trip_timer[6] ),
    .X(_1445_));
 sg13g2_nand3_1 _3350_ (.B(_1444_),
    .C(_1445_),
    .A(_1442_),
    .Y(_1446_));
 sg13g2_nor4_1 _3352_ (.A(_1441_),
    .B(_1819_),
    .C(_1827_),
    .D(_1446_),
    .Y(_1448_));
 sg13g2_and2_1 _3353_ (.A(\g_feeder[2].trip_timer[15] ),
    .B(\g_feeder[2].trip_timer[14] ),
    .X(_1449_));
 sg13g2_nand3_1 _3354_ (.B(_1709_),
    .C(_1712_),
    .A(_1697_),
    .Y(_1450_));
 sg13g2_a21oi_2 _3356_ (.B1(_1450_),
    .Y(_1452_),
    .A2(_1449_),
    .A1(_1448_));
 sg13g2_nand2_1 _3358_ (.Y(_1454_),
    .A(_1448_),
    .B(_1452_));
 sg13g2_xor2_1 _3359_ (.B(_1454_),
    .A(\g_feeder[2].trip_timer[14] ),
    .X(_1455_));
 sg13g2_nor2_1 _3360_ (.A(net496),
    .B(_1455_),
    .Y(_0217_));
 sg13g2_nor3_1 _3361_ (.A(_1819_),
    .B(_1827_),
    .C(_1446_),
    .Y(_1456_));
 sg13g2_o21ai_1 _3362_ (.B1(_1456_),
    .Y(_1457_),
    .A1(net496),
    .A2(_1452_));
 sg13g2_xnor2_1 _3363_ (.Y(_1458_),
    .A(_1441_),
    .B(_1457_));
 sg13g2_nor2_1 _3364_ (.A(net496),
    .B(_1458_),
    .Y(_0218_));
 sg13g2_nor2_1 _3365_ (.A(_1827_),
    .B(_1446_),
    .Y(_1459_));
 sg13g2_o21ai_1 _3366_ (.B1(_1459_),
    .Y(_1460_),
    .A1(net496),
    .A2(_1452_));
 sg13g2_xnor2_1 _3367_ (.Y(_1461_),
    .A(_1819_),
    .B(_1460_));
 sg13g2_nor2_1 _3368_ (.A(net496),
    .B(_1461_),
    .Y(_0219_));
 sg13g2_nor2_1 _3369_ (.A(_1824_),
    .B(_1446_),
    .Y(_1462_));
 sg13g2_o21ai_1 _3370_ (.B1(_1462_),
    .Y(_1463_),
    .A1(net496),
    .A2(_1452_));
 sg13g2_xnor2_1 _3371_ (.Y(_1464_),
    .A(_1825_),
    .B(_1463_));
 sg13g2_nor2_1 _3372_ (.A(net496),
    .B(_1464_),
    .Y(_0220_));
 sg13g2_nor2_1 _3373_ (.A(net497),
    .B(net499),
    .Y(_1465_));
 sg13g2_o21ai_1 _3374_ (.B1(\g_feeder[2].trip_timer[10] ),
    .Y(_1466_),
    .A1(_1446_),
    .A2(_1465_));
 sg13g2_or3_1 _3375_ (.A(\g_feeder[2].trip_timer[10] ),
    .B(_1446_),
    .C(_1465_),
    .X(_1467_));
 sg13g2_a21oi_1 _3376_ (.A1(_1466_),
    .A2(_1467_),
    .Y(_0221_),
    .B1(net497));
 sg13g2_nand2_1 _3377_ (.Y(_1468_),
    .A(\g_feeder[2].trip_timer[8] ),
    .B(\g_feeder[2].trip_timer[7] ));
 sg13g2_and2_1 _3378_ (.A(_1442_),
    .B(_1444_),
    .X(_1469_));
 sg13g2_nand3_1 _3380_ (.B(_1469_),
    .C(net499),
    .A(\g_feeder[2].trip_timer[6] ),
    .Y(_1471_));
 sg13g2_o21ai_1 _3381_ (.B1(\g_feeder[2].trip_timer[9] ),
    .Y(_1472_),
    .A1(_1468_),
    .A2(_1471_));
 sg13g2_or3_1 _3382_ (.A(\g_feeder[2].trip_timer[9] ),
    .B(_1468_),
    .C(_1471_),
    .X(_1473_));
 sg13g2_a21oi_1 _3383_ (.A1(_1472_),
    .A2(_1473_),
    .Y(_0222_),
    .B1(net495));
 sg13g2_nand4_1 _3384_ (.B(\g_feeder[2].trip_timer[6] ),
    .C(_1469_),
    .A(\g_feeder[2].trip_timer[7] ),
    .Y(_1474_),
    .D(net499));
 sg13g2_xor2_1 _3385_ (.B(_1474_),
    .A(\g_feeder[2].trip_timer[8] ),
    .X(_1475_));
 sg13g2_nor2_1 _3386_ (.A(net495),
    .B(_1475_),
    .Y(_0223_));
 sg13g2_xor2_1 _3387_ (.B(_1471_),
    .A(\g_feeder[2].trip_timer[7] ),
    .X(_1476_));
 sg13g2_nor2_1 _3388_ (.A(net495),
    .B(_1476_),
    .Y(_0224_));
 sg13g2_nand2_1 _3389_ (.Y(_1477_),
    .A(_1469_),
    .B(net499));
 sg13g2_xor2_1 _3390_ (.B(_1477_),
    .A(\g_feeder[2].trip_timer[6] ),
    .X(_1478_));
 sg13g2_nor2_1 _3391_ (.A(net495),
    .B(_1478_),
    .Y(_0225_));
 sg13g2_and3_1 _3392_ (.X(_1479_),
    .A(\g_feeder[2].trip_timer[1] ),
    .B(\g_feeder[2].trip_timer[0] ),
    .C(net499));
 sg13g2_nand3_1 _3394_ (.B(_1442_),
    .C(_1479_),
    .A(\g_feeder[2].trip_timer[4] ),
    .Y(_1481_));
 sg13g2_xor2_1 _3395_ (.B(_1481_),
    .A(\g_feeder[2].trip_timer[5] ),
    .X(_1482_));
 sg13g2_nor2_1 _3396_ (.A(net497),
    .B(_1482_),
    .Y(_0226_));
 sg13g2_nand2_1 _3397_ (.Y(_1483_),
    .A(_1442_),
    .B(_1479_));
 sg13g2_xor2_1 _3398_ (.B(_1483_),
    .A(\g_feeder[2].trip_timer[4] ),
    .X(_1484_));
 sg13g2_nor2_1 _3399_ (.A(net497),
    .B(_1484_),
    .Y(_0227_));
 sg13g2_nand2_1 _3400_ (.Y(_1485_),
    .A(\g_feeder[2].trip_timer[2] ),
    .B(_1479_));
 sg13g2_xor2_1 _3401_ (.B(_1485_),
    .A(\g_feeder[2].trip_timer[3] ),
    .X(_1486_));
 sg13g2_nor2_1 _3402_ (.A(net497),
    .B(_1486_),
    .Y(_0228_));
 sg13g2_xnor2_1 _3403_ (.Y(_1487_),
    .A(\g_feeder[2].trip_timer[2] ),
    .B(_1479_));
 sg13g2_nor2_1 _3404_ (.A(net497),
    .B(_1487_),
    .Y(_0229_));
 sg13g2_nand2_1 _3405_ (.Y(_1488_),
    .A(\g_feeder[2].trip_timer[0] ),
    .B(net499));
 sg13g2_xor2_1 _3406_ (.B(_1488_),
    .A(\g_feeder[2].trip_timer[1] ),
    .X(_1489_));
 sg13g2_nor2_1 _3407_ (.A(net495),
    .B(_1489_),
    .Y(_0230_));
 sg13g2_xnor2_1 _3408_ (.Y(_1490_),
    .A(\g_feeder[2].trip_timer[0] ),
    .B(net499));
 sg13g2_nor2_1 _3409_ (.A(net495),
    .B(_1490_),
    .Y(_0231_));
 sg13g2_nand2_1 _3410_ (.Y(_1491_),
    .A(net601),
    .B(_0708_));
 sg13g2_nand2_1 _3413_ (.Y(_1494_),
    .A(_0035_),
    .B(net503));
 sg13g2_o21ai_1 _3414_ (.B1(_1494_),
    .Y(_0232_),
    .A1(net69),
    .A2(net503));
 sg13g2_nand2_1 _3415_ (.Y(_1495_),
    .A(_0040_),
    .B(net503));
 sg13g2_o21ai_1 _3416_ (.B1(_1495_),
    .Y(_0233_),
    .A1(net83),
    .A2(net503));
 sg13g2_nand2_1 _3417_ (.Y(_1496_),
    .A(_0039_),
    .B(net503));
 sg13g2_o21ai_1 _3418_ (.B1(_1496_),
    .Y(_0234_),
    .A1(net82),
    .A2(net503));
 sg13g2_nand2_1 _3419_ (.Y(_1497_),
    .A(_0038_),
    .B(_1491_));
 sg13g2_o21ai_1 _3420_ (.B1(_1497_),
    .Y(_0235_),
    .A1(net81),
    .A2(_1491_));
 sg13g2_nand2_1 _3421_ (.Y(_1498_),
    .A(_0037_),
    .B(_1491_));
 sg13g2_o21ai_1 _3422_ (.B1(_1498_),
    .Y(_0236_),
    .A1(net80),
    .A2(net503));
 sg13g2_mux2_1 _3423_ (.A0(net79),
    .A1(\g_feeder[2].threshold[5] ),
    .S(net502),
    .X(_0237_));
 sg13g2_nand2_1 _3424_ (.Y(_1499_),
    .A(_0036_),
    .B(net502));
 sg13g2_o21ai_1 _3425_ (.B1(_1499_),
    .Y(_0238_),
    .A1(net78),
    .A2(net502));
 sg13g2_mux2_1 _3426_ (.A0(net77),
    .A1(\g_feeder[2].threshold[3] ),
    .S(net502),
    .X(_0239_));
 sg13g2_mux2_1 _3427_ (.A0(net604),
    .A1(\g_feeder[2].threshold[2] ),
    .S(net502),
    .X(_0240_));
 sg13g2_mux2_1 _3428_ (.A0(net75),
    .A1(\g_feeder[2].threshold[1] ),
    .S(net502),
    .X(_0241_));
 sg13g2_mux2_1 _3429_ (.A0(net606),
    .A1(\g_feeder[2].threshold[0] ),
    .S(net502),
    .X(_0242_));
 sg13g2_and3_1 _3431_ (.X(_1501_),
    .A(\g_feeder[3].trip_timer[10] ),
    .B(\g_feeder[3].trip_timer[9] ),
    .C(\g_feeder[3].trip_timer[8] ));
 sg13g2_and4_1 _3432_ (.A(\g_feeder[3].trip_timer[13] ),
    .B(\g_feeder[3].trip_timer[12] ),
    .C(\g_feeder[3].trip_timer[11] ),
    .D(_1501_),
    .X(_1502_));
 sg13g2_nand4_1 _3434_ (.B(\g_feeder[3].trip_timer[5] ),
    .C(\g_feeder[3].trip_timer[4] ),
    .A(\g_feeder[3].trip_timer[6] ),
    .Y(_1504_),
    .D(\g_feeder[3].trip_timer[3] ));
 sg13g2_nand3_1 _3435_ (.B(\g_feeder[3].trip_timer[1] ),
    .C(\g_feeder[3].trip_timer[0] ),
    .A(\g_feeder[3].trip_timer[2] ),
    .Y(_1505_));
 sg13g2_nor3_1 _3436_ (.A(_1282_),
    .B(_1504_),
    .C(_1505_),
    .Y(_1506_));
 sg13g2_nand4_1 _3437_ (.B(\g_feeder[3].trip_timer[14] ),
    .C(_1502_),
    .A(\g_feeder[3].trip_timer[15] ),
    .Y(_1507_),
    .D(_1506_));
 sg13g2_nor2b_1 _3438_ (.A(_1450_),
    .B_N(_1507_),
    .Y(_1508_));
 sg13g2_and2_1 _3440_ (.A(_1506_),
    .B(_1508_),
    .X(_1510_));
 sg13g2_nand2_1 _3442_ (.Y(_1512_),
    .A(_1502_),
    .B(_1510_));
 sg13g2_xor2_1 _3443_ (.B(_1512_),
    .A(\g_feeder[3].trip_timer[14] ),
    .X(_1513_));
 sg13g2_nor2_1 _3444_ (.A(net493),
    .B(_1513_),
    .Y(_0243_));
 sg13g2_nor2_1 _3445_ (.A(_1504_),
    .B(_1505_),
    .Y(_1514_));
 sg13g2_and4_1 _3446_ (.A(\g_feeder[3].trip_timer[14] ),
    .B(\g_feeder[3].trip_timer[7] ),
    .C(_1502_),
    .D(_1514_),
    .X(_1515_));
 sg13g2_nand2_1 _3447_ (.Y(_1516_),
    .A(\g_feeder[3].trip_timer[15] ),
    .B(_1515_));
 sg13g2_a221oi_1 _3448_ (.B2(net501),
    .C1(_1318_),
    .B1(_1516_),
    .A1(_1149_),
    .Y(_1517_),
    .A2(_1166_));
 sg13g2_nand3_1 _3450_ (.B(_1501_),
    .C(_1514_),
    .A(\g_feeder[3].trip_timer[7] ),
    .Y(_1519_));
 sg13g2_nor4_1 _3452_ (.A(_1296_),
    .B(_1308_),
    .C(_1517_),
    .D(_1519_),
    .Y(_1521_));
 sg13g2_xnor2_1 _3453_ (.Y(_1522_),
    .A(\g_feeder[3].trip_timer[13] ),
    .B(_1521_));
 sg13g2_nor2_1 _3454_ (.A(net493),
    .B(_1522_),
    .Y(_0244_));
 sg13g2_nor3_1 _3455_ (.A(_1308_),
    .B(_1517_),
    .C(_1519_),
    .Y(_1523_));
 sg13g2_xnor2_1 _3456_ (.Y(_1524_),
    .A(\g_feeder[3].trip_timer[12] ),
    .B(_1523_));
 sg13g2_nor2_1 _3457_ (.A(net493),
    .B(_1524_),
    .Y(_0245_));
 sg13g2_o21ai_1 _3458_ (.B1(\g_feeder[3].trip_timer[11] ),
    .Y(_1525_),
    .A1(_1517_),
    .A2(_1519_));
 sg13g2_or3_1 _3459_ (.A(\g_feeder[3].trip_timer[11] ),
    .B(_1517_),
    .C(_1519_),
    .X(_1526_));
 sg13g2_a21oi_1 _3460_ (.A1(_1525_),
    .A2(_1526_),
    .Y(_0246_),
    .B1(net493));
 sg13g2_nand3_1 _3461_ (.B(\g_feeder[3].trip_timer[8] ),
    .C(_1510_),
    .A(\g_feeder[3].trip_timer[9] ),
    .Y(_1527_));
 sg13g2_xor2_1 _3462_ (.B(_1527_),
    .A(\g_feeder[3].trip_timer[10] ),
    .X(_1528_));
 sg13g2_nor2_1 _3463_ (.A(net493),
    .B(_1528_),
    .Y(_0247_));
 sg13g2_nand2_1 _3464_ (.Y(_1529_),
    .A(\g_feeder[3].trip_timer[8] ),
    .B(_1510_));
 sg13g2_xor2_1 _3465_ (.B(_1529_),
    .A(\g_feeder[3].trip_timer[9] ),
    .X(_1530_));
 sg13g2_nor2_1 _3466_ (.A(net493),
    .B(_1530_),
    .Y(_0248_));
 sg13g2_xnor2_1 _3467_ (.Y(_1531_),
    .A(\g_feeder[3].trip_timer[8] ),
    .B(_1510_));
 sg13g2_nor2_1 _3468_ (.A(net493),
    .B(_1531_),
    .Y(_0249_));
 sg13g2_nor2b_1 _3469_ (.A(_1505_),
    .B_N(_1508_),
    .Y(_1532_));
 sg13g2_nor2b_1 _3471_ (.A(_1504_),
    .B_N(_1532_),
    .Y(_1534_));
 sg13g2_xnor2_1 _3472_ (.Y(_1535_),
    .A(\g_feeder[3].trip_timer[7] ),
    .B(_1534_));
 sg13g2_nor2_1 _3473_ (.A(net494),
    .B(_1535_),
    .Y(_0250_));
 sg13g2_nand4_1 _3474_ (.B(\g_feeder[3].trip_timer[4] ),
    .C(\g_feeder[3].trip_timer[3] ),
    .A(\g_feeder[3].trip_timer[5] ),
    .Y(_1536_),
    .D(_1532_));
 sg13g2_xor2_1 _3475_ (.B(_1536_),
    .A(\g_feeder[3].trip_timer[6] ),
    .X(_1537_));
 sg13g2_nor2_1 _3476_ (.A(net494),
    .B(_1537_),
    .Y(_0251_));
 sg13g2_nand3_1 _3477_ (.B(\g_feeder[3].trip_timer[3] ),
    .C(_1532_),
    .A(\g_feeder[3].trip_timer[4] ),
    .Y(_1538_));
 sg13g2_xor2_1 _3478_ (.B(_1538_),
    .A(\g_feeder[3].trip_timer[5] ),
    .X(_1539_));
 sg13g2_nor2_1 _3479_ (.A(net494),
    .B(_1539_),
    .Y(_0252_));
 sg13g2_nand2_1 _3480_ (.Y(_1540_),
    .A(\g_feeder[3].trip_timer[3] ),
    .B(_1532_));
 sg13g2_xor2_1 _3481_ (.B(_1540_),
    .A(\g_feeder[3].trip_timer[4] ),
    .X(_1541_));
 sg13g2_nor2_1 _3482_ (.A(net494),
    .B(_1541_),
    .Y(_0253_));
 sg13g2_xnor2_1 _3483_ (.Y(_1542_),
    .A(\g_feeder[3].trip_timer[3] ),
    .B(_1532_));
 sg13g2_nor2_1 _3484_ (.A(_1319_),
    .B(_1542_),
    .Y(_0254_));
 sg13g2_nand3_1 _3485_ (.B(\g_feeder[3].trip_timer[0] ),
    .C(_1508_),
    .A(\g_feeder[3].trip_timer[1] ),
    .Y(_1543_));
 sg13g2_xor2_1 _3486_ (.B(_1543_),
    .A(\g_feeder[3].trip_timer[2] ),
    .X(_1544_));
 sg13g2_nor2_1 _3487_ (.A(net494),
    .B(_1544_),
    .Y(_0255_));
 sg13g2_nand2_1 _3488_ (.Y(_1545_),
    .A(\g_feeder[3].trip_timer[0] ),
    .B(_1508_));
 sg13g2_xnor2_1 _3489_ (.Y(_1546_),
    .A(_1255_),
    .B(_1545_));
 sg13g2_nor2_1 _3490_ (.A(net494),
    .B(_1546_),
    .Y(_0256_));
 sg13g2_xnor2_1 _3491_ (.Y(_1547_),
    .A(\g_feeder[3].trip_timer[0] ),
    .B(_1508_));
 sg13g2_nor2_1 _3492_ (.A(net494),
    .B(_1547_),
    .Y(_0257_));
 sg13g2_nand2_1 _3493_ (.Y(_1548_),
    .A(\fltcur_all[10] ),
    .B(net520));
 sg13g2_nand2_1 _3495_ (.Y(_1550_),
    .A(net14),
    .B(net486));
 sg13g2_o21ai_1 _3496_ (.B1(_1550_),
    .Y(_0258_),
    .A1(net486),
    .A2(_1548_));
 sg13g2_nand2_1 _3497_ (.Y(_1551_),
    .A(\fltcur_all[9] ),
    .B(net520));
 sg13g2_nand2_1 _3498_ (.Y(_1552_),
    .A(net60),
    .B(net486));
 sg13g2_o21ai_1 _3499_ (.B1(_1552_),
    .Y(_0259_),
    .A1(net486),
    .A2(_1551_));
 sg13g2_nand2_1 _3500_ (.Y(_1553_),
    .A(\fltcur_all[8] ),
    .B(net520));
 sg13g2_nand2_1 _3501_ (.Y(_1554_),
    .A(net59),
    .B(_0412_));
 sg13g2_o21ai_1 _3502_ (.B1(_1554_),
    .Y(_0260_),
    .A1(net488),
    .A2(_1553_));
 sg13g2_nand2_1 _3503_ (.Y(_1555_),
    .A(\fltcur_all[7] ),
    .B(net520));
 sg13g2_nand2_1 _3504_ (.Y(_1556_),
    .A(net58),
    .B(net488));
 sg13g2_o21ai_1 _3505_ (.B1(_1556_),
    .Y(_0261_),
    .A1(net488),
    .A2(_1555_));
 sg13g2_nand2_1 _3506_ (.Y(_1557_),
    .A(\fltcur_all[6] ),
    .B(net520));
 sg13g2_nand2_1 _3507_ (.Y(_1558_),
    .A(net57),
    .B(net487));
 sg13g2_o21ai_1 _3508_ (.B1(_1558_),
    .Y(_0262_),
    .A1(net488),
    .A2(_1557_));
 sg13g2_nand2_1 _3509_ (.Y(_1559_),
    .A(\fltcur_all[5] ),
    .B(net521));
 sg13g2_nand2_1 _3510_ (.Y(_1560_),
    .A(net56),
    .B(net487));
 sg13g2_o21ai_1 _3511_ (.B1(_1560_),
    .Y(_0263_),
    .A1(net487),
    .A2(_1559_));
 sg13g2_nand2_1 _3512_ (.Y(_1561_),
    .A(\fltcur_all[4] ),
    .B(net520));
 sg13g2_nand2_1 _3513_ (.Y(_1562_),
    .A(net55),
    .B(net486));
 sg13g2_o21ai_1 _3514_ (.B1(_1562_),
    .Y(_0264_),
    .A1(net486),
    .A2(_1561_));
 sg13g2_nand2_1 _3515_ (.Y(_1563_),
    .A(\fltcur_all[3] ),
    .B(net521));
 sg13g2_nand2_1 _3516_ (.Y(_1564_),
    .A(net46),
    .B(net487));
 sg13g2_o21ai_1 _3517_ (.B1(_1564_),
    .Y(_0265_),
    .A1(net487),
    .A2(_1563_));
 sg13g2_nand3_1 _3518_ (.B(_0400_),
    .C(net521),
    .A(\fltcur_all[2] ),
    .Y(_1565_));
 sg13g2_o21ai_1 _3519_ (.B1(_1565_),
    .Y(_0266_),
    .A1(_0369_),
    .A2(_0400_));
 sg13g2_nand2_1 _3520_ (.Y(_1566_),
    .A(\fltcur_all[1] ),
    .B(net521));
 sg13g2_nand2_1 _3521_ (.Y(_1567_),
    .A(net24),
    .B(net489));
 sg13g2_o21ai_1 _3522_ (.B1(_1567_),
    .Y(_0267_),
    .A1(net489),
    .A2(_1566_));
 sg13g2_nand2_1 _3523_ (.Y(_1568_),
    .A(\fltcur_all[0] ),
    .B(net520));
 sg13g2_nand2_1 _3524_ (.Y(_1569_),
    .A(net13),
    .B(net487));
 sg13g2_o21ai_1 _3525_ (.B1(_1569_),
    .Y(_0268_),
    .A1(net487),
    .A2(_1568_));
 sg13g2_and2_1 _3526_ (.A(_1301_),
    .B(_1316_),
    .X(_1570_));
 sg13g2_nand2_1 _3527_ (.Y(_1571_),
    .A(\g_feeder[3].streak[1] ),
    .B(_1173_));
 sg13g2_nor2_1 _3528_ (.A(_1803_),
    .B(_0878_),
    .Y(_1572_));
 sg13g2_a21oi_1 _3529_ (.A1(net604),
    .A2(_1572_),
    .Y(_1573_),
    .B1(net12));
 sg13g2_o21ai_1 _3530_ (.B1(net110),
    .Y(_1574_),
    .A1(_1173_),
    .A2(_1573_));
 sg13g2_o21ai_1 _3531_ (.B1(_1574_),
    .Y(_1575_),
    .A1(_1570_),
    .A2(_1571_));
 sg13g2_or2_1 _3532_ (.X(_1576_),
    .B(net8),
    .A(net110));
 sg13g2_a21oi_1 _3533_ (.A1(net68),
    .A2(_1572_),
    .Y(_1577_),
    .B1(_1576_));
 sg13g2_nand2_1 _3534_ (.Y(_1578_),
    .A(net109),
    .B(_1577_));
 sg13g2_a21oi_1 _3535_ (.A1(net75),
    .A2(_1572_),
    .Y(_1579_),
    .B1(net4));
 sg13g2_nand2b_1 _3536_ (.Y(_1580_),
    .B(_1577_),
    .A_N(_1579_));
 sg13g2_or3_1 _3537_ (.A(net109),
    .B(_1173_),
    .C(_1580_),
    .X(_1581_));
 sg13g2_o21ai_1 _3538_ (.B1(_1581_),
    .Y(_1582_),
    .A1(net478),
    .A2(_1578_));
 sg13g2_a21o_1 _3539_ (.A2(_1575_),
    .A1(net109),
    .B1(_1582_),
    .X(_0269_));
 sg13g2_nor2_1 _3540_ (.A(_0650_),
    .B(_1050_),
    .Y(_1583_));
 sg13g2_mux2_1 _3542_ (.A0(\delay_all[30] ),
    .A1(net73),
    .S(net509),
    .X(_0270_));
 sg13g2_mux2_1 _3543_ (.A0(\delay_all[29] ),
    .A1(net72),
    .S(net509),
    .X(_0271_));
 sg13g2_mux2_1 _3544_ (.A0(\delay_all[28] ),
    .A1(net71),
    .S(net509),
    .X(_0272_));
 sg13g2_mux2_1 _3545_ (.A0(\delay_all[27] ),
    .A1(net70),
    .S(net509),
    .X(_0273_));
 sg13g2_mux2_1 _3546_ (.A0(\delay_all[26] ),
    .A1(net69),
    .S(net509),
    .X(_0274_));
 sg13g2_mux2_1 _3548_ (.A0(\delay_all[25] ),
    .A1(net83),
    .S(net509),
    .X(_0275_));
 sg13g2_mux2_1 _3549_ (.A0(\delay_all[24] ),
    .A1(net82),
    .S(net509),
    .X(_0276_));
 sg13g2_nand2_1 _3550_ (.Y(_1586_),
    .A(net81),
    .B(net508));
 sg13g2_o21ai_1 _3551_ (.B1(_1586_),
    .Y(_0277_),
    .A1(_0572_),
    .A2(net508));
 sg13g2_nor2_1 _3552_ (.A(_0034_),
    .B(net508),
    .Y(_1587_));
 sg13g2_a21oi_1 _3553_ (.A1(net80),
    .A2(net508),
    .Y(_0278_),
    .B1(_1587_));
 sg13g2_nor2_1 _3554_ (.A(_0033_),
    .B(net508),
    .Y(_1588_));
 sg13g2_a21oi_1 _3555_ (.A1(net79),
    .A2(net508),
    .Y(_0279_),
    .B1(_1588_));
 sg13g2_mux2_1 _3556_ (.A0(\delay_all[20] ),
    .A1(net78),
    .S(_1583_),
    .X(_0280_));
 sg13g2_nand2_1 _3557_ (.Y(_1589_),
    .A(net77),
    .B(net508));
 sg13g2_o21ai_1 _3558_ (.B1(_1589_),
    .Y(_0281_),
    .A1(_0616_),
    .A2(net508));
 sg13g2_nor2_1 _3559_ (.A(_0032_),
    .B(_1583_),
    .Y(_1590_));
 sg13g2_a21oi_1 _3560_ (.A1(net76),
    .A2(_1583_),
    .Y(_0282_),
    .B1(_1590_));
 sg13g2_mux2_1 _3561_ (.A0(\delay_all[17] ),
    .A1(net605),
    .S(_1583_),
    .X(_0283_));
 sg13g2_mux2_1 _3562_ (.A0(\delay_all[16] ),
    .A1(net606),
    .S(_1583_),
    .X(_0284_));
 sg13g2_nand2_1 _3563_ (.Y(_1591_),
    .A(_0555_),
    .B(_0765_));
 sg13g2_and2_1 _3566_ (.A(\g_feeder[1].trip_timer[12] ),
    .B(\g_feeder[1].trip_timer[13] ),
    .X(_1594_));
 sg13g2_nand3_1 _3567_ (.B(\g_feeder[1].trip_timer[7] ),
    .C(\g_feeder[1].trip_timer[6] ),
    .A(\g_feeder[1].trip_timer[8] ),
    .Y(_1595_));
 sg13g2_nand3_1 _3568_ (.B(\g_feeder[1].trip_timer[5] ),
    .C(\g_feeder[1].trip_timer[4] ),
    .A(\g_feeder[1].trip_timer[9] ),
    .Y(_1596_));
 sg13g2_nand4_1 _3569_ (.B(\g_feeder[1].trip_timer[2] ),
    .C(\g_feeder[1].trip_timer[3] ),
    .A(\g_feeder[1].trip_timer[0] ),
    .Y(_1597_),
    .D(\g_feeder[1].trip_timer[1] ));
 sg13g2_nand2_1 _3570_ (.Y(_1598_),
    .A(\g_feeder[1].trip_timer[10] ),
    .B(\g_feeder[1].trip_timer[11] ));
 sg13g2_nor4_1 _3571_ (.A(_1595_),
    .B(_1596_),
    .C(_1597_),
    .D(_1598_),
    .Y(_1599_));
 sg13g2_and4_1 _3572_ (.A(\g_feeder[1].trip_timer[15] ),
    .B(\g_feeder[1].trip_timer[14] ),
    .C(_1594_),
    .D(_1599_),
    .X(_1600_));
 sg13g2_nor2_2 _3573_ (.A(_1450_),
    .B(_1600_),
    .Y(_1601_));
 sg13g2_and2_1 _3574_ (.A(_1599_),
    .B(_1601_),
    .X(_1602_));
 sg13g2_nand2_1 _3576_ (.Y(_1604_),
    .A(_1594_),
    .B(_1602_));
 sg13g2_xor2_1 _3577_ (.B(_1604_),
    .A(\g_feeder[1].trip_timer[14] ),
    .X(_1605_));
 sg13g2_nor2_1 _3578_ (.A(net471),
    .B(_1605_),
    .Y(_0285_));
 sg13g2_nand2_1 _3579_ (.Y(_1606_),
    .A(\g_feeder[1].trip_timer[12] ),
    .B(_1602_));
 sg13g2_xor2_1 _3580_ (.B(_1606_),
    .A(\g_feeder[1].trip_timer[13] ),
    .X(_1607_));
 sg13g2_nor2_1 _3581_ (.A(net471),
    .B(_1607_),
    .Y(_0286_));
 sg13g2_xnor2_1 _3582_ (.Y(_1608_),
    .A(\g_feeder[1].trip_timer[12] ),
    .B(_1602_));
 sg13g2_nor2_1 _3583_ (.A(net471),
    .B(_1608_),
    .Y(_0287_));
 sg13g2_nor2_1 _3584_ (.A(_1595_),
    .B(_1596_),
    .Y(_1609_));
 sg13g2_nor3_2 _3585_ (.A(_1450_),
    .B(_1597_),
    .C(_1600_),
    .Y(_1610_));
 sg13g2_nand3_1 _3586_ (.B(_1609_),
    .C(_1610_),
    .A(\g_feeder[1].trip_timer[10] ),
    .Y(_1611_));
 sg13g2_xor2_1 _3587_ (.B(_1611_),
    .A(\g_feeder[1].trip_timer[11] ),
    .X(_1612_));
 sg13g2_nor2_1 _3588_ (.A(net471),
    .B(_1612_),
    .Y(_0288_));
 sg13g2_nand2_1 _3589_ (.Y(_1613_),
    .A(_1609_),
    .B(_1610_));
 sg13g2_xor2_1 _3590_ (.B(_1613_),
    .A(\g_feeder[1].trip_timer[10] ),
    .X(_1614_));
 sg13g2_nor2_1 _3591_ (.A(net471),
    .B(_1614_),
    .Y(_0289_));
 sg13g2_nand3_1 _3592_ (.B(\g_feeder[1].trip_timer[4] ),
    .C(_1610_),
    .A(\g_feeder[1].trip_timer[5] ),
    .Y(_1615_));
 sg13g2_nor2_1 _3594_ (.A(_1595_),
    .B(_1615_),
    .Y(_1617_));
 sg13g2_xnor2_1 _3595_ (.Y(_1618_),
    .A(\g_feeder[1].trip_timer[9] ),
    .B(_1617_));
 sg13g2_nor2_1 _3596_ (.A(net470),
    .B(_1618_),
    .Y(_0290_));
 sg13g2_inv_1 _3597_ (.Y(_1619_),
    .A(\g_feeder[1].trip_timer[7] ));
 sg13g2_nor3_1 _3598_ (.A(_1619_),
    .B(_0567_),
    .C(_1615_),
    .Y(_1620_));
 sg13g2_xnor2_1 _3599_ (.Y(_1621_),
    .A(\g_feeder[1].trip_timer[8] ),
    .B(_1620_));
 sg13g2_nor2_1 _3600_ (.A(net470),
    .B(_1621_),
    .Y(_0291_));
 sg13g2_nor2_1 _3601_ (.A(_0567_),
    .B(_1615_),
    .Y(_1622_));
 sg13g2_xnor2_1 _3602_ (.Y(_1623_),
    .A(\g_feeder[1].trip_timer[7] ),
    .B(_1622_));
 sg13g2_nor2_1 _3603_ (.A(net470),
    .B(_1623_),
    .Y(_0292_));
 sg13g2_xnor2_1 _3604_ (.Y(_1624_),
    .A(_0567_),
    .B(_1615_));
 sg13g2_nor2_1 _3605_ (.A(net470),
    .B(_1624_),
    .Y(_0293_));
 sg13g2_nand2_1 _3606_ (.Y(_1625_),
    .A(\g_feeder[1].trip_timer[4] ),
    .B(_1610_));
 sg13g2_xnor2_1 _3607_ (.Y(_1626_),
    .A(_0559_),
    .B(_1625_));
 sg13g2_nor2_1 _3608_ (.A(net470),
    .B(_1626_),
    .Y(_0294_));
 sg13g2_xnor2_1 _3609_ (.Y(_1627_),
    .A(\g_feeder[1].trip_timer[4] ),
    .B(_1610_));
 sg13g2_nor2_1 _3610_ (.A(net470),
    .B(_1627_),
    .Y(_0295_));
 sg13g2_nand4_1 _3611_ (.B(\g_feeder[1].trip_timer[2] ),
    .C(\g_feeder[1].trip_timer[1] ),
    .A(\g_feeder[1].trip_timer[0] ),
    .Y(_1628_),
    .D(_1601_));
 sg13g2_xnor2_1 _3612_ (.Y(_1629_),
    .A(_0607_),
    .B(_1628_));
 sg13g2_nor2_1 _3613_ (.A(_1591_),
    .B(_1629_),
    .Y(_0296_));
 sg13g2_nand3_1 _3614_ (.B(\g_feeder[1].trip_timer[1] ),
    .C(_1601_),
    .A(\g_feeder[1].trip_timer[0] ),
    .Y(_1630_));
 sg13g2_xor2_1 _3615_ (.B(_1630_),
    .A(\g_feeder[1].trip_timer[2] ),
    .X(_1631_));
 sg13g2_nor2_1 _3616_ (.A(net471),
    .B(_1631_),
    .Y(_0297_));
 sg13g2_nand2_1 _3617_ (.Y(_1632_),
    .A(\g_feeder[1].trip_timer[0] ),
    .B(_1601_));
 sg13g2_xor2_1 _3618_ (.B(_1632_),
    .A(\g_feeder[1].trip_timer[1] ),
    .X(_1633_));
 sg13g2_nor2_1 _3619_ (.A(_1591_),
    .B(_1633_),
    .Y(_0298_));
 sg13g2_xnor2_1 _3620_ (.Y(_1634_),
    .A(\g_feeder[1].trip_timer[0] ),
    .B(_1601_));
 sg13g2_nor2_1 _3621_ (.A(_1591_),
    .B(_1634_),
    .Y(_0299_));
 sg13g2_inv_1 _3622_ (.Y(_1635_),
    .A(\g_feeder[3].streak[1] ));
 sg13g2_nand2_1 _3623_ (.Y(_1636_),
    .A(net110),
    .B(_1317_));
 sg13g2_a21oi_1 _3624_ (.A1(_1149_),
    .A2(_1166_),
    .Y(_1637_),
    .B1(_1636_));
 sg13g2_inv_1 _3625_ (.Y(_1638_),
    .A(net109));
 sg13g2_a21o_1 _3626_ (.A2(_1573_),
    .A1(net110),
    .B1(_1638_),
    .X(_1639_));
 sg13g2_nor2_1 _3627_ (.A(_1637_),
    .B(_1639_),
    .Y(_1640_));
 sg13g2_nand3_1 _3628_ (.B(\g_feeder[3].streak[0] ),
    .C(_1640_),
    .A(_1635_),
    .Y(_1641_));
 sg13g2_nor3_1 _3629_ (.A(_1577_),
    .B(_1637_),
    .C(_1639_),
    .Y(_1642_));
 sg13g2_nor2b_1 _3630_ (.A(_1642_),
    .B_N(\g_feeder[3].streak[0] ),
    .Y(_1643_));
 sg13g2_mux2_1 _3631_ (.A0(_1641_),
    .A1(_1643_),
    .S(net479),
    .X(_0300_));
 sg13g2_or2_1 _3632_ (.X(_1644_),
    .B(_0650_),
    .A(_0992_));
 sg13g2_nand2_1 _3635_ (.Y(_1647_),
    .A(_0026_),
    .B(net506));
 sg13g2_o21ai_1 _3636_ (.B1(_1647_),
    .Y(_0301_),
    .A1(net69),
    .A2(net506));
 sg13g2_nand2_1 _3637_ (.Y(_1648_),
    .A(_0031_),
    .B(net506));
 sg13g2_o21ai_1 _3638_ (.B1(_1648_),
    .Y(_0302_),
    .A1(net83),
    .A2(net506));
 sg13g2_nand2_1 _3639_ (.Y(_1649_),
    .A(_0030_),
    .B(net506));
 sg13g2_o21ai_1 _3640_ (.B1(_1649_),
    .Y(_0303_),
    .A1(net82),
    .A2(net506));
 sg13g2_nand2_1 _3641_ (.Y(_1650_),
    .A(_0029_),
    .B(net507));
 sg13g2_o21ai_1 _3642_ (.B1(_1650_),
    .Y(_0304_),
    .A1(net81),
    .A2(_1644_));
 sg13g2_nand2_1 _3643_ (.Y(_1651_),
    .A(_0028_),
    .B(net507));
 sg13g2_o21ai_1 _3644_ (.B1(_1651_),
    .Y(_0305_),
    .A1(net80),
    .A2(net507));
 sg13g2_mux2_1 _3645_ (.A0(net79),
    .A1(\g_feeder[1].threshold[5] ),
    .S(net507),
    .X(_0306_));
 sg13g2_nand2_1 _3646_ (.Y(_1652_),
    .A(_0027_),
    .B(net507));
 sg13g2_o21ai_1 _3647_ (.B1(_1652_),
    .Y(_0307_),
    .A1(net78),
    .A2(net507));
 sg13g2_mux2_1 _3648_ (.A0(net77),
    .A1(\g_feeder[1].threshold[3] ),
    .S(_1644_),
    .X(_0308_));
 sg13g2_mux2_1 _3649_ (.A0(net604),
    .A1(\g_feeder[1].threshold[2] ),
    .S(_1644_),
    .X(_0309_));
 sg13g2_mux2_1 _3650_ (.A0(net605),
    .A1(\g_feeder[1].threshold[1] ),
    .S(_1644_),
    .X(_0310_));
 sg13g2_mux2_1 _3651_ (.A0(net68),
    .A1(\g_feeder[1].threshold[0] ),
    .S(net507),
    .X(_0311_));
 sg13g2_or2_1 _3652_ (.X(_1653_),
    .B(_1810_),
    .A(_1808_));
 sg13g2_nand3_1 _3653_ (.B(_1815_),
    .C(_1817_),
    .A(\g_feeder[2].streak[1] ),
    .Y(_1654_));
 sg13g2_a22oi_1 _3654_ (.Y(_0312_),
    .B1(_1654_),
    .B2(net473),
    .A2(_1653_),
    .A1(_0486_));
 sg13g2_o21ai_1 _3655_ (.B1(\fltcnt_all[7] ),
    .Y(_1655_),
    .A1(net490),
    .A2(_0425_));
 sg13g2_o21ai_1 _3656_ (.B1(_1655_),
    .Y(_0313_),
    .A1(_1904_),
    .A2(_0410_));
 sg13g2_mux2_1 _3657_ (.A0(net70),
    .A1(\g_feeder[0].threshold[11] ),
    .S(net541),
    .X(_0314_));
 sg13g2_nor2_1 _3658_ (.A(_0730_),
    .B(_0481_),
    .Y(_1656_));
 sg13g2_or2_1 _3659_ (.X(_0315_),
    .B(_1808_),
    .A(_1656_));
 sg13g2_o21ai_1 _3660_ (.B1(\fltcur_all[23] ),
    .Y(_1657_),
    .A1(net538),
    .A2(net537));
 sg13g2_nand2_1 _3661_ (.Y(_1658_),
    .A(net28),
    .B(_0642_));
 sg13g2_o21ai_1 _3662_ (.B1(_1658_),
    .Y(_0316_),
    .A1(_0642_),
    .A2(_1657_));
 sg13g2_nor2b_1 _3663_ (.A(net519),
    .B_N(\fltcur_all[35] ),
    .Y(_1659_));
 sg13g2_mux2_1 _3664_ (.A0(net41),
    .A1(_1659_),
    .S(net472),
    .X(_0317_));
 sg13g2_a21oi_1 _3665_ (.A1(_0698_),
    .A2(_0699_),
    .Y(_1660_),
    .B1(\g_feeder[0].streak[1] ));
 sg13g2_o21ai_1 _3666_ (.B1(\g_feeder[0].streak[1] ),
    .Y(_1661_),
    .A1(_0704_),
    .A2(_0706_));
 sg13g2_o21ai_1 _3667_ (.B1(_1661_),
    .Y(_0318_),
    .A1(_0400_),
    .A2(_1660_));
 sg13g2_mux2_1 _3668_ (.A0(net74),
    .A1(\delay_all[47] ),
    .S(net505),
    .X(_0319_));
 sg13g2_o21ai_1 _3669_ (.B1(net518),
    .Y(_1662_),
    .A1(_0730_),
    .A2(_0481_));
 sg13g2_nor3_1 _3670_ (.A(_0730_),
    .B(_0481_),
    .C(_0732_),
    .Y(_1663_));
 sg13g2_a21o_1 _3671_ (.A2(_1662_),
    .A1(\fltcnt_all[23] ),
    .B1(_1663_),
    .X(_0320_));
 sg13g2_nand2b_1 _3672_ (.Y(_0321_),
    .B(_0779_),
    .A_N(net483));
 sg13g2_mux2_1 _3673_ (.A0(net74),
    .A1(\delay_all[63] ),
    .S(net517),
    .X(_0322_));
 sg13g2_nand3_1 _3674_ (.B(net484),
    .C(_0802_),
    .A(\fltcnt_all[14] ),
    .Y(_1664_));
 sg13g2_o21ai_1 _3675_ (.B1(_1664_),
    .Y(_0323_),
    .A1(_0796_),
    .A2(_0794_));
 sg13g2_mux2_1 _3676_ (.A0(net74),
    .A1(\delay_all[15] ),
    .S(net515),
    .X(_0324_));
 sg13g2_inv_1 _3677_ (.Y(_1665_),
    .A(net93));
 sg13g2_or2_1 _3678_ (.X(_1666_),
    .B(net609),
    .A(\delay_all[63] ));
 sg13g2_mux4_1 _3679_ (.S0(net613),
    .A0(\delay_all[15] ),
    .A1(\delay_all[31] ),
    .A2(\delay_all[47] ),
    .A3(_1666_),
    .S1(net610),
    .X(_1667_));
 sg13g2_nand2b_1 _3680_ (.Y(_1668_),
    .B(_1667_),
    .A_N(_0841_));
 sg13g2_o21ai_1 _3681_ (.B1(_1668_),
    .Y(_0325_),
    .A1(net607),
    .A2(_1665_));
 sg13g2_inv_1 _3682_ (.Y(_1669_),
    .A(\g_feeder[1].streak[1] ));
 sg13g2_a21oi_1 _3683_ (.A1(_0779_),
    .A2(_1244_),
    .Y(_1670_),
    .B1(_1669_));
 sg13g2_nand2_1 _3684_ (.Y(_1671_),
    .A(\g_feeder[1].streak[0] ),
    .B(net105));
 sg13g2_a21oi_1 _3685_ (.A1(_0776_),
    .A2(_0778_),
    .Y(_1672_),
    .B1(_1671_));
 sg13g2_o21ai_1 _3686_ (.B1(net483),
    .Y(_1673_),
    .A1(\g_feeder[1].streak[1] ),
    .A2(_1672_));
 sg13g2_nand2b_1 _3687_ (.Y(_0326_),
    .B(_1673_),
    .A_N(_1670_));
 sg13g2_inv_1 _3688_ (.Y(_1674_),
    .A(\fltcnt_all[31] ));
 sg13g2_o21ai_1 _3689_ (.B1(_1674_),
    .Y(_1675_),
    .A1(net479),
    .A2(_1337_));
 sg13g2_nor2b_1 _3690_ (.A(_1326_),
    .B_N(_1675_),
    .Y(_0327_));
 sg13g2_nand3_1 _3691_ (.B(_1355_),
    .C(_1357_),
    .A(\g_feeder[0].trip_timer[14] ),
    .Y(_1676_));
 sg13g2_inv_1 _3692_ (.Y(_1677_),
    .A(\g_feeder[0].trip_timer[15] ));
 sg13g2_o21ai_1 _3693_ (.B1(_1677_),
    .Y(_1678_),
    .A1(_1450_),
    .A2(_1676_));
 sg13g2_and2_1 _3694_ (.A(_1363_),
    .B(_1678_),
    .X(_0328_));
 sg13g2_mux2_1 _3695_ (.A0(net70),
    .A1(\g_feeder[3].threshold[11] ),
    .S(net510),
    .X(_0329_));
 sg13g2_nand2_1 _3696_ (.Y(_0330_),
    .A(_0400_),
    .B(_0698_));
 sg13g2_o21ai_1 _3697_ (.B1(\fltcur_all[47] ),
    .Y(_1679_),
    .A1(net539),
    .A2(net512));
 sg13g2_nand2_1 _3698_ (.Y(_1680_),
    .A(net54),
    .B(net475));
 sg13g2_o21ai_1 _3699_ (.B1(_1680_),
    .Y(_0331_),
    .A1(net475),
    .A2(_1679_));
 sg13g2_inv_1 _3700_ (.Y(_1681_),
    .A(\g_feeder[2].trip_timer[15] ));
 sg13g2_nand3_1 _3701_ (.B(_1448_),
    .C(_1452_),
    .A(\g_feeder[2].trip_timer[14] ),
    .Y(_1682_));
 sg13g2_a21oi_1 _3702_ (.A1(_1681_),
    .A2(_1682_),
    .Y(_0332_),
    .B1(net496));
 sg13g2_mux2_1 _3703_ (.A0(net70),
    .A1(\g_feeder[2].threshold[11] ),
    .S(net503),
    .X(_0333_));
 sg13g2_a21oi_1 _3704_ (.A1(net501),
    .A2(_1515_),
    .Y(_1683_),
    .B1(\g_feeder[3].trip_timer[15] ));
 sg13g2_nor2_1 _3705_ (.A(net493),
    .B(_1683_),
    .Y(_0334_));
 sg13g2_nand2_1 _3706_ (.Y(_1684_),
    .A(\fltcur_all[11] ),
    .B(net520));
 sg13g2_nand2_1 _3707_ (.Y(_1685_),
    .A(net15),
    .B(net486));
 sg13g2_o21ai_1 _3708_ (.B1(_1685_),
    .Y(_0335_),
    .A1(net486),
    .A2(_1684_));
 sg13g2_nand2_1 _3709_ (.Y(_0336_),
    .A(net479),
    .B(_1574_));
 sg13g2_mux2_1 _3710_ (.A0(\delay_all[31] ),
    .A1(net74),
    .S(net509),
    .X(_0337_));
 sg13g2_and3_1 _3711_ (.X(_1686_),
    .A(\g_feeder[1].trip_timer[14] ),
    .B(_1594_),
    .C(_1599_));
 sg13g2_a21oi_1 _3712_ (.A1(_1713_),
    .A2(_1686_),
    .Y(_1687_),
    .B1(\g_feeder[1].trip_timer[15] ));
 sg13g2_nor2_1 _3713_ (.A(net471),
    .B(_1687_),
    .Y(_0338_));
 sg13g2_a21oi_1 _3714_ (.A1(\g_feeder[3].streak[0] ),
    .A2(_1640_),
    .Y(_1688_),
    .B1(\g_feeder[3].streak[1] ));
 sg13g2_o21ai_1 _3715_ (.B1(net479),
    .Y(_1689_),
    .A1(_1635_),
    .A2(_1642_));
 sg13g2_nor2b_1 _3716_ (.A(_1688_),
    .B_N(_1689_),
    .Y(_0339_));
 sg13g2_mux2_1 _3717_ (.A0(net70),
    .A1(\g_feeder[1].threshold[11] ),
    .S(net506),
    .X(_0340_));
 sg13g2_inv_1 _3718_ (.Y(_1690_),
    .A(\tick_cnt[15] ));
 sg13g2_nor2_1 _3719_ (.A(_1690_),
    .B(_1713_),
    .Y(_1691_));
 sg13g2_nand3_1 _3720_ (.B(\tick_cnt[13] ),
    .C(_1705_),
    .A(\tick_cnt[14] ),
    .Y(_1692_));
 sg13g2_mux2_1 _3721_ (.A0(_1690_),
    .A1(_1691_),
    .S(_1692_),
    .X(_0007_));
 sg13g2_or4_1 _3722_ (.A(_1656_),
    .B(net490),
    .C(net481),
    .D(net477),
    .X(_0000_));
 sg13g2_and4_1 _3727_ (.A(\tick_cnt[0] ),
    .B(\tick_cnt[3] ),
    .C(\tick_cnt[2] ),
    .D(\tick_cnt[1] ),
    .X(_1697_));
 sg13g2_and3_1 _3729_ (.X(_1699_),
    .A(\tick_cnt[5] ),
    .B(\tick_cnt[4] ),
    .C(_1697_));
 sg13g2_nand3_1 _3731_ (.B(\tick_cnt[6] ),
    .C(_1699_),
    .A(\tick_cnt[7] ),
    .Y(_1701_));
 sg13g2_nand2_1 _3733_ (.Y(_1703_),
    .A(\tick_cnt[9] ),
    .B(\tick_cnt[8] ));
 sg13g2_nor2_2 _3734_ (.A(_1701_),
    .B(_1703_),
    .Y(_1704_));
 sg13g2_and4_1 _3735_ (.A(\tick_cnt[12] ),
    .B(\tick_cnt[11] ),
    .C(\tick_cnt[10] ),
    .D(_1704_),
    .X(_1705_));
 sg13g2_nand2_1 _3737_ (.Y(_1707_),
    .A(\tick_cnt[13] ),
    .B(_1705_));
 sg13g2_xor2_1 _3738_ (.B(_1707_),
    .A(\tick_cnt[14] ),
    .X(_1708_));
 sg13g2_nor4_1 _3739_ (.A(\tick_cnt[13] ),
    .B(\tick_cnt[12] ),
    .C(\tick_cnt[11] ),
    .D(\tick_cnt[10] ),
    .Y(_1709_));
 sg13g2_nand2b_1 _3740_ (.Y(_1710_),
    .B(\tick_cnt[6] ),
    .A_N(\tick_cnt[7] ));
 sg13g2_nand4_1 _3741_ (.B(\tick_cnt[15] ),
    .C(\tick_cnt[9] ),
    .A(\tick_cnt[14] ),
    .Y(_1711_),
    .D(\tick_cnt[8] ));
 sg13g2_nor4_1 _3742_ (.A(\tick_cnt[5] ),
    .B(\tick_cnt[4] ),
    .C(_1710_),
    .D(_1711_),
    .Y(_1712_));
 sg13g2_and3_1 _3743_ (.X(_1713_),
    .A(_1697_),
    .B(_1709_),
    .C(_1712_));
 sg13g2_nor2_1 _3745_ (.A(_1708_),
    .B(_1713_),
    .Y(_0006_));
 sg13g2_xor2_1 _3746_ (.B(_1705_),
    .A(\tick_cnt[13] ),
    .X(_0005_));
 sg13g2_nand3_1 _3747_ (.B(\tick_cnt[10] ),
    .C(_1704_),
    .A(\tick_cnt[11] ),
    .Y(_1715_));
 sg13g2_xnor2_1 _3748_ (.Y(_0004_),
    .A(\tick_cnt[12] ),
    .B(_1715_));
 sg13g2_nand2_1 _3749_ (.Y(_1716_),
    .A(\tick_cnt[10] ),
    .B(_1704_));
 sg13g2_xnor2_1 _3750_ (.Y(_0003_),
    .A(\tick_cnt[11] ),
    .B(_1716_));
 sg13g2_xor2_1 _3751_ (.B(_1704_),
    .A(\tick_cnt[10] ),
    .X(_0002_));
 sg13g2_nand4_1 _3752_ (.B(\tick_cnt[7] ),
    .C(\tick_cnt[6] ),
    .A(\tick_cnt[8] ),
    .Y(_1717_),
    .D(_1699_));
 sg13g2_xor2_1 _3753_ (.B(_1717_),
    .A(\tick_cnt[9] ),
    .X(_1718_));
 sg13g2_nor2_1 _3754_ (.A(net501),
    .B(_1718_),
    .Y(_0016_));
 sg13g2_xor2_1 _3755_ (.B(_1701_),
    .A(\tick_cnt[8] ),
    .X(_1719_));
 sg13g2_nor2_1 _3756_ (.A(net501),
    .B(_1719_),
    .Y(_0015_));
 sg13g2_nand2_1 _3757_ (.Y(_1720_),
    .A(\tick_cnt[6] ),
    .B(_1699_));
 sg13g2_xnor2_1 _3758_ (.Y(_0014_),
    .A(\tick_cnt[7] ),
    .B(_1720_));
 sg13g2_xnor2_1 _3759_ (.Y(_1721_),
    .A(\tick_cnt[6] ),
    .B(_1699_));
 sg13g2_nor2_1 _3760_ (.A(net501),
    .B(_1721_),
    .Y(_0013_));
 sg13g2_nand2_1 _3761_ (.Y(_1722_),
    .A(\tick_cnt[4] ),
    .B(_1697_));
 sg13g2_xnor2_1 _3762_ (.Y(_0012_),
    .A(\tick_cnt[5] ),
    .B(_1722_));
 sg13g2_xnor2_1 _3763_ (.Y(_1723_),
    .A(\tick_cnt[4] ),
    .B(_1697_));
 sg13g2_nor2_1 _3764_ (.A(net501),
    .B(_1723_),
    .Y(_0011_));
 sg13g2_nand3_1 _3765_ (.B(\tick_cnt[2] ),
    .C(\tick_cnt[1] ),
    .A(\tick_cnt[0] ),
    .Y(_1724_));
 sg13g2_xnor2_1 _3766_ (.Y(_0010_),
    .A(\tick_cnt[3] ),
    .B(_1724_));
 sg13g2_nand2_1 _3767_ (.Y(_1725_),
    .A(\tick_cnt[0] ),
    .B(\tick_cnt[1] ));
 sg13g2_xnor2_1 _3768_ (.Y(_0009_),
    .A(\tick_cnt[2] ),
    .B(_1725_));
 sg13g2_xor2_1 _3769_ (.B(\tick_cnt[1] ),
    .A(\tick_cnt[0] ),
    .X(_0008_));
 sg13g2_inv_1 _3770_ (.Y(_0001_),
    .A(\tick_cnt[0] ));
 sg13g2_xnor2_1 _3772_ (.Y(_1727_),
    .A(_0037_),
    .B(net36));
 sg13g2_nor2b_1 _3773_ (.A(net34),
    .B_N(\g_feeder[2].threshold[5] ),
    .Y(_1728_));
 sg13g2_xnor2_1 _3776_ (.Y(_1731_),
    .A(_0038_),
    .B(net37));
 sg13g2_nor3_2 _3777_ (.A(_1727_),
    .B(_1728_),
    .C(_1731_),
    .Y(_1732_));
 sg13g2_nand2b_1 _3778_ (.Y(_1733_),
    .B(net34),
    .A_N(\g_feeder[2].threshold[5] ));
 sg13g2_xor2_1 _3780_ (.B(net33),
    .A(_0036_),
    .X(_1735_));
 sg13g2_and2_1 _3781_ (.A(_1733_),
    .B(_1735_),
    .X(_1736_));
 sg13g2_nand2_1 _3782_ (.Y(_1737_),
    .A(_1732_),
    .B(_1736_));
 sg13g2_inv_1 _3784_ (.Y(_1739_),
    .A(\g_feeder[2].threshold[3] ));
 sg13g2_nor2_1 _3786_ (.A(_1739_),
    .B(net32),
    .Y(_1741_));
 sg13g2_inv_1 _3787_ (.Y(_1742_),
    .A(net30));
 sg13g2_nor2b_1 _3788_ (.A(net29),
    .B_N(\g_feeder[2].threshold[0] ),
    .Y(_1743_));
 sg13g2_o21ai_1 _3790_ (.B1(\g_feeder[2].threshold[1] ),
    .Y(_1745_),
    .A1(_1742_),
    .A2(_1743_));
 sg13g2_nand2_1 _3791_ (.Y(_1746_),
    .A(_1742_),
    .B(_1743_));
 sg13g2_nor2b_1 _3794_ (.A(\g_feeder[2].threshold[2] ),
    .B_N(net31),
    .Y(_1749_));
 sg13g2_a221oi_1 _3795_ (.B2(_1746_),
    .C1(_1749_),
    .B1(_1745_),
    .A1(_1739_),
    .Y(_1750_),
    .A2(net32));
 sg13g2_nand2b_1 _3796_ (.Y(_1751_),
    .B(\g_feeder[2].threshold[2] ),
    .A_N(net31));
 sg13g2_a21oi_1 _3797_ (.A1(_1739_),
    .A2(net32),
    .Y(_1752_),
    .B1(_1751_));
 sg13g2_nor4_2 _3798_ (.A(_1737_),
    .B(_1741_),
    .C(_1750_),
    .Y(_1753_),
    .D(_1752_));
 sg13g2_and2_1 _3801_ (.A(_0035_),
    .B(net40),
    .X(_1756_));
 sg13g2_nor2_1 _3802_ (.A(_0035_),
    .B(net40),
    .Y(_1757_));
 sg13g2_nor2_1 _3805_ (.A(_0040_),
    .B(net39),
    .Y(_1760_));
 sg13g2_a22oi_1 _3807_ (.Y(_1762_),
    .B1(net39),
    .B2(_0040_),
    .A2(net38),
    .A1(_0039_));
 sg13g2_nor3_1 _3808_ (.A(_1757_),
    .B(_1760_),
    .C(_1762_),
    .Y(_1763_));
 sg13g2_nor2_1 _3809_ (.A(_1756_),
    .B(_1763_),
    .Y(_1764_));
 sg13g2_nor2b_1 _3812_ (.A(net41),
    .B_N(\g_feeder[2].threshold[11] ),
    .Y(_1767_));
 sg13g2_nand2_1 _3813_ (.Y(_1768_),
    .A(_0036_),
    .B(net33));
 sg13g2_nand2_1 _3814_ (.Y(_1769_),
    .A(_1733_),
    .B(_1768_));
 sg13g2_nor2_1 _3815_ (.A(_0038_),
    .B(net37),
    .Y(_1770_));
 sg13g2_a22oi_1 _3816_ (.Y(_1771_),
    .B1(net36),
    .B2(_0037_),
    .A2(net37),
    .A1(_0038_));
 sg13g2_nand2b_1 _3817_ (.Y(_1772_),
    .B(net41),
    .A_N(\g_feeder[2].threshold[11] ));
 sg13g2_o21ai_1 _3818_ (.B1(_1772_),
    .Y(_1773_),
    .A1(_1770_),
    .A2(_1771_));
 sg13g2_a21oi_1 _3819_ (.A1(_1732_),
    .A2(_1769_),
    .Y(_1774_),
    .B1(_1773_));
 sg13g2_o21ai_1 _3820_ (.B1(_1774_),
    .Y(_1775_),
    .A1(_1764_),
    .A2(_1767_));
 sg13g2_nor2b_1 _3821_ (.A(\g_feeder[2].threshold[11] ),
    .B_N(net41),
    .Y(_1776_));
 sg13g2_xor2_1 _3822_ (.B(net41),
    .A(\g_feeder[2].threshold[11] ),
    .X(_1777_));
 sg13g2_xnor2_1 _3823_ (.Y(_1778_),
    .A(_0039_),
    .B(net38));
 sg13g2_xnor2_1 _3824_ (.Y(_1779_),
    .A(_0040_),
    .B(net39));
 sg13g2_xnor2_1 _3825_ (.Y(_1780_),
    .A(_0035_),
    .B(net40));
 sg13g2_nor4_1 _3826_ (.A(_1777_),
    .B(_1778_),
    .C(_1779_),
    .D(_1780_),
    .Y(_1781_));
 sg13g2_nor4_1 _3827_ (.A(_1756_),
    .B(_1763_),
    .C(_1776_),
    .D(_1781_),
    .Y(_1782_));
 sg13g2_xor2_1 _3828_ (.B(net30),
    .A(\g_feeder[2].threshold[1] ),
    .X(_1783_));
 sg13g2_xor2_1 _3829_ (.B(net32),
    .A(\g_feeder[2].threshold[3] ),
    .X(_1784_));
 sg13g2_xor2_1 _3830_ (.B(net29),
    .A(\g_feeder[2].threshold[0] ),
    .X(_1785_));
 sg13g2_xor2_1 _3831_ (.B(net31),
    .A(\g_feeder[2].threshold[2] ),
    .X(_1786_));
 sg13g2_nor4_1 _3832_ (.A(_1783_),
    .B(_1784_),
    .C(_1785_),
    .D(_1786_),
    .Y(_1787_));
 sg13g2_and4_1 _3833_ (.A(_1781_),
    .B(_1732_),
    .C(_1736_),
    .D(_1787_),
    .X(_1788_));
 sg13g2_nor3_1 _3834_ (.A(_1767_),
    .B(_1782_),
    .C(_1788_),
    .Y(_1789_));
 sg13g2_o21ai_1 _3835_ (.B1(_1789_),
    .Y(_1790_),
    .A1(_1753_),
    .A2(_1775_));
 sg13g2_inv_1 _3839_ (.Y(_1794_),
    .A(net64));
 sg13g2_nor2b_1 _3841_ (.A(net66),
    .B_N(net65),
    .Y(_1796_));
 sg13g2_nand2_1 _3842_ (.Y(_1797_),
    .A(_1794_),
    .B(_1796_));
 sg13g2_nor2b_1 _3847_ (.A(net61),
    .B_N(net621),
    .Y(_1802_));
 sg13g2_nand3_1 _3848_ (.B(net603),
    .C(_1802_),
    .A(net616),
    .Y(_1803_));
 sg13g2_nor2_1 _3850_ (.A(_1797_),
    .B(_1803_),
    .Y(_1805_));
 sg13g2_a21o_1 _3851_ (.A2(_1805_),
    .A1(net604),
    .B1(net11),
    .X(_1806_));
 sg13g2_inv_1 _3852_ (.Y(_1807_),
    .A(net108));
 sg13g2_a21oi_1 _3853_ (.A1(_1790_),
    .A2(_1806_),
    .Y(_1808_),
    .B1(_1807_));
 sg13g2_nand2_1 _3855_ (.Y(_1810_),
    .A(\g_feeder[2].streak[0] ),
    .B(net107));
 sg13g2_or3_1 _3856_ (.A(\g_feeder[2].streak[1] ),
    .B(_1808_),
    .C(_1810_),
    .X(_1811_));
 sg13g2_or2_1 _3857_ (.X(_1812_),
    .B(net7),
    .A(net108));
 sg13g2_a21o_1 _3858_ (.A2(_1805_),
    .A1(net606),
    .B1(_1812_),
    .X(_1813_));
 sg13g2_nand4_1 _3860_ (.B(_1790_),
    .C(_1806_),
    .A(net107),
    .Y(_1815_),
    .D(_1813_));
 sg13g2_nand2_1 _3861_ (.Y(_1816_),
    .A(_1807_),
    .B(net107));
 sg13g2_nand2b_1 _3862_ (.Y(_1817_),
    .B(_1813_),
    .A_N(_1816_));
 sg13g2_and3_1 _3863_ (.X(_1818_),
    .A(\g_feeder[2].streak[0] ),
    .B(_1815_),
    .C(_1817_));
 sg13g2_inv_1 _3864_ (.Y(_1819_),
    .A(\g_feeder[2].trip_timer[12] ));
 sg13g2_nand2b_1 _3865_ (.Y(_1820_),
    .B(\g_feeder[2].trip_timer[13] ),
    .A_N(\delay_all[45] ));
 sg13g2_inv_1 _3869_ (.Y(_1824_),
    .A(\g_feeder[2].trip_timer[10] ));
 sg13g2_inv_1 _3870_ (.Y(_1825_),
    .A(\g_feeder[2].trip_timer[11] ));
 sg13g2_o21ai_1 _3871_ (.B1(_1825_),
    .Y(_1826_),
    .A1(\delay_all[42] ),
    .A2(_1824_));
 sg13g2_nand2_1 _3872_ (.Y(_1827_),
    .A(\g_feeder[2].trip_timer[11] ),
    .B(\g_feeder[2].trip_timer[10] ));
 sg13g2_o21ai_1 _3874_ (.B1(\delay_all[43] ),
    .Y(_1829_),
    .A1(\delay_all[42] ),
    .A2(_1827_));
 sg13g2_nand3b_1 _3875_ (.B(_1826_),
    .C(_1829_),
    .Y(_1830_),
    .A_N(\delay_all[44] ));
 sg13g2_nand3_1 _3876_ (.B(_1820_),
    .C(_1830_),
    .A(_1819_),
    .Y(_1831_));
 sg13g2_nand2_1 _3877_ (.Y(_1832_),
    .A(_1826_),
    .B(_1829_));
 sg13g2_and2_1 _3878_ (.A(\delay_all[44] ),
    .B(_1820_),
    .X(_1833_));
 sg13g2_xnor2_1 _3880_ (.Y(_1835_),
    .A(\g_feeder[2].trip_timer[15] ),
    .B(\delay_all[47] ));
 sg13g2_nand2b_1 _3881_ (.Y(_1836_),
    .B(\delay_all[45] ),
    .A_N(\g_feeder[2].trip_timer[13] ));
 sg13g2_nand2b_1 _3883_ (.Y(_1838_),
    .B(\g_feeder[2].trip_timer[14] ),
    .A_N(\delay_all[46] ));
 sg13g2_nand2b_1 _3884_ (.Y(_1839_),
    .B(\delay_all[46] ),
    .A_N(\g_feeder[2].trip_timer[14] ));
 sg13g2_nand4_1 _3885_ (.B(_1836_),
    .C(_1838_),
    .A(_1835_),
    .Y(_1840_),
    .D(_1839_));
 sg13g2_a21oi_1 _3886_ (.A1(_1832_),
    .A2(_1833_),
    .Y(_1841_),
    .B1(_1840_));
 sg13g2_nor2_1 _3887_ (.A(\delay_all[47] ),
    .B(_1838_),
    .Y(_1842_));
 sg13g2_nor2_1 _3888_ (.A(\g_feeder[2].trip_timer[15] ),
    .B(_1842_),
    .Y(_1843_));
 sg13g2_a21oi_1 _3889_ (.A1(\delay_all[47] ),
    .A2(_1838_),
    .Y(_1844_),
    .B1(_1843_));
 sg13g2_a21o_1 _3890_ (.A2(_1841_),
    .A1(_1831_),
    .B1(_1844_),
    .X(_1845_));
 sg13g2_nor2b_1 _3892_ (.A(\g_feeder[2].trip_timer[7] ),
    .B_N(\delay_all[39] ),
    .Y(_1847_));
 sg13g2_nor2b_1 _3894_ (.A(\delay_all[39] ),
    .B_N(\g_feeder[2].trip_timer[7] ),
    .Y(_1849_));
 sg13g2_a21oi_1 _3895_ (.A1(_0043_),
    .A2(\g_feeder[2].trip_timer[6] ),
    .Y(_1850_),
    .B1(_1849_));
 sg13g2_nor2_1 _3896_ (.A(_1847_),
    .B(_1850_),
    .Y(_1851_));
 sg13g2_nand2b_1 _3898_ (.Y(_1853_),
    .B(\delay_all[40] ),
    .A_N(\g_feeder[2].trip_timer[8] ));
 sg13g2_nand2b_1 _3900_ (.Y(_1855_),
    .B(\g_feeder[2].trip_timer[9] ),
    .A_N(\delay_all[41] ));
 sg13g2_nand2b_1 _3901_ (.Y(_1856_),
    .B(\g_feeder[2].trip_timer[8] ),
    .A_N(\delay_all[40] ));
 sg13g2_nand2_1 _3902_ (.Y(_1857_),
    .A(_1855_),
    .B(_1856_));
 sg13g2_a21oi_1 _3903_ (.A1(_1851_),
    .A2(_1853_),
    .Y(_1858_),
    .B1(_1857_));
 sg13g2_xor2_1 _3904_ (.B(\g_feeder[2].trip_timer[10] ),
    .A(\delay_all[42] ),
    .X(_1859_));
 sg13g2_nor2b_1 _3905_ (.A(\g_feeder[2].trip_timer[9] ),
    .B_N(\delay_all[41] ),
    .Y(_1860_));
 sg13g2_nor2b_1 _3906_ (.A(\g_feeder[2].trip_timer[12] ),
    .B_N(\delay_all[44] ),
    .Y(_1861_));
 sg13g2_xor2_1 _3907_ (.B(\g_feeder[2].trip_timer[11] ),
    .A(\delay_all[43] ),
    .X(_1862_));
 sg13g2_a21o_1 _3908_ (.A2(_1861_),
    .A1(_1820_),
    .B1(_1862_),
    .X(_1863_));
 sg13g2_nor4_1 _3909_ (.A(_1840_),
    .B(_1859_),
    .C(_1860_),
    .D(_1863_),
    .Y(_1864_));
 sg13g2_nor2b_1 _3910_ (.A(_1858_),
    .B_N(_1864_),
    .Y(_1865_));
 sg13g2_xnor2_1 _3913_ (.Y(_1868_),
    .A(_0042_),
    .B(\g_feeder[2].trip_timer[5] ));
 sg13g2_xor2_1 _3915_ (.B(\delay_all[36] ),
    .A(\g_feeder[2].trip_timer[4] ),
    .X(_1870_));
 sg13g2_nor2_1 _3916_ (.A(_1868_),
    .B(_1870_),
    .Y(_1871_));
 sg13g2_and2_1 _3917_ (.A(\g_feeder[2].trip_timer[3] ),
    .B(_1871_),
    .X(_1872_));
 sg13g2_nor3_1 _3918_ (.A(\delay_all[35] ),
    .B(_1868_),
    .C(_1870_),
    .Y(_1873_));
 sg13g2_nor2_1 _3920_ (.A(_0041_),
    .B(\g_feeder[2].trip_timer[2] ),
    .Y(_1875_));
 sg13g2_nand2b_1 _3922_ (.Y(_1877_),
    .B(\delay_all[32] ),
    .A_N(\g_feeder[2].trip_timer[0] ));
 sg13g2_nand2b_1 _3924_ (.Y(_1879_),
    .B(\delay_all[33] ),
    .A_N(\g_feeder[2].trip_timer[1] ));
 sg13g2_nor2b_1 _3925_ (.A(\delay_all[33] ),
    .B_N(\g_feeder[2].trip_timer[1] ),
    .Y(_1880_));
 sg13g2_a21oi_1 _3926_ (.A1(_1877_),
    .A2(_1879_),
    .Y(_1881_),
    .B1(_1880_));
 sg13g2_nand2_1 _3927_ (.Y(_1882_),
    .A(_0041_),
    .B(\g_feeder[2].trip_timer[2] ));
 sg13g2_o21ai_1 _3928_ (.B1(_1882_),
    .Y(_1883_),
    .A1(_1875_),
    .A2(_1881_));
 sg13g2_o21ai_1 _3929_ (.B1(_1883_),
    .Y(_1884_),
    .A1(_1872_),
    .A2(_1873_));
 sg13g2_nor2b_1 _3930_ (.A(\delay_all[35] ),
    .B_N(\g_feeder[2].trip_timer[3] ),
    .Y(_1885_));
 sg13g2_buf_16 clkbuf_0_clk (.X(clknet_0_clk),
    .A(clk));
 sg13g2_buf_16 clkbuf_3_0__f_clk (.X(clknet_3_0__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_3_1__f_clk (.X(clknet_3_1__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_3_2__f_clk (.X(clknet_3_2__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_3_3__f_clk (.X(clknet_3_3__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_3_4__f_clk (.X(clknet_3_4__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_3_5__f_clk (.X(clknet_3_5__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_3_6__f_clk (.X(clknet_3_6__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_3_7__f_clk (.X(clknet_3_7__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_leaf_0_clk (.X(clknet_leaf_0_clk),
    .A(clknet_3_0__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_10_clk (.X(clknet_leaf_10_clk),
    .A(clknet_3_3__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_11_clk (.X(clknet_leaf_11_clk),
    .A(clknet_3_3__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_12_clk (.X(clknet_leaf_12_clk),
    .A(clknet_3_3__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_13_clk (.X(clknet_leaf_13_clk),
    .A(clknet_3_3__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_14_clk (.X(clknet_leaf_14_clk),
    .A(clknet_3_6__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_15_clk (.X(clknet_leaf_15_clk),
    .A(clknet_3_6__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_16_clk (.X(clknet_leaf_16_clk),
    .A(clknet_3_6__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_17_clk (.X(clknet_leaf_17_clk),
    .A(clknet_3_6__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_18_clk (.X(clknet_leaf_18_clk),
    .A(clknet_3_7__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_19_clk (.X(clknet_leaf_19_clk),
    .A(clknet_3_7__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_1_clk (.X(clknet_leaf_1_clk),
    .A(clknet_3_0__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_20_clk (.X(clknet_leaf_20_clk),
    .A(clknet_3_7__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_21_clk (.X(clknet_leaf_21_clk),
    .A(clknet_3_7__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_22_clk (.X(clknet_leaf_22_clk),
    .A(clknet_3_6__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_23_clk (.X(clknet_leaf_23_clk),
    .A(clknet_3_4__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_24_clk (.X(clknet_leaf_24_clk),
    .A(clknet_3_4__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_25_clk (.X(clknet_leaf_25_clk),
    .A(clknet_3_5__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_26_clk (.X(clknet_leaf_26_clk),
    .A(clknet_3_5__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_27_clk (.X(clknet_leaf_27_clk),
    .A(clknet_3_5__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_28_clk (.X(clknet_leaf_28_clk),
    .A(clknet_3_5__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_29_clk (.X(clknet_leaf_29_clk),
    .A(clknet_3_5__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_2_clk (.X(clknet_leaf_2_clk),
    .A(clknet_3_0__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_30_clk (.X(clknet_leaf_30_clk),
    .A(clknet_3_4__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_31_clk (.X(clknet_leaf_31_clk),
    .A(clknet_3_4__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_32_clk (.X(clknet_leaf_32_clk),
    .A(clknet_3_4__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_33_clk (.X(clknet_leaf_33_clk),
    .A(clknet_3_1__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_34_clk (.X(clknet_leaf_34_clk),
    .A(clknet_3_1__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_35_clk (.X(clknet_leaf_35_clk),
    .A(clknet_3_1__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_36_clk (.X(clknet_leaf_36_clk),
    .A(clknet_3_1__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_37_clk (.X(clknet_leaf_37_clk),
    .A(clknet_3_0__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_38_clk (.X(clknet_leaf_38_clk),
    .A(clknet_3_0__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_3_clk (.X(clknet_leaf_3_clk),
    .A(clknet_3_1__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_4_clk (.X(clknet_leaf_4_clk),
    .A(clknet_3_3__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_5_clk (.X(clknet_leaf_5_clk),
    .A(clknet_3_2__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_6_clk (.X(clknet_leaf_6_clk),
    .A(clknet_3_2__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_7_clk (.X(clknet_leaf_7_clk),
    .A(clknet_3_2__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_8_clk (.X(clknet_leaf_8_clk),
    .A(clknet_3_2__leaf_clk));
 sg13g2_buf_16 clkbuf_leaf_9_clk (.X(clknet_leaf_9_clk),
    .A(clknet_3_2__leaf_clk));
 sg13g2_buf_16 clkload0 (.A(clknet_3_7__leaf_clk));
 sg13g2_buf_16 clkload1 (.A(clknet_leaf_38_clk));
 sg13g2_dfrbpq_1 \fault_event_o$_DFF_PN0_  (.RESET_B(net565),
    .D(_0000_),
    .Q(net86),
    .CLK(clknet_leaf_8_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cnt[0]$_DFFE_PN0P_  (.RESET_B(net559),
    .D(_0060_),
    .Q(\fltcnt_all[0] ),
    .CLK(clknet_leaf_11_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cnt[1]$_DFFE_PN0P_  (.RESET_B(net559),
    .D(_0059_),
    .Q(\fltcnt_all[1] ),
    .CLK(clknet_leaf_11_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cnt[2]$_DFFE_PN0P_  (.RESET_B(net559),
    .D(_0058_),
    .Q(\fltcnt_all[2] ),
    .CLK(clknet_leaf_10_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cnt[3]$_DFFE_PN0P_  (.RESET_B(net559),
    .D(_0057_),
    .Q(\fltcnt_all[3] ),
    .CLK(clknet_leaf_10_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cnt[4]$_DFFE_PN0P_  (.RESET_B(net558),
    .D(_0056_),
    .Q(\fltcnt_all[4] ),
    .CLK(clknet_leaf_11_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cnt[5]$_DFFE_PN0P_  (.RESET_B(net558),
    .D(_0055_),
    .Q(\fltcnt_all[5] ),
    .CLK(clknet_leaf_11_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cnt[6]$_DFFE_PN0P_  (.RESET_B(net558),
    .D(_0054_),
    .Q(\fltcnt_all[6] ),
    .CLK(clknet_leaf_11_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cnt[7]$_DFFE_PN0P_  (.RESET_B(net558),
    .D(_0313_),
    .Q(\fltcnt_all[7] ),
    .CLK(clknet_leaf_11_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[0]$_DFFE_PN0P_  (.RESET_B(net551),
    .D(_0268_),
    .Q(\fltcur_all[0] ),
    .CLK(clknet_leaf_16_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[10]$_DFFE_PN0P_  (.RESET_B(net552),
    .D(_0258_),
    .Q(\fltcur_all[10] ),
    .CLK(clknet_leaf_18_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[11]$_DFFE_PN0P_  (.RESET_B(net552),
    .D(_0335_),
    .Q(\fltcur_all[11] ),
    .CLK(clknet_leaf_18_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[1]$_DFFE_PN0P_  (.RESET_B(net559),
    .D(_0267_),
    .Q(\fltcur_all[1] ),
    .CLK(clknet_leaf_11_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[2]$_DFFE_PN0P_  (.RESET_B(net551),
    .D(_0266_),
    .Q(\fltcur_all[2] ),
    .CLK(clknet_leaf_16_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[3]$_DFFE_PN0P_  (.RESET_B(net551),
    .D(_0265_),
    .Q(\fltcur_all[3] ),
    .CLK(clknet_leaf_16_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[4]$_DFFE_PN0P_  (.RESET_B(net552),
    .D(_0264_),
    .Q(\fltcur_all[4] ),
    .CLK(clknet_leaf_16_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[5]$_DFFE_PN0P_  (.RESET_B(net551),
    .D(_0263_),
    .Q(\fltcur_all[5] ),
    .CLK(clknet_leaf_16_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[6]$_DFFE_PN0P_  (.RESET_B(net552),
    .D(_0262_),
    .Q(\fltcur_all[6] ),
    .CLK(clknet_leaf_16_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[7]$_DFFE_PN0P_  (.RESET_B(net552),
    .D(_0261_),
    .Q(\fltcur_all[7] ),
    .CLK(clknet_leaf_16_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[8]$_DFFE_PN0P_  (.RESET_B(net552),
    .D(_0260_),
    .Q(\fltcur_all[8] ),
    .CLK(clknet_leaf_17_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].flt_cur[9]$_DFFE_PN0P_  (.RESET_B(net552),
    .D(_0259_),
    .Q(\fltcur_all[9] ),
    .CLK(clknet_leaf_18_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].state[0]$_DFFE_PN0P_  (.RESET_B(net551),
    .D(_0205_),
    .Q(net103),
    .CLK(clknet_leaf_17_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].state[1]$_DFFE_PN0P_  (.RESET_B(net551),
    .D(_0330_),
    .Q(net104),
    .CLK(clknet_leaf_17_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].streak[0]$_DFFE_PN0P_  (.RESET_B(net551),
    .D(_0095_),
    .Q(\g_feeder[0].streak[0] ),
    .CLK(clknet_leaf_16_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].streak[1]$_DFFE_PN0P_  (.RESET_B(net551),
    .D(_0318_),
    .Q(\g_feeder[0].streak[1] ),
    .CLK(clknet_leaf_17_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[0]$_DFFE_PN0P_  (.RESET_B(net558),
    .D(_0071_),
    .Q(\g_feeder[0].threshold[0] ),
    .CLK(clknet_leaf_15_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[10]$_DFFE_PN1P_  (.RESET_B(net581),
    .D(_0061_),
    .Q(_0017_),
    .CLK(clknet_leaf_22_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[11]$_DFFE_PN0P_  (.RESET_B(net581),
    .D(_0314_),
    .Q(\g_feeder[0].threshold[11] ),
    .CLK(clknet_leaf_22_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[1]$_DFFE_PN0P_  (.RESET_B(net553),
    .D(_0070_),
    .Q(\g_feeder[0].threshold[1] ),
    .CLK(clknet_leaf_15_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[2]$_DFFE_PN0P_  (.RESET_B(net553),
    .D(_0069_),
    .Q(\g_feeder[0].threshold[2] ),
    .CLK(clknet_leaf_15_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[3]$_DFFE_PN0P_  (.RESET_B(net550),
    .D(_0068_),
    .Q(\g_feeder[0].threshold[3] ),
    .CLK(clknet_leaf_15_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[4]$_DFFE_PN1P_  (.RESET_B(net550),
    .D(_0067_),
    .Q(_0018_),
    .CLK(clknet_leaf_14_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[5]$_DFFE_PN0P_  (.RESET_B(net550),
    .D(_0066_),
    .Q(\g_feeder[0].threshold[5] ),
    .CLK(clknet_leaf_14_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[6]$_DFFE_PN1P_  (.RESET_B(net582),
    .D(_0065_),
    .Q(_0019_),
    .CLK(clknet_leaf_14_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[7]$_DFFE_PN1P_  (.RESET_B(net582),
    .D(_0064_),
    .Q(_0020_),
    .CLK(clknet_leaf_14_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[8]$_DFFE_PN1P_  (.RESET_B(net582),
    .D(_0063_),
    .Q(_0021_),
    .CLK(clknet_leaf_14_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].threshold[9]$_DFFE_PN1P_  (.RESET_B(net582),
    .D(_0062_),
    .Q(_0022_),
    .CLK(clknet_leaf_22_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[0]$_DFFE_PN0P_  (.RESET_B(net550),
    .D(_0155_),
    .Q(\delay_all[0] ),
    .CLK(clknet_leaf_15_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[10]$_DFFE_PN0P_  (.RESET_B(net583),
    .D(_0145_),
    .Q(\delay_all[10] ),
    .CLK(clknet_leaf_19_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[11]$_DFFE_PN0P_  (.RESET_B(net583),
    .D(_0144_),
    .Q(\delay_all[11] ),
    .CLK(clknet_leaf_19_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[12]$_DFFE_PN0P_  (.RESET_B(net590),
    .D(_0143_),
    .Q(\delay_all[12] ),
    .CLK(clknet_leaf_26_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[13]$_DFFE_PN0P_  (.RESET_B(net591),
    .D(_0142_),
    .Q(\delay_all[13] ),
    .CLK(clknet_leaf_26_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[14]$_DFFE_PN0P_  (.RESET_B(net590),
    .D(_0141_),
    .Q(\delay_all[14] ),
    .CLK(clknet_leaf_27_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[15]$_DFFE_PN0P_  (.RESET_B(net590),
    .D(_0324_),
    .Q(\delay_all[15] ),
    .CLK(clknet_leaf_25_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[1]$_DFFE_PN0P_  (.RESET_B(net550),
    .D(_0154_),
    .Q(\delay_all[1] ),
    .CLK(clknet_leaf_15_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[2]$_DFFE_PN1P_  (.RESET_B(net550),
    .D(_0153_),
    .Q(_0023_),
    .CLK(clknet_leaf_15_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[3]$_DFFE_PN0P_  (.RESET_B(net581),
    .D(_0152_),
    .Q(\delay_all[3] ),
    .CLK(clknet_leaf_17_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[4]$_DFFE_PN0P_  (.RESET_B(net581),
    .D(_0151_),
    .Q(\delay_all[4] ),
    .CLK(clknet_leaf_17_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[5]$_DFFE_PN1P_  (.RESET_B(net583),
    .D(_0150_),
    .Q(_0024_),
    .CLK(clknet_leaf_19_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[6]$_DFFE_PN1P_  (.RESET_B(net583),
    .D(_0149_),
    .Q(_0025_),
    .CLK(clknet_leaf_19_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[7]$_DFFE_PN0P_  (.RESET_B(net583),
    .D(_0148_),
    .Q(\delay_all[7] ),
    .CLK(clknet_leaf_21_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[8]$_DFFE_PN0P_  (.RESET_B(net583),
    .D(_0147_),
    .Q(\delay_all[8] ),
    .CLK(clknet_leaf_19_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_delay[9]$_DFFE_PN0P_  (.RESET_B(net583),
    .D(_0146_),
    .Q(\delay_all[9] ),
    .CLK(clknet_leaf_19_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[0]$_DFFE_PN0P_  (.RESET_B(net584),
    .D(_0193_),
    .Q(\g_feeder[0].trip_timer[0] ),
    .CLK(clknet_leaf_18_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[10]$_DFFE_PN0P_  (.RESET_B(net585),
    .D(_0183_),
    .Q(\g_feeder[0].trip_timer[10] ),
    .CLK(clknet_leaf_20_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[11]$_DFFE_PN0P_  (.RESET_B(net585),
    .D(_0182_),
    .Q(\g_feeder[0].trip_timer[11] ),
    .CLK(clknet_leaf_20_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[12]$_DFFE_PN0P_  (.RESET_B(net584),
    .D(_0181_),
    .Q(\g_feeder[0].trip_timer[12] ),
    .CLK(clknet_leaf_20_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[13]$_DFFE_PN0P_  (.RESET_B(net585),
    .D(_0180_),
    .Q(\g_feeder[0].trip_timer[13] ),
    .CLK(clknet_leaf_20_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[14]$_DFFE_PN0P_  (.RESET_B(net585),
    .D(_0179_),
    .Q(\g_feeder[0].trip_timer[14] ),
    .CLK(clknet_leaf_20_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[15]$_DFFE_PN0P_  (.RESET_B(net583),
    .D(_0328_),
    .Q(\g_feeder[0].trip_timer[15] ),
    .CLK(clknet_leaf_21_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[1]$_DFFE_PN0P_  (.RESET_B(net584),
    .D(_0192_),
    .Q(\g_feeder[0].trip_timer[1] ),
    .CLK(clknet_leaf_18_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[2]$_DFFE_PN0P_  (.RESET_B(net584),
    .D(_0191_),
    .Q(\g_feeder[0].trip_timer[2] ),
    .CLK(clknet_leaf_18_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[3]$_DFFE_PN0P_  (.RESET_B(net581),
    .D(_0190_),
    .Q(\g_feeder[0].trip_timer[3] ),
    .CLK(clknet_leaf_17_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[4]$_DFFE_PN0P_  (.RESET_B(net581),
    .D(_0189_),
    .Q(\g_feeder[0].trip_timer[4] ),
    .CLK(clknet_leaf_17_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[5]$_DFFE_PN0P_  (.RESET_B(net581),
    .D(_0188_),
    .Q(\g_feeder[0].trip_timer[5] ),
    .CLK(clknet_leaf_18_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[6]$_DFFE_PN0P_  (.RESET_B(net584),
    .D(_0187_),
    .Q(\g_feeder[0].trip_timer[6] ),
    .CLK(clknet_leaf_18_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[7]$_DFFE_PN0P_  (.RESET_B(net584),
    .D(_0186_),
    .Q(\g_feeder[0].trip_timer[7] ),
    .CLK(clknet_leaf_19_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[8]$_DFFE_PN0P_  (.RESET_B(net584),
    .D(_0185_),
    .Q(\g_feeder[0].trip_timer[8] ),
    .CLK(clknet_leaf_19_clk));
 sg13g2_dfrbpq_1 \g_feeder[0].trip_timer[9]$_DFFE_PN0P_  (.RESET_B(net584),
    .D(_0184_),
    .Q(\g_feeder[0].trip_timer[9] ),
    .CLK(clknet_leaf_20_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cnt[0]$_DFFE_PN0P_  (.RESET_B(net565),
    .D(_0140_),
    .Q(\fltcnt_all[8] ),
    .CLK(clknet_leaf_8_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cnt[1]$_DFFE_PN0P_  (.RESET_B(net565),
    .D(_0139_),
    .Q(\fltcnt_all[9] ),
    .CLK(clknet_leaf_8_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cnt[2]$_DFFE_PN0P_  (.RESET_B(net565),
    .D(_0138_),
    .Q(\fltcnt_all[10] ),
    .CLK(clknet_leaf_9_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cnt[3]$_DFFE_PN0P_  (.RESET_B(net565),
    .D(_0137_),
    .Q(\fltcnt_all[11] ),
    .CLK(clknet_leaf_9_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cnt[4]$_DFFE_PN0P_  (.RESET_B(net557),
    .D(_0136_),
    .Q(\fltcnt_all[12] ),
    .CLK(clknet_leaf_10_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cnt[5]$_DFFE_PN0P_  (.RESET_B(net555),
    .D(_0135_),
    .Q(\fltcnt_all[13] ),
    .CLK(clknet_leaf_8_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cnt[6]$_DFFE_PN0P_  (.RESET_B(net557),
    .D(_0134_),
    .Q(\fltcnt_all[14] ),
    .CLK(clknet_leaf_10_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cnt[7]$_DFFE_PN0P_  (.RESET_B(net557),
    .D(_0323_),
    .Q(\fltcnt_all[15] ),
    .CLK(clknet_leaf_10_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[0]$_DFFE_PN0P_  (.RESET_B(net565),
    .D(_0083_),
    .Q(\fltcur_all[12] ),
    .CLK(clknet_leaf_9_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[10]$_DFFE_PN0P_  (.RESET_B(net556),
    .D(_0073_),
    .Q(\fltcur_all[22] ),
    .CLK(clknet_leaf_12_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[11]$_DFFE_PN0P_  (.RESET_B(net556),
    .D(_0316_),
    .Q(\fltcur_all[23] ),
    .CLK(clknet_leaf_12_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[1]$_DFFE_PN0P_  (.RESET_B(net565),
    .D(_0082_),
    .Q(\fltcur_all[13] ),
    .CLK(clknet_leaf_7_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[2]$_DFFE_PN0P_  (.RESET_B(net555),
    .D(_0081_),
    .Q(\fltcur_all[14] ),
    .CLK(clknet_leaf_5_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[3]$_DFFE_PN0P_  (.RESET_B(net560),
    .D(_0080_),
    .Q(\fltcur_all[15] ),
    .CLK(clknet_leaf_9_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[4]$_DFFE_PN0P_  (.RESET_B(net553),
    .D(_0079_),
    .Q(\fltcur_all[16] ),
    .CLK(clknet_leaf_11_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[5]$_DFFE_PN0P_  (.RESET_B(net555),
    .D(_0078_),
    .Q(\fltcur_all[17] ),
    .CLK(clknet_leaf_7_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[6]$_DFFE_PN0P_  (.RESET_B(net568),
    .D(_0077_),
    .Q(\fltcur_all[18] ),
    .CLK(clknet_leaf_4_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[7]$_DFFE_PN0P_  (.RESET_B(net555),
    .D(_0076_),
    .Q(\fltcur_all[19] ),
    .CLK(clknet_leaf_5_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[8]$_DFFE_PN0P_  (.RESET_B(net553),
    .D(_0075_),
    .Q(\fltcur_all[20] ),
    .CLK(clknet_leaf_14_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].flt_cur[9]$_DFFE_PN0P_  (.RESET_B(net553),
    .D(_0074_),
    .Q(\fltcur_all[21] ),
    .CLK(clknet_leaf_15_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].state[0]$_DFFE_PN0P_  (.RESET_B(net557),
    .D(_0118_),
    .Q(net105),
    .CLK(clknet_leaf_9_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].state[1]$_DFFE_PN0P_  (.RESET_B(net557),
    .D(_0321_),
    .Q(net106),
    .CLK(clknet_leaf_10_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].streak[0]$_DFFE_PN0P_  (.RESET_B(net557),
    .D(_0171_),
    .Q(\g_feeder[1].streak[0] ),
    .CLK(clknet_leaf_10_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].streak[1]$_DFFE_PN0P_  (.RESET_B(net557),
    .D(_0326_),
    .Q(\g_feeder[1].streak[1] ),
    .CLK(clknet_leaf_10_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[0]$_DFFE_PN0P_  (.RESET_B(net560),
    .D(_0311_),
    .Q(\g_feeder[1].threshold[0] ),
    .CLK(clknet_leaf_12_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[10]$_DFFE_PN1P_  (.RESET_B(net554),
    .D(_0301_),
    .Q(_0026_),
    .CLK(clknet_leaf_13_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[11]$_DFFE_PN0P_  (.RESET_B(net550),
    .D(_0340_),
    .Q(\g_feeder[1].threshold[11] ),
    .CLK(clknet_leaf_14_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[1]$_DFFE_PN0P_  (.RESET_B(net555),
    .D(_0310_),
    .Q(\g_feeder[1].threshold[1] ),
    .CLK(clknet_leaf_5_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[2]$_DFFE_PN0P_  (.RESET_B(net555),
    .D(_0309_),
    .Q(\g_feeder[1].threshold[2] ),
    .CLK(clknet_leaf_5_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[3]$_DFFE_PN0P_  (.RESET_B(net555),
    .D(_0308_),
    .Q(\g_feeder[1].threshold[3] ),
    .CLK(clknet_leaf_7_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[4]$_DFFE_PN1P_  (.RESET_B(net556),
    .D(_0307_),
    .Q(_0027_),
    .CLK(clknet_leaf_12_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[5]$_DFFE_PN0P_  (.RESET_B(net556),
    .D(_0306_),
    .Q(\g_feeder[1].threshold[5] ),
    .CLK(clknet_leaf_12_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[6]$_DFFE_PN1P_  (.RESET_B(net556),
    .D(_0305_),
    .Q(_0028_),
    .CLK(clknet_leaf_12_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[7]$_DFFE_PN1P_  (.RESET_B(net556),
    .D(_0304_),
    .Q(_0029_),
    .CLK(clknet_leaf_12_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[8]$_DFFE_PN1P_  (.RESET_B(net550),
    .D(_0303_),
    .Q(_0030_),
    .CLK(clknet_leaf_14_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].threshold[9]$_DFFE_PN1P_  (.RESET_B(net553),
    .D(_0302_),
    .Q(_0031_),
    .CLK(clknet_leaf_13_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[0]$_DFFE_PN0P_  (.RESET_B(net554),
    .D(_0284_),
    .Q(\delay_all[16] ),
    .CLK(clknet_leaf_13_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[10]$_DFFE_PN0P_  (.RESET_B(net579),
    .D(_0274_),
    .Q(\delay_all[26] ),
    .CLK(clknet_leaf_24_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[11]$_DFFE_PN0P_  (.RESET_B(net579),
    .D(_0273_),
    .Q(\delay_all[27] ),
    .CLK(clknet_leaf_24_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[12]$_DFFE_PN0P_  (.RESET_B(net591),
    .D(_0272_),
    .Q(\delay_all[28] ),
    .CLK(clknet_leaf_24_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[13]$_DFFE_PN0P_  (.RESET_B(net589),
    .D(_0271_),
    .Q(\delay_all[29] ),
    .CLK(clknet_leaf_26_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[14]$_DFFE_PN0P_  (.RESET_B(net589),
    .D(_0270_),
    .Q(\delay_all[30] ),
    .CLK(clknet_leaf_25_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[15]$_DFFE_PN0P_  (.RESET_B(net589),
    .D(_0337_),
    .Q(\delay_all[31] ),
    .CLK(clknet_leaf_25_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[1]$_DFFE_PN0P_  (.RESET_B(net554),
    .D(_0283_),
    .Q(\delay_all[17] ),
    .CLK(clknet_leaf_13_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[2]$_DFFE_PN1P_  (.RESET_B(net549),
    .D(_0282_),
    .Q(_0032_),
    .CLK(clknet_leaf_13_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[3]$_DFFE_PN0P_  (.RESET_B(net549),
    .D(_0281_),
    .Q(\delay_all[19] ),
    .CLK(clknet_leaf_13_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[4]$_DFFE_PN0P_  (.RESET_B(net549),
    .D(_0280_),
    .Q(\delay_all[20] ),
    .CLK(clknet_leaf_13_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[5]$_DFFE_PN1P_  (.RESET_B(net580),
    .D(_0279_),
    .Q(_0033_),
    .CLK(clknet_leaf_22_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[6]$_DFFE_PN1P_  (.RESET_B(net580),
    .D(_0278_),
    .Q(_0034_),
    .CLK(clknet_leaf_23_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[7]$_DFFE_PN0P_  (.RESET_B(net549),
    .D(_0277_),
    .Q(\delay_all[23] ),
    .CLK(clknet_leaf_22_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[8]$_DFFE_PN0P_  (.RESET_B(net579),
    .D(_0276_),
    .Q(\delay_all[24] ),
    .CLK(clknet_leaf_23_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_delay[9]$_DFFE_PN0P_  (.RESET_B(net580),
    .D(_0275_),
    .Q(\delay_all[25] ),
    .CLK(clknet_leaf_23_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[0]$_DFFE_PN0P_  (.RESET_B(net586),
    .D(_0299_),
    .Q(\g_feeder[1].trip_timer[0] ),
    .CLK(clknet_leaf_21_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[10]$_DFFE_PN0P_  (.RESET_B(net586),
    .D(_0289_),
    .Q(\g_feeder[1].trip_timer[10] ),
    .CLK(clknet_leaf_20_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[11]$_DFFE_PN0P_  (.RESET_B(net586),
    .D(_0288_),
    .Q(\g_feeder[1].trip_timer[11] ),
    .CLK(clknet_leaf_20_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[12]$_DFFE_PN0P_  (.RESET_B(net589),
    .D(_0287_),
    .Q(\g_feeder[1].trip_timer[12] ),
    .CLK(clknet_leaf_26_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[13]$_DFFE_PN0P_  (.RESET_B(net589),
    .D(_0286_),
    .Q(\g_feeder[1].trip_timer[13] ),
    .CLK(clknet_leaf_26_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[14]$_DFFE_PN0P_  (.RESET_B(net589),
    .D(_0285_),
    .Q(\g_feeder[1].trip_timer[14] ),
    .CLK(clknet_leaf_26_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[15]$_DFFE_PN0P_  (.RESET_B(net589),
    .D(_0338_),
    .Q(\g_feeder[1].trip_timer[15] ),
    .CLK(clknet_leaf_26_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[1]$_DFFE_PN0P_  (.RESET_B(net586),
    .D(_0298_),
    .Q(\g_feeder[1].trip_timer[1] ),
    .CLK(clknet_leaf_21_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[2]$_DFFE_PN0P_  (.RESET_B(net586),
    .D(_0297_),
    .Q(\g_feeder[1].trip_timer[2] ),
    .CLK(clknet_leaf_21_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[3]$_DFFE_PN0P_  (.RESET_B(net582),
    .D(_0296_),
    .Q(\g_feeder[1].trip_timer[3] ),
    .CLK(clknet_leaf_22_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[4]$_DFFE_PN0P_  (.RESET_B(net582),
    .D(_0295_),
    .Q(\g_feeder[1].trip_timer[4] ),
    .CLK(clknet_leaf_21_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[5]$_DFFE_PN0P_  (.RESET_B(net587),
    .D(_0294_),
    .Q(\g_feeder[1].trip_timer[5] ),
    .CLK(clknet_leaf_21_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[6]$_DFFE_PN0P_  (.RESET_B(net580),
    .D(_0293_),
    .Q(\g_feeder[1].trip_timer[6] ),
    .CLK(clknet_leaf_22_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[7]$_DFFE_PN0P_  (.RESET_B(net582),
    .D(_0292_),
    .Q(\g_feeder[1].trip_timer[7] ),
    .CLK(clknet_leaf_22_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[8]$_DFFE_PN0P_  (.RESET_B(net579),
    .D(_0291_),
    .Q(\g_feeder[1].trip_timer[8] ),
    .CLK(clknet_leaf_24_clk));
 sg13g2_dfrbpq_1 \g_feeder[1].trip_timer[9]$_DFFE_PN0P_  (.RESET_B(net586),
    .D(_0290_),
    .Q(\g_feeder[1].trip_timer[9] ),
    .CLK(clknet_leaf_21_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cnt[0]$_DFFE_PN0P_  (.RESET_B(rst_n_sync),
    .D(_0117_),
    .Q(\fltcnt_all[16] ),
    .CLK(clknet_leaf_37_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cnt[1]$_DFFE_PN0P_  (.RESET_B(net569),
    .D(_0116_),
    .Q(\fltcnt_all[17] ),
    .CLK(clknet_leaf_37_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cnt[2]$_DFFE_PN0P_  (.RESET_B(net569),
    .D(_0115_),
    .Q(\fltcnt_all[18] ),
    .CLK(clknet_leaf_38_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cnt[3]$_DFFE_PN0P_  (.RESET_B(rst_n_sync),
    .D(_0114_),
    .Q(\fltcnt_all[19] ),
    .CLK(clknet_leaf_37_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cnt[4]$_DFFE_PN0P_  (.RESET_B(net562),
    .D(_0113_),
    .Q(\fltcnt_all[20] ),
    .CLK(clknet_leaf_0_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cnt[5]$_DFFE_PN0P_  (.RESET_B(net546),
    .D(_0112_),
    .Q(\fltcnt_all[21] ),
    .CLK(clknet_leaf_37_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cnt[6]$_DFFE_PN0P_  (.RESET_B(rst_n_sync),
    .D(_0111_),
    .Q(\fltcnt_all[22] ),
    .CLK(clknet_leaf_37_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cnt[7]$_DFFE_PN0P_  (.RESET_B(rst_n_sync),
    .D(_0320_),
    .Q(\fltcnt_all[23] ),
    .CLK(clknet_leaf_37_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[0]$_DFFE_PN0P_  (.RESET_B(net562),
    .D(_0094_),
    .Q(\fltcur_all[24] ),
    .CLK(clknet_leaf_1_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[10]$_DFFE_PN0P_  (.RESET_B(net570),
    .D(_0084_),
    .Q(\fltcur_all[34] ),
    .CLK(clknet_leaf_36_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[11]$_DFFE_PN0P_  (.RESET_B(net546),
    .D(_0317_),
    .Q(\fltcur_all[35] ),
    .CLK(clknet_leaf_0_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[1]$_DFFE_PN0P_  (.RESET_B(net562),
    .D(_0093_),
    .Q(\fltcur_all[25] ),
    .CLK(clknet_leaf_1_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[2]$_DFFE_PN0P_  (.RESET_B(net561),
    .D(_0092_),
    .Q(\fltcur_all[26] ),
    .CLK(clknet_leaf_0_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[3]$_DFFE_PN0P_  (.RESET_B(net562),
    .D(_0091_),
    .Q(\fltcur_all[27] ),
    .CLK(clknet_leaf_1_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[4]$_DFFE_PN0P_  (.RESET_B(net561),
    .D(_0090_),
    .Q(\fltcur_all[28] ),
    .CLK(clknet_leaf_1_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[5]$_DFFE_PN0P_  (.RESET_B(net562),
    .D(_0089_),
    .Q(\fltcur_all[29] ),
    .CLK(clknet_leaf_0_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[6]$_DFFE_PN0P_  (.RESET_B(net593),
    .D(_0088_),
    .Q(\fltcur_all[30] ),
    .CLK(clknet_leaf_37_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[7]$_DFFE_PN0P_  (.RESET_B(net578),
    .D(_0087_),
    .Q(\fltcur_all[31] ),
    .CLK(clknet_leaf_37_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[8]$_DFFE_PN0P_  (.RESET_B(net570),
    .D(_0086_),
    .Q(\fltcur_all[32] ),
    .CLK(clknet_leaf_36_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].flt_cur[9]$_DFFE_PN0P_  (.RESET_B(net570),
    .D(_0085_),
    .Q(\fltcur_all[33] ),
    .CLK(clknet_leaf_36_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].state[0]$_DFFE_PN0P_  (.RESET_B(net569),
    .D(_0072_),
    .Q(net107),
    .CLK(clknet_leaf_0_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].state[1]$_DFFE_PN0P_  (.RESET_B(net569),
    .D(_0315_),
    .Q(net108),
    .CLK(clknet_leaf_0_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].streak[0]$_DFFE_PN0P_  (.RESET_B(net569),
    .D(_0053_),
    .Q(\g_feeder[2].streak[0] ),
    .CLK(clknet_leaf_1_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].streak[1]$_DFFE_PN0P_  (.RESET_B(net569),
    .D(_0312_),
    .Q(\g_feeder[2].streak[1] ),
    .CLK(clknet_leaf_1_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[0]$_DFFE_PN0P_  (.RESET_B(net561),
    .D(_0242_),
    .Q(\g_feeder[2].threshold[0] ),
    .CLK(clknet_leaf_0_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[10]$_DFFE_PN1P_  (.RESET_B(net576),
    .D(_0232_),
    .Q(_0035_),
    .CLK(clknet_leaf_35_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[11]$_DFFE_PN0P_  (.RESET_B(net546),
    .D(_0333_),
    .Q(\g_feeder[2].threshold[11] ),
    .CLK(clknet_leaf_34_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[1]$_DFFE_PN0P_  (.RESET_B(net561),
    .D(_0241_),
    .Q(\g_feeder[2].threshold[1] ),
    .CLK(clknet_leaf_0_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[2]$_DFFE_PN0P_  (.RESET_B(net561),
    .D(_0240_),
    .Q(\g_feeder[2].threshold[2] ),
    .CLK(clknet_leaf_3_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[3]$_DFFE_PN0P_  (.RESET_B(net546),
    .D(_0239_),
    .Q(\g_feeder[2].threshold[3] ),
    .CLK(clknet_leaf_3_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[4]$_DFFE_PN1P_  (.RESET_B(net546),
    .D(_0238_),
    .Q(_0036_),
    .CLK(clknet_leaf_3_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[5]$_DFFE_PN0P_  (.RESET_B(net546),
    .D(_0237_),
    .Q(\g_feeder[2].threshold[5] ),
    .CLK(clknet_leaf_3_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[6]$_DFFE_PN1P_  (.RESET_B(net546),
    .D(_0236_),
    .Q(_0037_),
    .CLK(clknet_leaf_34_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[7]$_DFFE_PN1P_  (.RESET_B(net546),
    .D(_0235_),
    .Q(_0038_),
    .CLK(clknet_leaf_34_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[8]$_DFFE_PN1P_  (.RESET_B(net576),
    .D(_0234_),
    .Q(_0039_),
    .CLK(clknet_leaf_35_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].threshold[9]$_DFFE_PN1P_  (.RESET_B(net578),
    .D(_0233_),
    .Q(_0040_),
    .CLK(clknet_leaf_34_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[0]$_DFFE_PN0P_  (.RESET_B(net576),
    .D(_0110_),
    .Q(\delay_all[32] ),
    .CLK(clknet_leaf_35_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[10]$_DFFE_PN0P_  (.RESET_B(net578),
    .D(_0100_),
    .Q(\delay_all[42] ),
    .CLK(clknet_leaf_30_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[11]$_DFFE_PN0P_  (.RESET_B(net578),
    .D(_0099_),
    .Q(\delay_all[43] ),
    .CLK(clknet_leaf_31_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[12]$_DFFE_PN0P_  (.RESET_B(net571),
    .D(_0098_),
    .Q(\delay_all[44] ),
    .CLK(clknet_leaf_31_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[13]$_DFFE_PN0P_  (.RESET_B(net588),
    .D(_0097_),
    .Q(\delay_all[45] ),
    .CLK(clknet_leaf_25_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[14]$_DFFE_PN0P_  (.RESET_B(net588),
    .D(_0096_),
    .Q(\delay_all[46] ),
    .CLK(clknet_leaf_29_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[15]$_DFFE_PN0P_  (.RESET_B(net588),
    .D(_0319_),
    .Q(\delay_all[47] ),
    .CLK(clknet_leaf_29_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[1]$_DFFE_PN0P_  (.RESET_B(net576),
    .D(_0109_),
    .Q(\delay_all[33] ),
    .CLK(clknet_leaf_35_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[2]$_DFFE_PN1P_  (.RESET_B(net576),
    .D(_0108_),
    .Q(_0041_),
    .CLK(clknet_leaf_34_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[3]$_DFFE_PN0P_  (.RESET_B(net576),
    .D(_0107_),
    .Q(\delay_all[35] ),
    .CLK(clknet_leaf_34_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[4]$_DFFE_PN0P_  (.RESET_B(net576),
    .D(_0106_),
    .Q(\delay_all[36] ),
    .CLK(clknet_leaf_34_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[5]$_DFFE_PN1P_  (.RESET_B(net576),
    .D(_0105_),
    .Q(_0042_),
    .CLK(clknet_leaf_35_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[6]$_DFFE_PN1P_  (.RESET_B(net577),
    .D(_0104_),
    .Q(_0043_),
    .CLK(clknet_leaf_33_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[7]$_DFFE_PN0P_  (.RESET_B(net577),
    .D(_0103_),
    .Q(\delay_all[39] ),
    .CLK(clknet_leaf_33_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[8]$_DFFE_PN0P_  (.RESET_B(net578),
    .D(_0102_),
    .Q(\delay_all[40] ),
    .CLK(clknet_leaf_35_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_delay[9]$_DFFE_PN0P_  (.RESET_B(net578),
    .D(_0101_),
    .Q(\delay_all[41] ),
    .CLK(clknet_leaf_30_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[0]$_DFFE_PN0P_  (.RESET_B(net593),
    .D(_0231_),
    .Q(\g_feeder[2].trip_timer[0] ),
    .CLK(clknet_leaf_35_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[10]$_DFFE_PN0P_  (.RESET_B(net571),
    .D(_0221_),
    .Q(\g_feeder[2].trip_timer[10] ),
    .CLK(clknet_leaf_30_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[11]$_DFFE_PN0P_  (.RESET_B(net571),
    .D(_0220_),
    .Q(\g_feeder[2].trip_timer[11] ),
    .CLK(clknet_leaf_30_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[12]$_DFFE_PN0P_  (.RESET_B(net571),
    .D(_0219_),
    .Q(\g_feeder[2].trip_timer[12] ),
    .CLK(clknet_leaf_30_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[13]$_DFFE_PN0P_  (.RESET_B(net571),
    .D(_0218_),
    .Q(\g_feeder[2].trip_timer[13] ),
    .CLK(clknet_leaf_31_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[14]$_DFFE_PN0P_  (.RESET_B(net571),
    .D(_0217_),
    .Q(\g_feeder[2].trip_timer[14] ),
    .CLK(clknet_leaf_29_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[15]$_DFFE_PN0P_  (.RESET_B(net573),
    .D(_0332_),
    .Q(\g_feeder[2].trip_timer[15] ),
    .CLK(clknet_leaf_29_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[1]$_DFFE_PN0P_  (.RESET_B(net570),
    .D(_0230_),
    .Q(\g_feeder[2].trip_timer[1] ),
    .CLK(clknet_leaf_36_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[2]$_DFFE_PN0P_  (.RESET_B(net570),
    .D(_0229_),
    .Q(\g_feeder[2].trip_timer[2] ),
    .CLK(clknet_leaf_36_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[3]$_DFFE_PN0P_  (.RESET_B(net570),
    .D(_0228_),
    .Q(\g_feeder[2].trip_timer[3] ),
    .CLK(clknet_leaf_36_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[4]$_DFFE_PN0P_  (.RESET_B(net570),
    .D(_0227_),
    .Q(\g_feeder[2].trip_timer[4] ),
    .CLK(clknet_leaf_36_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[5]$_DFFE_PN0P_  (.RESET_B(net570),
    .D(_0226_),
    .Q(\g_feeder[2].trip_timer[5] ),
    .CLK(clknet_leaf_36_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[6]$_DFFE_PN0P_  (.RESET_B(net572),
    .D(_0225_),
    .Q(\g_feeder[2].trip_timer[6] ),
    .CLK(clknet_leaf_30_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[7]$_DFFE_PN0P_  (.RESET_B(net572),
    .D(_0224_),
    .Q(\g_feeder[2].trip_timer[7] ),
    .CLK(clknet_leaf_35_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[8]$_DFFE_PN0P_  (.RESET_B(net572),
    .D(_0223_),
    .Q(\g_feeder[2].trip_timer[8] ),
    .CLK(clknet_leaf_30_clk));
 sg13g2_dfrbpq_1 \g_feeder[2].trip_timer[9]$_DFFE_PN0P_  (.RESET_B(net572),
    .D(_0222_),
    .Q(\g_feeder[2].trip_timer[9] ),
    .CLK(clknet_leaf_30_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cnt[0]$_DFFE_PN0P_  (.RESET_B(net564),
    .D(_0178_),
    .Q(\fltcnt_all[24] ),
    .CLK(clknet_leaf_7_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cnt[1]$_DFFE_PN0P_  (.RESET_B(net566),
    .D(_0177_),
    .Q(\fltcnt_all[25] ),
    .CLK(clknet_leaf_7_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cnt[2]$_DFFE_PN0P_  (.RESET_B(net566),
    .D(_0176_),
    .Q(\fltcnt_all[26] ),
    .CLK(clknet_leaf_7_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cnt[3]$_DFFE_PN0P_  (.RESET_B(net566),
    .D(_0175_),
    .Q(\fltcnt_all[27] ),
    .CLK(clknet_leaf_8_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cnt[4]$_DFFE_PN0P_  (.RESET_B(net566),
    .D(_0174_),
    .Q(\fltcnt_all[28] ),
    .CLK(clknet_leaf_8_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cnt[5]$_DFFE_PN0P_  (.RESET_B(net564),
    .D(_0173_),
    .Q(\fltcnt_all[29] ),
    .CLK(clknet_leaf_7_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cnt[6]$_DFFE_PN0P_  (.RESET_B(net563),
    .D(_0172_),
    .Q(\fltcnt_all[30] ),
    .CLK(clknet_leaf_6_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cnt[7]$_DFFE_PN0P_  (.RESET_B(net563),
    .D(_0327_),
    .Q(\fltcnt_all[31] ),
    .CLK(clknet_leaf_6_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[0]$_DFFE_PN0P_  (.RESET_B(net564),
    .D(_0216_),
    .Q(\fltcur_all[36] ),
    .CLK(clknet_leaf_6_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[10]$_DFFE_PN0P_  (.RESET_B(net562),
    .D(_0206_),
    .Q(\fltcur_all[46] ),
    .CLK(clknet_leaf_1_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[11]$_DFFE_PN0P_  (.RESET_B(net567),
    .D(_0331_),
    .Q(\fltcur_all[47] ),
    .CLK(clknet_leaf_2_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[1]$_DFFE_PN0P_  (.RESET_B(net567),
    .D(_0215_),
    .Q(\fltcur_all[37] ),
    .CLK(clknet_leaf_2_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[2]$_DFFE_PN0P_  (.RESET_B(net563),
    .D(_0214_),
    .Q(\fltcur_all[38] ),
    .CLK(clknet_leaf_6_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[3]$_DFFE_PN0P_  (.RESET_B(net566),
    .D(_0213_),
    .Q(\fltcur_all[39] ),
    .CLK(clknet_leaf_6_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[4]$_DFFE_PN0P_  (.RESET_B(net566),
    .D(_0212_),
    .Q(\fltcur_all[40] ),
    .CLK(clknet_leaf_6_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[5]$_DFFE_PN0P_  (.RESET_B(net564),
    .D(_0211_),
    .Q(\fltcur_all[41] ),
    .CLK(clknet_leaf_5_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[6]$_DFFE_PN0P_  (.RESET_B(net567),
    .D(_0210_),
    .Q(\fltcur_all[42] ),
    .CLK(clknet_leaf_2_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[7]$_DFFE_PN0P_  (.RESET_B(net561),
    .D(_0209_),
    .Q(\fltcur_all[43] ),
    .CLK(clknet_leaf_2_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[8]$_DFFE_PN0P_  (.RESET_B(net567),
    .D(_0208_),
    .Q(\fltcur_all[44] ),
    .CLK(clknet_leaf_2_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].flt_cur[9]$_DFFE_PN0P_  (.RESET_B(net562),
    .D(_0207_),
    .Q(\fltcur_all[45] ),
    .CLK(clknet_leaf_1_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].state[0]$_DFFE_PN0P_  (.RESET_B(net563),
    .D(_0269_),
    .Q(net109),
    .CLK(clknet_leaf_6_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].state[1]$_DFFE_PN0P_  (.RESET_B(net563),
    .D(_0336_),
    .Q(net110),
    .CLK(clknet_leaf_7_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].streak[0]$_DFFE_PN0P_  (.RESET_B(net563),
    .D(_0300_),
    .Q(\g_feeder[3].streak[0] ),
    .CLK(clknet_leaf_8_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].streak[1]$_DFFE_PN0P_  (.RESET_B(net563),
    .D(_0339_),
    .Q(\g_feeder[3].streak[1] ),
    .CLK(clknet_leaf_8_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[0]$_DFFE_PN0P_  (.RESET_B(net567),
    .D(_0204_),
    .Q(\g_feeder[3].threshold[0] ),
    .CLK(clknet_leaf_5_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[10]$_DFFE_PN1P_  (.RESET_B(net548),
    .D(_0194_),
    .Q(_0044_),
    .CLK(clknet_leaf_3_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[11]$_DFFE_PN0P_  (.RESET_B(net548),
    .D(_0329_),
    .Q(\g_feeder[3].threshold[11] ),
    .CLK(clknet_leaf_34_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[1]$_DFFE_PN0P_  (.RESET_B(net563),
    .D(_0203_),
    .Q(\g_feeder[3].threshold[1] ),
    .CLK(clknet_leaf_6_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[2]$_DFFE_PN0P_  (.RESET_B(net567),
    .D(_0202_),
    .Q(\g_feeder[3].threshold[2] ),
    .CLK(clknet_leaf_2_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[3]$_DFFE_PN0P_  (.RESET_B(net561),
    .D(_0201_),
    .Q(\g_feeder[3].threshold[3] ),
    .CLK(clknet_leaf_2_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[4]$_DFFE_PN1P_  (.RESET_B(net561),
    .D(_0200_),
    .Q(_0045_),
    .CLK(clknet_leaf_2_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[5]$_DFFE_PN0P_  (.RESET_B(net568),
    .D(_0199_),
    .Q(\g_feeder[3].threshold[5] ),
    .CLK(clknet_leaf_5_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[6]$_DFFE_PN1P_  (.RESET_B(net548),
    .D(_0198_),
    .Q(_0046_),
    .CLK(clknet_leaf_4_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[7]$_DFFE_PN1P_  (.RESET_B(net547),
    .D(_0197_),
    .Q(_0047_),
    .CLK(clknet_leaf_3_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[8]$_DFFE_PN1P_  (.RESET_B(net548),
    .D(_0196_),
    .Q(_0048_),
    .CLK(clknet_leaf_3_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].threshold[9]$_DFFE_PN1P_  (.RESET_B(net548),
    .D(_0195_),
    .Q(_0049_),
    .CLK(clknet_leaf_4_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[0]$_DFFE_PN0P_  (.RESET_B(net547),
    .D(_0133_),
    .Q(\delay_all[48] ),
    .CLK(clknet_leaf_4_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[10]$_DFFE_PN0P_  (.RESET_B(net587),
    .D(_0123_),
    .Q(\delay_all[58] ),
    .CLK(clknet_leaf_32_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[11]$_DFFE_PN0P_  (.RESET_B(net579),
    .D(_0122_),
    .Q(\delay_all[59] ),
    .CLK(clknet_leaf_24_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[12]$_DFFE_PN0P_  (.RESET_B(net588),
    .D(_0121_),
    .Q(\delay_all[60] ),
    .CLK(clknet_leaf_25_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[13]$_DFFE_PN0P_  (.RESET_B(net588),
    .D(_0120_),
    .Q(\delay_all[61] ),
    .CLK(clknet_leaf_24_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[14]$_DFFE_PN0P_  (.RESET_B(net588),
    .D(_0119_),
    .Q(\delay_all[62] ),
    .CLK(clknet_leaf_25_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[15]$_DFFE_PN0P_  (.RESET_B(net591),
    .D(_0322_),
    .Q(\delay_all[63] ),
    .CLK(clknet_leaf_25_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[1]$_DFFE_PN0P_  (.RESET_B(net547),
    .D(_0132_),
    .Q(\delay_all[49] ),
    .CLK(clknet_leaf_4_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[2]$_DFFE_PN1P_  (.RESET_B(net547),
    .D(_0131_),
    .Q(_0050_),
    .CLK(clknet_leaf_4_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[3]$_DFFE_PN0P_  (.RESET_B(net547),
    .D(_0130_),
    .Q(\delay_all[51] ),
    .CLK(clknet_leaf_4_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[4]$_DFFE_PN0P_  (.RESET_B(net547),
    .D(_0129_),
    .Q(\delay_all[52] ),
    .CLK(clknet_leaf_4_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[5]$_DFFE_PN1P_  (.RESET_B(net549),
    .D(_0128_),
    .Q(_0051_),
    .CLK(clknet_leaf_13_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[6]$_DFFE_PN1P_  (.RESET_B(net580),
    .D(_0127_),
    .Q(_0052_),
    .CLK(clknet_leaf_23_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[7]$_DFFE_PN0P_  (.RESET_B(net579),
    .D(_0126_),
    .Q(\delay_all[55] ),
    .CLK(clknet_leaf_24_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[8]$_DFFE_PN0P_  (.RESET_B(net580),
    .D(_0125_),
    .Q(\delay_all[56] ),
    .CLK(clknet_leaf_23_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_delay[9]$_DFFE_PN0P_  (.RESET_B(net587),
    .D(_0124_),
    .Q(\delay_all[57] ),
    .CLK(clknet_leaf_32_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[0]$_DFFE_PN0P_  (.RESET_B(net577),
    .D(_0257_),
    .Q(\g_feeder[3].trip_timer[0] ),
    .CLK(clknet_leaf_33_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[10]$_DFFE_PN0P_  (.RESET_B(net592),
    .D(_0247_),
    .Q(\g_feeder[3].trip_timer[10] ),
    .CLK(clknet_leaf_31_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[11]$_DFFE_PN0P_  (.RESET_B(net592),
    .D(_0246_),
    .Q(\g_feeder[3].trip_timer[11] ),
    .CLK(clknet_leaf_31_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[12]$_DFFE_PN0P_  (.RESET_B(net592),
    .D(_0245_),
    .Q(\g_feeder[3].trip_timer[12] ),
    .CLK(clknet_leaf_31_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[13]$_DFFE_PN0P_  (.RESET_B(net592),
    .D(_0244_),
    .Q(\g_feeder[3].trip_timer[13] ),
    .CLK(clknet_leaf_32_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[14]$_DFFE_PN0P_  (.RESET_B(net588),
    .D(_0243_),
    .Q(\g_feeder[3].trip_timer[14] ),
    .CLK(clknet_leaf_24_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[15]$_DFFE_PN0P_  (.RESET_B(net588),
    .D(_0334_),
    .Q(\g_feeder[3].trip_timer[15] ),
    .CLK(clknet_leaf_25_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[1]$_DFFE_PN0P_  (.RESET_B(net577),
    .D(_0256_),
    .Q(\g_feeder[3].trip_timer[1] ),
    .CLK(clknet_leaf_33_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[2]$_DFFE_PN0P_  (.RESET_B(net577),
    .D(_0255_),
    .Q(\g_feeder[3].trip_timer[2] ),
    .CLK(clknet_leaf_32_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[3]$_DFFE_PN0P_  (.RESET_B(net577),
    .D(_0254_),
    .Q(\g_feeder[3].trip_timer[3] ),
    .CLK(clknet_leaf_33_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[4]$_DFFE_PN0P_  (.RESET_B(net577),
    .D(_0253_),
    .Q(\g_feeder[3].trip_timer[4] ),
    .CLK(clknet_leaf_33_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[5]$_DFFE_PN0P_  (.RESET_B(net577),
    .D(_0252_),
    .Q(\g_feeder[3].trip_timer[5] ),
    .CLK(clknet_leaf_32_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[6]$_DFFE_PN0P_  (.RESET_B(net579),
    .D(_0251_),
    .Q(\g_feeder[3].trip_timer[6] ),
    .CLK(clknet_leaf_32_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[7]$_DFFE_PN0P_  (.RESET_B(net587),
    .D(_0250_),
    .Q(\g_feeder[3].trip_timer[7] ),
    .CLK(clknet_leaf_32_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[8]$_DFFE_PN0P_  (.RESET_B(net592),
    .D(_0249_),
    .Q(\g_feeder[3].trip_timer[8] ),
    .CLK(clknet_leaf_31_clk));
 sg13g2_dfrbpq_1 \g_feeder[3].trip_timer[9]$_DFFE_PN0P_  (.RESET_B(net592),
    .D(_0248_),
    .Q(\g_feeder[3].trip_timer[9] ),
    .CLK(clknet_leaf_31_clk));
 sg13g2_buf_1 input10 (.A(cmd_reset[0]),
    .X(net9));
 sg13g2_buf_1 input11 (.A(cmd_reset[1]),
    .X(net10));
 sg13g2_buf_1 input12 (.A(cmd_reset[2]),
    .X(net11));
 sg13g2_buf_1 input13 (.A(cmd_reset[3]),
    .X(net12));
 sg13g2_buf_1 input14 (.A(current_i[0]),
    .X(net13));
 sg13g2_buf_1 input15 (.A(current_i[10]),
    .X(net14));
 sg13g2_buf_1 input16 (.A(current_i[11]),
    .X(net15));
 sg13g2_buf_1 input17 (.A(current_i[12]),
    .X(net16));
 sg13g2_buf_1 input18 (.A(current_i[13]),
    .X(net17));
 sg13g2_buf_1 input19 (.A(current_i[14]),
    .X(net18));
 sg13g2_buf_1 input2 (.A(cmd_close[0]),
    .X(net1));
 sg13g2_buf_1 input20 (.A(current_i[15]),
    .X(net19));
 sg13g2_buf_1 input21 (.A(current_i[16]),
    .X(net20));
 sg13g2_buf_1 input22 (.A(current_i[17]),
    .X(net21));
 sg13g2_buf_1 input23 (.A(current_i[18]),
    .X(net22));
 sg13g2_buf_1 input24 (.A(current_i[19]),
    .X(net23));
 sg13g2_buf_1 input25 (.A(current_i[1]),
    .X(net24));
 sg13g2_buf_1 input26 (.A(current_i[20]),
    .X(net25));
 sg13g2_buf_1 input27 (.A(current_i[21]),
    .X(net26));
 sg13g2_buf_1 input28 (.A(current_i[22]),
    .X(net27));
 sg13g2_buf_1 input29 (.A(current_i[23]),
    .X(net28));
 sg13g2_buf_1 input3 (.A(cmd_close[1]),
    .X(net2));
 sg13g2_buf_1 input30 (.A(current_i[24]),
    .X(net29));
 sg13g2_buf_1 input31 (.A(current_i[25]),
    .X(net30));
 sg13g2_buf_1 input32 (.A(current_i[26]),
    .X(net31));
 sg13g2_buf_1 input33 (.A(current_i[27]),
    .X(net32));
 sg13g2_buf_1 input34 (.A(current_i[28]),
    .X(net33));
 sg13g2_buf_1 input35 (.A(current_i[29]),
    .X(net34));
 sg13g2_buf_1 input36 (.A(current_i[2]),
    .X(net35));
 sg13g2_buf_1 input37 (.A(current_i[30]),
    .X(net36));
 sg13g2_buf_1 input38 (.A(current_i[31]),
    .X(net37));
 sg13g2_buf_1 input39 (.A(current_i[32]),
    .X(net38));
 sg13g2_buf_1 input4 (.A(cmd_close[2]),
    .X(net3));
 sg13g2_buf_1 input40 (.A(current_i[33]),
    .X(net39));
 sg13g2_buf_1 input41 (.A(current_i[34]),
    .X(net40));
 sg13g2_buf_1 input42 (.A(current_i[35]),
    .X(net41));
 sg13g2_buf_1 input43 (.A(current_i[36]),
    .X(net42));
 sg13g2_buf_1 input44 (.A(current_i[37]),
    .X(net43));
 sg13g2_buf_1 input45 (.A(current_i[38]),
    .X(net44));
 sg13g2_buf_1 input46 (.A(current_i[39]),
    .X(net45));
 sg13g2_buf_1 input47 (.A(current_i[3]),
    .X(net46));
 sg13g2_buf_1 input48 (.A(current_i[40]),
    .X(net47));
 sg13g2_buf_1 input49 (.A(current_i[41]),
    .X(net48));
 sg13g2_buf_1 input5 (.A(cmd_close[3]),
    .X(net4));
 sg13g2_buf_1 input50 (.A(current_i[42]),
    .X(net49));
 sg13g2_buf_1 input51 (.A(current_i[43]),
    .X(net50));
 sg13g2_buf_1 input52 (.A(current_i[44]),
    .X(net51));
 sg13g2_buf_1 input53 (.A(current_i[45]),
    .X(net52));
 sg13g2_buf_1 input54 (.A(current_i[46]),
    .X(net53));
 sg13g2_buf_1 input55 (.A(current_i[47]),
    .X(net54));
 sg13g2_buf_1 input56 (.A(current_i[4]),
    .X(net55));
 sg13g2_buf_1 input57 (.A(current_i[5]),
    .X(net56));
 sg13g2_buf_1 input58 (.A(current_i[6]),
    .X(net57));
 sg13g2_buf_1 input59 (.A(current_i[7]),
    .X(net58));
 sg13g2_buf_1 input6 (.A(cmd_open[0]),
    .X(net5));
 sg13g2_buf_1 input60 (.A(current_i[8]),
    .X(net59));
 sg13g2_buf_1 input61 (.A(current_i[9]),
    .X(net60));
 sg13g2_buf_1 input62 (.A(reg_addr[0]),
    .X(net61));
 sg13g2_buf_1 input63 (.A(reg_addr[1]),
    .X(net62));
 sg13g2_buf_1 input64 (.A(reg_addr[2]),
    .X(net63));
 sg13g2_buf_1 input65 (.A(reg_addr[3]),
    .X(net64));
 sg13g2_buf_1 input66 (.A(reg_addr[4]),
    .X(net65));
 sg13g2_buf_1 input67 (.A(reg_addr[5]),
    .X(net66));
 sg13g2_buf_1 input68 (.A(reg_re),
    .X(net67));
 sg13g2_buf_1 input69 (.A(reg_wdata[0]),
    .X(net68));
 sg13g2_buf_1 input7 (.A(cmd_open[1]),
    .X(net6));
 sg13g2_buf_1 input70 (.A(reg_wdata[10]),
    .X(net69));
 sg13g2_buf_1 input71 (.A(reg_wdata[11]),
    .X(net70));
 sg13g2_buf_1 input72 (.A(reg_wdata[12]),
    .X(net71));
 sg13g2_buf_1 input73 (.A(reg_wdata[13]),
    .X(net72));
 sg13g2_buf_1 input74 (.A(reg_wdata[14]),
    .X(net73));
 sg13g2_buf_1 input75 (.A(reg_wdata[15]),
    .X(net74));
 sg13g2_buf_1 input76 (.A(reg_wdata[1]),
    .X(net75));
 sg13g2_buf_1 input77 (.A(reg_wdata[2]),
    .X(net76));
 sg13g2_buf_1 input78 (.A(reg_wdata[3]),
    .X(net77));
 sg13g2_buf_1 input79 (.A(reg_wdata[4]),
    .X(net78));
 sg13g2_buf_1 input8 (.A(cmd_open[2]),
    .X(net7));
 sg13g2_buf_1 input80 (.A(reg_wdata[5]),
    .X(net79));
 sg13g2_buf_1 input81 (.A(reg_wdata[6]),
    .X(net80));
 sg13g2_buf_1 input82 (.A(reg_wdata[7]),
    .X(net81));
 sg13g2_buf_1 input83 (.A(reg_wdata[8]),
    .X(net82));
 sg13g2_buf_1 input84 (.A(reg_wdata[9]),
    .X(net83));
 sg13g2_buf_1 input85 (.A(reg_we),
    .X(net84));
 sg13g2_buf_1 input86 (.A(rst_n),
    .X(net85));
 sg13g2_buf_1 input9 (.A(cmd_open[3]),
    .X(net8));
 sg13g2_buf_1 output100 (.A(net99),
    .X(reg_rdata[6]));
 sg13g2_buf_1 output101 (.A(net100),
    .X(reg_rdata[7]));
 sg13g2_buf_1 output102 (.A(net101),
    .X(reg_rdata[8]));
 sg13g2_buf_1 output103 (.A(net102),
    .X(reg_rdata[9]));
 sg13g2_buf_1 output104 (.A(net103),
    .X(status_o[0]));
 sg13g2_buf_1 output105 (.A(net104),
    .X(status_o[1]));
 sg13g2_buf_1 output106 (.A(net105),
    .X(status_o[2]));
 sg13g2_buf_1 output107 (.A(net106),
    .X(status_o[3]));
 sg13g2_buf_1 output108 (.A(net107),
    .X(status_o[4]));
 sg13g2_buf_1 output109 (.A(net108),
    .X(status_o[5]));
 sg13g2_buf_1 output110 (.A(net109),
    .X(status_o[6]));
 sg13g2_buf_1 output111 (.A(net110),
    .X(status_o[7]));
 sg13g2_buf_1 output112 (.A(net104),
    .X(trip_o[0]));
 sg13g2_buf_1 output113 (.A(net106),
    .X(trip_o[1]));
 sg13g2_buf_1 output114 (.A(net108),
    .X(trip_o[2]));
 sg13g2_buf_1 output115 (.A(net110),
    .X(trip_o[3]));
 sg13g2_buf_1 output87 (.A(net86),
    .X(fault_event_o));
 sg13g2_buf_1 output88 (.A(net87),
    .X(reg_rdata[0]));
 sg13g2_buf_1 output89 (.A(net88),
    .X(reg_rdata[10]));
 sg13g2_buf_1 output90 (.A(net89),
    .X(reg_rdata[11]));
 sg13g2_buf_1 output91 (.A(net90),
    .X(reg_rdata[12]));
 sg13g2_buf_1 output92 (.A(net91),
    .X(reg_rdata[13]));
 sg13g2_buf_1 output93 (.A(net92),
    .X(reg_rdata[14]));
 sg13g2_buf_1 output94 (.A(net93),
    .X(reg_rdata[15]));
 sg13g2_buf_1 output95 (.A(net94),
    .X(reg_rdata[1]));
 sg13g2_buf_1 output96 (.A(net95),
    .X(reg_rdata[2]));
 sg13g2_buf_1 output97 (.A(net96),
    .X(reg_rdata[3]));
 sg13g2_buf_1 output98 (.A(net97),
    .X(reg_rdata[4]));
 sg13g2_buf_1 output99 (.A(net98),
    .X(reg_rdata[5]));
 sg13g2_buf_1 place475 (.A(_1591_),
    .X(net470));
 sg13g2_buf_1 place476 (.A(_1591_),
    .X(net471));
 sg13g2_buf_1 place477 (.A(_1901_),
    .X(net472));
 sg13g2_buf_1 place478 (.A(_1901_),
    .X(net473));
 sg13g2_buf_1 place479 (.A(_1350_),
    .X(net474));
 sg13g2_buf_1 place480 (.A(_1327_),
    .X(net475));
 sg13g2_buf_1 place481 (.A(_1327_),
    .X(net476));
 sg13g2_buf_1 place482 (.A(net478),
    .X(net477));
 sg13g2_buf_1 place483 (.A(_1327_),
    .X(net478));
 sg13g2_buf_1 place484 (.A(_1321_),
    .X(net479));
 sg13g2_buf_1 place485 (.A(_0642_),
    .X(net480));
 sg13g2_buf_1 place486 (.A(net482),
    .X(net481));
 sg13g2_buf_1 place487 (.A(_0642_),
    .X(net482));
 sg13g2_buf_1 place488 (.A(net484),
    .X(net483));
 sg13g2_buf_1 place489 (.A(_0642_),
    .X(net484));
 sg13g2_buf_1 place490 (.A(_0642_),
    .X(net485));
 sg13g2_buf_1 place491 (.A(_0412_),
    .X(net486));
 sg13g2_buf_1 place492 (.A(net488),
    .X(net487));
 sg13g2_buf_1 place493 (.A(net491),
    .X(net488));
 sg13g2_buf_1 place494 (.A(net491),
    .X(net489));
 sg13g2_buf_1 place495 (.A(net491),
    .X(net490));
 sg13g2_buf_1 place496 (.A(_0412_),
    .X(net491));
 sg13g2_buf_1 place497 (.A(_1897_),
    .X(net492));
 sg13g2_buf_1 place498 (.A(net494),
    .X(net493));
 sg13g2_buf_1 place499 (.A(_1319_),
    .X(net494));
 sg13g2_buf_1 place500 (.A(net497),
    .X(net495));
 sg13g2_buf_1 place501 (.A(net497),
    .X(net496));
 sg13g2_buf_1 place502 (.A(_0481_),
    .X(net497));
 sg13g2_buf_1 place503 (.A(_0481_),
    .X(net498));
 sg13g2_buf_1 place504 (.A(_1452_),
    .X(net499));
 sg13g2_buf_1 place505 (.A(_1359_),
    .X(net500));
 sg13g2_buf_1 place506 (.A(_1713_),
    .X(net501));
 sg13g2_buf_1 place507 (.A(_1491_),
    .X(net502));
 sg13g2_buf_1 place508 (.A(_1491_),
    .X(net503));
 sg13g2_buf_1 place509 (.A(_0713_),
    .X(net504));
 sg13g2_buf_1 place510 (.A(_0713_),
    .X(net505));
 sg13g2_buf_1 place511 (.A(net507),
    .X(net506));
 sg13g2_buf_1 place512 (.A(_1644_),
    .X(net507));
 sg13g2_buf_1 place513 (.A(_1583_),
    .X(net508));
 sg13g2_buf_1 place514 (.A(_1583_),
    .X(net509));
 sg13g2_buf_1 place515 (.A(_1400_),
    .X(net510));
 sg13g2_buf_1 place516 (.A(_1400_),
    .X(net511));
 sg13g2_buf_1 place517 (.A(net513),
    .X(net512));
 sg13g2_buf_1 place518 (.A(_1323_),
    .X(net513));
 sg13g2_buf_1 place519 (.A(_0831_),
    .X(net514));
 sg13g2_buf_1 place520 (.A(_0831_),
    .X(net515));
 sg13g2_buf_1 place521 (.A(_0783_),
    .X(net516));
 sg13g2_buf_1 place522 (.A(_0783_),
    .X(net517));
 sg13g2_buf_1 place523 (.A(net519),
    .X(net518));
 sg13g2_buf_1 place524 (.A(_0679_),
    .X(net519));
 sg13g2_buf_1 place525 (.A(net521),
    .X(net520));
 sg13g2_buf_1 place526 (.A(_0425_),
    .X(net521));
 sg13g2_buf_1 place527 (.A(_1797_),
    .X(net522));
 sg13g2_buf_1 place528 (.A(_1036_),
    .X(net523));
 sg13g2_buf_1 place529 (.A(_1036_),
    .X(net524));
 sg13g2_buf_1 place530 (.A(net526),
    .X(net525));
 sg13g2_buf_1 place531 (.A(net527),
    .X(net526));
 sg13g2_buf_1 place532 (.A(_0889_),
    .X(net527));
 sg13g2_buf_1 place533 (.A(_0889_),
    .X(net528));
 sg13g2_buf_1 place534 (.A(net530),
    .X(net529));
 sg13g2_buf_1 place535 (.A(net531),
    .X(net530));
 sg13g2_buf_1 place536 (.A(_0885_),
    .X(net531));
 sg13g2_buf_1 place537 (.A(_0878_),
    .X(net532));
 sg13g2_buf_1 place538 (.A(net534),
    .X(net533));
 sg13g2_buf_1 place539 (.A(_0710_),
    .X(net534));
 sg13g2_buf_1 place540 (.A(net536),
    .X(net535));
 sg13g2_buf_1 place541 (.A(_0710_),
    .X(net536));
 sg13g2_buf_1 place542 (.A(_0650_),
    .X(net537));
 sg13g2_buf_1 place543 (.A(_0646_),
    .X(net538));
 sg13g2_buf_1 place544 (.A(net540),
    .X(net539));
 sg13g2_buf_1 place545 (.A(_0646_),
    .X(net540));
 sg13g2_buf_1 place546 (.A(net542),
    .X(net541));
 sg13g2_buf_1 place547 (.A(_0458_),
    .X(net542));
 sg13g2_buf_1 place548 (.A(_0420_),
    .X(net543));
 sg13g2_buf_1 place549 (.A(net545),
    .X(net544));
 sg13g2_buf_1 place550 (.A(_0420_),
    .X(net545));
 sg13g2_buf_1 place551 (.A(net568),
    .X(net546));
 sg13g2_buf_1 place552 (.A(net548),
    .X(net547));
 sg13g2_buf_1 place553 (.A(net554),
    .X(net548));
 sg13g2_buf_1 place554 (.A(net554),
    .X(net549));
 sg13g2_buf_1 place555 (.A(net554),
    .X(net550));
 sg13g2_buf_1 place556 (.A(net552),
    .X(net551));
 sg13g2_buf_1 place557 (.A(net553),
    .X(net552));
 sg13g2_buf_1 place558 (.A(net554),
    .X(net553));
 sg13g2_buf_1 place559 (.A(net568),
    .X(net554));
 sg13g2_buf_1 place560 (.A(net568),
    .X(net555));
 sg13g2_buf_1 place561 (.A(net560),
    .X(net556));
 sg13g2_buf_1 place562 (.A(net560),
    .X(net557));
 sg13g2_buf_1 place563 (.A(net559),
    .X(net558));
 sg13g2_buf_1 place564 (.A(net560),
    .X(net559));
 sg13g2_buf_1 place565 (.A(net568),
    .X(net560));
 sg13g2_buf_1 place566 (.A(net562),
    .X(net561));
 sg13g2_buf_1 place567 (.A(net568),
    .X(net562));
 sg13g2_buf_1 place568 (.A(net567),
    .X(net563));
 sg13g2_buf_1 place569 (.A(net566),
    .X(net564));
 sg13g2_buf_1 place570 (.A(net566),
    .X(net565));
 sg13g2_buf_1 place571 (.A(net567),
    .X(net566));
 sg13g2_buf_1 place572 (.A(net568),
    .X(net567));
 sg13g2_buf_1 place573 (.A(net569),
    .X(net568));
 sg13g2_buf_1 place574 (.A(rst_n_sync),
    .X(net569));
 sg13g2_buf_1 place575 (.A(net593),
    .X(net570));
 sg13g2_buf_1 place576 (.A(net572),
    .X(net571));
 sg13g2_buf_1 place577 (.A(net575),
    .X(net572));
 sg13g2_buf_1 place578 (.A(net575),
    .X(net573));
 sg13g2_buf_1 place579 (.A(net575),
    .X(net574));
 sg13g2_buf_1 place580 (.A(net593),
    .X(net575));
 sg13g2_buf_1 place581 (.A(net578),
    .X(net576));
 sg13g2_buf_1 place582 (.A(net578),
    .X(net577));
 sg13g2_buf_1 place583 (.A(net593),
    .X(net578));
 sg13g2_buf_1 place584 (.A(net587),
    .X(net579));
 sg13g2_buf_1 place585 (.A(net587),
    .X(net580));
 sg13g2_buf_1 place586 (.A(net582),
    .X(net581));
 sg13g2_buf_1 place587 (.A(net587),
    .X(net582));
 sg13g2_buf_1 place588 (.A(net586),
    .X(net583));
 sg13g2_buf_1 place589 (.A(net585),
    .X(net584));
 sg13g2_buf_1 place590 (.A(net586),
    .X(net585));
 sg13g2_buf_1 place591 (.A(net587),
    .X(net586));
 sg13g2_buf_1 place592 (.A(net593),
    .X(net587));
 sg13g2_buf_1 place593 (.A(net592),
    .X(net588));
 sg13g2_buf_1 place594 (.A(net591),
    .X(net589));
 sg13g2_buf_1 place595 (.A(net591),
    .X(net590));
 sg13g2_buf_1 place596 (.A(net592),
    .X(net591));
 sg13g2_buf_1 place597 (.A(net593),
    .X(net592));
 sg13g2_buf_1 place598 (.A(rst_n_sync),
    .X(net593));
 sg13g2_buf_1 place599 (.A(net104),
    .X(net594));
 sg13g2_buf_1 place600 (.A(_1794_),
    .X(net595));
 sg13g2_buf_1 place601 (.A(_1794_),
    .X(net596));
 sg13g2_buf_1 place602 (.A(_0888_),
    .X(net597));
 sg13g2_buf_1 place603 (.A(net600),
    .X(net598));
 sg13g2_buf_1 place604 (.A(net600),
    .X(net599));
 sg13g2_buf_1 place605 (.A(_0456_),
    .X(net600));
 sg13g2_buf_1 place606 (.A(_0456_),
    .X(net601));
 sg13g2_buf_1 place607 (.A(_0418_),
    .X(net602));
 sg13g2_buf_1 place608 (.A(net84),
    .X(net603));
 sg13g2_buf_1 place609 (.A(net76),
    .X(net604));
 sg13g2_buf_1 place610 (.A(net75),
    .X(net605));
 sg13g2_buf_1 place611 (.A(net68),
    .X(net606));
 sg13g2_buf_1 place612 (.A(net608),
    .X(net607));
 sg13g2_buf_1 place613 (.A(net67),
    .X(net608));
 sg13g2_buf_1 place614 (.A(net66),
    .X(net609));
 sg13g2_buf_1 place615 (.A(net65),
    .X(net610));
 sg13g2_buf_1 place616 (.A(net65),
    .X(net611));
 sg13g2_buf_1 place617 (.A(net613),
    .X(net612));
 sg13g2_buf_1 place618 (.A(net64),
    .X(net613));
 sg13g2_buf_1 place619 (.A(net617),
    .X(net614));
 sg13g2_buf_1 place620 (.A(net616),
    .X(net615));
 sg13g2_buf_1 place621 (.A(net617),
    .X(net616));
 sg13g2_buf_1 place622 (.A(net63),
    .X(net617));
 sg13g2_buf_1 place623 (.A(net619),
    .X(net618));
 sg13g2_buf_1 place624 (.A(net621),
    .X(net619));
 sg13g2_buf_1 place625 (.A(net621),
    .X(net620));
 sg13g2_buf_1 place626 (.A(net62),
    .X(net621));
 sg13g2_buf_1 place627 (.A(net61),
    .X(net622));
 sg13g2_buf_1 place628 (.A(net61),
    .X(net623));
 sg13g2_buf_1 place629 (.A(net61),
    .X(net624));
 sg13g2_dfrbpq_1 \reg_rdata[0]$_DFFE_PN0P_  (.RESET_B(net560),
    .D(_0170_),
    .Q(net87),
    .CLK(clknet_leaf_9_clk));
 sg13g2_dfrbpq_1 \reg_rdata[10]$_DFFE_PN0P_  (.RESET_B(net591),
    .D(_0160_),
    .Q(net88),
    .CLK(clknet_leaf_32_clk));
 sg13g2_dfrbpq_1 \reg_rdata[11]$_DFFE_PN0P_  (.RESET_B(net591),
    .D(_0159_),
    .Q(net89),
    .CLK(clknet_leaf_23_clk));
 sg13g2_dfrbpq_1 \reg_rdata[12]$_DFFE_PN0P_  (.RESET_B(net590),
    .D(_0158_),
    .Q(net90),
    .CLK(clknet_leaf_27_clk));
 sg13g2_dfrbpq_1 \reg_rdata[13]$_DFFE_PN0P_  (.RESET_B(net590),
    .D(_0157_),
    .Q(net91),
    .CLK(clknet_leaf_26_clk));
 sg13g2_dfrbpq_1 \reg_rdata[14]$_DFFE_PN0P_  (.RESET_B(net590),
    .D(_0156_),
    .Q(net92),
    .CLK(clknet_leaf_27_clk));
 sg13g2_dfrbpq_1 \reg_rdata[15]$_DFFE_PN0P_  (.RESET_B(net590),
    .D(_0325_),
    .Q(net93),
    .CLK(clknet_leaf_27_clk));
 sg13g2_dfrbpq_1 \reg_rdata[1]$_DFFE_PN0P_  (.RESET_B(net547),
    .D(_0169_),
    .Q(net94),
    .CLK(clknet_leaf_3_clk));
 sg13g2_dfrbpq_1 \reg_rdata[2]$_DFFE_PN0P_  (.RESET_B(net555),
    .D(_0168_),
    .Q(net95),
    .CLK(clknet_leaf_5_clk));
 sg13g2_dfrbpq_1 \reg_rdata[3]$_DFFE_PN0P_  (.RESET_B(net557),
    .D(_0167_),
    .Q(net96),
    .CLK(clknet_leaf_9_clk));
 sg13g2_dfrbpq_1 \reg_rdata[4]$_DFFE_PN0P_  (.RESET_B(net556),
    .D(_0166_),
    .Q(net97),
    .CLK(clknet_leaf_12_clk));
 sg13g2_dfrbpq_1 \reg_rdata[5]$_DFFE_PN0P_  (.RESET_B(net560),
    .D(_0165_),
    .Q(net98),
    .CLK(clknet_leaf_9_clk));
 sg13g2_dfrbpq_1 \reg_rdata[6]$_DFFE_PN0P_  (.RESET_B(net572),
    .D(_0164_),
    .Q(net99),
    .CLK(clknet_leaf_33_clk));
 sg13g2_dfrbpq_1 \reg_rdata[7]$_DFFE_PN0P_  (.RESET_B(net590),
    .D(_0163_),
    .Q(net100),
    .CLK(clknet_leaf_33_clk));
 sg13g2_dfrbpq_1 \reg_rdata[8]$_DFFE_PN0P_  (.RESET_B(net589),
    .D(_0162_),
    .Q(net101),
    .CLK(clknet_leaf_23_clk));
 sg13g2_dfrbpq_1 \reg_rdata[9]$_DFFE_PN0P_  (.RESET_B(net591),
    .D(_0161_),
    .Q(net102),
    .CLK(clknet_leaf_23_clk));
 sg13g2_dfrbpq_1 \rst_sync_ff1$_DFF_PN0_  (.RESET_B(net85),
    .D(net),
    .Q(rst_sync_ff1),
    .CLK(clknet_leaf_38_clk));
 sg13g2_tiehi \rst_sync_ff1$_DFF_PN0__1  (.L_HI(net));
 sg13g2_dfrbpq_1 \rst_sync_ff2$_DFF_PN0_  (.RESET_B(net85),
    .D(rst_sync_ff1),
    .Q(rst_n_sync),
    .CLK(clknet_leaf_38_clk));
 sg13g2_dfrbpq_1 \tick_cnt[0]$_DFF_PN0_  (.RESET_B(net574),
    .D(_0001_),
    .Q(\tick_cnt[0] ),
    .CLK(clknet_leaf_29_clk));
 sg13g2_dfrbpq_1 \tick_cnt[10]$_DFF_PN0_  (.RESET_B(net575),
    .D(_0002_),
    .Q(\tick_cnt[10] ),
    .CLK(clknet_leaf_28_clk));
 sg13g2_dfrbpq_1 \tick_cnt[11]$_DFF_PN0_  (.RESET_B(net575),
    .D(_0003_),
    .Q(\tick_cnt[11] ),
    .CLK(clknet_leaf_28_clk));
 sg13g2_dfrbpq_1 \tick_cnt[12]$_DFF_PN0_  (.RESET_B(net575),
    .D(_0004_),
    .Q(\tick_cnt[12] ),
    .CLK(clknet_leaf_27_clk));
 sg13g2_dfrbpq_1 \tick_cnt[13]$_DFF_PN0_  (.RESET_B(net573),
    .D(_0005_),
    .Q(\tick_cnt[13] ),
    .CLK(clknet_leaf_28_clk));
 sg13g2_dfrbpq_1 \tick_cnt[14]$_DFF_PN0_  (.RESET_B(net573),
    .D(_0006_),
    .Q(\tick_cnt[14] ),
    .CLK(clknet_leaf_27_clk));
 sg13g2_dfrbpq_1 \tick_cnt[15]$_DFF_PN0_  (.RESET_B(net573),
    .D(_0007_),
    .Q(\tick_cnt[15] ),
    .CLK(clknet_leaf_28_clk));
 sg13g2_dfrbpq_1 \tick_cnt[1]$_DFF_PN0_  (.RESET_B(net574),
    .D(_0008_),
    .Q(\tick_cnt[1] ),
    .CLK(clknet_leaf_28_clk));
 sg13g2_dfrbpq_1 \tick_cnt[2]$_DFF_PN0_  (.RESET_B(net574),
    .D(_0009_),
    .Q(\tick_cnt[2] ),
    .CLK(clknet_leaf_28_clk));
 sg13g2_dfrbpq_1 \tick_cnt[3]$_DFF_PN0_  (.RESET_B(net574),
    .D(_0010_),
    .Q(\tick_cnt[3] ),
    .CLK(clknet_leaf_28_clk));
 sg13g2_dfrbpq_1 \tick_cnt[4]$_DFF_PN0_  (.RESET_B(net575),
    .D(_0011_),
    .Q(\tick_cnt[4] ),
    .CLK(clknet_leaf_29_clk));
 sg13g2_dfrbpq_1 \tick_cnt[5]$_DFF_PN0_  (.RESET_B(net574),
    .D(_0012_),
    .Q(\tick_cnt[5] ),
    .CLK(clknet_leaf_28_clk));
 sg13g2_dfrbpq_1 \tick_cnt[6]$_DFF_PN0_  (.RESET_B(net573),
    .D(_0013_),
    .Q(\tick_cnt[6] ),
    .CLK(clknet_leaf_29_clk));
 sg13g2_dfrbpq_1 \tick_cnt[7]$_DFF_PN0_  (.RESET_B(net575),
    .D(_0014_),
    .Q(\tick_cnt[7] ),
    .CLK(clknet_leaf_29_clk));
 sg13g2_dfrbpq_1 \tick_cnt[8]$_DFF_PN0_  (.RESET_B(net573),
    .D(_0015_),
    .Q(\tick_cnt[8] ),
    .CLK(clknet_leaf_27_clk));
 sg13g2_dfrbpq_1 \tick_cnt[9]$_DFF_PN0_  (.RESET_B(net573),
    .D(_0016_),
    .Q(\tick_cnt[9] ),
    .CLK(clknet_leaf_27_clk));
endmodule
