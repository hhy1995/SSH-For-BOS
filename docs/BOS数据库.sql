/*
SQLyog ä¼ä¸šç‰ˆ - MySQL GUI v8.14 
MySQL - 5.7.17-log : Database - bos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bos` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `bos`;

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('102',1,'qjlc.png','101','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0q\0\0g\0\0\0ŸÕXª\0\08ºIDATxœíİ{ŒcgaøïpYÔË5KŠš¡ü«…®HqQÕªf§RÛX-\".¤–ha$Z:ªPµ…­\né¨¢0ê¢¡…Ôj•oĞF#Ò)Iè´$ašËf’’,1äÂäŠÓì&Îîìîù½kƒ3ÌmÇïzöøØÏ£W+¯×>>3ãs>kÏ{F\0\0\0b¤½\0\0\0¦©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0D³Ù¬Õjår¹X,«ğÜÃW T*U«ÕF£‘öf`ği*€A077Z\"Õ•W^yİõ×ßwèĞ±••áá¹‡¯À.»ì²ğ5	e•öÆ`Ài*€lk4\Z•Jeß¾}<øÀ±•cÆêñØã…²\n_œååå´7\0KSdXª|>ÿÅ+¾plå¨±Ù¸ú«W_xá…õz=íÍÀ`ÒT\0V©TZAõœ±õ¸îúk/ºè×ÒŞ\\\0&MUsssûö]¼r¼ilgüùG?rùåŸH{£0€4@&5›ÍÑÑÑª¯ÖØÎ8|äG{÷şòÒÒRÚ›€A£©\02©Z­V*••ãÏtÆ»Æ~k›³¯¾×PË/ÿ›ÉÉÉ´7\0ƒFSdR©T:pÕ—ª‹÷ı0I¾\"¹w%ùöÑä£É­‡O_õõ¯=ôÔÍÇ’ÿm&77“I®}.ù‡îúÀøSÏ›TÆmòù|Ú›€A£©\02)—Ëİ}÷í+Ç´ÇÈÈÈá$9r2yêxòä±ä™$ù³¿øøÈ¶pqé¡•ä£ÉÏ%õfrßñäËß¼£õVÕ‘!‡<±k×®´7\0ƒFSdÒîİ»â¡•ã‡Û#dÒ3\'’£\'NıÓñ“§şüÊ5ÿyŞ›ßò—ŸüûãIòôñä©•äÉ•¤‘$×Şrg«©çÏ=İ\rÀà±kÈ¤V=İá¯G\'O<›;ñã4\ZÏ|öóŸøÔgxøÔénWN&ÇZ­uÓmw¬¹ïP\rM@ÏÙµ\0dR«‹ş¯3N5Õ‰ä±g’G\'+IrìèÑÜŒŒœ32²ë=¿Ùê;Şzğö5÷ª¡©\0è9»€LjuÑSÑşìßÏ&?<ú\\rëİß;÷ÜsÏyÑK^öÊ×–ß÷SMuËm×Üw¨†¦ çìZ\02©ÕEÎ}ödòdóÔûT=—\\ËÒ[÷¾ıµ¯{ı+w¿êóÿúåç’äğÑä™£§îxÃÂ-kî;TCSĞsv-\0™ÚàøñuF;BV=µ’üèXòğÓ+7İUßû¶w¼ë7~óÑ£É#ÍäÑfòÄÑ$TÕ\r7ß²æ¾C54\0=g×Ikº¨ø®‹îüÎ½·Şµ´°¸tãÁ¥o¿ç¦;ı×Íßşæ]÷ÿÏÁ{¾qğ»7Şşİ…;î¹ëŞ|îŸ®xï¥ïM½m4\0Ã® “ZMõäêñ¡}pd~ï=ïYsÇ¡\Zš\n€³kÈ¤VS=at;4\0=g×I§šêÄãF·CSĞsv-\0™ÔjªÇŒn‡¦ çìZ\02©ÕT\ZİM@ÏÙµ\0dR«©1ºš\n€³kÈ¤VS-İM@ÏÙµ\0d’¦ÒT\0ô	»€Lj5ÕãÆ†ç­êv	½}¬ÍØ¹~ı…èçö¦`ĞØµ\0dRhƒ\'ŞşèôÌš+7»ÙzŞqÃÛ¬şëê+W_ØâÖ,j³qCSĞsv-\0™ÔJ‹‡º\Zkî²á6[ìêë·sÇÎ_7»°õúŸöî§]ÂKN{Ó0hìZ\02©Uv5:wÙä}¡ŸºÍ÷]Ëõ÷ÚÎcmxû5Wvn¿õ\ntõEH{Ó0hìZ\02©Ut5:wYßÕÿ´ù‡ñ~êkî»f™ëkÃ[?Öf7Şğ)lÿ‹ö¦`ĞØµ\0dR+*~ĞÕèÜe;6»ï·_}åOâg»uÚËkŞís_½À´7\0ƒÆ® “Rlª-n¼Y­{jÓZ“L[´™¦ OØµ\0dR+-¾ßÕèÜeë›wÎÚ¬¿ıúÇÚæ5^^ó¸›-§Û/BÚ›€Ac×I§Òâd½«ñãDi]è\\³Ù…õ÷İzÉ›]³qmşO«oĞÕ\Znÿ‹ö¦`ĞØµ\0dR+-îßşXûö5k®ßl±ëo¶úš\r~Ú%o¶„\r/wÖvÍ5İM@ÏÙµ\0dR«(¾=Vß}ÍåÍß;zş[,m›·Ùæ¿®ÜÕ×Ä=ñ´7\0ƒÆ® “ZEq(bü$NÖ^¹æÂf7X¿¨uéušl¶¨­Wuõ\r¶XÎv~Ú›€Ac×I­¢¸Ïèvh*\0zÎ® “ZMu¯ÑíĞT\0ôœ]@&i*M@Ÿ°kÈ¤Ğ\'OŞct;4\0=g×I­¦ú®ÑíĞT\0ôœ]@&µšjÉèvh*\0zÎ® “ZMõ£Û¡©\0è9»€LÚµk×³ÏŞ~òä·®†¦ çìZ\02ittôşû¿vòäİFWCSĞsv-\0™466ös3\'“oÛßYúJ.—K{Ó0h4@&MMMMN¾?õJÉÖø—ê\'+•JÚ›€A£©\02©^¯çroz¶yëÉä.c›£Tz÷ììlÈªP¤ËËËioC\0„¦Èªı§ŒŸLî4¶3ş½öwåòXÒÊÑÉÉÉ={ö”Ëåùùù´7#\0™§©\0²ªÙl‹ïXXø·$¹ÃØz,/_ŸË½©Ñ¸aõ°V«‹Å\\.733Óh4ÒÚ\0d¦È°¥¥¥|ş‚¥¥Ù$Y46!¨B|ÎÏa³¯áøøø={ÂŸáòYŞ‚\0\0Mm!«¦¦ş$In7ÖÙÙOçr£óóÿ¼õ—±ÙlÎÌÌär¹B¡P­VÏÊ¦`@h*€Ì=09Y)ß^­şõòòµIrĞh4ş»VûÛry_©T—·ÿÅZ©TöìÙ399Y¯×wl£084À€˜ŸŸ¯T~{Ï×Œ02²{÷ËËå‹CVÅ}1———§¦¦FGGÇÆÆæææz»¥\00š\n`(xË%NªU!®L¿Àf4À\0\n5==}É%—äóù7¾ñï~÷»Ã…´W*ÃÚÓ¯‡²ªT*i¯\0ıESååå_ıÕ_]ó)¸_ø…_øùŸÿys…Ÿ¹f³Y­V…B.—Â_Ó^#\0ú‚¦ÓÓÓ/zÑ‹VÕÏıÜÏíŞ½ÛÑo---µç±0ı:\0‰¦$¡Â±şk_ûÚvP…¾zÛÛŞ6;;›öz\r¦F£Ñ~}ll¬V«¥½:\0¤FSš¥¥¥×¼æÔì—^zi8ÜO{ußÜÜ\\¹\\nO¿n€!¤©\0J³Ùç;ßù’—¼$—ËùdÚYÓ~=”Uè+Ó¯M08Âa}±Xœ™™	eõâ¿8\\N{†Q­VkO¿6„©A\0†¦óóóù|¾3Ó÷øøøââbº«4ÌêõzØ{öì©T*6À`ÓT\0ƒ`zzºX,úe~Ó~=´n¡P0ı:À ÒT\0ÙÖh4ÊåòÄÄDÚ+ÂVÚÓ¯ONNÖëõ´W€^ÒT\0¶´´T(Lä!€§¦¦FGGM¿0H4@V…ƒòTföË¢öôë!®BbùÄ&@Öi*€Lš˜˜å¦•Ë´z½>99Ù~½3¹\0™£©\02¦=aúôôtÚ+BÏ´ßrÌår¦_È\"M%ù|~~~>í¡÷–––ÆÇÇGGGÃŸ>Ò	!š\n 3fffL˜>ğ\ZFØĞ¹\\®=ızÚ«Àéi*€h6›åry||Ü	†‡é×²BSô;¦³åååöôë¥Rinn.íÕ`š\n ¯ÍÎÎ† Z\\\\L{EHYøNkO¿n€¾¢©\0ú×şıûK¥’h::Ó¯W*Ó¯ô	MĞBG‹ÅĞTi¯ı¨ÙlV«ÕB¡ÏçÃ¿e.MĞwM˜Îv„o•ö<¦_H‘¦è/333…BÁ<ol_gúõ±±1s™\0œ}š\n _4›Íñå\"ÎÜÜ\\¹\\Ş³gÏşıûÇà¬ÑT\0}¡^¯\n…™™™´W„Ì5š*”Uè+Ó¯œš\n }óóóù|Ş„éôV­VËår¡ÕÍ	°s4@Êöïß_,ò²C–––ÆÇÇÛÓ¯›Ç`\'h*€Ô„*•J&Lç,hO¿Ëå\n…‚é×zKS¤cqq1İÎÎÎ¦½\"—………öôë“““¦—è	M‚Z­‚Ê±HK£Ñ˜šš\Zö\0gHSœUí	ÓËå²_ÑæææJ¥Rˆ«X¦_ˆ£©\0ÎpÌZ,M˜N¿©×ë“““íy,Ò^€ŒÑT\0gI{Ât¬ô³jµZ(L¿ĞMp6LOO‹EŸ­\"ÚÓ¯†?ıÖÀii*€Õh4ÊåòÄÄDÚ+İ	ßº333íé×kµZÚ«Ğ¿4ÀZZZr<JÖ-,,”ËeÓ¯lFSì¦3H–——ÛÓ¯‡¾š››K{u\0úˆ¦ØáĞÓoù3xjµÚØØXˆ«ééißá\0‰¦è¹ö„éáp3íT¯×\'&&L¿h*€Ş\n—ù|~~~>í³¡Ùl¶§_ßöá‚3YÃISôÌÌÌŒ	ÓN‹‹‹•JeÏ=ãããæ±\0†¦èf³Y.—ÃÑ¤ÿ§g˜µ§_3İ%0<4À™2a:¬177×~}jjÊ;·ÀÀÓT\0gdvv6ÕââbÚ+}\'ÔÔääd(«ĞW~É`š\n ŞşıûK¥’é¤akµZ­X,ær¹™™?/ÀàÑT\01Âqa8FM•öŠ@f,--·§_w.l`h*€®-..š0â´§_Ïår…BÁôëÀ`ĞT\0İ™™™	Ç‚f‹†3´°°P©TFGG\'\'\'ı@™¦©\0¶«Ùl·øŸuè•ååå©©©öôësssi¯@M°-õz½P(ÌÌÌ¤½\"0˜BP…¬\nquö§_o6›³³³í)gŠ?V&\\S­VÍœ–¦8½ùùù|>oÂtØiõz½=ız¥RYXXØé‡):jätÂÿÌÌŒ7¨Íh*€ÓØ¿±X44œMÕjµP(´§_ß‰˜™ŸŸË?mM­6::\Z\Z¬çk\0M°©ĞQ¥RÉ„é–ÎôëáÏ^M¿\n­R©¬\'êÏÿü£\\uİõ_ïŒ}ìãûöí[sK§¤ÖÓT\0[\\\\,\nş[\ZR\Zfff&—Ë‹ÅZ­v&‹Z^^^óöÔ‡?ü§÷:tlåøfã±ÇŸøÇÏ}.tİê7¬|XMSl ·…/§%…¾2??_.—CŞLNNn6uÄŞ½{ßùÎwnøVR½^9ÔI£±±±­kjMY}ìcïÜw×®]gá×½€¬ĞTô…f³aÃ²X,®Şá\r›ğÜÃW T*U«UŸ-IK{Âôğİè÷Ñ¡?µ§_e~N×L¿^9Û/§oyË[Ö¼Š†ŸèÕïP}òòË·YS«Ç•Wş¿PSWlSmšŠô…=bØ3…]ã•W^yİõ×·ş×pe8Gxîá+pàÀË.»,|MBY¥½q†N8B\nYkÂtÈ„Z­Ö~}zzº]PŸùÌgÚÁó3?ó3_|ñê‡½L\'¨¸*\"¨ÚãÖÛîŞ½»½œğr‘ÒSú‹¦\"MaX©TöíÛ÷Àƒ[9f¬=şX(«ğÅñÿ gM{ÂtŸçl©×ëíé×Ï;ï¼N8½á\roøÔ§>Õ¾Íììì¾Cµz\\ıÕk:K9—îÓú¦\"5!¨Âñë¯øÂ±•£Æfãê¯^}á…†#†´7×àFÅbQÁBF5›Í_ÿõ__óê7¾ñíÿ%	»›ö5cccgTíÑùİªĞr>\'h*RS©TZAõœ±õ¸îúk/ºè×ÒŞ\\ƒ,ä}¹\\˜˜H{E€xùÈG:oO½úÕ¯~éK_úæ7¿ù¼óÎ5U«ÕÚÿ´k×®|¨\'Mõôá#™\0½z\0šŠtÌÍÍíÛwñÊñ¦±ñçıÈå—\"í6˜–––\n…ÂÎÎ¤nrr²óöT±X|ßûŞ·oß¾=]tÑ/şâ/¶¯ÿğ‡ÿ´\'AÕ_¼âŠöbwïŞö³R¦©HA³Ù}ğ¡úÊñgíŒÃG~´wï/›×»çL˜ïÀÖêÕ›Tqşù£í%ÏÏÏ§ıD4i*RP­V+•ÊÊñg:ã]c¿µÁÌâY}¯¡\Z—_ş7“““ioº211Q.—ÍYƒ-ìq:o^õ6¨ÂøÀ>Ø^¸×gršŠ”J¥W}éù ºxß“äû\'’{W’oMî8šÜzøøôU_ÿÚCOİ|,ùßfrs3¹á™äÚç’¸á®Œ0õ¼IeÜvp!ŸÏ§½éÒÔ%²\'	Ô0İl]0ÆÇÇ{5İßúqİõ_o/¼P(¤ıD4i*RËåî¾ûö•ãGÚ#ì\'É‘“ÉSÇ“\'%Ï$ÉŸıÅÇG^ø³…‹K­$Mx.©7“û\'_şæ­·ªá8|ä‰]»v¥½éRRê¢‹.úâW„:Ã¬ZX8U§>¨Cbll¬=Wõš7Õ}‡µ>::šöÒ¤©úH³Ùœİ¿©T*şDØ„kjµÚ }Bi÷îİ?ñĞÊñÃíöFÏœH8õOÇOúó+×üçyo~Ë_~òï\'ÉÓÇ“§V’\'W’ğü¯½åÎVSÎ{º.-í ºõ¶ƒÇZgÛ<“¬š™™1a:•Î,êí×ÎGÓÓ~¢@š¼ô…R¡víÚj*ÔW]wı×Ûãê¯^ó±}¼\\.‡)\nÕj5í•íV=İá¯G\'O<›;ñã„#æÏ|öóŸøÔgxøÔ±ïÊÉäX«µnºí5÷ª1œûìÕAÕqYÕl6ÃÏÑøø¸3ÉÀPéÌx~ß¡C;ÑTå§ıD4y	HÙââb8:)µÏ$ÜpãM—]öğ±¥Vı_gœjªÉcÏ$NV’äØÑ£¹.9gdd×{~ÿ²Õw¼õàíkî;Tc÷Ùëƒ*.«L˜C+—Ëµ›ç[wß½Mµk×.Mx	HÓÔÔT¤ë®ÿzW/ßáh2efú¿Û[]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª1lûìÍ‚ªÛ¬š\rAµ¸¸xÖè7á…¢İ<İîm·3{ü	§¨M•–öÇ&\'\'£_ÇÿñsŸËî¯…´º¨Ñá¯ÏLlzŸê±ç’ëoYzëŞ·¿öu¯åîW}ş_¿ü\\’>š<sôÔoX¸eÍ}‡jUSmTÛÏªö/(Ò¯#]©T*íì	ûÍ7Õ·î¾»½ğ!Ÿ—¢C´ş‚ªı1¤3|)¿áÆ›ÂrêõzÚO¨ka÷süø:£\n!«ZI~t,yøé•›îªï}Û;Şõ¿ùèÑä‘fòh3yâhªê†›oYsß¡\ZÃÓTÛ	ªÓfU¸2üShª³¾ú@™ššjgÏe—ıAÏ›ê“—_Ş^x¹\\Nû‰i\Z–C´¾^yÏ<¨:”!«2÷!À5]T|×Ew~çŞ[ïZZX\\ºñàÒ·ßsÓ‡şëæoó®ûÿçà=ß8øİoÿîÂ÷Üuï>÷OW¼÷Ò÷¦Ş6šjGm?¨¶ÈªÅÅÅøÍCàÌ---u>÷ôá#½mªğbÕ^ø`Ì DŠC´¾255u&ù[?¸ªT*¥ı´ºÓjª\'W}èƒ#Ûğ{ïyÏš;Õ†¦ê6¨6Ìª™™™Œ¾…ì„ÑÑÑöN$ì1{¸ÿíœœ*ğcrƒˆÖWÚÿwŞÛÿ$ãø`8ˆLûÉu¡ÕTOİoª¸ ZU<òÈxKæŞ¼vÎääd»|öîİÛÃ·ª~ç’KÚ‹ÍÜÿl=7à‡hı&ÕNœsğ:ÿüÑDjªİÁnªõAuõW¯¹à‚Üf§”yìñ\'ÂáÑ¯¸bMVùßb`ğ²°{÷îvÿ|òòË{²ç½áÆ›:oR™VäC´~3;;[*•zTíñáÿéôôtÚOq»ZMõ˜Ñíà¦Ú0¨Úg}9ÿüÑõYÕªöÑŒ¬Ú>ò‘¼úÕ¯^ÿ¹ñW¼âo}ë[Û—ÃË™Oª^”:§úOûyéØC´>õvâä·ªÂë{ÚOq»ZMõ¨ÑíÔ¦Ú\"¨ÚÖdÕê ’U@Ç¯üÊ¯¬©©ğJòú×¿ş£ıhø×B¡Ğ¾2ì.7{|;ãéÃG:/AaQ=©	Ğ[ƒyˆÖ‡Ú<Ø¡ j/¼paa!í\'º-­¦zÄèvdS­ªp¼ÒùàõYµ>¨Ú‡M<ø¬‚!W¯××¼Oõ»¿û»•J¥ó¯O\0†™¸â‡—šÎKPxå1¹(Ğ6€‡hı©Z­†—õmªO^~ùäädÚOôyµZm³‰×ZMµlt;²ÕT[|tl6)E¸¦sè³:«Ş~û†AuõW¯Y¿YCèßøÆË^ö²ö‹Ã‡>ô¡|>¿ú—C­~éèö,À7ÜxÓêÿñÉĞGî–¥C´LŸ™™ÙÑ¦ºîú¯‡ƒÈ´ŸèİsÏ=í]ÎË_şò¬ùWM5ğMµõ7@ÛÖ³üm˜U/yÉK¶T²\n†Ph§ıû÷şáşaÈª?¹\\niiiÍÍfggW¿¶ìİ»w³×5oO½÷ÒKW¿ø*`µÌ¢eİØØØv^µÏdÜwèĞùç¦ıD,ìÛ^øÂ¶w</~ñ‹é—~iõ[­¦úa·£s¯5GÕ[Üò´×oÿ–ÛY±¸ÇêêÒÛ¤İÙú ÙŞ´éfÕ6ƒJVÁP	…j*4Uûç}ß¾}\\pÁfÿÏB+äÖê“PVûØÇ¿u÷İëSê?÷¹°´Õ7¯K>ò¬‘™C´¬Û¡YÔW§	‡˜i?Ñç­ù•˜—½ìeïÿûÛŸÁ=qâánGç^«ï¾Ù¢¶¾~³côÕ7[}å†·éÕcuõH{«va‹o€íŸ‡j‹¬:mPÉ*µZ-ÔÔÄÄÄê¹\"Âå—¾ô¥³³³›İ+¼&„\0[=Îj^xáfÿT.—MJ¬—¥C´LÇ—«‡~‡Fx¹‡›Ä÷•\'êvtîµá¢âqÃëÛW®şó´ë°§÷¬×,!+Ûwk!¨¶?æÍÿ÷9çœ³f	/xÁ®¸â_¶¹„¾úX,Ğ+óóóù|>DÎ†¿ºyÚßçLZéU©T¶ùÂ^F²2pöiª³$—Ë­ÿPÁN4UÚOôy¯|å+;»¢RKØ!µ?Ú>rª.ÜşX¿o[ıO]-jûË\\ıçú‡Ûl6\\Ÿ-«ÛuN{«va‹o€ÅÅÅU=şÄi¿¥7œå¯mÃóVm¸„ğ¸ÎÈ	ƒ$üD[zò£İl6kµZˆ«Phk^gFGGÃk×ÌÌŒ÷¦€­eé-ÓvôäTíÑW¿OÕh4Ú;¤“ôGş{¬Î¿¶¢ânGç^ëúdã›­¹Ü¹ãf7^s›ÕË_ÿp›=Êš•Üú±\"¾)nÓ®lı\rl/«¶ªmf• ‚S¯×Cä„øñM@_ÉÌ!ZÖU*•Õ§%İ‰qÃ7]xá…i?Ñûş÷¿¿k×®±±±ÑÑÑÉÉÉ5¿ÍÒª‹t;¶s¯õ·YsMû¯›£¯¹ÍÖ´õB¶ùXİ~ÒÚ İÚú më¬Ú0¨^ğ‚l?«’åååñññğ’²ÅoI¤%3‡hY7==ıáÿé6Uh¶Ë.ûƒ´ŸèóÂn¯Z­nø‰öè¢Ø¬R6k¡Í®Ù¬µ6l¡5¸Ùí·¸¼Åc\rjS%[~tl–U›Ø÷ş¿ÏnxŞªõY%¨``´ç“5533“öº\0l,K‡h™,Ãş`G›jß¾}sssi?ÑmiEÅ÷·?VõÌO]¹Åí7»AçÊÂlÓ»¯¾×úG?íå-«Û¯CÚ›®÷ÖgÕfAÕåo³Ó¯Î*Aƒ¡Ùlv&I_}ê^€~3€‡h}kG§©xúğ‘p ™•]Î©¨8YïvtîÕ¾ğ|Ÿlyã­²áí×/ı½ÖgÒúõÙÎcuûH{ÓíˆõYuÙe°aPµÇú¬Ú·o_øT0HªÕj{’tçB\0úß`¢õ§ıøßßúÓaái?ÅíjEÅıİÎ½Ú¶XÈ7X½u-´Õİ7¼Í6/oñXİ~ÒŞt;e‹¬Úğ<T«³JPÁ€™Íår•JÅl{@Vì!Zj6›£££;q–ªp@yşù£Ú÷´¢â{İÎ½Ú6\\ÈOŠeã¿®¾fıõk.o}Íf÷íö±ºı\n¤½évĞ†YµÅ‰}ÛYµ&¨Î;ï¼/}éKi? Òüü|±X,•Jíó.\0dÅ ¢õ¡Z­öŞK/ò7©’7Õ¡®ÆOúäPçÏŸ~ÛçùlqßÎİW_XßÕ´ş–.³Ç=ícuûEH{Óí¬õYÂi‹ïüoİ}÷šw¨fgg…BµZMû©\0İ	?şí³Ø™$È¢?DëC¿sÉ%\\ÕÃ \n‡•{÷î\rG–i?³.´¢â>£Û1ğM•ts:àÕcõGşšÍf¥RÏÊ¯Â«×ëíóíš$È®Á?Dë7FãÂ/ìÕdíÒî;t(í§ÕVSİkt;†¡©’î³jÃß¡š™™)\n[Ïä¤+ì\'&&r¹œ÷–¬ŠC´~³´´²j³•vT¿sÉ%Wõš´ŸP×4•¦ÚÚö³j‹I)Â•şçúS³ÙlŸrjzzÚ[ÊÀ\0–C´~ööîİ{Ã7ÉGşB˜e1¨’VS<yÑí¦J¶—U§å¯Ñh”J¥ÉÉÉ³¹æÀÖ:§œ2I:00†è­ß„}I8düØÇ>Şí¯<}øÈßúÓí¦ı$\"µšê»F·c¨š*9]VmÚô©©©pËMŒ	ƒªV«µO9åç0ÃuˆÖošÍfhª.È…FêL_¶õøâW„ÛøÃ\Z(Ó^ıx­¦Z2ºÃÖTÉæYÕíy¨æççóùüÂÂÂ®-°™öÏ`¹\\ö[À@\ZºC´>´¼¼<11±{÷îß¹ä’Lë\'×\\yåÿ{ï¥—†Û\\vÙÀ©ÕTß1ºCØTÉFYwbßğƒV(¦§§wh=\r…Õb‹“qlÑúS³Ùœ­T*{÷î]sò¥pMªZ­60=ßµk×³ÏŞ~òä·®Æp6UòÓYTåry`~” ŸÕëõR©”Ïçr\nxCzˆFºFGGï¿ÿk\'OŞmt5†¶©’ŸdÕ}‡ùÿv×jµB¡°´´Ô«uÖX^^/õ&Ş†Äğ¢‘¢±±±ÿ˜›9™|ËØşøÎÒWr¹\\Ú›.M!¥Â!ZO>>‚*ŸÏ‡¸:óE«5\Zö$é333i¯ÀÙ£©HÁÔÔÔääûS¯”l©~²R©¤½éG³Ù,—ËãããÎ=~”:“¤û±†¦\"õz=—{Ó³Í[O&wÛ¥Ò»}Š¦çfffŠÅâ\0ÌûéªV«íIÒı²\"0œ4éØÊøÉäNc;ãßkW.¥½ÑÓÂÂB>ŸŸ››K{E “fggs¹\\¥RqÊ)`˜i*ÒÑl6‹Åw,,ü[’Üal=–—¯ÏåŞÔhÜöFXFcll,T~Ú+Y2??_,K¥’_\04©iÍpÁÒÒl’,\Z›T!>çç¿öæ\Z|¡©Â¢O.Ái-..†”\n?/&IhÓT¤©õ±«¦¦ş$In7ÖÙÙOçr£óóÿœö†\Zá\01—Ë…oË´WúT½^¯T*ù|Ş¯w¬¦©HY³Ùœœ¬‹o¯VÿzyùÚ$9h4\Zÿ]«ım¹¼¯T*†Ëio¢á²¼¼\\,M\rk4\Z‰‰‰\\.W­VÓ^€¾£©èóóó•ÊoïÙóšFFvï~y¹|qÈª´7Ë\n?>>^.—Í\rIë\'¢}Ê©ééi?\0ÒT\0¨Õjù|Ş/ß3ä:§œò«†\0[ĞT\0AU(B\\¥½\"‚ğß>å”IÒNKSlªÑh”ËåpXé#Oùùù|>¾ó`›4ÀiLOO‹Eÿ[ÏÀ[\\\\,¶„i¯@–h*€Ó[XXÈårÎÆÃ ª×ë¥R)ŸÏû&ˆ ©\0¶¥Ñh‹Åıû÷§½\"ĞKËËËããã£££N9MSt!4ÕØØ˜9Ğ\0áÛ¸=Iº²œ!MĞ¹¹¹|>ïNÈ®f³Ù™$İü+\0gNSt­^¯\nÿ»OU«Õö$éŞnèM£ÙlW*ÿÍOVÌÎÎær¹ğMkK€ŞÒT\0ñªÕj¡PXZZJ{E`+óóóÅb±T*ù^Ø	š\nàŒ,..†¬2g\Zı)|†”\nAe’t€£©\0ÎT£Ñ‡­i¯<¯^¯W*•|>/øvš¦èéééB¡à7UH]ˆüPø¹\\®Z­¦½.\0CASôÌÂÂB>Ÿ÷!+ÒÒl6Û§œ\n…oö€³FSôÒòòr±XœššJ{E:SN™$à,ÓT\0½799Y*•ÚrvÔjµö)§|ô š\n`GÌÎÎ\n…ÅÅÅ´W„A6??ŸÏçËår½^O{]\0†—¦Ø)KKK!«ÌÀN¹^lÑí\0©ÓT\0;¨ÙlV*•ññqĞ+õz½T*™\r h*€733S(|:‹3´¼¼ú|ttÔ)§\0úŠ¦8}•hF£=Izèó´×€µ4ÀY‹K¥ÒäädÚ+B–4›ÍÎ$é>A\nĞŸ4ÀY555U,ÍyÍvT«Õö$éæåègš\nàlkÏ½°°öŠĞ¿fggs¹\\¥R‘ß\0ıOS¤ (\n…ééé´W„¾’»X,–J¥¥¥¥´×€mÑT\0©™˜˜(—Ë>ÖEÛââbH©T&IÈM¦Z­V(¼#1äêõz¥R13$@Fi*€”… \nÓ!®Ò^RĞh4&&&r¹\\µZM{]\0ˆ¤©\0Ò×l6Ëåòøø¸É²‡GØÖíSNMOOÛî\0™¦©\0úÅÌÌL±X¬×ëi¯;®sÊ)¿M0\04@YXXÈçósssi¯;¥V«µO9e’t€¡©\0úK£ÑÛ¿Ú+BµÏKV.—½	0`4@?\nMU,}0l0,..[Â…´×€ŞÓT\0}j~~>—Ë-,,¤½\"Ä«×ë¥R)ŸÏ;åÀ\0ÓT\0ıkyy¹X,ÎÌÌ¤½\"t-l»ñññÑÑQ§œxš\n ¯5›Íph^.—M·F£=Iºš\n jµZ>Ÿ_ZZJ{EØJèŞÎ$é\Z`xh*€lAU(B\\¥½\"l¬Z­¶\'I7³À°ÑT\0™ÖËår8j÷H_™Íår•JÅ)§\0†“¦È˜éééb±èğ½ÌÏÏ‡mQ*•|,`˜i*€ìYXXÈår¦çNÑââbH©T¶\0š\n “\ZF8 ß¿Ú+2têõz¥RÉçó&I MSdXhª±±1“\"œáë<11‘ËåªÕjÚë@ÑT\0Ù677—ÏçÓ^‘AÖl6Û§œš6A\0kh*€Ì«×ë…BaÍfÿê¯şÊûW=Ñ9å”¯\'\0ÒT\0ƒ ÙlW*•ö»(ËËËçœsN¹\\N{½²­V«µO9e–E\0¶ ©\0GµZ-\nKKK—^zéÈÈÈ«^õ*o­Ä™ŸŸÏçó!JëõzÚë@¿ÓT\0åšk®yùË_>Òòú×¿şÿøÓ^£ŒY\\\\,¶ø5\0¶ISO}êS#?í\roxƒ6Ø¦z½^*•òù¼SNĞM08Şıîw¿â¯XİT/~ñ‹ßşö·§½^ınyyy|||ttÔ)§\0ˆ ©\0G£Ñ¨T*{öìÉår]tÑùçŸÿ¢½èÜsÏu>¥Í„¯X{’ô5³&Àöi*€AS¯×çççC*„¾zç;ß922òº×½.í•ê;Íf³3IºSNp&4Àà›œœ,•Ji¯E©V«íIÒÍ‹À™ÓT\0¢ÙlÖjµr¹\\,C0Œ«ğÜÃW 4d\'ÉÀY ©\0ÁÜÜ\\h‰TW^yåu×_ß¡CÇVV†s„ç¾¸ì²ËÂ×Äï’°Ó4@¶µç¥Ø·oß>plå˜±z<öøc¡¬Âgyy9í\rÀÀÒT\0‚*ŸÏñŠ/[9jl6®şêÕ^xa½^O{s0˜4@†U*•VP=gl=®»şÚ‹.úµ´7\0ƒISdÕÜÜÜ¾}¯o\ZÛşÑ\\~ù\'ÒŞh\0 MIÍfsttôÁ‡ê+ÇŸ5¶3ùÑŞ½¿¼´´”ö¦`Ğh*€LªV«•Jeåø3ñ®±ßÚælã«ï5TãòËÿfrr2íMÀ ÑT\0™T*•\\õ¥çƒêâ}?L’ïŸHî]I¾}4¹ãhrëáãÓW}ık=uó±ä›ÉÍÍä†g’kŸKşá†»>0şÁÔó&•qÛÁ…|>Ÿö¦`Ğh*€LÊårwß}ûÊñ#í122r8IœL:<y,y&Işì/>>òÂŸ-\\\\zh%yàhòÀsI½™Üw<ùò7ïh½UudÇá#OìÚµ+íMÀ ÑT\0™´{÷îÇŸxhåøáö™ôÌ‰äè‰Sÿtüä©?¿rÍ÷æ·üå\'ÿşx’<}<yj%yr%i$Éµ·ÜÙjªÃÃ9ÂsOwÃ0xìZ\02©ÕEOwFøë‘ãÉÏ&ÇNüøFã3Ÿıü\'>õÙ>uºÛ•“É±VkİtÛkî;TCSĞsv-\0™Ôê¢ÿëŒSMu\"yì™ä‘ÃÉJ’;z4wÁ##çŒŒìzÏï_¶ú·¼}Í}‡jh*\0zÎ® “Z]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª¡©\0è9»€LjuQ£3Â_Ÿ=™<Ù<õ>ÕcÏ%×ß²ôÖ½oíë^ÿÊİ¯úü¿~ù¹$9|4yæè©;Ş°pËšûÕĞT\0ôœ]@&…68~üGÑN…UO­$?:–<üôÊMwÕ÷¾íïúß|ôhòH3y´™<q4	UuÃÍ·¬¹ïP\rM@ÏÙµ\0dÒš.*¾ë¢;¿sï­w--,.İxpéÆÛï¹éÎCÿuó·¿y×ıÿsğoüî·wá{îº÷Ÿû§+Ş{é{SoMÀÀ°kÈ¤VS=¹z|èCÙ†ß{Ï{ÖÜq¨†¦ çìZ\02©ÕTOİM@ÏÙµ\0dÒ©¦:ñ¸ÑíĞT\0ôœ]@&µšê1£Û¡©\0è9»€Lj5Õ£F·CSĞsv-\0™ÔjªGŒn‡¦ çìZ\02©ÕTËF·CSĞsv-\0™¤©4\0}Â® “ZMõÃë—¼Ùcu®ßze¶÷{R«4íMÀ ±kÈ¤Ğ\'N<¼CcõÂ×?Pçšõ:İÚ6—³CO-íMÀ ±kÈ¤V~<Ôó±e=›õVßlëuÛğî›]Ø‰\'˜ö¦`ĞØµ\0dR«:ìùØl±«¯ï\\n_8íšlxƒU\r¶vÛYæ™<Á´7\0ƒÆ® “ZÕñ@ÏÇf‹]}}çòO¢hƒ;nù~×ÆËéüë=µÎc¥½é\04v-\0™Ô\nô|l¶Ø\r¯_såê¿vuyõ…z^«4íMÀ ±kÈ¤kªÍß_êñr:]Wš\n€±kÈ¤V~|?•±e/=›­/¯¾ıú;ºòio:\0]@&Ê“õ«bÃËíkşÚ¹¼iwm²œ5KØ¹\'•ö¦`ĞØµ\0dR+?îïùh/¶³ğÕ²şÊíÜx;—;ËÙpQ=‚io:\0]@&µªã{=íÅ®Yøš+×\\Xı†ËÜâúŸÔÔéÕ“\'˜ö¦`ĞØµ\0dR«:õv¬^æºìm|ıFíÛj±k–³ÅãöüÙu–Ÿö¦`ĞØµ\0dR«:î3ºš\n€³kÈ¤VSİkt;4\0=g×IšJSĞ\'ìZ\02)´ÁÉ“÷İM@ÏÙµ\0dR«©¾kt;4\0=g×I­¦Z2ºš\n€³kÈ¤VS}Çèvh*\0zÎ® “víÚõì³·Ÿ<ùm£«¡©\0è9»€L\Z½ÿş¯<y·ÑÕĞT\0ôœ]@&ıÇÜÌÉä[ÆöÇw–¾’ËåÒŞt\0\ZMISSS““ïO½R²5ş¥úÉJ¥’ö¦`Ğh*€Lª×ë¹Ü›mŞz2¹ËØæ(•Ş=;;›ö¦`Ğh*€¬ÚÊøÉäNc;ãßkW.¥½Ñ\0@š\n «šÍf±ø……K’;Œ­Çòòõ¹Ü›\ZÒŞh\0 MaKKKùüKK³I²hl6BP…øœŸÿBÚ›€Á¤©\0²maa!dÕÔÔŸ$ÉíÆú1;ûé\\nt~şŸÓŞP\0,MyÍfsr²R,¾½Zıëååk“ä Ñhüw­ö·åò¾R©.§½‰\0dš\n`@ÌÏÏW*¿½gÏkFÙ½ûååòÅ!«ÒŞ,\0>M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄûÿµS!6Keã\0\0\0\0IEND®B`‚',0),('103',1,'qjlc.bpmn','101','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"qjlc\" name=\"è¯·å‡æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤è¯·å‡ç”³è¯·\" activiti:assignee=\"å¼ ä¸‰\"></userTask>\n    <userTask id=\"usertask2\" name=\"é¡¹ç›®ç»ç†å®¡æ‰¹\" activiti:assignee=\"æå››\"></userTask>\n    <userTask id=\"usertask3\" name=\"æ€»ç›‘å®¡æ‰¹\" activiti:assignee=\"ç‹äº”\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts<3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts>=3}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow8\" sourceRef=\"usertask3\" targetRef=\"endevent2\"></sequenceFlow>\n    <sequenceFlow id=\"flow9\" sourceRef=\"usertask2\" targetRef=\"endevent2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_qjlc\">\n    <bpmndi:BPMNPlane bpmnElement=\"qjlc\" id=\"BPMNPlane_qjlc\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"120.0\" y=\"231.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"210.0\" y=\"221.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"110.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"330.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"380.0\" y=\"228.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"760.0\" y=\"215.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"155.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"210.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"315.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"380.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"400.0\" y=\"228.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"400.0\" y=\"268.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"250.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow9\" id=\"BPMNEdge_flow9\">\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"215.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('110',1,'qjlc.png','109','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0q\0\0g\0\0\0ŸÕXª\0\08ºIDATxœíİ{ŒcgaøïpYÔË5KŠš¡ü«…®HqQÕªf§RÛX-\".¤–ha$Z:ªPµ…­\né¨¢0ê¢¡…Ôj•oĞF#Ò)Iè´$ašËf’’,1äÂäŠÓì&Îîìîù½kƒ3ÌmÇïzöøØÏ£W+¯×>>3ãs>kÏ{F\0\0\0b¤½\0\0\0¦©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0D³Ù¬Õjår¹X,«ğÜÃW T*U«ÕF£‘öf`ği*€A077Z\"Õ•W^yİõ×ßwèĞ±••áá¹‡¯À.»ì²ğ5	e•öÆ`Ài*€lk4\Z•Jeß¾}<øÀ±•cÆêñØã…²\n_œååå´7\0KSdXª|>ÿÅ+¾plå¨±Ù¸ú«W_xá…õz=íÍÀ`ÒT\0V©TZAõœ±õ¸îúk/ºè×ÒŞ\\\0&MUsssûö]¼r¼ilgüùG?rùåŸH{£0€4@&5›ÍÑÑÑª¯ÖØÎ8|äG{÷şòÒÒRÚ›€A£©\02©Z­V*••ãÏtÆ»Æ~k›³¯¾×PË/ÿ›ÉÉÉ´7\0ƒFSdR©T:pÕ—ª‹÷ı0I¾\"¹w%ùöÑä£É­‡O_õõ¯=ôÔÍÇ’ÿm&77“I®}.ù‡îúÀøSÏ›TÆmòù|Ú›€A£©\02)—Ëİ}÷í+Ç´ÇÈÈÈá$9r2yêxòä±ä™$ù³¿øøÈ¶pqé¡•ä£ÉÏ%õfrßñäËß¼£õVÕ‘!‡<±k×®´7\0ƒFSdÒîİ»â¡•ã‡Û#dÒ3\'’£\'NıÓñ“§şüÊ5ÿyŞ›ßò—ŸüûãIòôñä©•äÉ•¤‘$×Şrg«©çÏ=İ\rÀà±kÈ¤V=İá¯G\'O<›;ñã4\ZÏ|öóŸøÔgxøÔénWN&ÇZ­uÓmw¬¹ïP\rM@ÏÙµ\0dR«‹ş¯3N5Õ‰ä±g’G\'+IrìèÑÜŒŒœ32²ë=¿Ùê;Şzğö5÷ª¡©\0è9»€LjuÑSÑşìßÏ&?<ú\\rëİß;÷ÜsÏyÑK^öÊ×–ß÷SMuËm×Üw¨†¦ çìZ\02©ÕEÎ}ödòdóÔûT=—\\ËÒ[÷¾ıµ¯{ı+w¿êóÿúåç’äğÑä™£§îxÃÂ-kî;TCSĞsv-\0™ÚàøñuF;BV=µ’üèXòğÓ+7İUßû¶w¼ë7~óÑ£É#ÍäÑfòÄÑ$TÕ\r7ß²æ¾C54\0=g×Ikº¨ø®‹îüÎ½·Şµ´°¸tãÁ¥o¿ç¦;ı×Íßşæ]÷ÿÏÁ{¾qğ»7Şşİ…;î¹ëŞ|îŸ®xï¥ïM½m4\0Ã® “ZMõäêñ¡}pd~ï=ïYsÇ¡\Zš\n€³kÈ¤VS=at;4\0=g×I§šêÄãF·CSĞsv-\0™ÔjªÇŒn‡¦ çìZ\02©ÕT\ZİM@ÏÙµ\0dR«©1ºš\n€³kÈ¤VS-İM@ÏÙµ\0d’¦ÒT\0ô	»€Lj5ÕãÆ†ç­êv	½}¬ÍØ¹~ı…èçö¦`ĞØµ\0dRhƒ\'ŞşèôÌš+7»ÙzŞqÃÛ¬şëê+W_ØâÖ,j³qCSĞsv-\0™ÔJ‹‡º\Zkî²á6[ìêë·sÇÎ_7»°õúŸöî§]ÂKN{Ó0hìZ\02©Uv5:wÙä}¡ŸºÍ÷]Ëõ÷ÚÎcmxû5Wvn¿õ\ntõEH{Ó0hìZ\02©Ut5:wYßÕÿ´ù‡ñ~êkî»f™ëkÃ[?Öf7Şğ)lÿ‹ö¦`ĞØµ\0dR+*~ĞÕèÜe;6»ï·_}åOâg»uÚËkŞís_½À´7\0ƒÆ® “Rlª-n¼Y­{jÓZ“L[´™¦ OØµ\0dR+-¾ßÕèÜeë›wÎÚ¬¿ıúÇÚæ5^^ó¸›-§Û/BÚ›€Ac×I§Òâd½«ñãDi]è\\³Ù…õ÷İzÉ›]³qmşO«oĞÕ\Znÿ‹ö¦`ĞØµ\0dR+-îßşXûö5k®ßl±ëo¶úš\r~Ú%o¶„\r/wÖvÍ5İM@ÏÙµ\0dR«(¾=Vß}ÍåÍß;zş[,m›·Ùæ¿®ÜÕ×Ä=ñ´7\0ƒÆ® “ZEq(bü$NÖ^¹æÂf7X¿¨uéušl¶¨­Wuõ\r¶XÎv~Ú›€Ac×I­¢¸Ïèvh*\0zÎ® “ZMu¯ÑíĞT\0ôœ]@&i*M@Ÿ°kÈ¤Ğ\'OŞct;4\0=g×I­¦ú®ÑíĞT\0ôœ]@&µšjÉèvh*\0zÎ® “ZMõ£Û¡©\0è9»€LÚµk×³ÏŞ~òä·®†¦ çìZ\02ittôşû¿vòäİFWCSĞsv-\0™466ös3\'“oÛßYúJ.—K{Ó0h4@&MMMMN¾?õJÉÖø—ê\'+•JÚ›€A£©\02©^¯çroz¶yëÉä.c›£Tz÷ììlÈªP¤ËËËioC\0„¦Èªı§ŒŸLî4¶3ş½öwåòXÒÊÑÉÉÉ={ö”Ëåùùù´7#\0™§©\0²ªÙl‹ïXXø·$¹ÃØz,/_ŸË½©Ñ¸aõ°V«‹Å\\.733Óh4ÒÚ\0d¦È°¥¥¥|ş‚¥¥Ù$Y46!¨B|ÎÏa³¯áøøø={ÂŸáòYŞ‚\0\0Mm!«¦¦ş$In7ÖÙÙOçr£óóÿ¼õ—±ÙlÎÌÌär¹B¡P­VÏÊ¦`@h*€Ì=09Y)ß^­şõòòµIrĞh4ş»VûÛry_©T—·ÿÅZ©TöìÙ399Y¯×wl£084À€˜ŸŸ¯T~{Ï×Œ02²{÷ËËå‹CVÅ}1———§¦¦FGGÇÆÆæææz»¥\00š\n`(xË%NªU!®L¿Àf4À\0\n5==}É%—äóù7¾ñï~÷»Ã…´W*ÃÚÓ¯‡²ªT*i¯\0ıESååå_ıÕ_]ó)¸_ø…_øùŸÿys…Ÿ¹f³Y­V…B.—Â_Ó^#\0ú‚¦ÓÓÓ/zÑ‹VÕÏıÜÏíŞ½ÛÑo---µç±0ı:\0‰¦$¡Â±şk_ûÚvP…¾zÛÛŞ6;;›öz\r¦F£Ñ~}ll¬V«¥½:\0¤FSš¥¥¥×¼æÔì—^zi8ÜO{ußÜÜ\\¹\\nO¿n€!¤©\0J³Ùç;ßù’—¼$—ËùdÚYÓ~=”Uè+Ó¯M08Âa}±Xœ™™	eõâ¿8\\N{†Q­VkO¿6„©A\0†¦óóóù|¾3Ó÷øøøââbº«4ÌêõzØ{öì©T*6À`ÓT\0ƒ`zzºX,úe~Ó~=´n¡P0ı:À ÒT\0ÙÖh4ÊåòÄÄDÚ+ÂVÚÓ¯ONNÖëõ´W€^ÒT\0¶´´T(Lä!€§¦¦FGGM¿0H4@V…ƒòTföË¢öôë!®BbùÄ&@Öi*€Lš˜˜å¦•Ë´z½>99Ù~½3¹\0™£©\02¦=aúôôtÚ+BÏ´ßrÌår¦_È\"M%ù|~~~>í¡÷–––ÆÇÇGGGÃŸ>Ò	!š\n 3fffL˜>ğ\ZFØĞ¹\\®=ızÚ«Àéi*€h6›åry||Ü	†‡é×²BSô;¦³åååöôë¥Rinn.íÕ`š\n ¯ÍÎÎ† Z\\\\L{EHYøNkO¿n€¾¢©\0ú×şıûK¥’h::Ó¯W*Ó¯ô	MĞBG‹ÅĞTi¯ı¨ÙlV«ÕB¡ÏçÃ¿e.MĞwM˜Îv„o•ö<¦_H‘¦è/333…BÁ<ol_gúõ±±1s™\0œ}š\n _4›Íñå\"ÎÜÜ\\¹\\Ş³gÏşıûÇà¬ÑT\0}¡^¯\n…™™™´W„Ì5š*”Uè+Ó¯œš\n }óóóù|Ş„éôV­VËår¡ÕÍ	°s4@Êöïß_,ò²C–––ÆÇÇÛÓ¯›Ç`\'h*€Ô„*•J&Lç,hO¿Ëå\n…‚é×zKS¤cqq1İÎÎÎ¦½\"—………öôë“““¦—è	M‚Z­‚Ê±HK£Ñ˜šš\Zö\0gHSœUí	ÓËå²_ÑæææJ¥Rˆ«X¦_ˆ£©\0ÎpÌZ,M˜N¿©×ë“““íy,Ò^€ŒÑT\0gI{Ât¬ô³jµZ(L¿ĞMp6LOO‹EŸ­\"ÚÓ¯†?ıÖÀii*€Õh4ÊåòÄÄDÚ+İ	ßº333íé×kµZÚ«Ğ¿4ÀZZZr<JÖ-,,”ËeÓ¯lFSì¦3H–——ÛÓ¯‡¾š››K{u\0úˆ¦ØáĞÓoù3xjµÚØØXˆ«ééißá\0‰¦è¹ö„éáp3íT¯×\'&&L¿h*€Ş\n—ù|~~~>í³¡Ùl¶§_ßöá‚3YÃISôÌÌÌŒ	ÓN‹‹‹•JeÏ=ãããæ±\0†¦èf³Y.—ÃÑ¤ÿ§g˜µ§_3İ%0<4À™2a:¬177×~}jjÊ;·ÀÀÓT\0gdvv6ÕââbÚ+}\'ÔÔääd(«ĞW~É`š\n ŞşıûK¥’é¤akµZ­X,ær¹™™?/ÀàÑT\01Âqa8FM•öŠ@f,--·§_w.l`h*€®-..š0â´§_Ïår…BÁôëÀ`ĞT\0İ™™™	Ç‚f‹†3´°°P©TFGG\'\'\'ı@™¦©\0¶«Ùl·øŸuè•ååå©©©öôësssi¯@M°-õz½P(ÌÌÌ¤½\"0˜BP…¬\nquö§_o6›³³³í)gŠ?V&\\S­VÍœ–¦8½ùùù|>oÂtØiõz½=ız¥RYXXØé‡):jätÂÿÌÌŒ7¨Íh*€ÓØ¿±X44œMÕjµP(´§_ß‰˜™ŸŸË?mM­6::\Z\Z¬çk\0M°©ĞQ¥RÉ„é–ÎôëáÏ^M¿\n­R©¬\'êÏÿü£\\uİõ_ïŒ}ìãûöí[sK§¤ÖÓT\0[\\\\,\nş[\ZR\Zfff&—Ë‹ÅZ­v&‹Z^^^óöÔ‡?ü§÷:tlåøfã±ÇŸøÇÏ}.tİê7¬|XMSl ·…/§%…¾2??_.—CŞLNNn6uÄŞ½{ßùÎwnøVR½^9ÔI£±±±­kjMY}ìcïÜw×®]gá×½€¬ĞTô…f³aÃ²X,®Şá\r›ğÜÃW T*U«UŸ-IK{Âôğİè÷Ñ¡?µ§_e~N×L¿^9Û/§oyË[Ö¼Š†ŸèÕïP}òòË·YS«Ç•Wş¿PSWlSmšŠô…=bØ3…]ã•W^yİõ×·ş×pe8Gxîá+pàÀË.»,|MBY¥½q†N8B\nYkÂtÈ„Z­Ö~}zzº]PŸùÌgÚÁó3?ó3_|ñê‡½L\'¨¸*\"¨ÚãÖÛîŞ½»½œğr‘ÒSú‹¦\"MaX©TöíÛ÷Àƒ[9f¬=şX(«ğÅñÿ gM{ÂtŸçl©×ëíé×Ï;ï¼N8½á\roøÔ§>Õ¾Íììì¾Cµz\\ıÕk:K9—îÓú¦\"5!¨Âñë¯øÂ±•£Æfãê¯^}á…†#†´7×àFÅbQÁBF5›Í_ÿõ__óê7¾ñíÿ%	»›ö5cccgTíÑùİªĞr>\'h*RS©TZAõœ±õ¸îúk/ºè×ÒŞ\\ƒ,ä}¹\\˜˜H{E€xùÈG:oO½úÕ¯~éK_úæ7¿ù¼óÎ5U«ÕÚÿ´k×®|¨\'Mõôá#™\0½z\0šŠtÌÍÍíÛwñÊñ¦±ñçıÈå—\"í6˜–––\n…ÂÎÎ¤nrr²óöT±X|ßûŞ·oß¾=]tÑ/şâ/¶¯ÿğ‡ÿ´\'AÕ_¼âŠöbwïŞö³R¦©HA³Ù}ğ¡úÊñgíŒÃG~´wï/›×»çL˜ïÀÖêÕ›Tqşù£í%ÏÏÏ§ıD4i*RP­V+•ÊÊñg:ã]c¿µÁÌâY}¯¡\Z—_ş7“““ioº211Q.—ÍYƒ-ìq:o^õ6¨ÂøÀ>Ø^¸×gršŠ”J¥W}éù ºxß“äû\'’{W’oMî8šÜzøøôU_ÿÚCOİ|,ùßfrs3¹á™äÚç’¸á®Œ0õ¼IeÜvp!ŸÏ§½éÒÔ%²\'	Ô0İl]0ÆÇÇ{5İßúqİõ_o/¼P(¤ıD4i*RËåî¾ûö•ãGÚ#ì\'É‘“ÉSÇ“\'%Ï$ÉŸıÅÇG^ø³…‹K­$Mx.©7“û\'_şæ­·ªá8|ä‰]»v¥½éRRê¢‹.úâW„:Ã¬ZX8U§>¨Cbll¬=Wõš7Õ}‡µ>::šöÒ¤©úH³Ùœİ¿©T*şDØ„kjµÚ }Bi÷îİ?ñĞÊñÃíöFÏœH8õOÇOúó+×üçyo~Ë_~òï\'ÉÓÇ“§V’\'W’ğü¯½åÎVSÎ{º.-í ºõ¶ƒÇZgÛ<“¬š™™1a:•Î,êí×ÎGÓÓ~¢@š¼ô…R¡víÚj*ÔW]wı×Ûãê¯^ó±}¼\\.‡)\nÕj5í•íV=İá¯G\'O<›;ñã„#æÏ|öóŸøÔgxøÔ±ïÊÉäX«µnºí5÷ª1œûìÕAÕqYÕl6ÃÏÑøø¸3ÉÀPéÌx~ß¡C;ÑTå§ıD4y	HÙââb8:)µÏ$ÜpãM—]öğ±¥Vı_gœjªÉcÏ$NV’äØÑ£¹.9gdd×{~ÿ²Õw¼õàíkî;Tc÷Ùëƒ*.«L˜C+—Ëµ›ç[wß½Mµk×.Mx	HÓÔÔT¤ë®ÿzW/ßáh2efú¿Û[]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª1lûìÍ‚ªÛ¬š\rAµ¸¸xÖè7á…¢İ<İîm·3{ü	§¨M•–öÇ&\'\'£_ÇÿñsŸËî¯…´º¨Ñá¯ÏLlzŸê±ç’ëoYzëŞ·¿öu¯åîW}ş_¿ü\\’>š<sôÔoX¸eÍ}‡jUSmTÛÏªö/(Ò¯#]©T*íì	ûÍ7Õ·î¾»½ğ!Ÿ—¢C´ş‚ªı1¤3|)¿áÆ›ÂrêõzÚO¨ka÷süø:£\n!«ZI~t,yøé•›îªï}Û;Şõ¿ùèÑä‘fòh3yâhªê†›oYsß¡\ZÃÓTÛ	ªÓfU¸2üShª³¾ú@™ššjgÏe—ıAÏ›ê“—_Ş^x¹\\Nû‰i\Z–C´¾^yÏ<¨:”!«2÷!À5]T|×Ew~çŞ[ïZZX\\ºñàÒ·ßsÓ‡şëæoó®ûÿçà=ß8øİoÿîÂ÷Üuï>÷OW¼÷Ò÷¦Ş6šjGm?¨¶ÈªÅÅÅøÍCàÌ---u>÷ôá#½mªğbÕ^ø`Ì DŠC´¾255u&ù[?¸ªT*¥ı´ºÓjª\'W}èƒ#Ûğ{ïyÏš;Õ†¦ê6¨6Ìª™™™Œ¾…ì„ÑÑÑöN$ì1{¸ÿíœœ*ğcrƒˆÖWÚÿwŞÛÿ$ãø`8ˆLûÉu¡ÕTOİoª¸ ZU<òÈxKæŞ¼vÎääd»|öîİÛÃ·ª~ç’KÚ‹ÍÜÿl=7à‡hı&ÕNœsğ:ÿüÑDjªİÁnªõAuõW¯¹à‚Üf§”yìñ\'ÂáÑ¯¸bMVùßb`ğ²°{÷îvÿ|òòË{²ç½áÆ›:oR™VäC´~3;;[*•zTíñáÿéôôtÚOq»ZMõ˜Ñíà¦Ú0¨Úg}9ÿüÑõYÕªöÑŒ¬Ú>ò‘¼úÕ¯^ÿ¹ñW¼âo}ë[Û—ÃË™Oª^”:§úOûyéØC´>õvâä·ªÂë{ÚOq»ZMõ¨ÑíÔ¦Ú\"¨ÚÖdÕê ’U@Ç¯üÊ¯¬©©ğJòú×¿ş£ıhø×B¡Ğ¾2ì.7{|;ãéÃG:/AaQ=©	Ğ[ƒyˆÖ‡Ú<Ø¡ j/¼paa!í\'º-­¦zÄèvdS­ªp¼ÒùàõYµ>¨Ú‡M<ø¬‚!W¯××¼Oõ»¿û»•J¥ó¯O\0†™¸â‡—šÎKPxå1¹(Ğ6€‡hı©Z­†—õmªO^~ùäädÚOôyµZm³‰×ZMµlt;²ÕT[|tl6)E¸¦sè³:«Ş~û†AuõW¯Y¿YCèßøÆË^ö²ö‹Ã‡>ô¡|>¿ú—C­~éèö,À7ÜxÓêÿñÉĞGî–¥C´LŸ™™ÙÑ¦ºîú¯‡ƒÈ´ŸèİsÏ=í]ÎË_şò¬ùWM5ğMµõ7@ÛÖ³üm˜U/yÉK¶T²\n†Ph§ıû÷şáşaÈª?¹\\niiiÍÍfggW¿¶ìİ»w³×5oO½÷ÒKW¿ø*`µÌ¢eİØØØv^µÏdÜwèĞùç¦ıD,ìÛ^øÂ¶w</~ñ‹é—~iõ[­¦úa·£s¯5GÕ[Üò´×oÿ–ÛY±¸ÇêêÒÛ¤İÙú ÙŞ´éfÕ6ƒJVÁP	…j*4Uûç}ß¾}\\pÁfÿÏB+äÖê“PVûØÇ¿u÷İëSê?÷¹°´Õ7¯K>ò¬‘™C´¬Û¡YÔW§	‡˜i?Ñç­ù•˜—½ìeïÿûÛŸÁ=qâánGç^«ï¾Ù¢¶¾~³côÕ7[}å†·éÕcuõH{«va‹o€íŸ‡j‹¬:mPÉ*µZ-ÔÔÄÄÄê¹\"Âå—¾ô¥³³³›İ+¼&„\0[=Îj^xáfÿT.—MJ¬—¥C´LÇ—«‡~‡Fx¹‡›Ä÷•\'êvtîµá¢âqÃëÛW®şó´ë°§÷¬×,!+Ûwk!¨¶?æÍÿ÷9çœ³f	/xÁ®¸â_¶¹„¾úX,Ğ+óóóù|>DÎ†¿ºyÚßçLZéU©T¶ùÂ^F²2pöiª³$—Ë­ÿPÁN4UÚOôy¯|å+;»¢RKØ!µ?Ú>rª.ÜşX¿o[ıO]-jûË\\ıçú‡Ûl6\\Ÿ-«ÛuN{«va‹o€ÅÅÅU=şÄi¿¥7œå¯mÃóVm¸„ğ¸ÎÈ	ƒ$üD[zò£İl6kµZˆ«Phk^gFGGÃk×ÌÌŒ÷¦€­eé-ÓvôäTíÑW¿OÕh4Ú;¤“ôGş{¬Î¿¶¢ânGç^ëúdã›­¹Ü¹ãf7^s›ÕË_ÿp›=Êš•Üú±\"¾)nÓ®lı\rl/«¶ªmf• ‚S¯×Cä„øñM@_ÉÌ!ZÖU*•Õ§%İ‰qÃ7]xá…i?Ñûş÷¿¿k×®±±±ÑÑÑÉÉÉ5¿ÍÒª‹t;¶s¯õ·YsMû¯›£¯¹ÍÖ´õB¶ùXİ~ÒÚ İÚú më¬Ú0¨^ğ‚l?«’åååñññğ’²ÅoI¤%3‡hY7==ıáÿé6Uh¶Ë.ûƒ´ŸèóÂn¯Z­nø‰öè¢Ø¬R6k¡Í®Ù¬µ6l¡5¸Ùí·¸¼Åc\rjS%[~tl–U›Ø÷ş¿ÏnxŞªõY%¨``´ç“5533“öº\0l,K‡h™,Ãş`G›jß¾}sssi?ÑmiEÅ÷·?VõÌO]¹Åí7»AçÊÂlÓ»¯¾×úG?íå-«Û¯CÚ›®÷ÖgÕfAÕåo³Ó¯Î*Aƒ¡Ùlv&I_}ê^€~3€‡h}kG§©xúğ‘p ™•]Î©¨8YïvtîÕ¾ğ|Ÿlyã­²áí×/ı½ÖgÒúõÙÎcuûH{ÓíˆõYuÙe°aPµÇú¬Ú·o_øT0HªÕj{’tçB\0úß`¢õ§ıøßßúÓaái?ÅíjEÅıİÎ½Ú¶XÈ7X½u-´Õİ7¼Í6/oñXİ~ÒŞt;e‹¬Úğ<T«³JPÁ€™Íår•JÅl{@Vì!Zj6›£££;q–ªp@yşù£Ú÷´¢â{İÎ½Ú6\\ÈOŠeã¿®¾fıõk.o}Íf÷íö±ºı\n¤½évĞ†YµÅ‰}ÛYµ&¨Î;ï¼/}éKi? Òüü|±X,•Jíó.\0dÅ ¢õ¡Z­öŞK/ò7©’7Õ¡®ÆOúäPçÏŸ~ÛçùlqßÎİW_XßÕ´ş–.³Ç=ícuûEH{Óí¬õYÂi‹ïüoİ}÷šw¨fgg…BµZMû©\0İ	?şí³Ø™$È¢?DëC¿sÉ%\\ÕÃ \n‡•{÷î\rG–i?³.´¢â>£Û1ğM•ts:àÕcõGşšÍf¥RÏÊ¯Â«×ëíóíš$È®Á?Dë7FãÂ/ìÕdíÒî;t(í§ÕVSİkt;†¡©’î³jÃß¡š™™)\n[Ïä¤+ì\'&&r¹œ÷–¬ŠC´~³´´²j³•vT¿sÉ%Wõš´ŸP×4•¦ÚÚö³j‹I)Â•şçúS³ÙlŸrjzzÚ[ÊÀ\0–C´~ööîİ{Ã7ÉGşB˜e1¨’VS<yÑí¦J¶—U§å¯Ñh”J¥ÉÉÉ³¹æÀÖ:§œ2I:00†è­ß„}I8düØÇ>Şí¯<}øÈßúÓí¦ı$\"µšê»F·c¨š*9]VmÚô©©©pËMŒ	ƒªV«µO9åç0ÃuˆÖošÍfhª.È…FêL_¶õøâW„ÛøÃ\Z(Ó^ıx­¦Z2ºÃÖTÉæYÕíy¨æççóùüÂÂÂ®-°™öÏ`¹\\ö[À@\ZºC´>´¼¼<11±{÷îß¹ä’Lë\'×\\yåÿ{ï¥—†Û\\vÙÀ©ÕTß1ºCØTÉFYwbßğƒV(¦§§wh=\r…Õb‹“qlÑúS³Ùœ­T*{÷î]sò¥pMªZ­60=ßµk×³ÏŞ~òä·®Æp6UòÓYTåry`~” ŸÕëõR©”Ïçr\nxCzˆFºFGGï¿ÿk\'OŞmt5†¶©’ŸdÕ}‡ùÿv×jµB¡°´´Ô«uÖX^^/õ&Ş†Äğ¢‘¢±±±ÿ˜›9™|ËØşøÎÒWr¹\\Ú›.M!¥Â!ZO>>‚*ŸÏ‡¸:óE«5\Zö$é333i¯ÀÙ£©HÁÔÔÔääûS¯”l©~²R©¤½éG³Ù,—ËãããÎ=~”:“¤û±†¦\"õz=—{Ó³Í[O&wÛ¥Ò»}Š¦çfffŠÅâ\0ÌûéªV«íIÒı²\"0œ4éØÊøÉäNc;ãßkW.¥½ÑÓÂÂB>ŸŸ››K{E “fggs¹\\¥RqÊ)`˜i*ÒÑl6‹Åw,,ü[’Üal=–—¯ÏåŞÔhÜöFXFcll,T~Ú+Y2??_,K¥’_\04©iÍpÁÒÒl’,\Z›T!>çç¿öæ\Z|¡©Â¢O.Ái-..†”\n?/&IhÓT¤©õ±«¦¦ş$In7ÖÙÙOçr£óóÿœö†\Zá\01—Ë…oË´WúT½^¯T*ù|Ş¯w¬¦©HY³Ùœœ¬‹o¯VÿzyùÚ$9h4\Zÿ]«ım¹¼¯T*†Ëio¢á²¼¼\\,M\rk4\Z‰‰‰\\.W­VÓ^€¾£©èóóó•ÊoïÙóšFFvï~y¹|qÈª´7Ë\n?>>^.—Í\rIë\'¢}Ê©ééi?\0ÒT\0¨Õjù|Ş/ß3ä:§œò«†\0[ĞT\0AU(B\\¥½\"‚ğß>å”IÒNKSlªÑh”ËåpXé#Oùùù|>¾ó`›4ÀiLOO‹Eÿ[ÏÀ[\\\\,¶„i¯@–h*€Ó[XXÈårÎÆÃ ª×ë¥R)ŸÏû&ˆ ©\0¶¥Ñh‹Åıû÷§½\"ĞKËËËããã£££N9MSt!4ÕØØ˜9Ğ\0áÛ¸=Iº²œ!MĞ¹¹¹|>ïNÈ®f³Ù™$İü+\0gNSt­^¯\nÿ»OU«Õö$éŞnèM£ÙlW*ÿÍOVÌÎÎær¹ğMkK€ŞÒT\0ñªÕj¡PXZZJ{E`+óóóÅb±T*ù^Ø	š\nàŒ,..†¬2g\Zı)|†”\nAe’t€£©\0ÎT£Ñ‡­i¯<¯^¯W*•|>/øvš¦èéééB¡à7UH]ˆüPø¹\\®Z­¦½.\0CASôÌÂÂB>Ÿ÷!+ÒÒl6Û§œ\n…oö€³FSôÒòòr±XœššJ{E:SN™$à,ÓT\0½799Y*•ÚrvÔjµö)§|ô š\n`GÌÎÎ\n…ÅÅÅ´W„A6??ŸÏçËår½^O{]\0†—¦Ø)KKK!«ÌÀN¹^lÑí\0©ÓT\0;¨ÙlV*•ññqĞ+õz½T*™\r h*€733S(|:‹3´¼¼ú|ttÔ)§\0úŠ¦8}•hF£=Izèó´×€µ4ÀY‹K¥ÒäädÚ+B–4›ÍÎ$é>A\nĞŸ4ÀY555U,ÍyÍvT«Õö$éæåègš\nàlkÏ½°°öŠĞ¿fggs¹\\¥R‘ß\0ıOS¤ (\n…ééé´W„¾’»X,–J¥¥¥¥´×€mÑT\0©™˜˜(—Ë>ÖEÛââbH©T&IÈM¦Z­V(¼#1äêõz¥R13$@Fi*€”… \nÓ!®Ò^RĞh4&&&r¹\\µZM{]\0ˆ¤©\0Ò×l6Ëåòøø¸É²‡GØÖíSNMOOÛî\0™¦©\0úÅÌÌL±X¬×ëi¯;®sÊ)¿M0\04@YXXÈçósssi¯;¥V«µO9e’t€¡©\0úK£ÑÛ¿Ú+BµÏKV.—½	0`4@?\nMU,}0l0,..[Â…´×€ŞÓT\0}j~~>—Ë-,,¤½\"Ä«×ë¥R)ŸÏ;åÀ\0ÓT\0ıkyy¹X,ÎÌÌ¤½\"t-l»ñññÑÑQ§œxš\n ¯5›Íph^.—M·F£=Iºš\n jµZ>Ÿ_ZZJ{EØJèŞÎ$é\Z`xh*€lAU(B\\¥½\"l¬Z­¶\'I7³À°ÑT\0™ÖËår8j÷H_™Íår•JÅ)§\0†“¦È˜éééb±èğ½ÌÏÏ‡mQ*•|,`˜i*€ìYXXÈår¦çNÑââbH©T¶\0š\n “\ZF8 ß¿Ú+2têõz¥RÉçó&I MSdXhª±±1“\"œáë<11‘ËåªÕjÚë@ÑT\0Ù677—ÏçÓ^‘AÖl6Û§œš6A\0kh*€Ì«×ë…BaÍfÿê¯şÊûW=Ñ9å”¯\'\0ÒT\0ƒ ÙlW*•ö»(ËËËçœsN¹\\N{½²­V«µO9e–E\0¶ ©\0GµZ-\nKKK—^zéÈÈÈ«^õ*o­Ä™ŸŸÏçó!JëõzÚë@¿ÓT\0åšk®yùË_>Òòú×¿şÿøÓ^£ŒY\\\\,¶ø5\0¶ISO}êS#?í\roxƒ6Ø¦z½^*•òù¼SNĞM08Şıîw¿â¯XİT/~ñ‹ßşö·§½^ınyyy|||ttÔ)§\0ˆ ©\0G£Ñ¨T*{öìÉår]tÑùçŸÿ¢½èÜsÏu>¥Í„¯X{’ô5³&Àöi*€AS¯×çççC*„¾zç;ß922òº×½.í•ê;Íf³3IºSNp&4Àà›œœ,•Ji¯E©V«íIÒÍ‹À™ÓT\0¢ÙlÖjµr¹\\,C0Œ«ğÜÃW 4d\'ÉÀY ©\0ÁÜÜ\\h‰TW^yåu×_ß¡CÇVV†s„ç¾¸ì²ËÂ×Äï’°Ó4@¶µç¥Ø·oß>plå˜±z<öøc¡¬Âgyy9í\rÀÀÒT\0‚*ŸÏñŠ/[9jl6®şêÕ^xa½^O{s0˜4@†U*•VP=gl=®»şÚ‹.úµ´7\0ƒISdÕÜÜÜ¾}¯o\ZÛşÑ\\~ù\'ÒŞh\0 MIÍfsttôÁ‡ê+ÇŸ5¶3ùÑŞ½¿¼´´”ö¦`Ğh*€LªV«•Jeåø3ñ®±ßÚælã«ï5TãòËÿfrr2íMÀ ÑT\0™T*•\\õ¥çƒêâ}?L’ïŸHî]I¾}4¹ãhrëáãÓW}ık=uó±ä›ÉÍÍä†g’kŸKşá†»>0şÁÔó&•qÛÁ…|>Ÿö¦`Ğh*€LÊårwß}ûÊñ#í122r8IœL:<y,y&Işì/>>òÂŸ-\\\\zh%yàhòÀsI½™Üw<ùò7ïh½UudÇá#OìÚµ+íMÀ ÑT\0™´{÷îÇŸxhåøáö™ôÌ‰äè‰Sÿtüä©?¿rÍ÷æ·üå\'ÿşx’<}<yj%yr%i$Éµ·ÜÙjªÃÃ9ÂsOwÃ0xìZ\02©ÕEOwFøë‘ãÉÏ&ÇNüøFã3Ÿıü\'>õÙ>uºÛ•“É±VkİtÛkî;TCSĞsv-\0™Ôê¢ÿëŒSMu\"yì™ä‘ÃÉJ’;z4wÁ##çŒŒìzÏï_¶ú·¼}Í}‡jh*\0zÎ® “Z]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª¡©\0è9»€LjuQ£3Â_Ÿ=™<Ù<õ>ÕcÏ%×ß²ôÖ½oíë^ÿÊİ¯úü¿~ù¹$9|4yæè©;Ş°pËšûÕĞT\0ôœ]@&…68~üGÑN…UO­$?:–<üôÊMwÕ÷¾íïúß|ôhòH3y´™<q4	UuÃÍ·¬¹ïP\rM@ÏÙµ\0dÒš.*¾ë¢;¿sï­w--,.İxpéÆÛï¹éÎCÿuó·¿y×ıÿsğoüî·wá{îº÷Ÿû§+Ş{é{SoMÀÀ°kÈ¤VS=¹z|èCÙ†ß{Ï{ÖÜq¨†¦ çìZ\02©ÕTOİM@ÏÙµ\0dÒ©¦:ñ¸ÑíĞT\0ôœ]@&µšê1£Û¡©\0è9»€Lj5Õ£F·CSĞsv-\0™ÔjªGŒn‡¦ çìZ\02©ÕTËF·CSĞsv-\0™¤©4\0}Â® “ZMõÃë—¼Ùcu®ßze¶÷{R«4íMÀ ±kÈ¤Ğ\'N<¼CcõÂ×?Pçšõ:İÚ6—³CO-íMÀ ±kÈ¤V~<Ôó±e=›õVßlëuÛğî›]Ø‰\'˜ö¦`ĞØµ\0dR«:ìùØl±«¯ï\\n_8íšlxƒU\r¶vÛYæ™<Á´7\0ƒÆ® “ZÕñ@ÏÇf‹]}}çòO¢hƒ;nù~×ÆËéüë=µÎc¥½é\04v-\0™Ô\nô|l¶Ø\r¯_såê¿vuyõ…z^«4íMÀ ±kÈ¤kªÍß_êñr:]Wš\n€±kÈ¤V~|?•±e/=›­/¯¾ıú;ºòio:\0]@&Ê“õ«bÃËíkşÚ¹¼iwm²œ5KØ¹\'•ö¦`ĞØµ\0dR+?îïùh/¶³ğÕ²şÊíÜx;—;ËÙpQ=‚io:\0]@&µªã{=íÅ®Yøš+×\\Xı†ËÜâúŸÔÔéÕ“\'˜ö¦`ĞØµ\0dR«:õv¬^æºìm|ıFíÛj±k–³ÅãöüÙu–Ÿö¦`ĞØµ\0dR«:î3ºš\n€³kÈ¤VSİkt;4\0=g×IšJSĞ\'ìZ\02)´ÁÉ“÷İM@ÏÙµ\0dR«©¾kt;4\0=g×I­¦Z2ºš\n€³kÈ¤VS}Çèvh*\0zÎ® “víÚõì³·Ÿ<ùm£«¡©\0è9»€L\Z½ÿş¯<y·ÑÕĞT\0ôœ]@&ıÇÜÌÉä[ÆöÇw–¾’ËåÒŞt\0\ZMISSS““ïO½R²5ş¥úÉJ¥’ö¦`Ğh*€Lª×ë¹Ü›mŞz2¹ËØæ(•Ş=;;›ö¦`Ğh*€¬ÚÊøÉäNc;ãßkW.¥½Ñ\0@š\n «šÍf±ø……K’;Œ­Çòòõ¹Ü›\ZÒŞh\0 MaKKKùüKK³I²hl6BP…øœŸÿBÚ›€Á¤©\0²maa!dÕÔÔŸ$ÉíÆú1;ûé\\nt~şŸÓŞP\0,MyÍfsr²R,¾½Zıëååk“ä Ñhüw­ö·åò¾R©.§½‰\0dš\n`@ÌÏÏW*¿½gÏkFÙ½ûååòÅ!«ÒŞ,\0>M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄûÿµS!6Keã\0\0\0\0IEND®B`‚',0),('111',1,'qjlc.bpmn','109','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"qjlc\" name=\"è¯·å‡æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤è¯·å‡ç”³è¯·\" activiti:assignee=\"å¼ ä¸‰\"></userTask>\n    <userTask id=\"usertask2\" name=\"é¡¹ç›®ç»ç†å®¡æ‰¹\" activiti:assignee=\"æå››\"></userTask>\n    <userTask id=\"usertask3\" name=\"æ€»ç›‘å®¡æ‰¹\" activiti:assignee=\"ç‹äº”\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts<3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts>=3}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow8\" sourceRef=\"usertask3\" targetRef=\"endevent2\"></sequenceFlow>\n    <sequenceFlow id=\"flow9\" sourceRef=\"usertask2\" targetRef=\"endevent2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_qjlc\">\n    <bpmndi:BPMNPlane bpmnElement=\"qjlc\" id=\"BPMNPlane_qjlc\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"120.0\" y=\"231.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"210.0\" y=\"221.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"110.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"330.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"380.0\" y=\"228.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"760.0\" y=\"215.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"155.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"210.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"315.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"380.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"400.0\" y=\"228.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"400.0\" y=\"268.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"250.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow9\" id=\"BPMNEdge_flow9\">\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"215.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('114',1,'qjlc.png','113','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0q\0\0g\0\0\0ŸÕXª\0\08ºIDATxœíİ{ŒcgaøïpYÔË5KŠš¡ü«…®HqQÕªf§RÛX-\".¤–ha$Z:ªPµ…­\né¨¢0ê¢¡…Ôj•oĞF#Ò)Iè´$ašËf’’,1äÂäŠÓì&Îîìîù½kƒ3ÌmÇïzöøØÏ£W+¯×>>3ãs>kÏ{F\0\0\0b¤½\0\0\0¦©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0D³Ù¬Õjår¹X,«ğÜÃW T*U«ÕF£‘öf`ği*€A077Z\"Õ•W^yİõ×ßwèĞ±••áá¹‡¯À.»ì²ğ5	e•öÆ`Ài*€lk4\Z•Jeß¾}<øÀ±•cÆêñØã…²\n_œååå´7\0KSdXª|>ÿÅ+¾plå¨±Ù¸ú«W_xá…õz=íÍÀ`ÒT\0V©TZAõœ±õ¸îúk/ºè×ÒŞ\\\0&MUsssûö]¼r¼ilgüùG?rùåŸH{£0€4@&5›ÍÑÑÑª¯ÖØÎ8|äG{÷şòÒÒRÚ›€A£©\02©Z­V*••ãÏtÆ»Æ~k›³¯¾×PË/ÿ›ÉÉÉ´7\0ƒFSdR©T:pÕ—ª‹÷ı0I¾\"¹w%ùöÑä£É­‡O_õõ¯=ôÔÍÇ’ÿm&77“I®}.ù‡îúÀøSÏ›TÆmòù|Ú›€A£©\02)—Ëİ}÷í+Ç´ÇÈÈÈá$9r2yêxòä±ä™$ù³¿øøÈ¶pqé¡•ä£ÉÏ%õfrßñäËß¼£õVÕ‘!‡<±k×®´7\0ƒFSdÒîİ»â¡•ã‡Û#dÒ3\'’£\'NıÓñ“§şüÊ5ÿyŞ›ßò—ŸüûãIòôñä©•äÉ•¤‘$×Şrg«©çÏ=İ\rÀà±kÈ¤V=İá¯G\'O<›;ñã4\ZÏ|öóŸøÔgxøÔénWN&ÇZ­uÓmw¬¹ïP\rM@ÏÙµ\0dR«‹ş¯3N5Õ‰ä±g’G\'+IrìèÑÜŒŒœ32²ë=¿Ùê;Şzğö5÷ª¡©\0è9»€LjuÑSÑşìßÏ&?<ú\\rëİß;÷ÜsÏyÑK^öÊ×–ß÷SMuËm×Üw¨†¦ çìZ\02©ÕEÎ}ödòdóÔûT=—\\ËÒ[÷¾ıµ¯{ı+w¿êóÿúåç’äğÑä™£§îxÃÂ-kî;TCSĞsv-\0™ÚàøñuF;BV=µ’üèXòğÓ+7İUßû¶w¼ë7~óÑ£É#ÍäÑfòÄÑ$TÕ\r7ß²æ¾C54\0=g×Ikº¨ø®‹îüÎ½·Şµ´°¸tãÁ¥o¿ç¦;ı×Íßşæ]÷ÿÏÁ{¾qğ»7Şşİ…;î¹ëŞ|îŸ®xï¥ïM½m4\0Ã® “ZMõäêñ¡}pd~ï=ïYsÇ¡\Zš\n€³kÈ¤VS=at;4\0=g×I§šêÄãF·CSĞsv-\0™ÔjªÇŒn‡¦ çìZ\02©ÕT\ZİM@ÏÙµ\0dR«©1ºš\n€³kÈ¤VS-İM@ÏÙµ\0d’¦ÒT\0ô	»€Lj5ÕãÆ†ç­êv	½}¬ÍØ¹~ı…èçö¦`ĞØµ\0dRhƒ\'ŞşèôÌš+7»ÙzŞqÃÛ¬şëê+W_ØâÖ,j³qCSĞsv-\0™ÔJ‹‡º\Zkî²á6[ìêë·sÇÎ_7»°õúŸöî§]ÂKN{Ó0hìZ\02©Uv5:wÙä}¡ŸºÍ÷]Ëõ÷ÚÎcmxû5Wvn¿õ\ntõEH{Ó0hìZ\02©Ut5:wYßÕÿ´ù‡ñ~êkî»f™ëkÃ[?Öf7Şğ)lÿ‹ö¦`ĞØµ\0dR+*~ĞÕèÜe;6»ï·_}åOâg»uÚËkŞís_½À´7\0ƒÆ® “Rlª-n¼Y­{jÓZ“L[´™¦ OØµ\0dR+-¾ßÕèÜeë›wÎÚ¬¿ıúÇÚæ5^^ó¸›-§Û/BÚ›€Ac×I§Òâd½«ñãDi]è\\³Ù…õ÷İzÉ›]³qmşO«oĞÕ\Znÿ‹ö¦`ĞØµ\0dR+-îßşXûö5k®ßl±ëo¶úš\r~Ú%o¶„\r/wÖvÍ5İM@ÏÙµ\0dR«(¾=Vß}ÍåÍß;zş[,m›·Ùæ¿®ÜÕ×Ä=ñ´7\0ƒÆ® “ZEq(bü$NÖ^¹æÂf7X¿¨uéušl¶¨­Wuõ\r¶XÎv~Ú›€Ac×I­¢¸Ïèvh*\0zÎ® “ZMu¯ÑíĞT\0ôœ]@&i*M@Ÿ°kÈ¤Ğ\'OŞct;4\0=g×I­¦ú®ÑíĞT\0ôœ]@&µšjÉèvh*\0zÎ® “ZMõ£Û¡©\0è9»€LÚµk×³ÏŞ~òä·®†¦ çìZ\02ittôşû¿vòäİFWCSĞsv-\0™466ös3\'“oÛßYúJ.—K{Ó0h4@&MMMMN¾?õJÉÖø—ê\'+•JÚ›€A£©\02©^¯çroz¶yëÉä.c›£Tz÷ììlÈªP¤ËËËioC\0„¦Èªı§ŒŸLî4¶3ş½öwåòXÒÊÑÉÉÉ={ö”Ëåùùù´7#\0™§©\0²ªÙl‹ïXXø·$¹ÃØz,/_ŸË½©Ñ¸aõ°V«‹Å\\.733Óh4ÒÚ\0d¦È°¥¥¥|ş‚¥¥Ù$Y46!¨B|ÎÏa³¯áøøø={ÂŸáòYŞ‚\0\0Mm!«¦¦ş$In7ÖÙÙOçr£óóÿ¼õ—±ÙlÎÌÌär¹B¡P­VÏÊ¦`@h*€Ì=09Y)ß^­şõòòµIrĞh4ş»VûÛry_©T—·ÿÅZ©TöìÙ399Y¯×wl£084À€˜ŸŸ¯T~{Ï×Œ02²{÷ËËå‹CVÅ}1———§¦¦FGGÇÆÆæææz»¥\00š\n`(xË%NªU!®L¿Àf4À\0\n5==}É%—äóù7¾ñï~÷»Ã…´W*ÃÚÓ¯‡²ªT*i¯\0ıESååå_ıÕ_]ó)¸_ø…_øùŸÿys…Ÿ¹f³Y­V…B.—Â_Ó^#\0ú‚¦ÓÓÓ/zÑ‹VÕÏıÜÏíŞ½ÛÑo---µç±0ı:\0‰¦$¡Â±şk_ûÚvP…¾zÛÛŞ6;;›öz\r¦F£Ñ~}ll¬V«¥½:\0¤FSš¥¥¥×¼æÔì—^zi8ÜO{ußÜÜ\\¹\\nO¿n€!¤©\0J³Ùç;ßù’—¼$—ËùdÚYÓ~=”Uè+Ó¯M08Âa}±Xœ™™	eõâ¿8\\N{†Q­VkO¿6„©A\0†¦óóóù|¾3Ó÷øøøââbº«4ÌêõzØ{öì©T*6À`ÓT\0ƒ`zzºX,úe~Ó~=´n¡P0ı:À ÒT\0ÙÖh4ÊåòÄÄDÚ+ÂVÚÓ¯ONNÖëõ´W€^ÒT\0¶´´T(Lä!€§¦¦FGGM¿0H4@V…ƒòTföË¢öôë!®BbùÄ&@Öi*€Lš˜˜å¦•Ë´z½>99Ù~½3¹\0™£©\02¦=aúôôtÚ+BÏ´ßrÌår¦_È\"M%ù|~~~>í¡÷–––ÆÇÇGGGÃŸ>Ò	!š\n 3fffL˜>ğ\ZFØĞ¹\\®=ızÚ«Àéi*€h6›åry||Ü	†‡é×²BSô;¦³åååöôë¥Rinn.íÕ`š\n ¯ÍÎÎ† Z\\\\L{EHYøNkO¿n€¾¢©\0ú×şıûK¥’h::Ó¯W*Ó¯ô	MĞBG‹ÅĞTi¯ı¨ÙlV«ÕB¡ÏçÃ¿e.MĞwM˜Îv„o•ö<¦_H‘¦è/333…BÁ<ol_gúõ±±1s™\0œ}š\n _4›Íñå\"ÎÜÜ\\¹\\Ş³gÏşıûÇà¬ÑT\0}¡^¯\n…™™™´W„Ì5š*”Uè+Ó¯œš\n }óóóù|Ş„éôV­VËår¡ÕÍ	°s4@Êöïß_,ò²C–––ÆÇÇÛÓ¯›Ç`\'h*€Ô„*•J&Lç,hO¿Ëå\n…‚é×zKS¤cqq1İÎÎÎ¦½\"—………öôë“““¦—è	M‚Z­‚Ê±HK£Ñ˜šš\Zö\0gHSœUí	ÓËå²_ÑæææJ¥Rˆ«X¦_ˆ£©\0ÎpÌZ,M˜N¿©×ë“““íy,Ò^€ŒÑT\0gI{Ât¬ô³jµZ(L¿ĞMp6LOO‹EŸ­\"ÚÓ¯†?ıÖÀii*€Õh4ÊåòÄÄDÚ+İ	ßº333íé×kµZÚ«Ğ¿4ÀZZZr<JÖ-,,”ËeÓ¯lFSì¦3H–——ÛÓ¯‡¾š››K{u\0úˆ¦ØáĞÓoù3xjµÚØØXˆ«ééißá\0‰¦è¹ö„éáp3íT¯×\'&&L¿h*€Ş\n—ù|~~~>í³¡Ùl¶§_ßöá‚3YÃISôÌÌÌŒ	ÓN‹‹‹•JeÏ=ãããæ±\0†¦èf³Y.—ÃÑ¤ÿ§g˜µ§_3İ%0<4À™2a:¬177×~}jjÊ;·ÀÀÓT\0gdvv6ÕââbÚ+}\'ÔÔääd(«ĞW~É`š\n ŞşıûK¥’é¤akµZ­X,ær¹™™?/ÀàÑT\01Âqa8FM•öŠ@f,--·§_w.l`h*€®-..š0â´§_Ïår…BÁôëÀ`ĞT\0İ™™™	Ç‚f‹†3´°°P©TFGG\'\'\'ı@™¦©\0¶«Ùl·øŸuè•ååå©©©öôësssi¯@M°-õz½P(ÌÌÌ¤½\"0˜BP…¬\nquö§_o6›³³³í)gŠ?V&\\S­VÍœ–¦8½ùùù|>oÂtØiõz½=ız¥RYXXØé‡):jätÂÿÌÌŒ7¨Íh*€ÓØ¿±X44œMÕjµP(´§_ß‰˜™ŸŸË?mM­6::\Z\Z¬çk\0M°©ĞQ¥RÉ„é–ÎôëáÏ^M¿\n­R©¬\'êÏÿü£\\uİõ_ïŒ}ìãûöí[sK§¤ÖÓT\0[\\\\,\nş[\ZR\Zfff&—Ë‹ÅZ­v&‹Z^^^óöÔ‡?ü§÷:tlåøfã±ÇŸøÇÏ}.tİê7¬|XMSl ·…/§%…¾2??_.—CŞLNNn6uÄŞ½{ßùÎwnøVR½^9ÔI£±±±­kjMY}ìcïÜw×®]gá×½€¬ĞTô…f³aÃ²X,®Şá\r›ğÜÃW T*U«UŸ-IK{Âôğİè÷Ñ¡?µ§_e~N×L¿^9Û/§oyË[Ö¼Š†ŸèÕïP}òòË·YS«Ç•Wş¿PSWlSmšŠô…=bØ3…]ã•W^yİõ×·ş×pe8Gxîá+pàÀË.»,|MBY¥½q†N8B\nYkÂtÈ„Z­Ö~}zzº]PŸùÌgÚÁó3?ó3_|ñê‡½L\'¨¸*\"¨ÚãÖÛîŞ½»½œğr‘ÒSú‹¦\"MaX©TöíÛ÷Àƒ[9f¬=şX(«ğÅñÿ gM{ÂtŸçl©×ëíé×Ï;ï¼N8½á\roøÔ§>Õ¾Íììì¾Cµz\\ıÕk:K9—îÓú¦\"5!¨Âñë¯øÂ±•£Æfãê¯^}á…†#†´7×àFÅbQÁBF5›Í_ÿõ__óê7¾ñíÿ%	»›ö5cccgTíÑùİªĞr>\'h*RS©TZAõœ±õ¸îúk/ºè×ÒŞ\\ƒ,ä}¹\\˜˜H{E€xùÈG:oO½úÕ¯~éK_úæ7¿ù¼óÎ5U«ÕÚÿ´k×®|¨\'Mõôá#™\0½z\0šŠtÌÍÍíÛwñÊñ¦±ñçıÈå—\"í6˜–––\n…ÂÎÎ¤nrr²óöT±X|ßûŞ·oß¾=]tÑ/şâ/¶¯ÿğ‡ÿ´\'AÕ_¼âŠöbwïŞö³R¦©HA³Ù}ğ¡úÊñgíŒÃG~´wï/›×»çL˜ïÀÖêÕ›Tqşù£í%ÏÏÏ§ıD4i*RP­V+•ÊÊñg:ã]c¿µÁÌâY}¯¡\Z—_ş7“““ioº211Q.—ÍYƒ-ìq:o^õ6¨ÂøÀ>Ø^¸×gršŠ”J¥W}éù ºxß“äû\'’{W’oMî8šÜzøøôU_ÿÚCOİ|,ùßfrs3¹á™äÚç’¸á®Œ0õ¼IeÜvp!ŸÏ§½éÒÔ%²\'	Ô0İl]0ÆÇÇ{5İßúqİõ_o/¼P(¤ıD4i*RËåî¾ûö•ãGÚ#ì\'É‘“ÉSÇ“\'%Ï$ÉŸıÅÇG^ø³…‹K­$Mx.©7“û\'_şæ­·ªá8|ä‰]»v¥½éRRê¢‹.úâW„:Ã¬ZX8U§>¨Cbll¬=Wõš7Õ}‡µ>::šöÒ¤©úH³Ùœİ¿©T*şDØ„kjµÚ }Bi÷îİ?ñĞÊñÃíöFÏœH8õOÇOúó+×üçyo~Ë_~òï\'ÉÓÇ“§V’\'W’ğü¯½åÎVSÎ{º.-í ºõ¶ƒÇZgÛ<“¬š™™1a:•Î,êí×ÎGÓÓ~¢@š¼ô…R¡víÚj*ÔW]wı×Ûãê¯^ó±}¼\\.‡)\nÕj5í•íV=İá¯G\'O<›;ñã„#æÏ|öóŸøÔgxøÔ±ïÊÉäX«µnºí5÷ª1œûìÕAÕqYÕl6ÃÏÑøø¸3ÉÀPéÌx~ß¡C;ÑTå§ıD4y	HÙââb8:)µÏ$ÜpãM—]öğ±¥Vı_gœjªÉcÏ$NV’äØÑ£¹.9gdd×{~ÿ²Õw¼õàíkî;Tc÷Ùëƒ*.«L˜C+—Ëµ›ç[wß½Mµk×.Mx	HÓÔÔT¤ë®ÿzW/ßáh2efú¿Û[]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª1lûìÍ‚ªÛ¬š\rAµ¸¸xÖè7á…¢İ<İîm·3{ü	§¨M•–öÇ&\'\'£_ÇÿñsŸËî¯…´º¨Ñá¯ÏLlzŸê±ç’ëoYzëŞ·¿öu¯åîW}ş_¿ü\\’>š<sôÔoX¸eÍ}‡jUSmTÛÏªö/(Ò¯#]©T*íì	ûÍ7Õ·î¾»½ğ!Ÿ—¢C´ş‚ªı1¤3|)¿áÆ›ÂrêõzÚO¨ka÷süø:£\n!«ZI~t,yøé•›îªï}Û;Şõ¿ùèÑä‘fòh3yâhªê†›oYsß¡\ZÃÓTÛ	ªÓfU¸2üShª³¾ú@™ššjgÏe—ıAÏ›ê“—_Ş^x¹\\Nû‰i\Z–C´¾^yÏ<¨:”!«2÷!À5]T|×Ew~çŞ[ïZZX\\ºñàÒ·ßsÓ‡şëæoó®ûÿçà=ß8øİoÿîÂ÷Üuï>÷OW¼÷Ò÷¦Ş6šjGm?¨¶ÈªÅÅÅøÍCàÌ---u>÷ôá#½mªğbÕ^ø`Ì DŠC´¾255u&ù[?¸ªT*¥ı´ºÓjª\'W}èƒ#Ûğ{ïyÏš;Õ†¦ê6¨6Ìª™™™Œ¾…ì„ÑÑÑöN$ì1{¸ÿíœœ*ğcrƒˆÖWÚÿwŞÛÿ$ãø`8ˆLûÉu¡ÕTOİoª¸ ZU<òÈxKæŞ¼vÎääd»|öîİÛÃ·ª~ç’KÚ‹ÍÜÿl=7à‡hı&ÕNœsğ:ÿüÑDjªİÁnªõAuõW¯¹à‚Üf§”yìñ\'ÂáÑ¯¸bMVùßb`ğ²°{÷îvÿ|òòË{²ç½áÆ›:oR™VäC´~3;;[*•zTíñáÿéôôtÚOq»ZMõ˜Ñíà¦Ú0¨Úg}9ÿüÑõYÕªöÑŒ¬Ú>ò‘¼úÕ¯^ÿ¹ñW¼âo}ë[Û—ÃË™Oª^”:§úOûyéØC´>õvâä·ªÂë{ÚOq»ZMõ¨ÑíÔ¦Ú\"¨ÚÖdÕê ’U@Ç¯üÊ¯¬©©ğJòú×¿ş£ıhø×B¡Ğ¾2ì.7{|;ãéÃG:/AaQ=©	Ğ[ƒyˆÖ‡Ú<Ø¡ j/¼paa!í\'º-­¦zÄèvdS­ªp¼ÒùàõYµ>¨Ú‡M<ø¬‚!W¯××¼Oõ»¿û»•J¥ó¯O\0†™¸â‡—šÎKPxå1¹(Ğ6€‡hı©Z­†—õmªO^~ùäädÚOôyµZm³‰×ZMµlt;²ÕT[|tl6)E¸¦sè³:«Ş~û†AuõW¯Y¿YCèßøÆË^ö²ö‹Ã‡>ô¡|>¿ú—C­~éèö,À7ÜxÓêÿñÉĞGî–¥C´LŸ™™ÙÑ¦ºîú¯‡ƒÈ´ŸèİsÏ=í]ÎË_şò¬ùWM5ğMµõ7@ÛÖ³üm˜U/yÉK¶T²\n†Ph§ıû÷şáşaÈª?¹\\niiiÍÍfggW¿¶ìİ»w³×5oO½÷ÒKW¿ø*`µÌ¢eİØØØv^µÏdÜwèĞùç¦ıD,ìÛ^øÂ¶w</~ñ‹é—~iõ[­¦úa·£s¯5GÕ[Üò´×oÿ–ÛY±¸ÇêêÒÛ¤İÙú ÙŞ´éfÕ6ƒJVÁP	…j*4Uûç}ß¾}\\pÁfÿÏB+äÖê“PVûØÇ¿u÷İëSê?÷¹°´Õ7¯K>ò¬‘™C´¬Û¡YÔW§	‡˜i?Ñç­ù•˜—½ìeïÿûÛŸÁ=qâánGç^«ï¾Ù¢¶¾~³côÕ7[}å†·éÕcuõH{«va‹o€íŸ‡j‹¬:mPÉ*µZ-ÔÔÄÄÄê¹\"Âå—¾ô¥³³³›İ+¼&„\0[=Îj^xáfÿT.—MJ¬—¥C´LÇ—«‡~‡Fx¹‡›Ä÷•\'êvtîµá¢âqÃëÛW®şó´ë°§÷¬×,!+Ûwk!¨¶?æÍÿ÷9çœ³f	/xÁ®¸â_¶¹„¾úX,Ğ+óóóù|>DÎ†¿ºyÚßçLZéU©T¶ùÂ^F²2pöiª³$—Ë­ÿPÁN4UÚOôy¯|å+;»¢RKØ!µ?Ú>rª.ÜşX¿o[ıO]-jûË\\ıçú‡Ûl6\\Ÿ-«ÛuN{«va‹o€ÅÅÅU=şÄi¿¥7œå¯mÃóVm¸„ğ¸ÎÈ	ƒ$üD[zò£İl6kµZˆ«Phk^gFGGÃk×ÌÌŒ÷¦€­eé-ÓvôäTíÑW¿OÕh4Ú;¤“ôGş{¬Î¿¶¢ânGç^ëúdã›­¹Ü¹ãf7^s›ÕË_ÿp›=Êš•Üú±\"¾)nÓ®lı\rl/«¶ªmf• ‚S¯×Cä„øñM@_ÉÌ!ZÖU*•Õ§%İ‰qÃ7]xá…i?Ñûş÷¿¿k×®±±±ÑÑÑÉÉÉ5¿ÍÒª‹t;¶s¯õ·YsMû¯›£¯¹ÍÖ´õB¶ùXİ~ÒÚ İÚú më¬Ú0¨^ğ‚l?«’åååñññğ’²ÅoI¤%3‡hY7==ıáÿé6Uh¶Ë.ûƒ´ŸèóÂn¯Z­nø‰öè¢Ø¬R6k¡Í®Ù¬µ6l¡5¸Ùí·¸¼Åc\rjS%[~tl–U›Ø÷ş¿ÏnxŞªõY%¨``´ç“5533“öº\0l,K‡h™,Ãş`G›jß¾}sssi?ÑmiEÅ÷·?VõÌO]¹Åí7»AçÊÂlÓ»¯¾×úG?íå-«Û¯CÚ›®÷ÖgÕfAÕåo³Ó¯Î*Aƒ¡Ùlv&I_}ê^€~3€‡h}kG§©xúğ‘p ™•]Î©¨8YïvtîÕ¾ğ|Ÿlyã­²áí×/ı½ÖgÒúõÙÎcuûH{ÓíˆõYuÙe°aPµÇú¬Ú·o_øT0HªÕj{’tçB\0úß`¢õ§ıøßßúÓaái?ÅíjEÅıİÎ½Ú¶XÈ7X½u-´Õİ7¼Í6/oñXİ~ÒŞt;e‹¬Úğ<T«³JPÁ€™Íår•JÅl{@Vì!Zj6›£££;q–ªp@yşù£Ú÷´¢â{İÎ½Ú6\\ÈOŠeã¿®¾fıõk.o}Íf÷íö±ºı\n¤½évĞ†YµÅ‰}ÛYµ&¨Î;ï¼/}éKi? Òüü|±X,•Jíó.\0dÅ ¢õ¡Z­öŞK/ò7©’7Õ¡®ÆOúäPçÏŸ~ÛçùlqßÎİW_XßÕ´ş–.³Ç=ícuûEH{Óí¬õYÂi‹ïüoİ}÷šw¨fgg…BµZMû©\0İ	?şí³Ø™$È¢?DëC¿sÉ%\\ÕÃ \n‡•{÷î\rG–i?³.´¢â>£Û1ğM•ts:àÕcõGşšÍf¥RÏÊ¯Â«×ëíóíš$È®Á?Dë7FãÂ/ìÕdíÒî;t(í§ÕVSİkt;†¡©’î³jÃß¡š™™)\n[Ïä¤+ì\'&&r¹œ÷–¬ŠC´~³´´²j³•vT¿sÉ%Wõš´ŸP×4•¦ÚÚö³j‹I)Â•şçúS³ÙlŸrjzzÚ[ÊÀ\0–C´~ööîİ{Ã7ÉGşB˜e1¨’VS<yÑí¦J¶—U§å¯Ñh”J¥ÉÉÉ³¹æÀÖ:§œ2I:00†è­ß„}I8düØÇ>Şí¯<}øÈßúÓí¦ı$\"µšê»F·c¨š*9]VmÚô©©©pËMŒ	ƒªV«µO9åç0ÃuˆÖošÍfhª.È…FêL_¶õøâW„ÛøÃ\Z(Ó^ıx­¦Z2ºÃÖTÉæYÕíy¨æççóùüÂÂÂ®-°™öÏ`¹\\ö[À@\ZºC´>´¼¼<11±{÷îß¹ä’Lë\'×\\yåÿ{ï¥—†Û\\vÙÀ©ÕTß1ºCØTÉFYwbßğƒV(¦§§wh=\r…Õb‹“qlÑúS³Ùœ­T*{÷î]sò¥pMªZ­60=ßµk×³ÏŞ~òä·®Æp6UòÓYTåry`~” ŸÕëõR©”Ïçr\nxCzˆFºFGGï¿ÿk\'OŞmt5†¶©’ŸdÕ}‡ùÿv×jµB¡°´´Ô«uÖX^^/õ&Ş†Äğ¢‘¢±±±ÿ˜›9™|ËØşøÎÒWr¹\\Ú›.M!¥Â!ZO>>‚*ŸÏ‡¸:óE«5\Zö$é333i¯ÀÙ£©HÁÔÔÔääûS¯”l©~²R©¤½éG³Ù,—ËãããÎ=~”:“¤û±†¦\"õz=—{Ó³Í[O&wÛ¥Ò»}Š¦çfffŠÅâ\0ÌûéªV«íIÒı²\"0œ4éØÊøÉäNc;ãßkW.¥½ÑÓÂÂB>ŸŸ››K{E “fggs¹\\¥RqÊ)`˜i*ÒÑl6‹Åw,,ü[’Üal=–—¯ÏåŞÔhÜöFXFcll,T~Ú+Y2??_,K¥’_\04©iÍpÁÒÒl’,\Z›T!>çç¿öæ\Z|¡©Â¢O.Ái-..†”\n?/&IhÓT¤©õ±«¦¦ş$In7ÖÙÙOçr£óóÿœö†\Zá\01—Ë…oË´WúT½^¯T*ù|Ş¯w¬¦©HY³Ùœœ¬‹o¯VÿzyùÚ$9h4\Zÿ]«ım¹¼¯T*†Ëio¢á²¼¼\\,M\rk4\Z‰‰‰\\.W­VÓ^€¾£©èóóó•ÊoïÙóšFFvï~y¹|qÈª´7Ë\n?>>^.—Í\rIë\'¢}Ê©ééi?\0ÒT\0¨Õjù|Ş/ß3ä:§œò«†\0[ĞT\0AU(B\\¥½\"‚ğß>å”IÒNKSlªÑh”ËåpXé#Oùùù|>¾ó`›4ÀiLOO‹Eÿ[ÏÀ[\\\\,¶„i¯@–h*€Ó[XXÈårÎÆÃ ª×ë¥R)ŸÏû&ˆ ©\0¶¥Ñh‹Åıû÷§½\"ĞKËËËããã£££N9MSt!4ÕØØ˜9Ğ\0áÛ¸=Iº²œ!MĞ¹¹¹|>ïNÈ®f³Ù™$İü+\0gNSt­^¯\nÿ»OU«Õö$éŞnèM£ÙlW*ÿÍOVÌÎÎær¹ğMkK€ŞÒT\0ñªÕj¡PXZZJ{E`+óóóÅb±T*ù^Ø	š\nàŒ,..†¬2g\Zı)|†”\nAe’t€£©\0ÎT£Ñ‡­i¯<¯^¯W*•|>/øvš¦èéééB¡à7UH]ˆüPø¹\\®Z­¦½.\0CASôÌÂÂB>Ÿ÷!+ÒÒl6Û§œ\n…oö€³FSôÒòòr±XœššJ{E:SN™$à,ÓT\0½799Y*•ÚrvÔjµö)§|ô š\n`GÌÎÎ\n…ÅÅÅ´W„A6??ŸÏçËår½^O{]\0†—¦Ø)KKK!«ÌÀN¹^lÑí\0©ÓT\0;¨ÙlV*•ññqĞ+õz½T*™\r h*€733S(|:‹3´¼¼ú|ttÔ)§\0úŠ¦8}•hF£=Izèó´×€µ4ÀY‹K¥ÒäädÚ+B–4›ÍÎ$é>A\nĞŸ4ÀY555U,ÍyÍvT«Õö$éæåègš\nàlkÏ½°°öŠĞ¿fggs¹\\¥R‘ß\0ıOS¤ (\n…ééé´W„¾’»X,–J¥¥¥¥´×€mÑT\0©™˜˜(—Ë>ÖEÛââbH©T&IÈM¦Z­V(¼#1äêõz¥R13$@Fi*€”… \nÓ!®Ò^RĞh4&&&r¹\\µZM{]\0ˆ¤©\0Ò×l6Ëåòøø¸É²‡GØÖíSNMOOÛî\0™¦©\0úÅÌÌL±X¬×ëi¯;®sÊ)¿M0\04@YXXÈçósssi¯;¥V«µO9e’t€¡©\0úK£ÑÛ¿Ú+BµÏKV.—½	0`4@?\nMU,}0l0,..[Â…´×€ŞÓT\0}j~~>—Ë-,,¤½\"Ä«×ë¥R)ŸÏ;åÀ\0ÓT\0ıkyy¹X,ÎÌÌ¤½\"t-l»ñññÑÑQ§œxš\n ¯5›Íph^.—M·F£=Iºš\n jµZ>Ÿ_ZZJ{EØJèŞÎ$é\Z`xh*€lAU(B\\¥½\"l¬Z­¶\'I7³À°ÑT\0™ÖËår8j÷H_™Íår•JÅ)§\0†“¦È˜éééb±èğ½ÌÏÏ‡mQ*•|,`˜i*€ìYXXÈår¦çNÑââbH©T¶\0š\n “\ZF8 ß¿Ú+2têõz¥RÉçó&I MSdXhª±±1“\"œáë<11‘ËåªÕjÚë@ÑT\0Ù677—ÏçÓ^‘AÖl6Û§œš6A\0kh*€Ì«×ë…BaÍfÿê¯şÊûW=Ñ9å”¯\'\0ÒT\0ƒ ÙlW*•ö»(ËËËçœsN¹\\N{½²­V«µO9e–E\0¶ ©\0GµZ-\nKKK—^zéÈÈÈ«^õ*o­Ä™ŸŸÏçó!JëõzÚë@¿ÓT\0åšk®yùË_>Òòú×¿şÿøÓ^£ŒY\\\\,¶ø5\0¶ISO}êS#?í\roxƒ6Ø¦z½^*•òù¼SNĞM08Şıîw¿â¯XİT/~ñ‹ßşö·§½^ınyyy|||ttÔ)§\0ˆ ©\0G£Ñ¨T*{öìÉår]tÑùçŸÿ¢½èÜsÏu>¥Í„¯X{’ô5³&Àöi*€AS¯×çççC*„¾zç;ß922òº×½.í•ê;Íf³3IºSNp&4Àà›œœ,•Ji¯E©V«íIÒÍ‹À™ÓT\0¢ÙlÖjµr¹\\,C0Œ«ğÜÃW 4d\'ÉÀY ©\0ÁÜÜ\\h‰TW^yåu×_ß¡CÇVV†s„ç¾¸ì²ËÂ×Äï’°Ó4@¶µç¥Ø·oß>plå˜±z<öøc¡¬Âgyy9í\rÀÀÒT\0‚*ŸÏñŠ/[9jl6®şêÕ^xa½^O{s0˜4@†U*•VP=gl=®»şÚ‹.úµ´7\0ƒISdÕÜÜÜ¾}¯o\ZÛşÑ\\~ù\'ÒŞh\0 MIÍfsttôÁ‡ê+ÇŸ5¶3ùÑŞ½¿¼´´”ö¦`Ğh*€LªV«•Jeåø3ñ®±ßÚælã«ï5TãòËÿfrr2íMÀ ÑT\0™T*•\\õ¥çƒêâ}?L’ïŸHî]I¾}4¹ãhrëáãÓW}ık=uó±ä›ÉÍÍä†g’kŸKşá†»>0şÁÔó&•qÛÁ…|>Ÿö¦`Ğh*€LÊårwß}ûÊñ#í122r8IœL:<y,y&Işì/>>òÂŸ-\\\\zh%yàhòÀsI½™Üw<ùò7ïh½UudÇá#OìÚµ+íMÀ ÑT\0™´{÷îÇŸxhåøáö™ôÌ‰äè‰Sÿtüä©?¿rÍ÷æ·üå\'ÿşx’<}<yj%yr%i$Éµ·ÜÙjªÃÃ9ÂsOwÃ0xìZ\02©ÕEOwFøë‘ãÉÏ&ÇNüøFã3Ÿıü\'>õÙ>uºÛ•“É±VkİtÛkî;TCSĞsv-\0™Ôê¢ÿëŒSMu\"yì™ä‘ÃÉJ’;z4wÁ##çŒŒìzÏï_¶ú·¼}Í}‡jh*\0zÎ® “Z]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª¡©\0è9»€LjuQ£3Â_Ÿ=™<Ù<õ>ÕcÏ%×ß²ôÖ½oíë^ÿÊİ¯úü¿~ù¹$9|4yæè©;Ş°pËšûÕĞT\0ôœ]@&…68~üGÑN…UO­$?:–<üôÊMwÕ÷¾íïúß|ôhòH3y´™<q4	UuÃÍ·¬¹ïP\rM@ÏÙµ\0dÒš.*¾ë¢;¿sï­w--,.İxpéÆÛï¹éÎCÿuó·¿y×ıÿsğoüî·wá{îº÷Ÿû§+Ş{é{SoMÀÀ°kÈ¤VS=¹z|èCÙ†ß{Ï{ÖÜq¨†¦ çìZ\02©ÕTOİM@ÏÙµ\0dÒ©¦:ñ¸ÑíĞT\0ôœ]@&µšê1£Û¡©\0è9»€Lj5Õ£F·CSĞsv-\0™ÔjªGŒn‡¦ çìZ\02©ÕTËF·CSĞsv-\0™¤©4\0}Â® “ZMõÃë—¼Ùcu®ßze¶÷{R«4íMÀ ±kÈ¤Ğ\'N<¼CcõÂ×?Pçšõ:İÚ6—³CO-íMÀ ±kÈ¤V~<Ôó±e=›õVßlëuÛğî›]Ø‰\'˜ö¦`ĞØµ\0dR«:ìùØl±«¯ï\\n_8íšlxƒU\r¶vÛYæ™<Á´7\0ƒÆ® “ZÕñ@ÏÇf‹]}}çòO¢hƒ;nù~×ÆËéüë=µÎc¥½é\04v-\0™Ô\nô|l¶Ø\r¯_såê¿vuyõ…z^«4íMÀ ±kÈ¤kªÍß_êñr:]Wš\n€±kÈ¤V~|?•±e/=›­/¯¾ıú;ºòio:\0]@&Ê“õ«bÃËíkşÚ¹¼iwm²œ5KØ¹\'•ö¦`ĞØµ\0dR+?îïùh/¶³ğÕ²şÊíÜx;—;ËÙpQ=‚io:\0]@&µªã{=íÅ®Yøš+×\\Xı†ËÜâúŸÔÔéÕ“\'˜ö¦`ĞØµ\0dR«:õv¬^æºìm|ıFíÛj±k–³ÅãöüÙu–Ÿö¦`ĞØµ\0dR«:î3ºš\n€³kÈ¤VSİkt;4\0=g×IšJSĞ\'ìZ\02)´ÁÉ“÷İM@ÏÙµ\0dR«©¾kt;4\0=g×I­¦Z2ºš\n€³kÈ¤VS}Çèvh*\0zÎ® “víÚõì³·Ÿ<ùm£«¡©\0è9»€L\Z½ÿş¯<y·ÑÕĞT\0ôœ]@&ıÇÜÌÉä[ÆöÇw–¾’ËåÒŞt\0\ZMISSS““ïO½R²5ş¥úÉJ¥’ö¦`Ğh*€Lª×ë¹Ü›mŞz2¹ËØæ(•Ş=;;›ö¦`Ğh*€¬ÚÊøÉäNc;ãßkW.¥½Ñ\0@š\n «šÍf±ø……K’;Œ­Çòòõ¹Ü›\ZÒŞh\0 MaKKKùüKK³I²hl6BP…øœŸÿBÚ›€Á¤©\0²maa!dÕÔÔŸ$ÉíÆú1;ûé\\nt~şŸÓŞP\0,MyÍfsr²R,¾½Zıëååk“ä Ñhüw­ö·åò¾R©.§½‰\0dš\n`@ÌÏÏW*¿½gÏkFÙ½ûååòÅ!«ÒŞ,\0>M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄûÿµS!6Keã\0\0\0\0IEND®B`‚',0),('115',1,'qjlc.bpmn','113','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"qjlc\" name=\"è¯·å‡æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤è¯·å‡ç”³è¯·\" activiti:assignee=\"å¼ ä¸‰\"></userTask>\n    <userTask id=\"usertask2\" name=\"é¡¹ç›®ç»ç†å®¡æ‰¹\" activiti:assignee=\"æå››\"></userTask>\n    <userTask id=\"usertask3\" name=\"æ€»ç›‘å®¡æ‰¹\" activiti:assignee=\"ç‹äº”\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts<3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts>=3}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow8\" sourceRef=\"usertask3\" targetRef=\"endevent2\"></sequenceFlow>\n    <sequenceFlow id=\"flow9\" sourceRef=\"usertask2\" targetRef=\"endevent2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_qjlc\">\n    <bpmndi:BPMNPlane bpmnElement=\"qjlc\" id=\"BPMNPlane_qjlc\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"120.0\" y=\"231.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"210.0\" y=\"221.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"110.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"330.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"380.0\" y=\"228.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"760.0\" y=\"215.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"155.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"210.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"315.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"380.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"400.0\" y=\"228.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"400.0\" y=\"268.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"250.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow9\" id=\"BPMNEdge_flow9\">\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"215.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('202',1,'transfer2.bpmn','201','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"transfer\" name=\"ç‰©æµé…é€æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"checkWorkOrderManage\" name=\"å®¡æ ¸å·¥ä½œå•\" activiti:candidateGroups=\"ä¸šåŠ¡å‘˜\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"checkWorkOrderManage\"></sequenceFlow>\n    <userTask id=\"outStore\" name=\"è´§ç‰©å‡ºåº“\" activiti:candidateGroups=\"ä»“åº“ç®¡ç†å‘˜\"></userTask>\n    <userTask id=\"transferGoods\" name=\"è´§ç‰©é…é€\" activiti:candidateGroups=\"å–æ´¾å‘˜\"></userTask>\n    <sequenceFlow id=\"flow3\" sourceRef=\"outStore\" targetRef=\"transferGoods\"></sequenceFlow>\n    <userTask id=\"receive\" name=\"é…é€ç­¾æ”¶\" activiti:candidateGroups=\"å–æ´¾å‘˜\"></userTask>\n    <sequenceFlow id=\"flow4\" sourceRef=\"transferGoods\" targetRef=\"receive\"></sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow5\" sourceRef=\"receive\" targetRef=\"endevent1\"></sequenceFlow>\n    <exclusiveGateway id=\"checkYesOrNo\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow6\" sourceRef=\"checkWorkOrderManage\" targetRef=\"checkYesOrNo\"></sequenceFlow>\n    <sequenceFlow id=\"flow7\" sourceRef=\"checkYesOrNo\" targetRef=\"outStore\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${check==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow8\" sourceRef=\"checkYesOrNo\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${check==0}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_transfer\">\n    <bpmndi:BPMNPlane bpmnElement=\"transfer\" id=\"BPMNPlane_transfer\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"30.0\" y=\"115.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"checkWorkOrderManage\" id=\"BPMNShape_checkWorkOrderManage\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"110.0\" y=\"110.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"outStore\" id=\"BPMNShape_outStore\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"403.0\" y=\"170.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"transferGoods\" id=\"BPMNShape_transferGoods\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"563.0\" y=\"170.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"receive\" id=\"BPMNShape_receive\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"723.0\" y=\"170.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"860.0\" y=\"180.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"checkYesOrNo\" id=\"BPMNShape_checkYesOrNo\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"250.0\" y=\"117.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"65.0\" y=\"132.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"110.0\" y=\"137.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"508.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"563.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"668.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"723.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"828.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"860.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"215.0\" y=\"137.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"250.0\" y=\"137.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow7\" id=\"BPMNEdge_flow7\">\n        <omgdi:waypoint x=\"270.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"270.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"403.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"270.0\" y=\"117.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"270.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"335.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"583.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"877.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"877.0\" y=\"180.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('203',1,'qjlc.png','201','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0q\0\0g\0\0\0ŸÕXª\0\08ºIDATxœíİ{ŒcgaøïpYÔË5KŠš¡ü«…®HqQÕªf§RÛX-\".¤–ha$Z:ªPµ…­\né¨¢0ê¢¡…Ôj•oĞF#Ò)Iè´$ašËf’’,1äÂäŠÓì&Îîìîù½kƒ3ÌmÇïzöøØÏ£W+¯×>>3ãs>kÏ{F\0\0\0b¤½\0\0\0¦©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0D³Ù¬Õjår¹X,«ğÜÃW T*U«ÕF£‘öf`ği*€A077Z\"Õ•W^yİõ×ßwèĞ±••áá¹‡¯À.»ì²ğ5	e•öÆ`Ài*€lk4\Z•Jeß¾}<øÀ±•cÆêñØã…²\n_œååå´7\0KSdXª|>ÿÅ+¾plå¨±Ù¸ú«W_xá…õz=íÍÀ`ÒT\0V©TZAõœ±õ¸îúk/ºè×ÒŞ\\\0&MUsssûö]¼r¼ilgüùG?rùåŸH{£0€4@&5›ÍÑÑÑª¯ÖØÎ8|äG{÷şòÒÒRÚ›€A£©\02©Z­V*••ãÏtÆ»Æ~k›³¯¾×PË/ÿ›ÉÉÉ´7\0ƒFSdR©T:pÕ—ª‹÷ı0I¾\"¹w%ùöÑä£É­‡O_õõ¯=ôÔÍÇ’ÿm&77“I®}.ù‡îúÀøSÏ›TÆmòù|Ú›€A£©\02)—Ëİ}÷í+Ç´ÇÈÈÈá$9r2yêxòä±ä™$ù³¿øøÈ¶pqé¡•ä£ÉÏ%õfrßñäËß¼£õVÕ‘!‡<±k×®´7\0ƒFSdÒîİ»â¡•ã‡Û#dÒ3\'’£\'NıÓñ“§şüÊ5ÿyŞ›ßò—ŸüûãIòôñä©•äÉ•¤‘$×Şrg«©çÏ=İ\rÀà±kÈ¤V=İá¯G\'O<›;ñã4\ZÏ|öóŸøÔgxøÔénWN&ÇZ­uÓmw¬¹ïP\rM@ÏÙµ\0dR«‹ş¯3N5Õ‰ä±g’G\'+IrìèÑÜŒŒœ32²ë=¿Ùê;Şzğö5÷ª¡©\0è9»€LjuÑSÑşìßÏ&?<ú\\rëİß;÷ÜsÏyÑK^öÊ×–ß÷SMuËm×Üw¨†¦ çìZ\02©ÕEÎ}ödòdóÔûT=—\\ËÒ[÷¾ıµ¯{ı+w¿êóÿúåç’äğÑä™£§îxÃÂ-kî;TCSĞsv-\0™ÚàøñuF;BV=µ’üèXòğÓ+7İUßû¶w¼ë7~óÑ£É#ÍäÑfòÄÑ$TÕ\r7ß²æ¾C54\0=g×Ikº¨ø®‹îüÎ½·Şµ´°¸tãÁ¥o¿ç¦;ı×Íßşæ]÷ÿÏÁ{¾qğ»7Şşİ…;î¹ëŞ|îŸ®xï¥ïM½m4\0Ã® “ZMõäêñ¡}pd~ï=ïYsÇ¡\Zš\n€³kÈ¤VS=at;4\0=g×I§šêÄãF·CSĞsv-\0™ÔjªÇŒn‡¦ çìZ\02©ÕT\ZİM@ÏÙµ\0dR«©1ºš\n€³kÈ¤VS-İM@ÏÙµ\0d’¦ÒT\0ô	»€Lj5ÕãÆ†ç­êv	½}¬ÍØ¹~ı…èçö¦`ĞØµ\0dRhƒ\'ŞşèôÌš+7»ÙzŞqÃÛ¬şëê+W_ØâÖ,j³qCSĞsv-\0™ÔJ‹‡º\Zkî²á6[ìêë·sÇÎ_7»°õúŸöî§]ÂKN{Ó0hìZ\02©Uv5:wÙä}¡ŸºÍ÷]Ëõ÷ÚÎcmxû5Wvn¿õ\ntõEH{Ó0hìZ\02©Ut5:wYßÕÿ´ù‡ñ~êkî»f™ëkÃ[?Öf7Şğ)lÿ‹ö¦`ĞØµ\0dR+*~ĞÕèÜe;6»ï·_}åOâg»uÚËkŞís_½À´7\0ƒÆ® “Rlª-n¼Y­{jÓZ“L[´™¦ OØµ\0dR+-¾ßÕèÜeë›wÎÚ¬¿ıúÇÚæ5^^ó¸›-§Û/BÚ›€Ac×I§Òâd½«ñãDi]è\\³Ù…õ÷İzÉ›]³qmşO«oĞÕ\Znÿ‹ö¦`ĞØµ\0dR+-îßşXûö5k®ßl±ëo¶úš\r~Ú%o¶„\r/wÖvÍ5İM@ÏÙµ\0dR«(¾=Vß}ÍåÍß;zş[,m›·Ùæ¿®ÜÕ×Ä=ñ´7\0ƒÆ® “ZEq(bü$NÖ^¹æÂf7X¿¨uéušl¶¨­Wuõ\r¶XÎv~Ú›€Ac×I­¢¸Ïèvh*\0zÎ® “ZMu¯ÑíĞT\0ôœ]@&i*M@Ÿ°kÈ¤Ğ\'OŞct;4\0=g×I­¦ú®ÑíĞT\0ôœ]@&µšjÉèvh*\0zÎ® “ZMõ£Û¡©\0è9»€LÚµk×³ÏŞ~òä·®†¦ çìZ\02ittôşû¿vòäİFWCSĞsv-\0™466ös3\'“oÛßYúJ.—K{Ó0h4@&MMMMN¾?õJÉÖø—ê\'+•JÚ›€A£©\02©^¯çroz¶yëÉä.c›£Tz÷ììlÈªP¤ËËËioC\0„¦Èªı§ŒŸLî4¶3ş½öwåòXÒÊÑÉÉÉ={ö”Ëåùùù´7#\0™§©\0²ªÙl‹ïXXø·$¹ÃØz,/_ŸË½©Ñ¸aõ°V«‹Å\\.733Óh4ÒÚ\0d¦È°¥¥¥|ş‚¥¥Ù$Y46!¨B|ÎÏa³¯áøøø={ÂŸáòYŞ‚\0\0Mm!«¦¦ş$In7ÖÙÙOçr£óóÿ¼õ—±ÙlÎÌÌär¹B¡P­VÏÊ¦`@h*€Ì=09Y)ß^­şõòòµIrĞh4ş»VûÛry_©T—·ÿÅZ©TöìÙ399Y¯×wl£084À€˜ŸŸ¯T~{Ï×Œ02²{÷ËËå‹CVÅ}1———§¦¦FGGÇÆÆæææz»¥\00š\n`(xË%NªU!®L¿Àf4À\0\n5==}É%—äóù7¾ñï~÷»Ã…´W*ÃÚÓ¯‡²ªT*i¯\0ıESååå_ıÕ_]ó)¸_ø…_øùŸÿys…Ÿ¹f³Y­V…B.—Â_Ó^#\0ú‚¦ÓÓÓ/zÑ‹VÕÏıÜÏíŞ½ÛÑo---µç±0ı:\0‰¦$¡Â±şk_ûÚvP…¾zÛÛŞ6;;›öz\r¦F£Ñ~}ll¬V«¥½:\0¤FSš¥¥¥×¼æÔì—^zi8ÜO{ußÜÜ\\¹\\nO¿n€!¤©\0J³Ùç;ßù’—¼$—ËùdÚYÓ~=”Uè+Ó¯M08Âa}±Xœ™™	eõâ¿8\\N{†Q­VkO¿6„©A\0†¦óóóù|¾3Ó÷øøøââbº«4ÌêõzØ{öì©T*6À`ÓT\0ƒ`zzºX,úe~Ó~=´n¡P0ı:À ÒT\0ÙÖh4ÊåòÄÄDÚ+ÂVÚÓ¯ONNÖëõ´W€^ÒT\0¶´´T(Lä!€§¦¦FGGM¿0H4@V…ƒòTföË¢öôë!®BbùÄ&@Öi*€Lš˜˜å¦•Ë´z½>99Ù~½3¹\0™£©\02¦=aúôôtÚ+BÏ´ßrÌår¦_È\"M%ù|~~~>í¡÷–––ÆÇÇGGGÃŸ>Ò	!š\n 3fffL˜>ğ\ZFØĞ¹\\®=ızÚ«Àéi*€h6›åry||Ü	†‡é×²BSô;¦³åååöôë¥Rinn.íÕ`š\n ¯ÍÎÎ† Z\\\\L{EHYøNkO¿n€¾¢©\0ú×şıûK¥’h::Ó¯W*Ó¯ô	MĞBG‹ÅĞTi¯ı¨ÙlV«ÕB¡ÏçÃ¿e.MĞwM˜Îv„o•ö<¦_H‘¦è/333…BÁ<ol_gúõ±±1s™\0œ}š\n _4›Íñå\"ÎÜÜ\\¹\\Ş³gÏşıûÇà¬ÑT\0}¡^¯\n…™™™´W„Ì5š*”Uè+Ó¯œš\n }óóóù|Ş„éôV­VËår¡ÕÍ	°s4@Êöïß_,ò²C–––ÆÇÇÛÓ¯›Ç`\'h*€Ô„*•J&Lç,hO¿Ëå\n…‚é×zKS¤cqq1İÎÎÎ¦½\"—………öôë“““¦—è	M‚Z­‚Ê±HK£Ñ˜šš\Zö\0gHSœUí	ÓËå²_ÑæææJ¥Rˆ«X¦_ˆ£©\0ÎpÌZ,M˜N¿©×ë“““íy,Ò^€ŒÑT\0gI{Ât¬ô³jµZ(L¿ĞMp6LOO‹EŸ­\"ÚÓ¯†?ıÖÀii*€Õh4ÊåòÄÄDÚ+İ	ßº333íé×kµZÚ«Ğ¿4ÀZZZr<JÖ-,,”ËeÓ¯lFSì¦3H–——ÛÓ¯‡¾š››K{u\0úˆ¦ØáĞÓoù3xjµÚØØXˆ«ééißá\0‰¦è¹ö„éáp3íT¯×\'&&L¿h*€Ş\n—ù|~~~>í³¡Ùl¶§_ßöá‚3YÃISôÌÌÌŒ	ÓN‹‹‹•JeÏ=ãããæ±\0†¦èf³Y.—ÃÑ¤ÿ§g˜µ§_3İ%0<4À™2a:¬177×~}jjÊ;·ÀÀÓT\0gdvv6ÕââbÚ+}\'ÔÔääd(«ĞW~É`š\n ŞşıûK¥’é¤akµZ­X,ær¹™™?/ÀàÑT\01Âqa8FM•öŠ@f,--·§_w.l`h*€®-..š0â´§_Ïår…BÁôëÀ`ĞT\0İ™™™	Ç‚f‹†3´°°P©TFGG\'\'\'ı@™¦©\0¶«Ùl·øŸuè•ååå©©©öôësssi¯@M°-õz½P(ÌÌÌ¤½\"0˜BP…¬\nquö§_o6›³³³í)gŠ?V&\\S­VÍœ–¦8½ùùù|>oÂtØiõz½=ız¥RYXXØé‡):jätÂÿÌÌŒ7¨Íh*€ÓØ¿±X44œMÕjµP(´§_ß‰˜™ŸŸË?mM­6::\Z\Z¬çk\0M°©ĞQ¥RÉ„é–ÎôëáÏ^M¿\n­R©¬\'êÏÿü£\\uİõ_ïŒ}ìãûöí[sK§¤ÖÓT\0[\\\\,\nş[\ZR\Zfff&—Ë‹ÅZ­v&‹Z^^^óöÔ‡?ü§÷:tlåøfã±ÇŸøÇÏ}.tİê7¬|XMSl ·…/§%…¾2??_.—CŞLNNn6uÄŞ½{ßùÎwnøVR½^9ÔI£±±±­kjMY}ìcïÜw×®]gá×½€¬ĞTô…f³aÃ²X,®Şá\r›ğÜÃW T*U«UŸ-IK{Âôğİè÷Ñ¡?µ§_e~N×L¿^9Û/§oyË[Ö¼Š†ŸèÕïP}òòË·YS«Ç•Wş¿PSWlSmšŠô…=bØ3…]ã•W^yİõ×·ş×pe8Gxîá+pàÀË.»,|MBY¥½q†N8B\nYkÂtÈ„Z­Ö~}zzº]PŸùÌgÚÁó3?ó3_|ñê‡½L\'¨¸*\"¨ÚãÖÛîŞ½»½œğr‘ÒSú‹¦\"MaX©TöíÛ÷Àƒ[9f¬=şX(«ğÅñÿ gM{ÂtŸçl©×ëíé×Ï;ï¼N8½á\roøÔ§>Õ¾Íììì¾Cµz\\ıÕk:K9—îÓú¦\"5!¨Âñë¯øÂ±•£Æfãê¯^}á…†#†´7×àFÅbQÁBF5›Í_ÿõ__óê7¾ñíÿ%	»›ö5cccgTíÑùİªĞr>\'h*RS©TZAõœ±õ¸îúk/ºè×ÒŞ\\ƒ,ä}¹\\˜˜H{E€xùÈG:oO½úÕ¯~éK_úæ7¿ù¼óÎ5U«ÕÚÿ´k×®|¨\'Mõôá#™\0½z\0šŠtÌÍÍíÛwñÊñ¦±ñçıÈå—\"í6˜–––\n…ÂÎÎ¤nrr²óöT±X|ßûŞ·oß¾=]tÑ/şâ/¶¯ÿğ‡ÿ´\'AÕ_¼âŠöbwïŞö³R¦©HA³Ù}ğ¡úÊñgíŒÃG~´wï/›×»çL˜ïÀÖêÕ›Tqşù£í%ÏÏÏ§ıD4i*RP­V+•ÊÊñg:ã]c¿µÁÌâY}¯¡\Z—_ş7“““ioº211Q.—ÍYƒ-ìq:o^õ6¨ÂøÀ>Ø^¸×gršŠ”J¥W}éù ºxß“äû\'’{W’oMî8šÜzøøôU_ÿÚCOİ|,ùßfrs3¹á™äÚç’¸á®Œ0õ¼IeÜvp!ŸÏ§½éÒÔ%²\'	Ô0İl]0ÆÇÇ{5İßúqİõ_o/¼P(¤ıD4i*RËåî¾ûö•ãGÚ#ì\'É‘“ÉSÇ“\'%Ï$ÉŸıÅÇG^ø³…‹K­$Mx.©7“û\'_şæ­·ªá8|ä‰]»v¥½éRRê¢‹.úâW„:Ã¬ZX8U§>¨Cbll¬=Wõš7Õ}‡µ>::šöÒ¤©úH³Ùœİ¿©T*şDØ„kjµÚ }Bi÷îİ?ñĞÊñÃíöFÏœH8õOÇOúó+×üçyo~Ë_~òï\'ÉÓÇ“§V’\'W’ğü¯½åÎVSÎ{º.-í ºõ¶ƒÇZgÛ<“¬š™™1a:•Î,êí×ÎGÓÓ~¢@š¼ô…R¡víÚj*ÔW]wı×Ûãê¯^ó±}¼\\.‡)\nÕj5í•íV=İá¯G\'O<›;ñã„#æÏ|öóŸøÔgxøÔ±ïÊÉäX«µnºí5÷ª1œûìÕAÕqYÕl6ÃÏÑøø¸3ÉÀPéÌx~ß¡C;ÑTå§ıD4y	HÙââb8:)µÏ$ÜpãM—]öğ±¥Vı_gœjªÉcÏ$NV’äØÑ£¹.9gdd×{~ÿ²Õw¼õàíkî;Tc÷Ùëƒ*.«L˜C+—Ëµ›ç[wß½Mµk×.Mx	HÓÔÔT¤ë®ÿzW/ßáh2efú¿Û[]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª1lûìÍ‚ªÛ¬š\rAµ¸¸xÖè7á…¢İ<İîm·3{ü	§¨M•–öÇ&\'\'£_ÇÿñsŸËî¯…´º¨Ñá¯ÏLlzŸê±ç’ëoYzëŞ·¿öu¯åîW}ş_¿ü\\’>š<sôÔoX¸eÍ}‡jUSmTÛÏªö/(Ò¯#]©T*íì	ûÍ7Õ·î¾»½ğ!Ÿ—¢C´ş‚ªı1¤3|)¿áÆ›ÂrêõzÚO¨ka÷süø:£\n!«ZI~t,yøé•›îªï}Û;Şõ¿ùèÑä‘fòh3yâhªê†›oYsß¡\ZÃÓTÛ	ªÓfU¸2üShª³¾ú@™ššjgÏe—ıAÏ›ê“—_Ş^x¹\\Nû‰i\Z–C´¾^yÏ<¨:”!«2÷!À5]T|×Ew~çŞ[ïZZX\\ºñàÒ·ßsÓ‡şëæoó®ûÿçà=ß8øİoÿîÂ÷Üuï>÷OW¼÷Ò÷¦Ş6šjGm?¨¶ÈªÅÅÅøÍCàÌ---u>÷ôá#½mªğbÕ^ø`Ì DŠC´¾255u&ù[?¸ªT*¥ı´ºÓjª\'W}èƒ#Ûğ{ïyÏš;Õ†¦ê6¨6Ìª™™™Œ¾…ì„ÑÑÑöN$ì1{¸ÿíœœ*ğcrƒˆÖWÚÿwŞÛÿ$ãø`8ˆLûÉu¡ÕTOİoª¸ ZU<òÈxKæŞ¼vÎääd»|öîİÛÃ·ª~ç’KÚ‹ÍÜÿl=7à‡hı&ÕNœsğ:ÿüÑDjªİÁnªõAuõW¯¹à‚Üf§”yìñ\'ÂáÑ¯¸bMVùßb`ğ²°{÷îvÿ|òòË{²ç½áÆ›:oR™VäC´~3;;[*•zTíñáÿéôôtÚOq»ZMõ˜Ñíà¦Ú0¨Úg}9ÿüÑõYÕªöÑŒ¬Ú>ò‘¼úÕ¯^ÿ¹ñW¼âo}ë[Û—ÃË™Oª^”:§úOûyéØC´>õvâä·ªÂë{ÚOq»ZMõ¨ÑíÔ¦Ú\"¨ÚÖdÕê ’U@Ç¯üÊ¯¬©©ğJòú×¿ş£ıhø×B¡Ğ¾2ì.7{|;ãéÃG:/AaQ=©	Ğ[ƒyˆÖ‡Ú<Ø¡ j/¼paa!í\'º-­¦zÄèvdS­ªp¼ÒùàõYµ>¨Ú‡M<ø¬‚!W¯××¼Oõ»¿û»•J¥ó¯O\0†™¸â‡—šÎKPxå1¹(Ğ6€‡hı©Z­†—õmªO^~ùäädÚOôyµZm³‰×ZMµlt;²ÕT[|tl6)E¸¦sè³:«Ş~û†AuõW¯Y¿YCèßøÆË^ö²ö‹Ã‡>ô¡|>¿ú—C­~éèö,À7ÜxÓêÿñÉĞGî–¥C´LŸ™™ÙÑ¦ºîú¯‡ƒÈ´ŸèİsÏ=í]ÎË_şò¬ùWM5ğMµõ7@ÛÖ³üm˜U/yÉK¶T²\n†Ph§ıû÷şáşaÈª?¹\\niiiÍÍfggW¿¶ìİ»w³×5oO½÷ÒKW¿ø*`µÌ¢eİØØØv^µÏdÜwèĞùç¦ıD,ìÛ^øÂ¶w</~ñ‹é—~iõ[­¦úa·£s¯5GÕ[Üò´×oÿ–ÛY±¸ÇêêÒÛ¤İÙú ÙŞ´éfÕ6ƒJVÁP	…j*4Uûç}ß¾}\\pÁfÿÏB+äÖê“PVûØÇ¿u÷İëSê?÷¹°´Õ7¯K>ò¬‘™C´¬Û¡YÔW§	‡˜i?Ñç­ù•˜—½ìeïÿûÛŸÁ=qâánGç^«ï¾Ù¢¶¾~³côÕ7[}å†·éÕcuõH{«va‹o€íŸ‡j‹¬:mPÉ*µZ-ÔÔÄÄÄê¹\"Âå—¾ô¥³³³›İ+¼&„\0[=Îj^xáfÿT.—MJ¬—¥C´LÇ—«‡~‡Fx¹‡›Ä÷•\'êvtîµá¢âqÃëÛW®şó´ë°§÷¬×,!+Ûwk!¨¶?æÍÿ÷9çœ³f	/xÁ®¸â_¶¹„¾úX,Ğ+óóóù|>DÎ†¿ºyÚßçLZéU©T¶ùÂ^F²2pöiª³$—Ë­ÿPÁN4UÚOôy¯|å+;»¢RKØ!µ?Ú>rª.ÜşX¿o[ıO]-jûË\\ıçú‡Ûl6\\Ÿ-«ÛuN{«va‹o€ÅÅÅU=şÄi¿¥7œå¯mÃóVm¸„ğ¸ÎÈ	ƒ$üD[zò£İl6kµZˆ«Phk^gFGGÃk×ÌÌŒ÷¦€­eé-ÓvôäTíÑW¿OÕh4Ú;¤“ôGş{¬Î¿¶¢ânGç^ëúdã›­¹Ü¹ãf7^s›ÕË_ÿp›=Êš•Üú±\"¾)nÓ®lı\rl/«¶ªmf• ‚S¯×Cä„øñM@_ÉÌ!ZÖU*•Õ§%İ‰qÃ7]xá…i?Ñûş÷¿¿k×®±±±ÑÑÑÉÉÉ5¿ÍÒª‹t;¶s¯õ·YsMû¯›£¯¹ÍÖ´õB¶ùXİ~ÒÚ İÚú më¬Ú0¨^ğ‚l?«’åååñññğ’²ÅoI¤%3‡hY7==ıáÿé6Uh¶Ë.ûƒ´ŸèóÂn¯Z­nø‰öè¢Ø¬R6k¡Í®Ù¬µ6l¡5¸Ùí·¸¼Åc\rjS%[~tl–U›Ø÷ş¿ÏnxŞªõY%¨``´ç“5533“öº\0l,K‡h™,Ãş`G›jß¾}sssi?ÑmiEÅ÷·?VõÌO]¹Åí7»AçÊÂlÓ»¯¾×úG?íå-«Û¯CÚ›®÷ÖgÕfAÕåo³Ó¯Î*Aƒ¡Ùlv&I_}ê^€~3€‡h}kG§©xúğ‘p ™•]Î©¨8YïvtîÕ¾ğ|Ÿlyã­²áí×/ı½ÖgÒúõÙÎcuûH{ÓíˆõYuÙe°aPµÇú¬Ú·o_øT0HªÕj{’tçB\0úß`¢õ§ıøßßúÓaái?ÅíjEÅıİÎ½Ú¶XÈ7X½u-´Õİ7¼Í6/oñXİ~ÒŞt;e‹¬Úğ<T«³JPÁ€™Íår•JÅl{@Vì!Zj6›£££;q–ªp@yşù£Ú÷´¢â{İÎ½Ú6\\ÈOŠeã¿®¾fıõk.o}Íf÷íö±ºı\n¤½évĞ†YµÅ‰}ÛYµ&¨Î;ï¼/}éKi? Òüü|±X,•Jíó.\0dÅ ¢õ¡Z­öŞK/ò7©’7Õ¡®ÆOúäPçÏŸ~ÛçùlqßÎİW_XßÕ´ş–.³Ç=ícuûEH{Óí¬õYÂi‹ïüoİ}÷šw¨fgg…BµZMû©\0İ	?şí³Ø™$È¢?DëC¿sÉ%\\ÕÃ \n‡•{÷î\rG–i?³.´¢â>£Û1ğM•ts:àÕcõGşšÍf¥RÏÊ¯Â«×ëíóíš$È®Á?Dë7FãÂ/ìÕdíÒî;t(í§ÕVSİkt;†¡©’î³jÃß¡š™™)\n[Ïä¤+ì\'&&r¹œ÷–¬ŠC´~³´´²j³•vT¿sÉ%Wõš´ŸP×4•¦ÚÚö³j‹I)Â•şçúS³ÙlŸrjzzÚ[ÊÀ\0–C´~ööîİ{Ã7ÉGşB˜e1¨’VS<yÑí¦J¶—U§å¯Ñh”J¥ÉÉÉ³¹æÀÖ:§œ2I:00†è­ß„}I8düØÇ>Şí¯<}øÈßúÓí¦ı$\"µšê»F·c¨š*9]VmÚô©©©pËMŒ	ƒªV«µO9åç0ÃuˆÖošÍfhª.È…FêL_¶õøâW„ÛøÃ\Z(Ó^ıx­¦Z2ºÃÖTÉæYÕíy¨æççóùüÂÂÂ®-°™öÏ`¹\\ö[À@\ZºC´>´¼¼<11±{÷îß¹ä’Lë\'×\\yåÿ{ï¥—†Û\\vÙÀ©ÕTß1ºCØTÉFYwbßğƒV(¦§§wh=\r…Õb‹“qlÑúS³Ùœ­T*{÷î]sò¥pMªZ­60=ßµk×³ÏŞ~òä·®Æp6UòÓYTåry`~” ŸÕëõR©”Ïçr\nxCzˆFºFGGï¿ÿk\'OŞmt5†¶©’ŸdÕ}‡ùÿv×jµB¡°´´Ô«uÖX^^/õ&Ş†Äğ¢‘¢±±±ÿ˜›9™|ËØşøÎÒWr¹\\Ú›.M!¥Â!ZO>>‚*ŸÏ‡¸:óE«5\Zö$é333i¯ÀÙ£©HÁÔÔÔääûS¯”l©~²R©¤½éG³Ù,—ËãããÎ=~”:“¤û±†¦\"õz=—{Ó³Í[O&wÛ¥Ò»}Š¦çfffŠÅâ\0ÌûéªV«íIÒı²\"0œ4éØÊøÉäNc;ãßkW.¥½ÑÓÂÂB>ŸŸ››K{E “fggs¹\\¥RqÊ)`˜i*ÒÑl6‹Åw,,ü[’Üal=–—¯ÏåŞÔhÜöFXFcll,T~Ú+Y2??_,K¥’_\04©iÍpÁÒÒl’,\Z›T!>çç¿öæ\Z|¡©Â¢O.Ái-..†”\n?/&IhÓT¤©õ±«¦¦ş$In7ÖÙÙOçr£óóÿœö†\Zá\01—Ë…oË´WúT½^¯T*ù|Ş¯w¬¦©HY³Ùœœ¬‹o¯VÿzyùÚ$9h4\Zÿ]«ım¹¼¯T*†Ëio¢á²¼¼\\,M\rk4\Z‰‰‰\\.W­VÓ^€¾£©èóóó•ÊoïÙóšFFvï~y¹|qÈª´7Ë\n?>>^.—Í\rIë\'¢}Ê©ééi?\0ÒT\0¨Õjù|Ş/ß3ä:§œò«†\0[ĞT\0AU(B\\¥½\"‚ğß>å”IÒNKSlªÑh”ËåpXé#Oùùù|>¾ó`›4ÀiLOO‹Eÿ[ÏÀ[\\\\,¶„i¯@–h*€Ó[XXÈårÎÆÃ ª×ë¥R)ŸÏû&ˆ ©\0¶¥Ñh‹Åıû÷§½\"ĞKËËËããã£££N9MSt!4ÕØØ˜9Ğ\0áÛ¸=Iº²œ!MĞ¹¹¹|>ïNÈ®f³Ù™$İü+\0gNSt­^¯\nÿ»OU«Õö$éŞnèM£ÙlW*ÿÍOVÌÎÎær¹ğMkK€ŞÒT\0ñªÕj¡PXZZJ{E`+óóóÅb±T*ù^Ø	š\nàŒ,..†¬2g\Zı)|†”\nAe’t€£©\0ÎT£Ñ‡­i¯<¯^¯W*•|>/øvš¦èéééB¡à7UH]ˆüPø¹\\®Z­¦½.\0CASôÌÂÂB>Ÿ÷!+ÒÒl6Û§œ\n…oö€³FSôÒòòr±XœššJ{E:SN™$à,ÓT\0½799Y*•ÚrvÔjµö)§|ô š\n`GÌÎÎ\n…ÅÅÅ´W„A6??ŸÏçËår½^O{]\0†—¦Ø)KKK!«ÌÀN¹^lÑí\0©ÓT\0;¨ÙlV*•ññqĞ+õz½T*™\r h*€733S(|:‹3´¼¼ú|ttÔ)§\0úŠ¦8}•hF£=Izèó´×€µ4ÀY‹K¥ÒäädÚ+B–4›ÍÎ$é>A\nĞŸ4ÀY555U,ÍyÍvT«Õö$éæåègš\nàlkÏ½°°öŠĞ¿fggs¹\\¥R‘ß\0ıOS¤ (\n…ééé´W„¾’»X,–J¥¥¥¥´×€mÑT\0©™˜˜(—Ë>ÖEÛââbH©T&IÈM¦Z­V(¼#1äêõz¥R13$@Fi*€”… \nÓ!®Ò^RĞh4&&&r¹\\µZM{]\0ˆ¤©\0Ò×l6Ëåòøø¸É²‡GØÖíSNMOOÛî\0™¦©\0úÅÌÌL±X¬×ëi¯;®sÊ)¿M0\04@YXXÈçósssi¯;¥V«µO9e’t€¡©\0úK£ÑÛ¿Ú+BµÏKV.—½	0`4@?\nMU,}0l0,..[Â…´×€ŞÓT\0}j~~>—Ë-,,¤½\"Ä«×ë¥R)ŸÏ;åÀ\0ÓT\0ıkyy¹X,ÎÌÌ¤½\"t-l»ñññÑÑQ§œxš\n ¯5›Íph^.—M·F£=Iºš\n jµZ>Ÿ_ZZJ{EØJèŞÎ$é\Z`xh*€lAU(B\\¥½\"l¬Z­¶\'I7³À°ÑT\0™ÖËår8j÷H_™Íår•JÅ)§\0†“¦È˜éééb±èğ½ÌÏÏ‡mQ*•|,`˜i*€ìYXXÈår¦çNÑââbH©T¶\0š\n “\ZF8 ß¿Ú+2têõz¥RÉçó&I MSdXhª±±1“\"œáë<11‘ËåªÕjÚë@ÑT\0Ù677—ÏçÓ^‘AÖl6Û§œš6A\0kh*€Ì«×ë…BaÍfÿê¯şÊûW=Ñ9å”¯\'\0ÒT\0ƒ ÙlW*•ö»(ËËËçœsN¹\\N{½²­V«µO9e–E\0¶ ©\0GµZ-\nKKK—^zéÈÈÈ«^õ*o­Ä™ŸŸÏçó!JëõzÚë@¿ÓT\0åšk®yùË_>Òòú×¿şÿøÓ^£ŒY\\\\,¶ø5\0¶ISO}êS#?í\roxƒ6Ø¦z½^*•òù¼SNĞM08Şıîw¿â¯XİT/~ñ‹ßşö·§½^ınyyy|||ttÔ)§\0ˆ ©\0G£Ñ¨T*{öìÉår]tÑùçŸÿ¢½èÜsÏu>¥Í„¯X{’ô5³&Àöi*€AS¯×çççC*„¾zç;ß922òº×½.í•ê;Íf³3IºSNp&4Àà›œœ,•Ji¯E©V«íIÒÍ‹À™ÓT\0¢ÙlÖjµr¹\\,C0Œ«ğÜÃW 4d\'ÉÀY ©\0ÁÜÜ\\h‰TW^yåu×_ß¡CÇVV†s„ç¾¸ì²ËÂ×Äï’°Ó4@¶µç¥Ø·oß>plå˜±z<öøc¡¬Âgyy9í\rÀÀÒT\0‚*ŸÏñŠ/[9jl6®şêÕ^xa½^O{s0˜4@†U*•VP=gl=®»şÚ‹.úµ´7\0ƒISdÕÜÜÜ¾}¯o\ZÛşÑ\\~ù\'ÒŞh\0 MIÍfsttôÁ‡ê+ÇŸ5¶3ùÑŞ½¿¼´´”ö¦`Ğh*€LªV«•Jeåø3ñ®±ßÚælã«ï5TãòËÿfrr2íMÀ ÑT\0™T*•\\õ¥çƒêâ}?L’ïŸHî]I¾}4¹ãhrëáãÓW}ık=uó±ä›ÉÍÍä†g’kŸKşá†»>0şÁÔó&•qÛÁ…|>Ÿö¦`Ğh*€LÊårwß}ûÊñ#í122r8IœL:<y,y&Işì/>>òÂŸ-\\\\zh%yàhòÀsI½™Üw<ùò7ïh½UudÇá#OìÚµ+íMÀ ÑT\0™´{÷îÇŸxhåøáö™ôÌ‰äè‰Sÿtüä©?¿rÍ÷æ·üå\'ÿşx’<}<yj%yr%i$Éµ·ÜÙjªÃÃ9ÂsOwÃ0xìZ\02©ÕEOwFøë‘ãÉÏ&ÇNüøFã3Ÿıü\'>õÙ>uºÛ•“É±VkİtÛkî;TCSĞsv-\0™Ôê¢ÿëŒSMu\"yì™ä‘ÃÉJ’;z4wÁ##çŒŒìzÏï_¶ú·¼}Í}‡jh*\0zÎ® “Z]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª¡©\0è9»€LjuQ£3Â_Ÿ=™<Ù<õ>ÕcÏ%×ß²ôÖ½oíë^ÿÊİ¯úü¿~ù¹$9|4yæè©;Ş°pËšûÕĞT\0ôœ]@&…68~üGÑN…UO­$?:–<üôÊMwÕ÷¾íïúß|ôhòH3y´™<q4	UuÃÍ·¬¹ïP\rM@ÏÙµ\0dÒš.*¾ë¢;¿sï­w--,.İxpéÆÛï¹éÎCÿuó·¿y×ıÿsğoüî·wá{îº÷Ÿû§+Ş{é{SoMÀÀ°kÈ¤VS=¹z|èCÙ†ß{Ï{ÖÜq¨†¦ çìZ\02©ÕTOİM@ÏÙµ\0dÒ©¦:ñ¸ÑíĞT\0ôœ]@&µšê1£Û¡©\0è9»€Lj5Õ£F·CSĞsv-\0™ÔjªGŒn‡¦ çìZ\02©ÕTËF·CSĞsv-\0™¤©4\0}Â® “ZMõÃë—¼Ùcu®ßze¶÷{R«4íMÀ ±kÈ¤Ğ\'N<¼CcõÂ×?Pçšõ:İÚ6—³CO-íMÀ ±kÈ¤V~<Ôó±e=›õVßlëuÛğî›]Ø‰\'˜ö¦`ĞØµ\0dR«:ìùØl±«¯ï\\n_8íšlxƒU\r¶vÛYæ™<Á´7\0ƒÆ® “ZÕñ@ÏÇf‹]}}çòO¢hƒ;nù~×ÆËéüë=µÎc¥½é\04v-\0™Ô\nô|l¶Ø\r¯_såê¿vuyõ…z^«4íMÀ ±kÈ¤kªÍß_êñr:]Wš\n€±kÈ¤V~|?•±e/=›­/¯¾ıú;ºòio:\0]@&Ê“õ«bÃËíkşÚ¹¼iwm²œ5KØ¹\'•ö¦`ĞØµ\0dR+?îïùh/¶³ğÕ²şÊíÜx;—;ËÙpQ=‚io:\0]@&µªã{=íÅ®Yøš+×\\Xı†ËÜâúŸÔÔéÕ“\'˜ö¦`ĞØµ\0dR«:õv¬^æºìm|ıFíÛj±k–³ÅãöüÙu–Ÿö¦`ĞØµ\0dR«:î3ºš\n€³kÈ¤VSİkt;4\0=g×IšJSĞ\'ìZ\02)´ÁÉ“÷İM@ÏÙµ\0dR«©¾kt;4\0=g×I­¦Z2ºš\n€³kÈ¤VS}Çèvh*\0zÎ® “víÚõì³·Ÿ<ùm£«¡©\0è9»€L\Z½ÿş¯<y·ÑÕĞT\0ôœ]@&ıÇÜÌÉä[ÆöÇw–¾’ËåÒŞt\0\ZMISSS““ïO½R²5ş¥úÉJ¥’ö¦`Ğh*€Lª×ë¹Ü›mŞz2¹ËØæ(•Ş=;;›ö¦`Ğh*€¬ÚÊøÉäNc;ãßkW.¥½Ñ\0@š\n «šÍf±ø……K’;Œ­Çòòõ¹Ü›\ZÒŞh\0 MaKKKùüKK³I²hl6BP…øœŸÿBÚ›€Á¤©\0²maa!dÕÔÔŸ$ÉíÆú1;ûé\\nt~şŸÓŞP\0,MyÍfsr²R,¾½Zıëååk“ä Ñhüw­ö·åò¾R©.§½‰\0dš\n`@ÌÏÏW*¿½gÏkFÙ½ûååòÅ!«ÒŞ,\0>M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄûÿµS!6Keã\0\0\0\0IEND®B`‚',0),('204',1,'qjlc.bpmn','201','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"qjlc\" name=\"è¯·å‡æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤è¯·å‡ç”³è¯·\" activiti:assignee=\"å¼ ä¸‰\"></userTask>\n    <userTask id=\"usertask2\" name=\"é¡¹ç›®ç»ç†å®¡æ‰¹\" activiti:assignee=\"æå››\"></userTask>\n    <userTask id=\"usertask3\" name=\"æ€»ç›‘å®¡æ‰¹\" activiti:assignee=\"ç‹äº”\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts<3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts>=3}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow8\" sourceRef=\"usertask3\" targetRef=\"endevent2\"></sequenceFlow>\n    <sequenceFlow id=\"flow9\" sourceRef=\"usertask2\" targetRef=\"endevent2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_qjlc\">\n    <bpmndi:BPMNPlane bpmnElement=\"qjlc\" id=\"BPMNPlane_qjlc\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"120.0\" y=\"231.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"210.0\" y=\"221.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"110.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"330.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"380.0\" y=\"228.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"760.0\" y=\"215.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"155.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"210.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"315.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"380.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"400.0\" y=\"228.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"400.0\" y=\"268.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"250.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow9\" id=\"BPMNEdge_flow9\">\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"215.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('205',1,'transfer2.png','201','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0[\0\0f\0\0\0=‹\0\0%—IDATxœíİlÜ÷]?p¯?†;­ª…Fü3OüQk‹ÅÉˆº“¨«%¦ÖğGf©Ú4ÑU\rjƒXC„Ø°ønU[°@£ÉÅÒÚbÖ¦˜‘v¦M“ôG6/mVwi:¯iº+IškbÇŸï\'wííz¶/Ÿ³ïüù|îıxè%ë|¾ûÜçã×;ïÏû™;ßuD\0\0\0¡êH{\0\0\0R#\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—DëU,§§§wìØÑ÷¶îîî\0È¡øV9Å§¶©©©B¡ö™ZK\"‚µ‹ƒĞàà`gggù´1ı¶¹¹¹´w\r\0Ö\">…UNgñ©m`` ««+>ÍMNN¦½kĞ*¬Åüü|ùÿÏœ!\0h{åÿìííM{_ ù$\"hØÔÔTOOO|zH{G\0`ã:t(Eãããiï4™D™œœìëëó¢j\0T,‡††ÆÆÆÒŞh&‰\Z077×ÛÛ+¬8õõõÍÌÌ¤½#Ğ44`ëÖ­Î\0nnn®§§\'Fiï4‡DIMNN¦½\0¾;î¸ctt4í½€æˆ ©©©©´÷\0Ò7;;ÛÓÓ“ö^@sHDÈüüü¦M›ÒŞ\0È\n¯$§mHDˆ—Ì@5/œ£mHDˆy\0ªù¿BÚ†D‰ôõõùHV\0¨ğ§D´\r‰ñji\0¨677×İİö^@HDH<éÇSÚ{\0ÒÑa%I;0!‘®®®B¡ö^\0@†HD´ã1é@\r\'GÚƒq‰˜ô †“#íÁ8†DLú\0PÃÉ‘ö`C\"&}\0¨áäH{0!“>\0Ôpr¤=ÇˆI\0j89ÒŒcHÄ¤\05œiÆ1$bÒ€\ZN´ã1é@\r\'GÚƒq‰˜ô †“#íÁ8†DLú\0PÃÉ‘ö`C\"&}\0¨áäH{0!“>\0Ôpr¤=ÇˆI\0j89ÒŒã*‹ãããCCC}}}İİİ¡Š=ş\r\n…´Û²F&}\0x\'\'GÚƒqÜ*SSSqˆãĞ½÷ŞûğŞ½Ï=z~a!ÌŠ=ş\rLLLlÛ¶-şÄ¹(íæ¬…I\0j89ÒŒãæ+\nÃÃÃıııÇ^:v~á¼ª®¯ˆsQüË™ŸŸO»Q1é@\r\'GÚƒqÜdqêííıú¯_8§V«û¸Ë–-sssi·«&}\0¨áäH{0›lxx¸‡ŞTõëá½İpÃo¤İ®˜ô †“#í!åq\\,\'\'\'wìØ188Ø÷¶øšñññÜışÔÔTÿM‹E•¤>ÿ\'¼sçÒnZR&}\0¨áäH{HmÇA(N>qŠóÏÄÄ}ï}¤\\÷?ğàwŞ544ÔÕÕµuëÖ¼ü!~œîº»»_:>·°xV%©Óg~²yó‡gggÓn]\"&}\0¨áäH{Ha:t¨ü^Ìqò9¿°X¿ö=úØ¶mŸìííŞø]mHœÜ†‡‡ß¨Ô¿ğı©«ïTíÜù—###i·.“>\0Ôpr¤=lô8ŞµkWoŞûÈ%³PuíòÀ\r7Ü°}ûöb±¸Á;œ\\œñ&îû·ŸÆ¡›úE/^ˆ[ˆ¾{.zê\\´ÿôâè}|ëøëŸş·=^Œö½=ôfôwûùôöÏ¤NR©\'ÌÄã!íÖ]Z¡Pxï{ß›»—q@KID´‡Çq˜\Z\Z\Zi(U×Wî¹§¯¯/³ïÚÜÓÓsøğÁ…Å3åŠçˆÓQtf)z}1zí|ôFıÑŸİÕqÙ{·Ş4x|!:v.:öf4WŒ_Œ¾ñ§JO	°NŸ9ÙÙÙ™vë.!Bq ÿú=ñğŠ\0 B\"¢=lĞ8ãĞÖ­[ÇÇÇ×‡*/¢‹·“Íwmîêêzõäñ…ÅÓåŠçˆ7.Dç.\\üÑâÒÅ¯ß|ğ?ñ—>ôçwq1ŠN-F¯/D¯-Dñúú¡\'.%¢ÓaVÆ\'ÓrÚÿäòs•B\0Tdü$	mĞ8\Z\ZZª¼‚.E|ù\\)ÕœªTüí™ÅèäÙèü…·n¯¤ÿöË_ıÂß|ùØËŸæZXŠÎ—’ÒcO>Usß *Ë“iuª?¡\0Ê²|‡ä6bïÚµk=/–[^÷\rnÀ7¤”jş¯RÑ…èÄÑOGQtşÜ¹ë¯ïè¸¼££ó¿·­úû¬¹oP•ÙÉtyŠ\0 ZfOâĞ–ãC‡õöö61•ëÓŸşÌîİ»[½ó\r)¥š×+U~ÕÜÉ³ÑË§¢WŞŒöşÁu×]wùï¾êšk‡~ÿ‰è‰\'ÔÜ7¨ÊædºZŠ\0 \"›\'qhTËÇq‡V[V®§½tü}ïëÎÔkçJ©¦P©øÛ³KÑkÅ‹Ïx3ÚûÄì/oşÈµ?ÿ×tıìWÿéoFÑésÑç.ŞqßÌ5÷\rª28™ÖCB\0”eğ$kĞÚq<99988Øô8T®ÛoÿÜèèhK÷¿!ñ¤°¸ø“J•çˆ8½¾ıä|ôò©…Ç™Ûü+½ñ7ë•sÑ‹Ñ+Åèä¹(ÎDû¢æ¾AUÖ&Ó$qH(€H\"¢]´vÇëÅF?z¨¡§‰6mÚÔÒıoHMªé»ñ†§¿÷ÜşgfgÍ>z`öÑƒG{úè=şİï<óÂ·ùŸßôà÷g:òÌs?¼çï÷Ürë-©\'‰(j$	E\0©“8¬YÇq¼LìêêjQ*×–-[fffZw\r)%¢×ªë³ŸıLG¿û‰OÔÜ1¨ÊÎdÚhŠ\0\\vNâ°-ÇcccÃÃÃ-MDwïÜ922ÒºChH)TVF&ÓµÅ!¡€eä$ëÔÂq¼}ûöİ»w·4=¼÷‘x%ÚºChÈÅDtáUÕhea2]‡îàÁë¯ïyşèÑŞ‰WOnŞ¼ùë{öE\0„,\'qX¿ãxYÙÒD/Xß÷¾îÖÂrãããsss+ş¨”ˆN¨F+õÉtÅ8ÔÙÙïX<º–‡¢r*¿âQ( d©ŸÄ¡)Z8[ô¾ÛÕuêô™xåÚºC¨qäÈ‘ò:øê«¯˜˜¨ùi)½¢\Z­t\'Ó:q¨¬&UÇ!¡€ÀID´‡ãM›6{éxKQ\\ñ?Å¾’íÛ·ï(™œœœ.iú§Å¼ì²ËÊëà+¯¼òƒü`õóE¥DôcÕh¥8™.CqÆÇmÍ[_TBÑò8‹ãSõ8Š\0‡DD{há8îééyöğá\rHDåü³{÷îr\"\Z,g¤Êÿô—¿(ß`tt´|—ÙÙÙFªf¹|ÕUWİvÛmåèUJDóªÑjÅdZçÅ«½•B|MWW×òPtààÁãĞò—†\nE\0B\"¢=´p·ôÃˆÊ•ğïˆÊùgjjªœˆî¸ãrFŠ3[y]Ûİİğ‰¦_ıÕ_­^_sÍ5øÀÊïî e$ÕqcYıw–[1½ûİïN‡„\"\0Â!ÑZ8‡‡‡«ÿÄ¢µïÑÇ¶lÙ²ş]››KøDÓW\\QYÿzÉ¯ıÚ¯•Ÿk*%¢5±êl°úGë|Üòİ>VSqùÖÖßÁjõ_Ü%{£íCQÂ8$‰ˆöĞÂq<::zûíŸki\"Š×¶mŸlİ!T‹óÒı÷ß_^\r_{íµúĞ‡Şó÷|à¨<Ñ»páåõTõwÍökkùC\'ÙHõ}ëï|‡^µb2­óâÆäŸ;T\']2	E\0„@\"¢=´pÏÍÍuww·4õ÷÷OMMµîj¼øâ‹ñRx`` >®‘‘‘š•n)*_OÕßBõOË—W	<\rl¶ò£Õ¶S7Y­ë`«÷!\ru¨¹â8”üÅœÿ5ıß—_~yÍŞõ®wíÙó	·©Ì€æêˆh­Ç-}s…S§Ïtuu5ı\råê›œœ[ñ¯öK!á¥&ÖŠ¬^š×¹Ù%·Sı£ê¯uî»ÚåõfÓÛtÍ5×T~Kƒ%q,)¿¸ñĞ¡Cq(:ñêÉK°ßY®lÅÏ)ZqñãÆØô€,ˆh­Ç-}áÜ¿ô¥xã-İÿ†”BÂ±uV\'7jnVs¡æòŠ7^ñ±êß,áş¬ó›ÛˆB¡PŞÃ8êSŸŠ¿Wß I(ª‡†\"q€¶\'ÑZ;‹Åbwww+>•èÔé3ñ’t~~¾¥ûßRHøá:«z#u.—¿]Q.½Íš+—o¶fSI.¯ÿ›Ûˆú/n,«ŠVŒCïz×»’‡\"q€HD´‡–ãñññ[n½µíŸ Šš—ˆVN¦ö6ËóIğÓP\0kh²–ˆ¢º/n¬X-­ö1¬÷ÿ¾¼âç-Eâ\0ˆh1?~óÍ÷51={øp¼f=uúÌì|r¥ğâ:«z#+^._¨ó£úÛLøpng‡œVË–‡¢ÕâPùåVûğÖêP$‰ˆö°ã¸P(lÙ²¥Yo±P^³ÆkĞ\rØó†\\Ksë¬zÏÉ¼óf•W_³Ú6“ühùÃÕÙ™å»´CN±kËCÑ¶mŸ\\1•ky(êïïÃ¹8@€$\"ÚÃãÙÙÙ8%y{®KÆ¡ß|s¼Bİ˜İnH)!¼°ÎªŞÈj—Wü¶Î£\'üÑ%÷¿)¸âfÓm\\P´âçU‡\"q€¥~‡¦Ø¸q¯7oŞ¼ïÑÇÖób¹8Ve3Eo%¢4±êl°úG•Ë«İ¾Ñí¬aÖy˜i·nåPTçcXË¡H pY8‰Ãúmè8.\nñºóÎ;ïJòi0Õ¯;¿ø¥/•_z·‘;ÜR`8ÚÄª³ÁòŞ~jhåëë¾Úm…‡¸äş7ı\0+›M»u-Eqì©ŸÏÅ!\0—‘“8¬ÓFãb±\'¢ë¯ï‰NeAY¿¾¾gO|ûÛoÿ\\¼îÜà½mH)0<¯\Z­ìL¦É?¼µæ•œâ\0aÊÎIÖ#q<??Çwtuu}üæ›ãÀ³ü?ããkî½÷_n¹õÖø6Û¶}²şÛ(gD)=§\Z­LM¦†\"q€eê$k–æ8.‹“““ÃÃÃËßï8¾&Cããã+~¼f6IDmˆ¢FB‘8@à²v‡µ1›&––¨F+ƒ“i’P$@Oâ°ÆqÓ”Ñ÷U£•ÍÉ´~(‡\0 ’ˆhÆqÓ”Ñ¬j´2;™®ŠÄ!\0(ËìI\Zb7M)}O5ZYL—‡\"q\0*²|‡äŒã¦éìì<{öàÒÒwUC•ñÉ´:‰C\0P-ã\'qHÈ8nšîîî^øÖÒÒaÕPe2-‡¢ç‡\0 ZöOâ„qÜ4ÿ1µ{)zV%¯ïÍ~³§§\'íÖ]Z„âÄ+@5‰ˆö`7Í®]»FFnK=cä«şqìîááá´[—H^ö\06ŒDD{0›fnn®§çıg‹û—¢gTÂ\ZüØäädÚ­KÄ¤\05œiÆq3í¸hûRô´JRÿ:ş×CCi7-)“>\0Ôpr¤=ÇÍT,ûú>:3óÏQô”ª_óó{{zŞ_(ìK»iI™ô †“#íÁ8n²ÙÙÙŞŞëgg\'£èZ­â8GÇéé¯¥İ®˜ô †“#íÁ8n¾™™™8íÚõ‡QtP-¯ÉÉ/õôtOOÿCÚjŒI\0j89ÒŒã–(‹##Ã}}û‹ùù‡¢è€*ş{|ü¯††úûâËi·¨a&}\0¨áäH{0[hzzzxøw6mú¹::ºº®\Zº)Ei·e:Lú\0ğNN´ã1é@\r\'GÚƒq‰˜ô †“#íÁ8†DLú\0PÃÉ‘ö`C\"&}\0¨áäH{0!“>\0Ôpr¤=ÇˆI?ãŠÅâøøøĞĞP___www\Zï§˜	ñ±Ç¿ÁÁÁ±±±B¡v[šFËô·½å±¿N´ã1égÙÔÔT¼’ˆ—S÷Ş{ïÃ{÷>ôèù……0+>öø7011±mÛ¶øw¯«ÒnNè¯şRyéo_ãsbgggooo|aÓ¦Mñ×÷¼ç=³³³iï\Z¬‘E$\"eS¡Pîïï?öÒ±óçUuxõD¼®Š9óóói7jôWƒ­,÷÷ßÿıß—?Áuã7NNN¦½k°FyˆD”Añrª··÷ë{¾v~áœZ­îàş-[¶ÌÍÍ¥İ®†é¯şªlö·X,şÌÏüLuúğ‡?¼iÓ¦¼¼Ò–³ÈƒD$¢\Z.-§ŞTõëá½İpÃo¤İ®†é¯şªÌö÷OÿôO¯¸âŠJ\"úƒ?øƒ‘‘‘´w\nÖÎ\"‘ˆ²fjjª¿ÿ¦…Å¢JRŸÿ“?Ş¹ói7­ú«¿*ãı½îºëÊqèÖ[oíîî.‹iï¬E$\"eJ|êOÀ/Ÿ[X<«’Ôé3?Ù¼ùÃyù»gıÕ_•ış~ûÛß¾òÊ+ã“ãÀÀ€¿ \"ï,ò ‰(SÆÆÆ†‡‡ß¨Ô¿ğım«ïTíÜù—yyY‹şê¯şæ¢¿ûØÇÊ‰(íõ²ÈƒD$¢Lœ¸ïß~ºœº©ÿGQôâ…è¹…è»ç¢§ÎEûO/Ş÷È·¿şøùè‹ÑãÅhßÑCoF·ï™OoÿLê‹›TêÉ3½½½i·.ıÕ_ıÍEçççã“cÖ¼‚5°ÈƒD$¢Lééé9|øàÂâ™rÅİ9Eg–¢×£×ÎGoDÑıÙ]—½wëMƒÇ¢cç¢coFsÅèùÅèßyªôßÌg¬ÓgNvvv¦İºDôWõ7/ıur¤=ÇˆI?Sººº^=y|añt¹âî¼q!:wáâ—.~ıæƒÿù‹¿ô¡?¿û‹‹Qtj1z}!zm!*DÑCO<]ZQ³ò2ŒõWõ7³ı-‹“““;vìì{ÛÀÀ@|ÍØØX?=	’ÈÄ¿.È¾ŒœŠ(+­ŠNU*şöÌbtòltşÂ[7(\nûå¯~áo¾|ìå‹§ç…¥è|i¥õØ“OÕÜ7¨ÊË0Ö_ıÕßö7Bq\nºäßzõööîŞ½Û[Ï‘/ù˜=!uæ÷ì(­Šş¯RWT¢oD?>-DÑùsçz®¿¾£ãòÎOüŞ¶ê;î?p°æ¾AUê+ª„ôWõ7SıŞºukÂw¿(ëîîötäH>fOH]<¹gíSÃCVZ½^©ò«nN^>½òf´ÿğ®»îºË¯x÷U×\\;ôûïXQ=ñäšûU¹Z1ë¯şêoúı-‹ÃÃÃËŸúüçÿdbâ¾‡÷>R©;ï¼«¿¿¿æ–ƒƒƒ…Baãw\Z•ÙRŸ\0:”ö^ğ–Òª¨P©øÛ³KÑkÅ‹ÿÇ|âÍhï³¿¼ù#×şü/\\Óõ³_ı§o¼E§ÏEoœ»xÇ}3OÔÜ7¨ÊÕŠYõWSîïüü|ÍSC·ßş¹ç=¿°¸ZxõäWî¹gÓ¦MÕO9{’}ù˜=!u}}}ÓÓÓiïo‰Ï²‹‹?©Ty¡/ª^_ˆ~r>zùÔÂcÏÌmş•Şø›¿õÊ¹èÇÅè•btò\\¯©ö=şDÍ}ƒª­˜õWõ7İşÎÍÍÅa¦lêg¡š\\tçwUîÛÙÙ933³‘;ÊÇì	©K{/xKÍª¨ïÆşŞsûŸ™94ûèÙGyìé£ÿõøw¿óÌß>pä|ÿÑƒßŸyêÈ3Ïığ¿ßsË­·¤¾²	dEµfú«¿ú›n‹Åbõ³CwïÜ™0U×½÷şKœ…*Ïy:²,³\'¤®ü!ëiïo)­¨^«®Ï~ö3Ëş²w¿û‰OÔÜ1¨ÊÕŠYõWSëïĞĞPå×>1qß\ZâP¹ö?y «««¼¾¾¾\rÛhT>fOHİììlOOOÚ{Á[J+ª“ªÑÊÕŠ9ı_WîJÛ»6¬¿“““•8´¶g‡ªëş¬lmtttc\Z•Ù²À›+dÇÅÕ…WU£•§sÚ¿«<–ş¶wmXã“]9À¬3•«ò7E›6mò9dS>fOÈ‚ÑÑÑ;î¸#í½à¢ÒŠê„j´rµbNÿ×•»Òßö®éïøøx9½tvv{éxSÑ©Óg*ï>ç4J6åcö„,(‹ş64#J+ªWT£•«sú¿®Ü•ş¶wmLûúúÊÑåöÛ?×”8T®¯ïÙSŞlWW×4*³\'dÄôô´¿\rÍ‚ÒŠêÇªÑÊÕŠ9ı_WîJÛ»6 ¿…B¡ò7?Íz‚¨Rï{_wyË>Ê‚ÊÇì	Ù±cÇOúoŒñññ¹¹¹TZQÍ«F+S+fıÕ_•Jë´fll¬ò¾pÍCq}úÓo½£àÈÈHSš(C³\'äE<›\n…´w¤9r¤|î¼úê«\'&&j~jE•îŠjıôWU*ı­ßšíÛ·7ë-æ–×Ã{)o|ëÖ­ë?h®¬Ì/SSSİİİ;vìğgE-R,/»ì²òéóÊ+¯üà?XıŸš¥ÕZT•/¿Pÿúú[kÊÍÖhéµôÚ¦¿—ìæj—õwã+a_–ïŞj;¼ş¡²ñı­ßšòîàÁ¦\'¢ç-o<>{®ÿ@ ¹²2{Bî\n…8Å3{|\n‰/xatÓUŞ›¨ìª«®ºí¶ÛÊïÜ\Z{áÂË­¨ê-—//¬Ê5«íÆò¬x¹Ö]Ú]ı©œöwµ~Õô.Ééos½Y}Yş/qù6“•Ìö·Nk*ï»½ÿÉMODqU´)MdPÂºÄg‘©©©8UŞŸ‡qáÂñ¦WÍ–—?PùÛÊ•«íUÍF.yyÃª£ôç­oNd¹¿Ëo™n[õ·‰}Y¾…Õ®YñBŞû[	KÏ=ÚŠDTÙ~Ú§n¨ePuÍ5×TÎÓƒ%ñj`vv6zëÿ˜_jn•·Y½åå—kV5÷ªÜ¾şFê_niej!’Óş®¸\\­•õo¬¿Í=öæö¥Î€YñÂ´¸Yı­ÓšòõÏ>ÜŠDÔÙÙYŞ~SšÈ ²¨ò&°ñúSŸúTüu||¼òÓÒšãX+ª¼å·—5ÇŞ¹Ê9VıµæöÕ×¯¸Şªlä’·iéÑ¥ØÓjùíïj_WÜ~Íõ­®ûÛŠ¾,ßNÍ½V{ ,÷·~k*ÏA=¼÷‘¦Ç¡¯,oÜG‘AY™=ª½øâ‹İİİ###5ïìWZvü°•dËÕ·)_®şšpƒ•ë[w,+>hZ\r­‘ßşÖùúö‚{…Ú˜.‡Üßæö¥ú.+~[sıÆüsnJë·fxx¸|P_¹ç¦\'¢g.o¼··wıÍ••Ù ÆäääØØØŠŸ›Ñ¢eGÇêV\\-Õ,ƒÖˆ68egÅå¶¿«­•WÜH’‡Óß&6wı}©Ó ÕÆŠ²Üß:­ÙµkWù0·mûdÓÑİ;w–7>44Ô”&ÊĞì	PiÙñbÓ«z³+^®Z9ıôúÕ¾]¾o¼Ò²¬ù‡VyĞ´[—HúÛhß[Z!÷·¹}©ÿ³úoı±‘»şÎÎÎ–«««ëÔé3ÍMD7ÜpCyãqkõ@£ò1{T»¸òXškzUovµË•o+WÖ\\XñÆË¿­³UVÌîï\nkåº\r]ñúÛôcoz_VûÑŠo›şvww—pbâ¾&Æ¡Ê‡Å|¾9”Ù ZiññBëª¼ı·×=+ÿtµË5wYíÛpU+¹VWÚ­K$Gı­¹¾º¿õ·¦¿­èi³ú’ğö5Ú£¿###å\Z›7onâÓD¿ùæòf7à( Qù˜=ª•V?hE½½J¾Ä55ª¿­uêß·Õ•«sú[ıÓš/ßımÅ/¡é}©¾fµ^¾µ6èo¡P¨|jĞİ;w6%í{ô±JS:´GÊÇì	P­´ì8ÚÜz{	µêOk.×\\“p—–ßwùö[W¹Z1g´¿uzW¹Yåëjô·ÇŞ”¾ÔùéòŞ­ØÍ6èïèèhùĞ:;;×ÿ6ÜÏ=Z‰XÛ·oß˜C€Fåcö¨VZs<¯\Z­\\­˜Óÿuå®ô·½k#û»uëÖr†‰ÃLiÖ‡N>³yóæÊ¦æçç7ì !ù˜=ª•VTÏ©F+W+æô]¹+ımïÚÈşÎÍÍuuuU’Ìş\'¬!{éx%uvvNOOoØşC£ò1{T³¢ÊşŠj=ôWUêıLåµ‚qiô3[÷=úXåÅr±ÑÑÑÜyhT>fO€jñùuiéˆj´r´bNıw•ÇÒßö®ïïäädå™¢Ò»ÏİÿÀƒI\ZºåÖ[«ÿøJ\"ûò1{T+­¨¾¯\Z­\\­˜Óÿuå®ô·½+•şÎÎÎöôôTÇ›8İyç]Ï>¼<}å{úûû«o*/–#ò1{T+­¨fU£•«sú¿®Ü•ş¶w¥ÕßB¡°cÇÎÎÎ•lÙ²eµ\r\r\ry+ò\"³\'@µÒŠê{ªÑÊÕŠ9ı_WîJÛ»Òíoœm†‡‡WL>ËõõõÍÌÌ¤¸·Ğ¨|Ì\0Õ:;;Ï=¸´ô]ÕPåeÅ¬¿ú«²Ùßb±8>>G£ŞŞŞšÔİİ=88¸{÷nÏ‘GéÿëhT|ê}á…o--V\rUVTIè¯şªüöòÈ¿. şcj÷Rô¬J^ß›ıfOOOÚ­KDõWå·¿G?»ví\Z¹-õ5J¾êÇîN»u‰è¯şªüöòH\"ògnn®§çıg‹û—¢gTÂ\ZüØäädÚ­KDõWå·¿GK;.Ú¾=­’Ô¿ÿõĞĞ@ÚMk€şê¯Êo!w$\" —ŠÅb_ßGgfş9ŠRõk~~oOÏû…}i7­ú«¿*¿ı…Ü‘ˆ€¼šíí½~vv2Š©Õ*^NÅKÏéé¯¥İ®†é¯şªüöòE\"rlff&^TíÚõ‡QtP-¯ÉÉ/õôtOOÿCÚZ#ıÕß+ïı…‘ˆ€|+‹##Ã}}û‹ùù‡¢è€*ş{|ü¯††úûâËi·h]ôWC«vê/ä…D´ƒéééááßÙ´éç:èèèêºzhè¦xQ•v[šF«éo{k¿şBöID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„ëÿÑì¶+¬«ÚH\0\0\0\0IEND®B`‚',0),('209',1,'transfer2.bpmn','208','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"transfer\" name=\"ç‰©æµé…é€æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"checkWorkOrderManage\" name=\"å®¡æ ¸å·¥ä½œå•\" activiti:candidateGroups=\"ä¸šåŠ¡å‘˜\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"checkWorkOrderManage\"></sequenceFlow>\n    <userTask id=\"outStore\" name=\"è´§ç‰©å‡ºåº“\" activiti:candidateGroups=\"ä»“åº“ç®¡ç†å‘˜\"></userTask>\n    <userTask id=\"transferGoods\" name=\"è´§ç‰©é…é€\" activiti:candidateGroups=\"å–æ´¾å‘˜\"></userTask>\n    <sequenceFlow id=\"flow3\" sourceRef=\"outStore\" targetRef=\"transferGoods\"></sequenceFlow>\n    <userTask id=\"receive\" name=\"é…é€ç­¾æ”¶\" activiti:candidateGroups=\"å–æ´¾å‘˜\"></userTask>\n    <sequenceFlow id=\"flow4\" sourceRef=\"transferGoods\" targetRef=\"receive\"></sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow5\" sourceRef=\"receive\" targetRef=\"endevent1\"></sequenceFlow>\n    <exclusiveGateway id=\"checkYesOrNo\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow6\" sourceRef=\"checkWorkOrderManage\" targetRef=\"checkYesOrNo\"></sequenceFlow>\n    <sequenceFlow id=\"flow7\" sourceRef=\"checkYesOrNo\" targetRef=\"outStore\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${check==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow8\" sourceRef=\"checkYesOrNo\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${check==0}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_transfer\">\n    <bpmndi:BPMNPlane bpmnElement=\"transfer\" id=\"BPMNPlane_transfer\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"30.0\" y=\"115.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"checkWorkOrderManage\" id=\"BPMNShape_checkWorkOrderManage\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"110.0\" y=\"110.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"outStore\" id=\"BPMNShape_outStore\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"403.0\" y=\"170.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"transferGoods\" id=\"BPMNShape_transferGoods\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"563.0\" y=\"170.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"receive\" id=\"BPMNShape_receive\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"723.0\" y=\"170.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"860.0\" y=\"180.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"checkYesOrNo\" id=\"BPMNShape_checkYesOrNo\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"250.0\" y=\"117.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"65.0\" y=\"132.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"110.0\" y=\"137.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"508.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"563.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"668.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"723.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"828.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"860.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"215.0\" y=\"137.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"250.0\" y=\"137.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow7\" id=\"BPMNEdge_flow7\">\n        <omgdi:waypoint x=\"270.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"270.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"403.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"270.0\" y=\"117.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"270.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"335.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"583.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"877.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"877.0\" y=\"180.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('210',1,'qjlc.png','208','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0q\0\0g\0\0\0ŸÕXª\0\08ºIDATxœíİ{ŒcgaøïpYÔË5KŠš¡ü«…®HqQÕªf§RÛX-\".¤–ha$Z:ªPµ…­\né¨¢0ê¢¡…Ôj•oĞF#Ò)Iè´$ašËf’’,1äÂäŠÓì&Îîìîù½kƒ3ÌmÇïzöøØÏ£W+¯×>>3ãs>kÏ{F\0\0\0b¤½\0\0\0¦©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0D³Ù¬Õjår¹X,«ğÜÃW T*U«ÕF£‘öf`ği*€A077Z\"Õ•W^yİõ×ßwèĞ±••áá¹‡¯À.»ì²ğ5	e•öÆ`Ài*€lk4\Z•Jeß¾}<øÀ±•cÆêñØã…²\n_œååå´7\0KSdXª|>ÿÅ+¾plå¨±Ù¸ú«W_xá…õz=íÍÀ`ÒT\0V©TZAõœ±õ¸îúk/ºè×ÒŞ\\\0&MUsssûö]¼r¼ilgüùG?rùåŸH{£0€4@&5›ÍÑÑÑª¯ÖØÎ8|äG{÷şòÒÒRÚ›€A£©\02©Z­V*••ãÏtÆ»Æ~k›³¯¾×PË/ÿ›ÉÉÉ´7\0ƒFSdR©T:pÕ—ª‹÷ı0I¾\"¹w%ùöÑä£É­‡O_õõ¯=ôÔÍÇ’ÿm&77“I®}.ù‡îúÀøSÏ›TÆmòù|Ú›€A£©\02)—Ëİ}÷í+Ç´ÇÈÈÈá$9r2yêxòä±ä™$ù³¿øøÈ¶pqé¡•ä£ÉÏ%õfrßñäËß¼£õVÕ‘!‡<±k×®´7\0ƒFSdÒîİ»â¡•ã‡Û#dÒ3\'’£\'NıÓñ“§şüÊ5ÿyŞ›ßò—ŸüûãIòôñä©•äÉ•¤‘$×Şrg«©çÏ=İ\rÀà±kÈ¤V=İá¯G\'O<›;ñã4\ZÏ|öóŸøÔgxøÔénWN&ÇZ­uÓmw¬¹ïP\rM@ÏÙµ\0dR«‹ş¯3N5Õ‰ä±g’G\'+IrìèÑÜŒŒœ32²ë=¿Ùê;Şzğö5÷ª¡©\0è9»€LjuÑSÑşìßÏ&?<ú\\rëİß;÷ÜsÏyÑK^öÊ×–ß÷SMuËm×Üw¨†¦ çìZ\02©ÕEÎ}ödòdóÔûT=—\\ËÒ[÷¾ıµ¯{ı+w¿êóÿúåç’äğÑä™£§îxÃÂ-kî;TCSĞsv-\0™ÚàøñuF;BV=µ’üèXòğÓ+7İUßû¶w¼ë7~óÑ£É#ÍäÑfòÄÑ$TÕ\r7ß²æ¾C54\0=g×Ikº¨ø®‹îüÎ½·Şµ´°¸tãÁ¥o¿ç¦;ı×Íßşæ]÷ÿÏÁ{¾qğ»7Şşİ…;î¹ëŞ|îŸ®xï¥ïM½m4\0Ã® “ZMõäêñ¡}pd~ï=ïYsÇ¡\Zš\n€³kÈ¤VS=at;4\0=g×I§šêÄãF·CSĞsv-\0™ÔjªÇŒn‡¦ çìZ\02©ÕT\ZİM@ÏÙµ\0dR«©1ºš\n€³kÈ¤VS-İM@ÏÙµ\0d’¦ÒT\0ô	»€Lj5ÕãÆ†ç­êv	½}¬ÍØ¹~ı…èçö¦`ĞØµ\0dRhƒ\'ŞşèôÌš+7»ÙzŞqÃÛ¬şëê+W_ØâÖ,j³qCSĞsv-\0™ÔJ‹‡º\Zkî²á6[ìêë·sÇÎ_7»°õúŸöî§]ÂKN{Ó0hìZ\02©Uv5:wÙä}¡ŸºÍ÷]Ëõ÷ÚÎcmxû5Wvn¿õ\ntõEH{Ó0hìZ\02©Ut5:wYßÕÿ´ù‡ñ~êkî»f™ëkÃ[?Öf7Şğ)lÿ‹ö¦`ĞØµ\0dR+*~ĞÕèÜe;6»ï·_}åOâg»uÚËkŞís_½À´7\0ƒÆ® “Rlª-n¼Y­{jÓZ“L[´™¦ OØµ\0dR+-¾ßÕèÜeë›wÎÚ¬¿ıúÇÚæ5^^ó¸›-§Û/BÚ›€Ac×I§Òâd½«ñãDi]è\\³Ù…õ÷İzÉ›]³qmşO«oĞÕ\Znÿ‹ö¦`ĞØµ\0dR+-îßşXûö5k®ßl±ëo¶úš\r~Ú%o¶„\r/wÖvÍ5İM@ÏÙµ\0dR«(¾=Vß}ÍåÍß;zş[,m›·Ùæ¿®ÜÕ×Ä=ñ´7\0ƒÆ® “ZEq(bü$NÖ^¹æÂf7X¿¨uéušl¶¨­Wuõ\r¶XÎv~Ú›€Ac×I­¢¸Ïèvh*\0zÎ® “ZMu¯ÑíĞT\0ôœ]@&i*M@Ÿ°kÈ¤Ğ\'OŞct;4\0=g×I­¦ú®ÑíĞT\0ôœ]@&µšjÉèvh*\0zÎ® “ZMõ£Û¡©\0è9»€LÚµk×³ÏŞ~òä·®†¦ çìZ\02ittôşû¿vòäİFWCSĞsv-\0™466ös3\'“oÛßYúJ.—K{Ó0h4@&MMMMN¾?õJÉÖø—ê\'+•JÚ›€A£©\02©^¯çroz¶yëÉä.c›£Tz÷ììlÈªP¤ËËËioC\0„¦Èªı§ŒŸLî4¶3ş½öwåòXÒÊÑÉÉÉ={ö”Ëåùùù´7#\0™§©\0²ªÙl‹ïXXø·$¹ÃØz,/_ŸË½©Ñ¸aõ°V«‹Å\\.733Óh4ÒÚ\0d¦È°¥¥¥|ş‚¥¥Ù$Y46!¨B|ÎÏa³¯áøøø={ÂŸáòYŞ‚\0\0Mm!«¦¦ş$In7ÖÙÙOçr£óóÿ¼õ—±ÙlÎÌÌär¹B¡P­VÏÊ¦`@h*€Ì=09Y)ß^­şõòòµIrĞh4ş»VûÛry_©T—·ÿÅZ©TöìÙ399Y¯×wl£084À€˜ŸŸ¯T~{Ï×Œ02²{÷ËËå‹CVÅ}1———§¦¦FGGÇÆÆæææz»¥\00š\n`(xË%NªU!®L¿Àf4À\0\n5==}É%—äóù7¾ñï~÷»Ã…´W*ÃÚÓ¯‡²ªT*i¯\0ıESååå_ıÕ_]ó)¸_ø…_øùŸÿys…Ÿ¹f³Y­V…B.—Â_Ó^#\0ú‚¦ÓÓÓ/zÑ‹VÕÏıÜÏíŞ½ÛÑo---µç±0ı:\0‰¦$¡Â±şk_ûÚvP…¾zÛÛŞ6;;›öz\r¦F£Ñ~}ll¬V«¥½:\0¤FSš¥¥¥×¼æÔì—^zi8ÜO{ußÜÜ\\¹\\nO¿n€!¤©\0J³Ùç;ßù’—¼$—ËùdÚYÓ~=”Uè+Ó¯M08Âa}±Xœ™™	eõâ¿8\\N{†Q­VkO¿6„©A\0†¦óóóù|¾3Ó÷øøøââbº«4ÌêõzØ{öì©T*6À`ÓT\0ƒ`zzºX,úe~Ó~=´n¡P0ı:À ÒT\0ÙÖh4ÊåòÄÄDÚ+ÂVÚÓ¯ONNÖëõ´W€^ÒT\0¶´´T(Lä!€§¦¦FGGM¿0H4@V…ƒòTföË¢öôë!®BbùÄ&@Öi*€Lš˜˜å¦•Ë´z½>99Ù~½3¹\0™£©\02¦=aúôôtÚ+BÏ´ßrÌår¦_È\"M%ù|~~~>í¡÷–––ÆÇÇGGGÃŸ>Ò	!š\n 3fffL˜>ğ\ZFØĞ¹\\®=ızÚ«Àéi*€h6›åry||Ü	†‡é×²BSô;¦³åååöôë¥Rinn.íÕ`š\n ¯ÍÎÎ† Z\\\\L{EHYøNkO¿n€¾¢©\0ú×şıûK¥’h::Ó¯W*Ó¯ô	MĞBG‹ÅĞTi¯ı¨ÙlV«ÕB¡ÏçÃ¿e.MĞwM˜Îv„o•ö<¦_H‘¦è/333…BÁ<ol_gúõ±±1s™\0œ}š\n _4›Íñå\"ÎÜÜ\\¹\\Ş³gÏşıûÇà¬ÑT\0}¡^¯\n…™™™´W„Ì5š*”Uè+Ó¯œš\n }óóóù|Ş„éôV­VËår¡ÕÍ	°s4@Êöïß_,ò²C–––ÆÇÇÛÓ¯›Ç`\'h*€Ô„*•J&Lç,hO¿Ëå\n…‚é×zKS¤cqq1İÎÎÎ¦½\"—………öôë“““¦—è	M‚Z­‚Ê±HK£Ñ˜šš\Zö\0gHSœUí	ÓËå²_ÑæææJ¥Rˆ«X¦_ˆ£©\0ÎpÌZ,M˜N¿©×ë“““íy,Ò^€ŒÑT\0gI{Ât¬ô³jµZ(L¿ĞMp6LOO‹EŸ­\"ÚÓ¯†?ıÖÀii*€Õh4ÊåòÄÄDÚ+İ	ßº333íé×kµZÚ«Ğ¿4ÀZZZr<JÖ-,,”ËeÓ¯lFSì¦3H–——ÛÓ¯‡¾š››K{u\0úˆ¦ØáĞÓoù3xjµÚØØXˆ«ééißá\0‰¦è¹ö„éáp3íT¯×\'&&L¿h*€Ş\n—ù|~~~>í³¡Ùl¶§_ßöá‚3YÃISôÌÌÌŒ	ÓN‹‹‹•JeÏ=ãããæ±\0†¦èf³Y.—ÃÑ¤ÿ§g˜µ§_3İ%0<4À™2a:¬177×~}jjÊ;·ÀÀÓT\0gdvv6ÕââbÚ+}\'ÔÔääd(«ĞW~É`š\n ŞşıûK¥’é¤akµZ­X,ær¹™™?/ÀàÑT\01Âqa8FM•öŠ@f,--·§_w.l`h*€®-..š0â´§_Ïår…BÁôëÀ`ĞT\0İ™™™	Ç‚f‹†3´°°P©TFGG\'\'\'ı@™¦©\0¶«Ùl·øŸuè•ååå©©©öôësssi¯@M°-õz½P(ÌÌÌ¤½\"0˜BP…¬\nquö§_o6›³³³í)gŠ?V&\\S­VÍœ–¦8½ùùù|>oÂtØiõz½=ız¥RYXXØé‡):jätÂÿÌÌŒ7¨Íh*€ÓØ¿±X44œMÕjµP(´§_ß‰˜™ŸŸË?mM­6::\Z\Z¬çk\0M°©ĞQ¥RÉ„é–ÎôëáÏ^M¿\n­R©¬\'êÏÿü£\\uİõ_ïŒ}ìãûöí[sK§¤ÖÓT\0[\\\\,\nş[\ZR\Zfff&—Ë‹ÅZ­v&‹Z^^^óöÔ‡?ü§÷:tlåøfã±ÇŸøÇÏ}.tİê7¬|XMSl ·…/§%…¾2??_.—CŞLNNn6uÄŞ½{ßùÎwnøVR½^9ÔI£±±±­kjMY}ìcïÜw×®]gá×½€¬ĞTô…f³aÃ²X,®Şá\r›ğÜÃW T*U«UŸ-IK{Âôğİè÷Ñ¡?µ§_e~N×L¿^9Û/§oyË[Ö¼Š†ŸèÕïP}òòË·YS«Ç•Wş¿PSWlSmšŠô…=bØ3…]ã•W^yİõ×·ş×pe8Gxîá+pàÀË.»,|MBY¥½q†N8B\nYkÂtÈ„Z­Ö~}zzº]PŸùÌgÚÁó3?ó3_|ñê‡½L\'¨¸*\"¨ÚãÖÛîŞ½»½œğr‘ÒSú‹¦\"MaX©TöíÛ÷Àƒ[9f¬=şX(«ğÅñÿ gM{ÂtŸçl©×ëíé×Ï;ï¼N8½á\roøÔ§>Õ¾Íììì¾Cµz\\ıÕk:K9—îÓú¦\"5!¨Âñë¯øÂ±•£Æfãê¯^}á…†#†´7×àFÅbQÁBF5›Í_ÿõ__óê7¾ñíÿ%	»›ö5cccgTíÑùİªĞr>\'h*RS©TZAõœ±õ¸îúk/ºè×ÒŞ\\ƒ,ä}¹\\˜˜H{E€xùÈG:oO½úÕ¯~éK_úæ7¿ù¼óÎ5U«ÕÚÿ´k×®|¨\'Mõôá#™\0½z\0šŠtÌÍÍíÛwñÊñ¦±ñçıÈå—\"í6˜–––\n…ÂÎÎ¤nrr²óöT±X|ßûŞ·oß¾=]tÑ/şâ/¶¯ÿğ‡ÿ´\'AÕ_¼âŠöbwïŞö³R¦©HA³Ù}ğ¡úÊñgíŒÃG~´wï/›×»çL˜ïÀÖêÕ›Tqşù£í%ÏÏÏ§ıD4i*RP­V+•ÊÊñg:ã]c¿µÁÌâY}¯¡\Z—_ş7“““ioº211Q.—ÍYƒ-ìq:o^õ6¨ÂøÀ>Ø^¸×gršŠ”J¥W}éù ºxß“äû\'’{W’oMî8šÜzøøôU_ÿÚCOİ|,ùßfrs3¹á™äÚç’¸á®Œ0õ¼IeÜvp!ŸÏ§½éÒÔ%²\'	Ô0İl]0ÆÇÇ{5İßúqİõ_o/¼P(¤ıD4i*RËåî¾ûö•ãGÚ#ì\'É‘“ÉSÇ“\'%Ï$ÉŸıÅÇG^ø³…‹K­$Mx.©7“û\'_şæ­·ªá8|ä‰]»v¥½éRRê¢‹.úâW„:Ã¬ZX8U§>¨Cbll¬=Wõš7Õ}‡µ>::šöÒ¤©úH³Ùœİ¿©T*şDØ„kjµÚ }Bi÷îİ?ñĞÊñÃíöFÏœH8õOÇOúó+×üçyo~Ë_~òï\'ÉÓÇ“§V’\'W’ğü¯½åÎVSÎ{º.-í ºõ¶ƒÇZgÛ<“¬š™™1a:•Î,êí×ÎGÓÓ~¢@š¼ô…R¡víÚj*ÔW]wı×Ûãê¯^ó±}¼\\.‡)\nÕj5í•íV=İá¯G\'O<›;ñã„#æÏ|öóŸøÔgxøÔ±ïÊÉäX«µnºí5÷ª1œûìÕAÕqYÕl6ÃÏÑøø¸3ÉÀPéÌx~ß¡C;ÑTå§ıD4y	HÙââb8:)µÏ$ÜpãM—]öğ±¥Vı_gœjªÉcÏ$NV’äØÑ£¹.9gdd×{~ÿ²Õw¼õàíkî;Tc÷Ùëƒ*.«L˜C+—Ëµ›ç[wß½Mµk×.Mx	HÓÔÔT¤ë®ÿzW/ßáh2efú¿Û[]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª1lûìÍ‚ªÛ¬š\rAµ¸¸xÖè7á…¢İ<İîm·3{ü	§¨M•–öÇ&\'\'£_ÇÿñsŸËî¯…´º¨Ñá¯ÏLlzŸê±ç’ëoYzëŞ·¿öu¯åîW}ş_¿ü\\’>š<sôÔoX¸eÍ}‡jUSmTÛÏªö/(Ò¯#]©T*íì	ûÍ7Õ·î¾»½ğ!Ÿ—¢C´ş‚ªı1¤3|)¿áÆ›ÂrêõzÚO¨ka÷süø:£\n!«ZI~t,yøé•›îªï}Û;Şõ¿ùèÑä‘fòh3yâhªê†›oYsß¡\ZÃÓTÛ	ªÓfU¸2üShª³¾ú@™ššjgÏe—ıAÏ›ê“—_Ş^x¹\\Nû‰i\Z–C´¾^yÏ<¨:”!«2÷!À5]T|×Ew~çŞ[ïZZX\\ºñàÒ·ßsÓ‡şëæoó®ûÿçà=ß8øİoÿîÂ÷Üuï>÷OW¼÷Ò÷¦Ş6šjGm?¨¶ÈªÅÅÅøÍCàÌ---u>÷ôá#½mªğbÕ^ø`Ì DŠC´¾255u&ù[?¸ªT*¥ı´ºÓjª\'W}èƒ#Ûğ{ïyÏš;Õ†¦ê6¨6Ìª™™™Œ¾…ì„ÑÑÑöN$ì1{¸ÿíœœ*ğcrƒˆÖWÚÿwŞÛÿ$ãø`8ˆLûÉu¡ÕTOİoª¸ ZU<òÈxKæŞ¼vÎääd»|öîİÛÃ·ª~ç’KÚ‹ÍÜÿl=7à‡hı&ÕNœsğ:ÿüÑDjªİÁnªõAuõW¯¹à‚Üf§”yìñ\'ÂáÑ¯¸bMVùßb`ğ²°{÷îvÿ|òòË{²ç½áÆ›:oR™VäC´~3;;[*•zTíñáÿéôôtÚOq»ZMõ˜Ñíà¦Ú0¨Úg}9ÿüÑõYÕªöÑŒ¬Ú>ò‘¼úÕ¯^ÿ¹ñW¼âo}ë[Û—ÃË™Oª^”:§úOûyéØC´>õvâä·ªÂë{ÚOq»ZMõ¨ÑíÔ¦Ú\"¨ÚÖdÕê ’U@Ç¯üÊ¯¬©©ğJòú×¿ş£ıhø×B¡Ğ¾2ì.7{|;ãéÃG:/AaQ=©	Ğ[ƒyˆÖ‡Ú<Ø¡ j/¼paa!í\'º-­¦zÄèvdS­ªp¼ÒùàõYµ>¨Ú‡M<ø¬‚!W¯××¼Oõ»¿û»•J¥ó¯O\0†™¸â‡—šÎKPxå1¹(Ğ6€‡hı©Z­†—õmªO^~ùäädÚOôyµZm³‰×ZMµlt;²ÕT[|tl6)E¸¦sè³:«Ş~û†AuõW¯Y¿YCèßøÆË^ö²ö‹Ã‡>ô¡|>¿ú—C­~éèö,À7ÜxÓêÿñÉĞGî–¥C´LŸ™™ÙÑ¦ºîú¯‡ƒÈ´ŸèİsÏ=í]ÎË_şò¬ùWM5ğMµõ7@ÛÖ³üm˜U/yÉK¶T²\n†Ph§ıû÷şáşaÈª?¹\\niiiÍÍfggW¿¶ìİ»w³×5oO½÷ÒKW¿ø*`µÌ¢eİØØØv^µÏdÜwèĞùç¦ıD,ìÛ^øÂ¶w</~ñ‹é—~iõ[­¦úa·£s¯5GÕ[Üò´×oÿ–ÛY±¸ÇêêÒÛ¤İÙú ÙŞ´éfÕ6ƒJVÁP	…j*4Uûç}ß¾}\\pÁfÿÏB+äÖê“PVûØÇ¿u÷İëSê?÷¹°´Õ7¯K>ò¬‘™C´¬Û¡YÔW§	‡˜i?Ñç­ù•˜—½ìeïÿûÛŸÁ=qâánGç^«ï¾Ù¢¶¾~³côÕ7[}å†·éÕcuõH{«va‹o€íŸ‡j‹¬:mPÉ*µZ-ÔÔÄÄÄê¹\"Âå—¾ô¥³³³›İ+¼&„\0[=Îj^xáfÿT.—MJ¬—¥C´LÇ—«‡~‡Fx¹‡›Ä÷•\'êvtîµá¢âqÃëÛW®şó´ë°§÷¬×,!+Ûwk!¨¶?æÍÿ÷9çœ³f	/xÁ®¸â_¶¹„¾úX,Ğ+óóóù|>DÎ†¿ºyÚßçLZéU©T¶ùÂ^F²2pöiª³$—Ë­ÿPÁN4UÚOôy¯|å+;»¢RKØ!µ?Ú>rª.ÜşX¿o[ıO]-jûË\\ıçú‡Ûl6\\Ÿ-«ÛuN{«va‹o€ÅÅÅU=şÄi¿¥7œå¯mÃóVm¸„ğ¸ÎÈ	ƒ$üD[zò£İl6kµZˆ«Phk^gFGGÃk×ÌÌŒ÷¦€­eé-ÓvôäTíÑW¿OÕh4Ú;¤“ôGş{¬Î¿¶¢ânGç^ëúdã›­¹Ü¹ãf7^s›ÕË_ÿp›=Êš•Üú±\"¾)nÓ®lı\rl/«¶ªmf• ‚S¯×Cä„øñM@_ÉÌ!ZÖU*•Õ§%İ‰qÃ7]xá…i?Ñûş÷¿¿k×®±±±ÑÑÑÉÉÉ5¿ÍÒª‹t;¶s¯õ·YsMû¯›£¯¹ÍÖ´õB¶ùXİ~ÒÚ İÚú më¬Ú0¨^ğ‚l?«’åååñññğ’²ÅoI¤%3‡hY7==ıáÿé6Uh¶Ë.ûƒ´ŸèóÂn¯Z­nø‰öè¢Ø¬R6k¡Í®Ù¬µ6l¡5¸Ùí·¸¼Åc\rjS%[~tl–U›Ø÷ş¿ÏnxŞªõY%¨``´ç“5533“öº\0l,K‡h™,Ãş`G›jß¾}sssi?ÑmiEÅ÷·?VõÌO]¹Åí7»AçÊÂlÓ»¯¾×úG?íå-«Û¯CÚ›®÷ÖgÕfAÕåo³Ó¯Î*Aƒ¡Ùlv&I_}ê^€~3€‡h}kG§©xúğ‘p ™•]Î©¨8YïvtîÕ¾ğ|Ÿlyã­²áí×/ı½ÖgÒúõÙÎcuûH{ÓíˆõYuÙe°aPµÇú¬Ú·o_øT0HªÕj{’tçB\0úß`¢õ§ıøßßúÓaái?ÅíjEÅıİÎ½Ú¶XÈ7X½u-´Õİ7¼Í6/oñXİ~ÒŞt;e‹¬Úğ<T«³JPÁ€™Íår•JÅl{@Vì!Zj6›£££;q–ªp@yşù£Ú÷´¢â{İÎ½Ú6\\ÈOŠeã¿®¾fıõk.o}Íf÷íö±ºı\n¤½évĞ†YµÅ‰}ÛYµ&¨Î;ï¼/}éKi? Òüü|±X,•Jíó.\0dÅ ¢õ¡Z­öŞK/ò7©’7Õ¡®ÆOúäPçÏŸ~ÛçùlqßÎİW_XßÕ´ş–.³Ç=ícuûEH{Óí¬õYÂi‹ïüoİ}÷šw¨fgg…BµZMû©\0İ	?şí³Ø™$È¢?DëC¿sÉ%\\ÕÃ \n‡•{÷î\rG–i?³.´¢â>£Û1ğM•ts:àÕcõGşšÍf¥RÏÊ¯Â«×ëíóíš$È®Á?Dë7FãÂ/ìÕdíÒî;t(í§ÕVSİkt;†¡©’î³jÃß¡š™™)\n[Ïä¤+ì\'&&r¹œ÷–¬ŠC´~³´´²j³•vT¿sÉ%Wõš´ŸP×4•¦ÚÚö³j‹I)Â•şçúS³ÙlŸrjzzÚ[ÊÀ\0–C´~ööîİ{Ã7ÉGşB˜e1¨’VS<yÑí¦J¶—U§å¯Ñh”J¥ÉÉÉ³¹æÀÖ:§œ2I:00†è­ß„}I8düØÇ>Şí¯<}øÈßúÓí¦ı$\"µšê»F·c¨š*9]VmÚô©©©pËMŒ	ƒªV«µO9åç0ÃuˆÖošÍfhª.È…FêL_¶õøâW„ÛøÃ\Z(Ó^ıx­¦Z2ºÃÖTÉæYÕíy¨æççóùüÂÂÂ®-°™öÏ`¹\\ö[À@\ZºC´>´¼¼<11±{÷îß¹ä’Lë\'×\\yåÿ{ï¥—†Û\\vÙÀ©ÕTß1ºCØTÉFYwbßğƒV(¦§§wh=\r…Õb‹“qlÑúS³Ùœ­T*{÷î]sò¥pMªZ­60=ßµk×³ÏŞ~òä·®Æp6UòÓYTåry`~” ŸÕëõR©”Ïçr\nxCzˆFºFGGï¿ÿk\'OŞmt5†¶©’ŸdÕ}‡ùÿv×jµB¡°´´Ô«uÖX^^/õ&Ş†Äğ¢‘¢±±±ÿ˜›9™|ËØşøÎÒWr¹\\Ú›.M!¥Â!ZO>>‚*ŸÏ‡¸:óE«5\Zö$é333i¯ÀÙ£©HÁÔÔÔääûS¯”l©~²R©¤½éG³Ù,—ËãããÎ=~”:“¤û±†¦\"õz=—{Ó³Í[O&wÛ¥Ò»}Š¦çfffŠÅâ\0ÌûéªV«íIÒı²\"0œ4éØÊøÉäNc;ãßkW.¥½ÑÓÂÂB>ŸŸ››K{E “fggs¹\\¥RqÊ)`˜i*ÒÑl6‹Åw,,ü[’Üal=–—¯ÏåŞÔhÜöFXFcll,T~Ú+Y2??_,K¥’_\04©iÍpÁÒÒl’,\Z›T!>çç¿öæ\Z|¡©Â¢O.Ái-..†”\n?/&IhÓT¤©õ±«¦¦ş$In7ÖÙÙOçr£óóÿœö†\Zá\01—Ë…oË´WúT½^¯T*ù|Ş¯w¬¦©HY³Ùœœ¬‹o¯VÿzyùÚ$9h4\Zÿ]«ım¹¼¯T*†Ëio¢á²¼¼\\,M\rk4\Z‰‰‰\\.W­VÓ^€¾£©èóóó•ÊoïÙóšFFvï~y¹|qÈª´7Ë\n?>>^.—Í\rIë\'¢}Ê©ééi?\0ÒT\0¨Õjù|Ş/ß3ä:§œò«†\0[ĞT\0AU(B\\¥½\"‚ğß>å”IÒNKSlªÑh”ËåpXé#Oùùù|>¾ó`›4ÀiLOO‹Eÿ[ÏÀ[\\\\,¶„i¯@–h*€Ó[XXÈårÎÆÃ ª×ë¥R)ŸÏû&ˆ ©\0¶¥Ñh‹Åıû÷§½\"ĞKËËËããã£££N9MSt!4ÕØØ˜9Ğ\0áÛ¸=Iº²œ!MĞ¹¹¹|>ïNÈ®f³Ù™$İü+\0gNSt­^¯\nÿ»OU«Õö$éŞnèM£ÙlW*ÿÍOVÌÎÎær¹ğMkK€ŞÒT\0ñªÕj¡PXZZJ{E`+óóóÅb±T*ù^Ø	š\nàŒ,..†¬2g\Zı)|†”\nAe’t€£©\0ÎT£Ñ‡­i¯<¯^¯W*•|>/øvš¦èéééB¡à7UH]ˆüPø¹\\®Z­¦½.\0CASôÌÂÂB>Ÿ÷!+ÒÒl6Û§œ\n…oö€³FSôÒòòr±XœššJ{E:SN™$à,ÓT\0½799Y*•ÚrvÔjµö)§|ô š\n`GÌÎÎ\n…ÅÅÅ´W„A6??ŸÏçËår½^O{]\0†—¦Ø)KKK!«ÌÀN¹^lÑí\0©ÓT\0;¨ÙlV*•ññqĞ+õz½T*™\r h*€733S(|:‹3´¼¼ú|ttÔ)§\0úŠ¦8}•hF£=Izèó´×€µ4ÀY‹K¥ÒäädÚ+B–4›ÍÎ$é>A\nĞŸ4ÀY555U,ÍyÍvT«Õö$éæåègš\nàlkÏ½°°öŠĞ¿fggs¹\\¥R‘ß\0ıOS¤ (\n…ééé´W„¾’»X,–J¥¥¥¥´×€mÑT\0©™˜˜(—Ë>ÖEÛââbH©T&IÈM¦Z­V(¼#1äêõz¥R13$@Fi*€”… \nÓ!®Ò^RĞh4&&&r¹\\µZM{]\0ˆ¤©\0Ò×l6Ëåòøø¸É²‡GØÖíSNMOOÛî\0™¦©\0úÅÌÌL±X¬×ëi¯;®sÊ)¿M0\04@YXXÈçósssi¯;¥V«µO9e’t€¡©\0úK£ÑÛ¿Ú+BµÏKV.—½	0`4@?\nMU,}0l0,..[Â…´×€ŞÓT\0}j~~>—Ë-,,¤½\"Ä«×ë¥R)ŸÏ;åÀ\0ÓT\0ıkyy¹X,ÎÌÌ¤½\"t-l»ñññÑÑQ§œxš\n ¯5›Íph^.—M·F£=Iºš\n jµZ>Ÿ_ZZJ{EØJèŞÎ$é\Z`xh*€lAU(B\\¥½\"l¬Z­¶\'I7³À°ÑT\0™ÖËår8j÷H_™Íår•JÅ)§\0†“¦È˜éééb±èğ½ÌÏÏ‡mQ*•|,`˜i*€ìYXXÈår¦çNÑââbH©T¶\0š\n “\ZF8 ß¿Ú+2têõz¥RÉçó&I MSdXhª±±1“\"œáë<11‘ËåªÕjÚë@ÑT\0Ù677—ÏçÓ^‘AÖl6Û§œš6A\0kh*€Ì«×ë…BaÍfÿê¯şÊûW=Ñ9å”¯\'\0ÒT\0ƒ ÙlW*•ö»(ËËËçœsN¹\\N{½²­V«µO9e–E\0¶ ©\0GµZ-\nKKK—^zéÈÈÈ«^õ*o­Ä™ŸŸÏçó!JëõzÚë@¿ÓT\0åšk®yùË_>Òòú×¿şÿøÓ^£ŒY\\\\,¶ø5\0¶ISO}êS#?í\roxƒ6Ø¦z½^*•òù¼SNĞM08Şıîw¿â¯XİT/~ñ‹ßşö·§½^ınyyy|||ttÔ)§\0ˆ ©\0G£Ñ¨T*{öìÉår]tÑùçŸÿ¢½èÜsÏu>¥Í„¯X{’ô5³&Àöi*€AS¯×çççC*„¾zç;ß922òº×½.í•ê;Íf³3IºSNp&4Àà›œœ,•Ji¯E©V«íIÒÍ‹À™ÓT\0¢ÙlÖjµr¹\\,C0Œ«ğÜÃW 4d\'ÉÀY ©\0ÁÜÜ\\h‰TW^yåu×_ß¡CÇVV†s„ç¾¸ì²ËÂ×Äï’°Ó4@¶µç¥Ø·oß>plå˜±z<öøc¡¬Âgyy9í\rÀÀÒT\0‚*ŸÏñŠ/[9jl6®şêÕ^xa½^O{s0˜4@†U*•VP=gl=®»şÚ‹.úµ´7\0ƒISdÕÜÜÜ¾}¯o\ZÛşÑ\\~ù\'ÒŞh\0 MIÍfsttôÁ‡ê+ÇŸ5¶3ùÑŞ½¿¼´´”ö¦`Ğh*€LªV«•Jeåø3ñ®±ßÚælã«ï5TãòËÿfrr2íMÀ ÑT\0™T*•\\õ¥çƒêâ}?L’ïŸHî]I¾}4¹ãhrëáãÓW}ık=uó±ä›ÉÍÍä†g’kŸKşá†»>0şÁÔó&•qÛÁ…|>Ÿö¦`Ğh*€LÊårwß}ûÊñ#í122r8IœL:<y,y&Işì/>>òÂŸ-\\\\zh%yàhòÀsI½™Üw<ùò7ïh½UudÇá#OìÚµ+íMÀ ÑT\0™´{÷îÇŸxhåøáö™ôÌ‰äè‰Sÿtüä©?¿rÍ÷æ·üå\'ÿşx’<}<yj%yr%i$Éµ·ÜÙjªÃÃ9ÂsOwÃ0xìZ\02©ÕEOwFøë‘ãÉÏ&ÇNüøFã3Ÿıü\'>õÙ>uºÛ•“É±VkİtÛkî;TCSĞsv-\0™Ôê¢ÿëŒSMu\"yì™ä‘ÃÉJ’;z4wÁ##çŒŒìzÏï_¶ú·¼}Í}‡jh*\0zÎ® “Z]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª¡©\0è9»€LjuQ£3Â_Ÿ=™<Ù<õ>ÕcÏ%×ß²ôÖ½oíë^ÿÊİ¯úü¿~ù¹$9|4yæè©;Ş°pËšûÕĞT\0ôœ]@&…68~üGÑN…UO­$?:–<üôÊMwÕ÷¾íïúß|ôhòH3y´™<q4	UuÃÍ·¬¹ïP\rM@ÏÙµ\0dÒš.*¾ë¢;¿sï­w--,.İxpéÆÛï¹éÎCÿuó·¿y×ıÿsğoüî·wá{îº÷Ÿû§+Ş{é{SoMÀÀ°kÈ¤VS=¹z|èCÙ†ß{Ï{ÖÜq¨†¦ çìZ\02©ÕTOİM@ÏÙµ\0dÒ©¦:ñ¸ÑíĞT\0ôœ]@&µšê1£Û¡©\0è9»€Lj5Õ£F·CSĞsv-\0™ÔjªGŒn‡¦ çìZ\02©ÕTËF·CSĞsv-\0™¤©4\0}Â® “ZMõÃë—¼Ùcu®ßze¶÷{R«4íMÀ ±kÈ¤Ğ\'N<¼CcõÂ×?Pçšõ:İÚ6—³CO-íMÀ ±kÈ¤V~<Ôó±e=›õVßlëuÛğî›]Ø‰\'˜ö¦`ĞØµ\0dR«:ìùØl±«¯ï\\n_8íšlxƒU\r¶vÛYæ™<Á´7\0ƒÆ® “ZÕñ@ÏÇf‹]}}çòO¢hƒ;nù~×ÆËéüë=µÎc¥½é\04v-\0™Ô\nô|l¶Ø\r¯_såê¿vuyõ…z^«4íMÀ ±kÈ¤kªÍß_êñr:]Wš\n€±kÈ¤V~|?•±e/=›­/¯¾ıú;ºòio:\0]@&Ê“õ«bÃËíkşÚ¹¼iwm²œ5KØ¹\'•ö¦`ĞØµ\0dR+?îïùh/¶³ğÕ²şÊíÜx;—;ËÙpQ=‚io:\0]@&µªã{=íÅ®Yøš+×\\Xı†ËÜâúŸÔÔéÕ“\'˜ö¦`ĞØµ\0dR«:õv¬^æºìm|ıFíÛj±k–³ÅãöüÙu–Ÿö¦`ĞØµ\0dR«:î3ºš\n€³kÈ¤VSİkt;4\0=g×IšJSĞ\'ìZ\02)´ÁÉ“÷İM@ÏÙµ\0dR«©¾kt;4\0=g×I­¦Z2ºš\n€³kÈ¤VS}Çèvh*\0zÎ® “víÚõì³·Ÿ<ùm£«¡©\0è9»€L\Z½ÿş¯<y·ÑÕĞT\0ôœ]@&ıÇÜÌÉä[ÆöÇw–¾’ËåÒŞt\0\ZMISSS““ïO½R²5ş¥úÉJ¥’ö¦`Ğh*€Lª×ë¹Ü›mŞz2¹ËØæ(•Ş=;;›ö¦`Ğh*€¬ÚÊøÉäNc;ãßkW.¥½Ñ\0@š\n «šÍf±ø……K’;Œ­Çòòõ¹Ü›\ZÒŞh\0 MaKKKùüKK³I²hl6BP…øœŸÿBÚ›€Á¤©\0²maa!dÕÔÔŸ$ÉíÆú1;ûé\\nt~şŸÓŞP\0,MyÍfsr²R,¾½Zıëååk“ä Ñhüw­ö·åò¾R©.§½‰\0dš\n`@ÌÏÏW*¿½gÏkFÙ½ûååòÅ!«ÒŞ,\0>M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄûÿµS!6Keã\0\0\0\0IEND®B`‚',0),('211',1,'qjlc.bpmn','208','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"qjlc\" name=\"è¯·å‡æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤è¯·å‡ç”³è¯·\" activiti:assignee=\"å¼ ä¸‰\"></userTask>\n    <userTask id=\"usertask2\" name=\"é¡¹ç›®ç»ç†å®¡æ‰¹\" activiti:assignee=\"æå››\"></userTask>\n    <userTask id=\"usertask3\" name=\"æ€»ç›‘å®¡æ‰¹\" activiti:assignee=\"ç‹äº”\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts<3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts>=3}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow8\" sourceRef=\"usertask3\" targetRef=\"endevent2\"></sequenceFlow>\n    <sequenceFlow id=\"flow9\" sourceRef=\"usertask2\" targetRef=\"endevent2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_qjlc\">\n    <bpmndi:BPMNPlane bpmnElement=\"qjlc\" id=\"BPMNPlane_qjlc\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"120.0\" y=\"231.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"210.0\" y=\"221.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"110.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"330.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"380.0\" y=\"228.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"760.0\" y=\"215.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"155.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"210.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"315.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"380.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"400.0\" y=\"228.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"400.0\" y=\"268.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"250.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow9\" id=\"BPMNEdge_flow9\">\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"215.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('212',1,'transfer2.png','208','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0[\0\0f\0\0\0=‹\0\0%—IDATxœíİlÜ÷]?p¯?†;­ª…Fü3OüQk‹ÅÉˆº“¨«%¦ÖğGf©Ú4ÑU\rjƒXC„Ø°ønU[°@£ÉÅÒÚbÖ¦˜‘v¦M“ôG6/mVwi:¯iº+IškbÇŸï\'wííz¶/Ÿ³ïüù|îıxè%ë|¾ûÜçã×;ïÏû™;ßuD\0\0\0¡êH{\0\0\0R#\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—DëU,§§§wìØÑ÷¶îîî\0È¡øV9Å§¶©©©B¡ö™ZK\"‚µ‹ƒĞàà`gggù´1ı¶¹¹¹´w\r\0Ö\">…UNgñ©m`` ««+>ÍMNN¦½kĞ*¬Åüü|ùÿÏœ!\0h{åÿìííM{_ ù$\"hØÔÔTOOO|zH{G\0`ã:t(Eãããiï4™D™œœìëëó¢j\0T,‡††ÆÆÆÒŞh&‰\Z077×ÛÛ+¬8õõõÍÌÌ¤½#Ğ44`ëÖ­Î\0nnn®§§\'Fiï4‡DIMNN¦½\0¾;î¸ctt4í½€æˆ ©©©©´÷\0Ò7;;ÛÓÓ“ö^@sHDÈüüü¦M›ÒŞ\0È\n¯$§mHDˆ—Ì@5/œ£mHDˆy\0ªù¿BÚ†D‰ôõõùHV\0¨ğ§D´\r‰ñji\0¨677×İİö^@HDH<éÇSÚ{\0ÒÑa%I;0!‘®®®B¡ö^\0@†HD´ã1é@\r\'GÚƒq‰˜ô †“#íÁ8†DLú\0PÃÉ‘ö`C\"&}\0¨áäH{0!“>\0Ôpr¤=ÇˆI\0j89ÒŒcHÄ¤\05œiÆ1$bÒ€\ZN´ã1é@\r\'GÚƒq‰˜ô †“#íÁ8†DLú\0PÃÉ‘ö`C\"&}\0¨áäH{0!“>\0Ôpr¤=ÇˆI\0j89ÒŒã*‹ãããCCC}}}İİİ¡Š=ş\r\n…´Û²F&}\0x\'\'GÚƒqÜ*SSSqˆãĞ½÷ŞûğŞ½Ï=z~a!ÌŠ=ş\rLLLlÛ¶-şÄ¹(íæ¬…I\0j89ÒŒãæ+\nÃÃÃıııÇ^:v~á¼ª®¯ˆsQüË™ŸŸO»Q1é@\r\'GÚƒqÜdqêííıú¯_8§V«û¸Ë–-sssi·«&}\0¨áäH{0›lxx¸‡ŞTõëá½İpÃo¤İ®˜ô †“#í!åq\\,\'\'\'wìØ188Ø÷¶øšñññÜışÔÔTÿM‹E•¤>ÿ\'¼sçÒnZR&}\0¨áäH{HmÇA(N>qŠóÏÄÄ}ï}¤\\÷?ğàwŞ544ÔÕÕµuëÖ¼ü!~œîº»»_:>·°xV%©Óg~²yó‡gggÓn]\"&}\0¨áäH{Ha:t¨ü^Ìqò9¿°X¿ö=úØ¶mŸìííŞø]mHœÜ†‡‡ß¨Ô¿ğı©«ïTíÜù—###i·.“>\0Ôpr¤=lô8ŞµkWoŞûÈ%³PuíòÀ\r7Ü°}ûöb±¸Á;œ\\œñ&îû·ŸÆ¡›úE/^ˆ[ˆ¾{.zê\\´ÿôâè}|ëøëŸş·=^Œö½=ôfôwûùôöÏ¤NR©\'ÌÄã!íÖ]Z¡Pxï{ß›»—q@KID´‡Çq˜\Z\Z\Zi(U×Wî¹§¯¯/³ïÚÜÓÓsøğÁ…Å3åŠçˆÓQtf)z}1zí|ôFıÑŸİÕqÙ{·Ş4x|!:v.:öf4WŒ_Œ¾ñ§JO	°NŸ9ÙÙÙ™vë.!Bq ÿú=ñğŠ\0 B\"¢=lĞ8ãĞÖ­[ÇÇÇ×‡*/¢‹·“Íwmîêêzõäñ…ÅÓåŠçˆ7.Dç.\\üÑâÒÅ¯ß|ğ?ñ—>ôçwq1ŠN-F¯/D¯-Dñúú¡\'.%¢ÓaVÆ\'ÓrÚÿäòs•B\0Tdü$	mĞ8\Z\ZZª¼‚.E|ù\\)ÕœªTüí™ÅèäÙèü…·n¯¤ÿöË_ıÂß|ùØËŸæZXŠÎ—’ÒcO>Usß *Ë“iuª?¡\0Ê²|‡ä6bïÚµk=/–[^÷\rnÀ7¤”jş¯RÑ…èÄÑOGQtşÜ¹ë¯ïè¸¼££ó¿·­úû¬¹oP•ÙÉtyŠ\0 ZfOâĞ–ãC‡õöö61•ëÓŸşÌîİ»[½ó\r)¥š×+U~ÕÜÉ³ÑË§¢WŞŒöşÁu×]wùï¾êšk‡~ÿ‰è‰\'ÔÜ7¨ÊædºZŠ\0 \"›\'qhTËÇq‡V[V®§½tü}ïëÎÔkçJ©¦P©øÛ³KÑkÅ‹Ïx3ÚûÄì/oşÈµ?ÿ×tıìWÿéoFÑésÑç.ŞqßÌ5÷\rª28™ÖCB\0”eğ$kĞÚq<99988Øô8T®ÛoÿÜèèhK÷¿!ñ¤°¸ø“J•çˆ8½¾ıä|ôò©…Ç™Ûü+½ñ7ë•sÑ‹Ñ+Åèä¹(ÎDû¢æ¾AUÖ&Ó$qH(€H\"¢]´vÇëÅF?z¨¡§‰6mÚÔÒıoHMªé»ñ†§¿÷ÜşgfgÍ>z`öÑƒG{úè=şİï<óÂ·ùŸßôà÷g:òÌs?¼çï÷Ürë-©\'‰(j$	E\0©“8¬YÇq¼LìêêjQ*×–-[fffZw\r)%¢×ªë³ŸıLG¿û‰OÔÜ1¨ÊÎdÚhŠ\0\\vNâ°-ÇcccÃÃÃ-MDwïÜ922ÒºChH)TVF&ÓµÅ!¡€eä$ëÔÂq¼}ûöİ»w·4=¼÷‘x%ÚºChÈÅDtáUÕhea2]‡îàÁë¯ïyşèÑŞ‰WOnŞ¼ùë{öE\0„,\'qX¿ãxYÙÒD/Xß÷¾îÖÂrãããsss+ş¨”ˆN¨F+õÉtÅ8ÔÙÙïX<º–‡¢r*¿âQ( d©ŸÄ¡)Z8[ô¾ÛÕuêô™xåÚºC¨qäÈ‘ò:øê«¯˜˜¨ùi)½¢\Z­t\'Ó:q¨¬&UÇ!¡€ÀID´‡ãM›6{éxKQ\\ñ?Å¾’íÛ·ï(™œœœ.iú§Å¼ì²ËÊëà+¯¼òƒü`õóE¥DôcÕh¥8™.CqÆÇmÍ[_TBÑò8‹ãSõ8Š\0‡DD{há8îééyöğá\rHDåü³{÷îr\"\Z,g¤Êÿô—¿(ß`tt´|—ÙÙÙFªf¹|ÕUWİvÛmåèUJDóªÑjÅdZçÅ«½•B|MWW×òPtààÁãĞò—†\nE\0B\"¢=´p·ôÃˆÊ•ğïˆÊùgjjªœˆî¸ãrFŠ3[y]Ûİİğ‰¦_ıÕ_­^_sÍ5øÀÊïî e$ÕqcYıw–[1½ûİïN‡„\"\0Â!ÑZ8‡‡‡«ÿÄ¢µïÑÇ¶lÙ²ş]››KøDÓW\\QYÿzÉ¯ıÚ¯•Ÿk*%¢5±êl°úGë|Üòİ>VSqùÖÖßÁjõ_Ü%{£íCQÂ8$‰ˆöĞÂq<::zûíŸki\"Š×¶mŸlİ!T‹óÒı÷ß_^\r_{íµúĞ‡Şó÷|à¨<Ñ»páåõTõwÍökkùC\'ÙHõ}ëï|‡^µb2­óâÆäŸ;T\']2	E\0„@\"¢=´pÏÍÍuww·4õ÷÷OMMµîj¼øâ‹ñRx`` >®‘‘‘š•n)*_OÕßBõOË—W	<\rl¶ò£Õ¶S7Y­ë`«÷!\ru¨¹â8”üÅœÿ5ıß—_~yÍŞõ®wíÙó	·©Ì€æêˆh­Ç-}s…S§Ïtuu5ı\råê›œœ[ñ¯öK!á¥&ÖŠ¬^š×¹Ù%·Sı£ê¯uî»ÚåõfÓÛtÍ5×T~Kƒ%q,)¿¸ñĞ¡Cq(:ñêÉK°ßY®lÅÏ)ZqñãÆØô€,ˆh­Ç-}áÜ¿ô¥xã-İÿ†”BÂ±uV\'7jnVs¡æòŠ7^ñ±êß,áş¬ó›ÛˆB¡PŞÃ8êSŸŠ¿Wß I(ª‡†\"q€¶\'ÑZ;‹Åbwww+>•èÔé3ñ’t~~¾¥ûßRHøá:«z#u.—¿]Q.½Íš+—o¶fSI.¯ÿ›Ûˆú/n,«ŠVŒCïz×»’‡\"q€HD´‡–ãñññ[n½µíŸ Šš—ˆVN¦ö6ËóIğÓP\0kh²–ˆ¢º/n¬X-­ö1¬÷ÿ¾¼âç-Eâ\0ˆh1?~óÍ÷51={øp¼f=uúÌì|r¥ğâ:«z#+^._¨ó£úÛLøpng‡œVË–‡¢ÕâPùåVûğÖêP$‰ˆö°ã¸P(lÙ²¥Yo±P^³ÆkĞ\rØó†\\Ksë¬zÏÉ¼óf•W_³Ú6“ühùÃÕÙ™å»´CN±kËCÑ¶mŸ\\1•ky(êïïÃ¹8@€$\"ÚÃãÙÙÙ8%y{®KÆ¡ß|s¼Bİ˜İnH)!¼°ÎªŞÈj—Wü¶Î£\'üÑ%÷¿)¸âfÓm\\P´âçU‡\"q€¥~‡¦Ø¸q¯7oŞ¼ïÑÇÖób¹8Ve3Eo%¢4±êl°úG•Ë«İ¾Ñí¬aÖy˜i·nåPTçcXË¡H pY8‰Ãúmè8.\nñºóÎ;ïJòi0Õ¯;¿ø¥/•_z·‘;ÜR`8ÚÄª³ÁòŞ~jhåëë¾Úm…‡¸äş7ı\0+›M»u-Eqì©ŸÏÅ!\0—‘“8¬ÓFãb±\'¢ë¯ï‰NeAY¿¾¾gO|ûÛoÿ\\¼îÜà½mH)0<¯\Z­ìL¦É?¼µæ•œâ\0aÊÎIÖ#q<??Çwtuu}üæ›ãÀ³ü?ããkî½÷_n¹õÖø6Û¶}²şÛ(gD)=§\Z­LM¦†\"q€eê$k–æ8.‹“““ÃÃÃËßï8¾&Cããã+~¼f6IDmˆ¢FB‘8@à²v‡µ1›&––¨F+ƒ“i’P$@Oâ°ÆqÓ”Ñ÷U£•ÍÉ´~(‡\0 ’ˆhÆqÓ”Ñ¬j´2;™®ŠÄ!\0(ËìI\Zb7M)}O5ZYL—‡\"q\0*²|‡äŒã¦éìì<{öàÒÒwUC•ñÉ´:‰C\0P-ã\'qHÈ8nšîîî^øÖÒÒaÕPe2-‡¢ç‡\0 ZöOâ„qÜ4ÿ1µ{)zV%¯ïÍ~³§§\'íÖ]Z„âÄ+@5‰ˆö`7Í®]»FFnK=cä«şqìîááá´[—H^ö\06ŒDD{0›fnn®§çıg‹û—¢gTÂ\ZüØäädÚ­KÄ¤\05œiÆq3í¸hûRô´JRÿ:ş×CCi7-)“>\0Ôpr¤=ÇÍT,ûú>:3óÏQô”ª_óó{{zŞ_(ìK»iI™ô †“#íÁ8n²ÙÙÙŞŞëgg\'£èZ­â8GÇéé¯¥İ®˜ô †“#íÁ8n¾™™™8íÚõ‡QtP-¯ÉÉ/õôtOOÿCÚjŒI\0j89ÒŒã–(‹##Ã}}û‹ùù‡¢è€*ş{|ü¯††úûâËi·¨a&}\0¨áäH{0[hzzzxøw6mú¹::ºº®\Zº)Ei·e:Lú\0ğNN´ã1é@\r\'GÚƒq‰˜ô †“#íÁ8†DLú\0PÃÉ‘ö`C\"&}\0¨áäH{0!“>\0Ôpr¤=ÇˆI?ãŠÅâøøøĞĞP___www\Zï§˜	ñ±Ç¿ÁÁÁ±±±B¡v[šFËô·½å±¿N´ã1égÙÔÔT¼’ˆ—S÷Ş{ïÃ{÷>ôèù……0+>öø7011±mÛ¶øw¯«ÒnNè¯şRyéo_ãsbgggooo|aÓ¦Mñ×÷¼ç=³³³iï\Z¬‘E$\"eS¡Pîïï?öÒ±óçUuxõD¼®Š9óóói7jôWƒ­,÷÷ßÿıß—?Áuã7NNN¦½k°FyˆD”Añrª··÷ë{¾v~áœZ­îàş-[¶ÌÍÍ¥İ®†é¯şªlö·X,şÌÏüLuúğ‡?¼iÓ¦¼¼Ò–³ÈƒD$¢\Z.-§ŞTõëá½İpÃo¤İ®†é¯şªÌö÷OÿôO¯¸âŠJ\"úƒ?øƒ‘‘‘´w\nÖÎ\"‘ˆ²fjjª¿ÿ¦…Å¢JRŸÿ“?Ş¹ói7­ú«¿*ãı½îºëÊqèÖ[oíîî.‹iï¬E$\"eJ|êOÀ/Ÿ[X<«’Ôé3?Ù¼ùÃyù»gıÕ_•ış~ûÛß¾òÊ+ã“ãÀÀ€¿ \"ï,ò ‰(SÆÆÆ†‡‡ß¨Ô¿ğım«ïTíÜù—yyY‹şê¯şæ¢¿ûØÇÊ‰(íõ²ÈƒD$¢Lœ¸ïß~ºœº©ÿGQôâ…è¹…è»ç¢§ÎEûO/Ş÷È·¿şøùè‹ÑãÅhßÑCoF·ï™OoÿLê‹›TêÉ3½½½i·.ıÕ_ıÍEçççã“cÖ¼‚5°ÈƒD$¢Lééé9|øàÂâ™rÅİ9Eg–¢×£×ÎGoDÑıÙ]—½wëMƒÇ¢cç¢coFsÅèùÅèßyªôßÌg¬ÓgNvvv¦İºDôWõ7/ıur¤=ÇˆI?Sººº^=y|añt¹âî¼q!:wáâ—.~ıæƒÿù‹¿ô¡?¿û‹‹Qtj1z}!zm!*DÑCO<]ZQ³ò2ŒõWõ7³ı-‹“““;vìì{ÛÀÀ@|ÍØØX?=	’ÈÄ¿.È¾ŒœŠ(+­ŠNU*şöÌbtòltşÂ[7(\nûå¯~áo¾|ìå‹§ç…¥è|i¥õØ“OÕÜ7¨ÊË0Ö_ıÕßö7Bq\nºäßzõööîŞ½Û[Ï‘/ù˜=!uæ÷ì(­Šş¯RWT¢oD?>-DÑùsçz®¿¾£ãòÎOüŞ¶ê;î?p°æ¾AUê+ª„ôWõ7SıŞºukÂw¿(ëîîötäH>fOH]<¹gíSÃCVZ½^©ò«nN^>½òf´ÿğ®»îºË¯x÷U×\\;ôûïXQ=ñäšûU¹Z1ë¯şêoúı-‹ÃÃÃËŸúüçÿdbâ¾‡÷>R©;ï¼«¿¿¿æ–ƒƒƒ…Baãw\Z•ÙRŸ\0:”ö^ğ–Òª¨P©øÛ³KÑkÅ‹ÿÇ|âÍhï³¿¼ù#×şü/\\Óõ³_ı§o¼E§ÏEoœ»xÇ}3OÔÜ7¨ÊÕŠYõWSîïüü|ÍSC·ßş¹ç=¿°¸ZxõäWî¹gÓ¦MÕO9{’}ù˜=!u}}}ÓÓÓiïo‰Ï²‹‹?©Ty¡/ª^_ˆ~r>zùÔÂcÏÌmş•Şø›¿õÊ¹èÇÅè•btò\\¯©ö=şDÍ}ƒª­˜õWõ7İşÎÍÍÅa¦lêg¡š\\tçwUîÛÙÙ933³‘;ÊÇì	©K{/xKÍª¨ïÆşŞsûŸ™94ûèÙGyìé£ÿõøw¿óÌß>pä|ÿÑƒßŸyêÈ3Ïığ¿ßsË­·¤¾²	dEµfú«¿ú›n‹Åbõ³CwïÜ™0U×½÷şKœ…*Ïy:²,³\'¤®ü!ëiïo)­¨^«®Ï~ö3Ëş²w¿û‰OÔÜ1¨ÊÕŠYõWSëïĞĞPå×>1qß\ZâP¹ö?y «««¼¾¾¾\rÛhT>fOHİììlOOOÚ{Á[J+ª“ªÑÊÕŠ9ı_WîJÛ»6¬¿“““•8´¶g‡ªëş¬lmtttc\Z•Ù²À›+dÇÅÕ…WU£•§sÚ¿«<–ş¶wmXã“]9À¬3•«ò7E›6mò9dS>fOÈ‚ÑÑÑ;î¸#í½à¢ÒŠê„j´rµbNÿ×•»Òßö®éïøøx9½tvv{éxSÑ©Óg*ï>ç4J6åcö„,(‹ş64#J+ªWT£•«sú¿®Ü•ş¶wmLûúúÊÑåöÛ?×”8T®¯ïÙSŞlWW×4*³\'dÄôô´¿\rÍ‚ÒŠêÇªÑÊÕŠ9ı_WîJÛ»6 ¿…B¡ò7?Íz‚¨Rï{_wyË>Ê‚ÊÇì	Ù±cÇOúoŒñññ¹¹¹TZQÍ«F+S+fıÕ_•Jë´fll¬ò¾pÍCq}úÓo½£àÈÈHSš(C³\'äE<›\n…´w¤9r¤|î¼úê«\'&&j~jE•îŠjıôWU*ı­ßšíÛ·7ë-æ–×Ã{)o|ëÖ­ë?h®¬Ì/SSSİİİ;vìğgE-R,/»ì²òéóÊ+¯üà?XıŸš¥ÕZT•/¿Pÿúú[kÊÍÖhéµôÚ¦¿—ìæj—õwã+a_–ïŞj;¼ş¡²ñı­ßšòîàÁ¦\'¢ç-o<>{®ÿ@ ¹²2{Bî\n…8Å3{|\n‰/xatÓUŞ›¨ìª«®ºí¶ÛÊïÜ\Z{áÂË­¨ê-—//¬Ê5«íÆò¬x¹Ö]Ú]ı©œöwµ~Õô.Ééos½Y}Yş/qù6“•Ìö·Nk*ï»½ÿÉMODqU´)MdPÂºÄg‘©©©8UŞŸ‡qáÂñ¦WÍ–—?PùÛÊ•«íUÍF.yyÃª£ôç­oNd¹¿Ëo™n[õ·‰}Y¾…Õ®YñBŞû[	KÏ=ÚŠDTÙ~Ú§n¨ePuÍ5×TÎÓƒ%ñj`vv6zëÿ˜_jn•·Y½åå—kV5÷ªÜ¾şFê_niej!’Óş®¸\\­•õo¬¿Í=öæö¥Î€YñÂ´¸Yı­ÓšòõÏ>ÜŠDÔÙÙYŞ~SšÈ ²¨ò&°ñúSŸúTüu||¼òÓÒšãX+ª¼å·—5ÇŞ¹Ê9VıµæöÕ×¯¸Şªlä’·iéÑ¥ØÓjùíïj_WÜ~Íõ­®ûÛŠ¾,ßNÍ½V{ ,÷·~k*ÏA=¼÷‘¦Ç¡¯,oÜG‘AY™=ª½øâ‹İİİ###5ïìWZvü°•dËÕ·)_®şšpƒ•ë[w,+>hZ\r­‘ßşÖùúö‚{…Ú˜.‡Üßæö¥ú.+~[sıÆüsnJë·fxx¸|P_¹ç¦\'¢g.o¼··wıÍ••Ù ÆäääØØØŠŸ›Ñ¢eGÇêV\\-Õ,ƒÖˆ68egÅå¶¿«­•WÜH’‡Óß&6wı}©Ó ÕÆŠ²Üß:­ÙµkWù0·mûdÓÑİ;w–7>44Ô”&ÊĞì	PiÙñbÓ«z³+^®Z9ıôúÕ¾]¾o¼Ò²¬ù‡VyĞ´[—HúÛhß[Z!÷·¹}©ÿ³úoı±‘»şÎÎÎ–«««ëÔé3ÍMD7ÜpCyãqkõ@£ò1{T»¸òXškzUovµË•o+WÖ\\XñÆË¿­³UVÌîï\nkåº\r]ñúÛôcoz_VûÑŠo›şvww—pbâ¾&Æ¡Ê‡Å|¾9”Ù ZiññBëª¼ı·×=+ÿtµË5wYíÛpU+¹VWÚ­K$Gı­¹¾º¿õ·¦¿­èi³ú’ğö5Ú£¿###å\Z›7onâÓD¿ùæòf7à( Qù˜=ª•V?hE½½J¾Ä55ª¿­uêß·Õ•«sú[ıÓš/ßımÅ/¡é}©¾fµ^¾µ6èo¡P¨|jĞİ;w6%í{ô±JS:´GÊÇì	P­´ì8ÚÜz{	µêOk.×\\“p—–ßwùö[W¹Z1g´¿uzW¹Yåëjô·ÇŞ”¾ÔùéòŞ­ØÍ6èïèèhùĞ:;;×ÿ6ÜÏ=Z‰XÛ·oß˜C€Fåcö¨VZs<¯\Z­\\­˜Óÿuå®ô·½k#û»uëÖr†‰ÃLiÖ‡N>³yóæÊ¦æçç7ì !ù˜=ª•VTÏ©F+W+æô]¹+ımïÚÈşÎÍÍuuuU’Ìş\'¬!{éx%uvvNOOoØşC£ò1{T³¢ÊşŠj=ôWUêıLåµ‚qiô3[÷=úXåÅr±ÑÑÑÜyhT>fO€jñùuiéˆj´r´bNıw•ÇÒßö®ïïäädå™¢Ò»ÏİÿÀƒI\ZºåÖ[«ÿøJ\"ûò1{T+­¨¾¯\Z­\\­˜Óÿuå®ô·½+•şÎÎÎöôôTÇ›8İyç]Ï>¼<}å{úûû«o*/–#ò1{T+­¨fU£•«sú¿®Ü•ş¶w¥ÕßB¡°cÇÎÎÎ•lÙ²eµ\r\r\ry+ò\"³\'@µÒŠê{ªÑÊÕŠ9ı_WîJÛ»Òíoœm†‡‡WL>ËõõõÍÌÌ¤¸·Ğ¨|Ì\0Õ:;;Ï=¸´ô]ÕPåeÅ¬¿ú«²Ùßb±8>>G£ŞŞŞšÔİİ=88¸{÷nÏ‘GéÿëhT|ê}á…o--V\rUVTIè¯şªüöòÈ¿. şcj÷Rô¬J^ß›ıfOOOÚ­KDõWå·¿G?»ví\Z¹-õ5J¾êÇîN»u‰è¯şªüöòH\"ògnn®§çıg‹û—¢gTÂ\ZüØäädÚ­KDõWå·¿GK;.Ú¾=­’Ô¿ÿõĞĞ@ÚMk€şê¯Êo!w$\" —ŠÅb_ßGgfş9ŠRõk~~oOÏû…}i7­ú«¿*¿ı…Ü‘ˆ€¼šíí½~vv2Š©Õ*^NÅKÏéé¯¥İ®†é¯şªüöòE\"rlff&^TíÚõ‡QtP-¯ÉÉ/õôtOOÿCÚZ#ıÕß+ïı…‘ˆ€|+‹##Ã}}û‹ùù‡¢è€*ş{|ü¯††úûâËi·h]ôWC«vê/ä…D´ƒéééááßÙ´éç:èèèêºzhè¦xQ•v[šF«éo{k¿şBöID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„ëÿÑì¶+¬«ÚH\0\0\0\0IEND®B`‚',0),('217',1,'var-ä¸šåŠ¡æ•°æ®',NULL,'¬í\0sr\0\"com.hhy.bos.domain.Workordermanage–’ÖÕ†ï|\0L\0actlweitt\0Ljava/lang/Double;L\0\narrivecityt\0Ljava/lang/String;L\0\nfeeitemnumt\0Ljava/lang/Integer;L\0	floadreqrq\0~\0L\0idq\0~\0L\0managerCheckq\0~\0L\0numq\0~\0L\0\rprodtimelimitq\0~\0L\0prodtypeq\0~\0L\0productq\0~\0L\0receiveraddrq\0~\0L\0receivernameq\0~\0L\0\rreceiverphoneq\0~\0L\0\nsenderaddrq\0~\0L\0\nsendernameq\0~\0L\0senderphoneq\0~\0L\0startq\0~\0L\0\nupdatetimet\0Ljava/util/Date;L\0volq\0~\0L\0weightq\0~\0xppt\0åŒ—äº¬pt\0æ— t\0 8ac5995b6a6e4245016a6e4710aa0002t\00sr\0java.lang.Integerâ ¤÷‡8\0I\0valuexr\0java.lang.Number†¬•”à‹\0\0xp\0\0\0ppt\0æ‰‹æœºppppppt\01sr\0java.sql.Timestamp&ÕÈS¿e\0I\0nanosxr\0java.util.DatehjKYt\0\0xpw\0\0jnGÀx\0\0\0\0psr\0java.lang.Double€³ÂJ)kû\0D\0valuexq\0~\0?ğ\0\0\0\0\0\0',NULL),('219',1,'hist.var-ä¸šåŠ¡æ•°æ®',NULL,'¬í\0sr\0\"com.hhy.bos.domain.Workordermanage–’ÖÕ†ï|\0L\0actlweitt\0Ljava/lang/Double;L\0\narrivecityt\0Ljava/lang/String;L\0\nfeeitemnumt\0Ljava/lang/Integer;L\0	floadreqrq\0~\0L\0idq\0~\0L\0managerCheckq\0~\0L\0numq\0~\0L\0\rprodtimelimitq\0~\0L\0prodtypeq\0~\0L\0productq\0~\0L\0receiveraddrq\0~\0L\0receivernameq\0~\0L\0\rreceiverphoneq\0~\0L\0\nsenderaddrq\0~\0L\0\nsendernameq\0~\0L\0senderphoneq\0~\0L\0startq\0~\0L\0\nupdatetimet\0Ljava/util/Date;L\0volq\0~\0L\0weightq\0~\0xppt\0åŒ—äº¬pt\0æ— t\0 8ac5995b6a6e4245016a6e4710aa0002t\00sr\0java.lang.Integerâ ¤÷‡8\0I\0valuexr\0java.lang.Number†¬•”à‹\0\0xp\0\0\0ppt\0æ‰‹æœºppppppt\01sr\0java.sql.Timestamp&ÕÈS¿e\0I\0nanosxr\0java.util.DatehjKYt\0\0xpw\0\0jnGÀx\0\0\0\0psr\0java.lang.Double€³ÂJ)kû\0D\0valuexq\0~\0?ğ\0\0\0\0\0\0',NULL),('302',1,'transfer2.bpmn','301','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"transfer\" name=\"ç‰©æµé…é€æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"checkWorkOrderManage\" name=\"å®¡æ ¸å·¥ä½œå•\" activiti:candidateGroups=\"ä¸šåŠ¡å‘˜\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"checkWorkOrderManage\"></sequenceFlow>\n    <userTask id=\"outStore\" name=\"è´§ç‰©å‡ºåº“\" activiti:candidateGroups=\"ä»“åº“ç®¡ç†å‘˜\"></userTask>\n    <userTask id=\"transferGoods\" name=\"è´§ç‰©é…é€\" activiti:candidateGroups=\"å–æ´¾å‘˜\"></userTask>\n    <sequenceFlow id=\"flow3\" sourceRef=\"outStore\" targetRef=\"transferGoods\"></sequenceFlow>\n    <userTask id=\"receive\" name=\"é…é€ç­¾æ”¶\" activiti:candidateGroups=\"å–æ´¾å‘˜\"></userTask>\n    <sequenceFlow id=\"flow4\" sourceRef=\"transferGoods\" targetRef=\"receive\"></sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow5\" sourceRef=\"receive\" targetRef=\"endevent1\"></sequenceFlow>\n    <exclusiveGateway id=\"checkYesOrNo\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow6\" sourceRef=\"checkWorkOrderManage\" targetRef=\"checkYesOrNo\"></sequenceFlow>\n    <sequenceFlow id=\"flow7\" sourceRef=\"checkYesOrNo\" targetRef=\"outStore\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${check==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow8\" sourceRef=\"checkYesOrNo\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${check==0}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_transfer\">\n    <bpmndi:BPMNPlane bpmnElement=\"transfer\" id=\"BPMNPlane_transfer\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"30.0\" y=\"115.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"checkWorkOrderManage\" id=\"BPMNShape_checkWorkOrderManage\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"110.0\" y=\"110.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"outStore\" id=\"BPMNShape_outStore\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"403.0\" y=\"170.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"transferGoods\" id=\"BPMNShape_transferGoods\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"563.0\" y=\"170.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"receive\" id=\"BPMNShape_receive\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"723.0\" y=\"170.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"860.0\" y=\"180.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"checkYesOrNo\" id=\"BPMNShape_checkYesOrNo\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"250.0\" y=\"117.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"65.0\" y=\"132.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"110.0\" y=\"137.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"508.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"563.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"668.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"723.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"828.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"860.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"215.0\" y=\"137.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"250.0\" y=\"137.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow7\" id=\"BPMNEdge_flow7\">\n        <omgdi:waypoint x=\"270.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"270.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"403.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"270.0\" y=\"117.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"270.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"335.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"583.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"877.0\" y=\"80.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"877.0\" y=\"180.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('303',1,'qjlc.png','301','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0q\0\0g\0\0\0ŸÕXª\0\08ºIDATxœíİ{ŒcgaøïpYÔË5KŠš¡ü«…®HqQÕªf§RÛX-\".¤–ha$Z:ªPµ…­\né¨¢0ê¢¡…Ôj•oĞF#Ò)Iè´$ašËf’’,1äÂäŠÓì&Îîìîù½kƒ3ÌmÇïzöøØÏ£W+¯×>>3ãs>kÏ{F\0\0\0b¤½\0\0\0¦©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0\0\0âi*\0\0€xš\n\0\0 ¦\0\0ˆ§©\0D³Ù¬Õjår¹X,«ğÜÃW T*U«ÕF£‘öf`ği*€A077Z\"Õ•W^yİõ×ßwèĞ±••áá¹‡¯À.»ì²ğ5	e•öÆ`Ài*€lk4\Z•Jeß¾}<øÀ±•cÆêñØã…²\n_œååå´7\0KSdXª|>ÿÅ+¾plå¨±Ù¸ú«W_xá…õz=íÍÀ`ÒT\0V©TZAõœ±õ¸îúk/ºè×ÒŞ\\\0&MUsssûö]¼r¼ilgüùG?rùåŸH{£0€4@&5›ÍÑÑÑª¯ÖØÎ8|äG{÷şòÒÒRÚ›€A£©\02©Z­V*••ãÏtÆ»Æ~k›³¯¾×PË/ÿ›ÉÉÉ´7\0ƒFSdR©T:pÕ—ª‹÷ı0I¾\"¹w%ùöÑä£É­‡O_õõ¯=ôÔÍÇ’ÿm&77“I®}.ù‡îúÀøSÏ›TÆmòù|Ú›€A£©\02)—Ëİ}÷í+Ç´ÇÈÈÈá$9r2yêxòä±ä™$ù³¿øøÈ¶pqé¡•ä£ÉÏ%õfrßñäËß¼£õVÕ‘!‡<±k×®´7\0ƒFSdÒîİ»â¡•ã‡Û#dÒ3\'’£\'NıÓñ“§şüÊ5ÿyŞ›ßò—ŸüûãIòôñä©•äÉ•¤‘$×Şrg«©çÏ=İ\rÀà±kÈ¤V=İá¯G\'O<›;ñã4\ZÏ|öóŸøÔgxøÔénWN&ÇZ­uÓmw¬¹ïP\rM@ÏÙµ\0dR«‹ş¯3N5Õ‰ä±g’G\'+IrìèÑÜŒŒœ32²ë=¿Ùê;Şzğö5÷ª¡©\0è9»€LjuÑSÑşìßÏ&?<ú\\rëİß;÷ÜsÏyÑK^öÊ×–ß÷SMuËm×Üw¨†¦ çìZ\02©ÕEÎ}ödòdóÔûT=—\\ËÒ[÷¾ıµ¯{ı+w¿êóÿúåç’äğÑä™£§îxÃÂ-kî;TCSĞsv-\0™ÚàøñuF;BV=µ’üèXòğÓ+7İUßû¶w¼ë7~óÑ£É#ÍäÑfòÄÑ$TÕ\r7ß²æ¾C54\0=g×Ikº¨ø®‹îüÎ½·Şµ´°¸tãÁ¥o¿ç¦;ı×Íßşæ]÷ÿÏÁ{¾qğ»7Şşİ…;î¹ëŞ|îŸ®xï¥ïM½m4\0Ã® “ZMõäêñ¡}pd~ï=ïYsÇ¡\Zš\n€³kÈ¤VS=at;4\0=g×I§šêÄãF·CSĞsv-\0™ÔjªÇŒn‡¦ çìZ\02©ÕT\ZİM@ÏÙµ\0dR«©1ºš\n€³kÈ¤VS-İM@ÏÙµ\0d’¦ÒT\0ô	»€Lj5ÕãÆ†ç­êv	½}¬ÍØ¹~ı…èçö¦`ĞØµ\0dRhƒ\'ŞşèôÌš+7»ÙzŞqÃÛ¬şëê+W_ØâÖ,j³qCSĞsv-\0™ÔJ‹‡º\Zkî²á6[ìêë·sÇÎ_7»°õúŸöî§]ÂKN{Ó0hìZ\02©Uv5:wÙä}¡ŸºÍ÷]Ëõ÷ÚÎcmxû5Wvn¿õ\ntõEH{Ó0hìZ\02©Ut5:wYßÕÿ´ù‡ñ~êkî»f™ëkÃ[?Öf7Şğ)lÿ‹ö¦`ĞØµ\0dR+*~ĞÕèÜe;6»ï·_}åOâg»uÚËkŞís_½À´7\0ƒÆ® “Rlª-n¼Y­{jÓZ“L[´™¦ OØµ\0dR+-¾ßÕèÜeë›wÎÚ¬¿ıúÇÚæ5^^ó¸›-§Û/BÚ›€Ac×I§Òâd½«ñãDi]è\\³Ù…õ÷İzÉ›]³qmşO«oĞÕ\Znÿ‹ö¦`ĞØµ\0dR+-îßşXûö5k®ßl±ëo¶úš\r~Ú%o¶„\r/wÖvÍ5İM@ÏÙµ\0dR«(¾=Vß}ÍåÍß;zş[,m›·Ùæ¿®ÜÕ×Ä=ñ´7\0ƒÆ® “ZEq(bü$NÖ^¹æÂf7X¿¨uéušl¶¨­Wuõ\r¶XÎv~Ú›€Ac×I­¢¸Ïèvh*\0zÎ® “ZMu¯ÑíĞT\0ôœ]@&i*M@Ÿ°kÈ¤Ğ\'OŞct;4\0=g×I­¦ú®ÑíĞT\0ôœ]@&µšjÉèvh*\0zÎ® “ZMõ£Û¡©\0è9»€LÚµk×³ÏŞ~òä·®†¦ çìZ\02ittôşû¿vòäİFWCSĞsv-\0™466ös3\'“oÛßYúJ.—K{Ó0h4@&MMMMN¾?õJÉÖø—ê\'+•JÚ›€A£©\02©^¯çroz¶yëÉä.c›£Tz÷ììlÈªP¤ËËËioC\0„¦Èªı§ŒŸLî4¶3ş½öwåòXÒÊÑÉÉÉ={ö”Ëåùùù´7#\0™§©\0²ªÙl‹ïXXø·$¹ÃØz,/_ŸË½©Ñ¸aõ°V«‹Å\\.733Óh4ÒÚ\0d¦È°¥¥¥|ş‚¥¥Ù$Y46!¨B|ÎÏa³¯áøøø={ÂŸáòYŞ‚\0\0Mm!«¦¦ş$In7ÖÙÙOçr£óóÿ¼õ—±ÙlÎÌÌär¹B¡P­VÏÊ¦`@h*€Ì=09Y)ß^­şõòòµIrĞh4ş»VûÛry_©T—·ÿÅZ©TöìÙ399Y¯×wl£084À€˜ŸŸ¯T~{Ï×Œ02²{÷ËËå‹CVÅ}1———§¦¦FGGÇÆÆæææz»¥\00š\n`(xË%NªU!®L¿Àf4À\0\n5==}É%—äóù7¾ñï~÷»Ã…´W*ÃÚÓ¯‡²ªT*i¯\0ıESååå_ıÕ_]ó)¸_ø…_øùŸÿys…Ÿ¹f³Y­V…B.—Â_Ó^#\0ú‚¦ÓÓÓ/zÑ‹VÕÏıÜÏíŞ½ÛÑo---µç±0ı:\0‰¦$¡Â±şk_ûÚvP…¾zÛÛŞ6;;›öz\r¦F£Ñ~}ll¬V«¥½:\0¤FSš¥¥¥×¼æÔì—^zi8ÜO{ußÜÜ\\¹\\nO¿n€!¤©\0J³Ùç;ßù’—¼$—ËùdÚYÓ~=”Uè+Ó¯M08Âa}±Xœ™™	eõâ¿8\\N{†Q­VkO¿6„©A\0†¦óóóù|¾3Ó÷øøøââbº«4ÌêõzØ{öì©T*6À`ÓT\0ƒ`zzºX,úe~Ó~=´n¡P0ı:À ÒT\0ÙÖh4ÊåòÄÄDÚ+ÂVÚÓ¯ONNÖëõ´W€^ÒT\0¶´´T(Lä!€§¦¦FGGM¿0H4@V…ƒòTföË¢öôë!®BbùÄ&@Öi*€Lš˜˜å¦•Ë´z½>99Ù~½3¹\0™£©\02¦=aúôôtÚ+BÏ´ßrÌår¦_È\"M%ù|~~~>í¡÷–––ÆÇÇGGGÃŸ>Ò	!š\n 3fffL˜>ğ\ZFØĞ¹\\®=ızÚ«Àéi*€h6›åry||Ü	†‡é×²BSô;¦³åååöôë¥Rinn.íÕ`š\n ¯ÍÎÎ† Z\\\\L{EHYøNkO¿n€¾¢©\0ú×şıûK¥’h::Ó¯W*Ó¯ô	MĞBG‹ÅĞTi¯ı¨ÙlV«ÕB¡ÏçÃ¿e.MĞwM˜Îv„o•ö<¦_H‘¦è/333…BÁ<ol_gúõ±±1s™\0œ}š\n _4›Íñå\"ÎÜÜ\\¹\\Ş³gÏşıûÇà¬ÑT\0}¡^¯\n…™™™´W„Ì5š*”Uè+Ó¯œš\n }óóóù|Ş„éôV­VËår¡ÕÍ	°s4@Êöïß_,ò²C–––ÆÇÇÛÓ¯›Ç`\'h*€Ô„*•J&Lç,hO¿Ëå\n…‚é×zKS¤cqq1İÎÎÎ¦½\"—………öôë“““¦—è	M‚Z­‚Ê±HK£Ñ˜šš\Zö\0gHSœUí	ÓËå²_ÑæææJ¥Rˆ«X¦_ˆ£©\0ÎpÌZ,M˜N¿©×ë“““íy,Ò^€ŒÑT\0gI{Ât¬ô³jµZ(L¿ĞMp6LOO‹EŸ­\"ÚÓ¯†?ıÖÀii*€Õh4ÊåòÄÄDÚ+İ	ßº333íé×kµZÚ«Ğ¿4ÀZZZr<JÖ-,,”ËeÓ¯lFSì¦3H–——ÛÓ¯‡¾š››K{u\0úˆ¦ØáĞÓoù3xjµÚØØXˆ«ééißá\0‰¦è¹ö„éáp3íT¯×\'&&L¿h*€Ş\n—ù|~~~>í³¡Ùl¶§_ßöá‚3YÃISôÌÌÌŒ	ÓN‹‹‹•JeÏ=ãããæ±\0†¦èf³Y.—ÃÑ¤ÿ§g˜µ§_3İ%0<4À™2a:¬177×~}jjÊ;·ÀÀÓT\0gdvv6ÕââbÚ+}\'ÔÔääd(«ĞW~É`š\n ŞşıûK¥’é¤akµZ­X,ær¹™™?/ÀàÑT\01Âqa8FM•öŠ@f,--·§_w.l`h*€®-..š0â´§_Ïår…BÁôëÀ`ĞT\0İ™™™	Ç‚f‹†3´°°P©TFGG\'\'\'ı@™¦©\0¶«Ùl·øŸuè•ååå©©©öôësssi¯@M°-õz½P(ÌÌÌ¤½\"0˜BP…¬\nquö§_o6›³³³í)gŠ?V&\\S­VÍœ–¦8½ùùù|>oÂtØiõz½=ız¥RYXXØé‡):jätÂÿÌÌŒ7¨Íh*€ÓØ¿±X44œMÕjµP(´§_ß‰˜™ŸŸË?mM­6::\Z\Z¬çk\0M°©ĞQ¥RÉ„é–ÎôëáÏ^M¿\n­R©¬\'êÏÿü£\\uİõ_ïŒ}ìãûöí[sK§¤ÖÓT\0[\\\\,\nş[\ZR\Zfff&—Ë‹ÅZ­v&‹Z^^^óöÔ‡?ü§÷:tlåøfã±ÇŸøÇÏ}.tİê7¬|XMSl ·…/§%…¾2??_.—CŞLNNn6uÄŞ½{ßùÎwnøVR½^9ÔI£±±±­kjMY}ìcïÜw×®]gá×½€¬ĞTô…f³aÃ²X,®Şá\r›ğÜÃW T*U«UŸ-IK{Âôğİè÷Ñ¡?µ§_e~N×L¿^9Û/§oyË[Ö¼Š†ŸèÕïP}òòË·YS«Ç•Wş¿PSWlSmšŠô…=bØ3…]ã•W^yİõ×·ş×pe8Gxîá+pàÀË.»,|MBY¥½q†N8B\nYkÂtÈ„Z­Ö~}zzº]PŸùÌgÚÁó3?ó3_|ñê‡½L\'¨¸*\"¨ÚãÖÛîŞ½»½œğr‘ÒSú‹¦\"MaX©TöíÛ÷Àƒ[9f¬=şX(«ğÅñÿ gM{ÂtŸçl©×ëíé×Ï;ï¼N8½á\roøÔ§>Õ¾Íììì¾Cµz\\ıÕk:K9—îÓú¦\"5!¨Âñë¯øÂ±•£Æfãê¯^}á…†#†´7×àFÅbQÁBF5›Í_ÿõ__óê7¾ñíÿ%	»›ö5cccgTíÑùİªĞr>\'h*RS©TZAõœ±õ¸îúk/ºè×ÒŞ\\ƒ,ä}¹\\˜˜H{E€xùÈG:oO½úÕ¯~éK_úæ7¿ù¼óÎ5U«ÕÚÿ´k×®|¨\'Mõôá#™\0½z\0šŠtÌÍÍíÛwñÊñ¦±ñçıÈå—\"í6˜–––\n…ÂÎÎ¤nrr²óöT±X|ßûŞ·oß¾=]tÑ/şâ/¶¯ÿğ‡ÿ´\'AÕ_¼âŠöbwïŞö³R¦©HA³Ù}ğ¡úÊñgíŒÃG~´wï/›×»çL˜ïÀÖêÕ›Tqşù£í%ÏÏÏ§ıD4i*RP­V+•ÊÊñg:ã]c¿µÁÌâY}¯¡\Z—_ş7“““ioº211Q.—ÍYƒ-ìq:o^õ6¨ÂøÀ>Ø^¸×gršŠ”J¥W}éù ºxß“äû\'’{W’oMî8šÜzøøôU_ÿÚCOİ|,ùßfrs3¹á™äÚç’¸á®Œ0õ¼IeÜvp!ŸÏ§½éÒÔ%²\'	Ô0İl]0ÆÇÇ{5İßúqİõ_o/¼P(¤ıD4i*RËåî¾ûö•ãGÚ#ì\'É‘“ÉSÇ“\'%Ï$ÉŸıÅÇG^ø³…‹K­$Mx.©7“û\'_şæ­·ªá8|ä‰]»v¥½éRRê¢‹.úâW„:Ã¬ZX8U§>¨Cbll¬=Wõš7Õ}‡µ>::šöÒ¤©úH³Ùœİ¿©T*şDØ„kjµÚ }Bi÷îİ?ñĞÊñÃíöFÏœH8õOÇOúó+×üçyo~Ë_~òï\'ÉÓÇ“§V’\'W’ğü¯½åÎVSÎ{º.-í ºõ¶ƒÇZgÛ<“¬š™™1a:•Î,êí×ÎGÓÓ~¢@š¼ô…R¡víÚj*ÔW]wı×Ûãê¯^ó±}¼\\.‡)\nÕj5í•íV=İá¯G\'O<›;ñã„#æÏ|öóŸøÔgxøÔ±ïÊÉäX«µnºí5÷ª1œûìÕAÕqYÕl6ÃÏÑøø¸3ÉÀPéÌx~ß¡C;ÑTå§ıD4y	HÙââb8:)µÏ$ÜpãM—]öğ±¥Vı_gœjªÉcÏ$NV’äØÑ£¹.9gdd×{~ÿ²Õw¼õàíkî;Tc÷Ùëƒ*.«L˜C+—Ëµ›ç[wß½Mµk×.Mx	HÓÔÔT¤ë®ÿzW/ßáh2efú¿Û[]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª1lûìÍ‚ªÛ¬š\rAµ¸¸xÖè7á…¢İ<İîm·3{ü	§¨M•–öÇ&\'\'£_ÇÿñsŸËî¯…´º¨Ñá¯ÏLlzŸê±ç’ëoYzëŞ·¿öu¯åîW}ş_¿ü\\’>š<sôÔoX¸eÍ}‡jUSmTÛÏªö/(Ò¯#]©T*íì	ûÍ7Õ·î¾»½ğ!Ÿ—¢C´ş‚ªı1¤3|)¿áÆ›ÂrêõzÚO¨ka÷süø:£\n!«ZI~t,yøé•›îªï}Û;Şõ¿ùèÑä‘fòh3yâhªê†›oYsß¡\ZÃÓTÛ	ªÓfU¸2üShª³¾ú@™ššjgÏe—ıAÏ›ê“—_Ş^x¹\\Nû‰i\Z–C´¾^yÏ<¨:”!«2÷!À5]T|×Ew~çŞ[ïZZX\\ºñàÒ·ßsÓ‡şëæoó®ûÿçà=ß8øİoÿîÂ÷Üuï>÷OW¼÷Ò÷¦Ş6šjGm?¨¶ÈªÅÅÅøÍCàÌ---u>÷ôá#½mªğbÕ^ø`Ì DŠC´¾255u&ù[?¸ªT*¥ı´ºÓjª\'W}èƒ#Ûğ{ïyÏš;Õ†¦ê6¨6Ìª™™™Œ¾…ì„ÑÑÑöN$ì1{¸ÿíœœ*ğcrƒˆÖWÚÿwŞÛÿ$ãø`8ˆLûÉu¡ÕTOİoª¸ ZU<òÈxKæŞ¼vÎääd»|öîİÛÃ·ª~ç’KÚ‹ÍÜÿl=7à‡hı&ÕNœsğ:ÿüÑDjªİÁnªõAuõW¯¹à‚Üf§”yìñ\'ÂáÑ¯¸bMVùßb`ğ²°{÷îvÿ|òòË{²ç½áÆ›:oR™VäC´~3;;[*•zTíñáÿéôôtÚOq»ZMõ˜Ñíà¦Ú0¨Úg}9ÿüÑõYÕªöÑŒ¬Ú>ò‘¼úÕ¯^ÿ¹ñW¼âo}ë[Û—ÃË™Oª^”:§úOûyéØC´>õvâä·ªÂë{ÚOq»ZMõ¨ÑíÔ¦Ú\"¨ÚÖdÕê ’U@Ç¯üÊ¯¬©©ğJòú×¿ş£ıhø×B¡Ğ¾2ì.7{|;ãéÃG:/AaQ=©	Ğ[ƒyˆÖ‡Ú<Ø¡ j/¼paa!í\'º-­¦zÄèvdS­ªp¼ÒùàõYµ>¨Ú‡M<ø¬‚!W¯××¼Oõ»¿û»•J¥ó¯O\0†™¸â‡—šÎKPxå1¹(Ğ6€‡hı©Z­†—õmªO^~ùäädÚOôyµZm³‰×ZMµlt;²ÕT[|tl6)E¸¦sè³:«Ş~û†AuõW¯Y¿YCèßøÆË^ö²ö‹Ã‡>ô¡|>¿ú—C­~éèö,À7ÜxÓêÿñÉĞGî–¥C´LŸ™™ÙÑ¦ºîú¯‡ƒÈ´ŸèİsÏ=í]ÎË_şò¬ùWM5ğMµõ7@ÛÖ³üm˜U/yÉK¶T²\n†Ph§ıû÷şáşaÈª?¹\\niiiÍÍfggW¿¶ìİ»w³×5oO½÷ÒKW¿ø*`µÌ¢eİØØØv^µÏdÜwèĞùç¦ıD,ìÛ^øÂ¶w</~ñ‹é—~iõ[­¦úa·£s¯5GÕ[Üò´×oÿ–ÛY±¸ÇêêÒÛ¤İÙú ÙŞ´éfÕ6ƒJVÁP	…j*4Uûç}ß¾}\\pÁfÿÏB+äÖê“PVûØÇ¿u÷İëSê?÷¹°´Õ7¯K>ò¬‘™C´¬Û¡YÔW§	‡˜i?Ñç­ù•˜—½ìeïÿûÛŸÁ=qâánGç^«ï¾Ù¢¶¾~³côÕ7[}å†·éÕcuõH{«va‹o€íŸ‡j‹¬:mPÉ*µZ-ÔÔÄÄÄê¹\"Âå—¾ô¥³³³›İ+¼&„\0[=Îj^xáfÿT.—MJ¬—¥C´LÇ—«‡~‡Fx¹‡›Ä÷•\'êvtîµá¢âqÃëÛW®şó´ë°§÷¬×,!+Ûwk!¨¶?æÍÿ÷9çœ³f	/xÁ®¸â_¶¹„¾úX,Ğ+óóóù|>DÎ†¿ºyÚßçLZéU©T¶ùÂ^F²2pöiª³$—Ë­ÿPÁN4UÚOôy¯|å+;»¢RKØ!µ?Ú>rª.ÜşX¿o[ıO]-jûË\\ıçú‡Ûl6\\Ÿ-«ÛuN{«va‹o€ÅÅÅU=şÄi¿¥7œå¯mÃóVm¸„ğ¸ÎÈ	ƒ$üD[zò£İl6kµZˆ«Phk^gFGGÃk×ÌÌŒ÷¦€­eé-ÓvôäTíÑW¿OÕh4Ú;¤“ôGş{¬Î¿¶¢ânGç^ëúdã›­¹Ü¹ãf7^s›ÕË_ÿp›=Êš•Üú±\"¾)nÓ®lı\rl/«¶ªmf• ‚S¯×Cä„øñM@_ÉÌ!ZÖU*•Õ§%İ‰qÃ7]xá…i?Ñûş÷¿¿k×®±±±ÑÑÑÉÉÉ5¿ÍÒª‹t;¶s¯õ·YsMû¯›£¯¹ÍÖ´õB¶ùXİ~ÒÚ İÚú më¬Ú0¨^ğ‚l?«’åååñññğ’²ÅoI¤%3‡hY7==ıáÿé6Uh¶Ë.ûƒ´ŸèóÂn¯Z­nø‰öè¢Ø¬R6k¡Í®Ù¬µ6l¡5¸Ùí·¸¼Åc\rjS%[~tl–U›Ø÷ş¿ÏnxŞªõY%¨``´ç“5533“öº\0l,K‡h™,Ãş`G›jß¾}sssi?ÑmiEÅ÷·?VõÌO]¹Åí7»AçÊÂlÓ»¯¾×úG?íå-«Û¯CÚ›®÷ÖgÕfAÕåo³Ó¯Î*Aƒ¡Ùlv&I_}ê^€~3€‡h}kG§©xúğ‘p ™•]Î©¨8YïvtîÕ¾ğ|Ÿlyã­²áí×/ı½ÖgÒúõÙÎcuûH{ÓíˆõYuÙe°aPµÇú¬Ú·o_øT0HªÕj{’tçB\0úß`¢õ§ıøßßúÓaái?ÅíjEÅıİÎ½Ú¶XÈ7X½u-´Õİ7¼Í6/oñXİ~ÒŞt;e‹¬Úğ<T«³JPÁ€™Íår•JÅl{@Vì!Zj6›£££;q–ªp@yşù£Ú÷´¢â{İÎ½Ú6\\ÈOŠeã¿®¾fıõk.o}Íf÷íö±ºı\n¤½évĞ†YµÅ‰}ÛYµ&¨Î;ï¼/}éKi? Òüü|±X,•Jíó.\0dÅ ¢õ¡Z­öŞK/ò7©’7Õ¡®ÆOúäPçÏŸ~ÛçùlqßÎİW_XßÕ´ş–.³Ç=ícuûEH{Óí¬õYÂi‹ïüoİ}÷šw¨fgg…BµZMû©\0İ	?şí³Ø™$È¢?DëC¿sÉ%\\ÕÃ \n‡•{÷î\rG–i?³.´¢â>£Û1ğM•ts:àÕcõGşšÍf¥RÏÊ¯Â«×ëíóíš$È®Á?Dë7FãÂ/ìÕdíÒî;t(í§ÕVSİkt;†¡©’î³jÃß¡š™™)\n[Ïä¤+ì\'&&r¹œ÷–¬ŠC´~³´´²j³•vT¿sÉ%Wõš´ŸP×4•¦ÚÚö³j‹I)Â•şçúS³ÙlŸrjzzÚ[ÊÀ\0–C´~ööîİ{Ã7ÉGşB˜e1¨’VS<yÑí¦J¶—U§å¯Ñh”J¥ÉÉÉ³¹æÀÖ:§œ2I:00†è­ß„}I8düØÇ>Şí¯<}øÈßúÓí¦ı$\"µšê»F·c¨š*9]VmÚô©©©pËMŒ	ƒªV«µO9åç0ÃuˆÖošÍfhª.È…FêL_¶õøâW„ÛøÃ\Z(Ó^ıx­¦Z2ºÃÖTÉæYÕíy¨æççóùüÂÂÂ®-°™öÏ`¹\\ö[À@\ZºC´>´¼¼<11±{÷îß¹ä’Lë\'×\\yåÿ{ï¥—†Û\\vÙÀ©ÕTß1ºCØTÉFYwbßğƒV(¦§§wh=\r…Õb‹“qlÑúS³Ùœ­T*{÷î]sò¥pMªZ­60=ßµk×³ÏŞ~òä·®Æp6UòÓYTåry`~” ŸÕëõR©”Ïçr\nxCzˆFºFGGï¿ÿk\'OŞmt5†¶©’ŸdÕ}‡ùÿv×jµB¡°´´Ô«uÖX^^/õ&Ş†Äğ¢‘¢±±±ÿ˜›9™|ËØşøÎÒWr¹\\Ú›.M!¥Â!ZO>>‚*ŸÏ‡¸:óE«5\Zö$é333i¯ÀÙ£©HÁÔÔÔääûS¯”l©~²R©¤½éG³Ù,—ËãããÎ=~”:“¤û±†¦\"õz=—{Ó³Í[O&wÛ¥Ò»}Š¦çfffŠÅâ\0ÌûéªV«íIÒı²\"0œ4éØÊøÉäNc;ãßkW.¥½ÑÓÂÂB>ŸŸ››K{E “fggs¹\\¥RqÊ)`˜i*ÒÑl6‹Åw,,ü[’Üal=–—¯ÏåŞÔhÜöFXFcll,T~Ú+Y2??_,K¥’_\04©iÍpÁÒÒl’,\Z›T!>çç¿öæ\Z|¡©Â¢O.Ái-..†”\n?/&IhÓT¤©õ±«¦¦ş$In7ÖÙÙOçr£óóÿœö†\Zá\01—Ë…oË´WúT½^¯T*ù|Ş¯w¬¦©HY³Ùœœ¬‹o¯VÿzyùÚ$9h4\Zÿ]«ım¹¼¯T*†Ëio¢á²¼¼\\,M\rk4\Z‰‰‰\\.W­VÓ^€¾£©èóóó•ÊoïÙóšFFvï~y¹|qÈª´7Ë\n?>>^.—Í\rIë\'¢}Ê©ééi?\0ÒT\0¨Õjù|Ş/ß3ä:§œò«†\0[ĞT\0AU(B\\¥½\"‚ğß>å”IÒNKSlªÑh”ËåpXé#Oùùù|>¾ó`›4ÀiLOO‹Eÿ[ÏÀ[\\\\,¶„i¯@–h*€Ó[XXÈårÎÆÃ ª×ë¥R)ŸÏû&ˆ ©\0¶¥Ñh‹Åıû÷§½\"ĞKËËËããã£££N9MSt!4ÕØØ˜9Ğ\0áÛ¸=Iº²œ!MĞ¹¹¹|>ïNÈ®f³Ù™$İü+\0gNSt­^¯\nÿ»OU«Õö$éŞnèM£ÙlW*ÿÍOVÌÎÎær¹ğMkK€ŞÒT\0ñªÕj¡PXZZJ{E`+óóóÅb±T*ù^Ø	š\nàŒ,..†¬2g\Zı)|†”\nAe’t€£©\0ÎT£Ñ‡­i¯<¯^¯W*•|>/øvš¦èéééB¡à7UH]ˆüPø¹\\®Z­¦½.\0CASôÌÂÂB>Ÿ÷!+ÒÒl6Û§œ\n…oö€³FSôÒòòr±XœššJ{E:SN™$à,ÓT\0½799Y*•ÚrvÔjµö)§|ô š\n`GÌÎÎ\n…ÅÅÅ´W„A6??ŸÏçËår½^O{]\0†—¦Ø)KKK!«ÌÀN¹^lÑí\0©ÓT\0;¨ÙlV*•ññqĞ+õz½T*™\r h*€733S(|:‹3´¼¼ú|ttÔ)§\0úŠ¦8}•hF£=Izèó´×€µ4ÀY‹K¥ÒäädÚ+B–4›ÍÎ$é>A\nĞŸ4ÀY555U,ÍyÍvT«Õö$éæåègš\nàlkÏ½°°öŠĞ¿fggs¹\\¥R‘ß\0ıOS¤ (\n…ééé´W„¾’»X,–J¥¥¥¥´×€mÑT\0©™˜˜(—Ë>ÖEÛââbH©T&IÈM¦Z­V(¼#1äêõz¥R13$@Fi*€”… \nÓ!®Ò^RĞh4&&&r¹\\µZM{]\0ˆ¤©\0Ò×l6Ëåòøø¸É²‡GØÖíSNMOOÛî\0™¦©\0úÅÌÌL±X¬×ëi¯;®sÊ)¿M0\04@YXXÈçósssi¯;¥V«µO9e’t€¡©\0úK£ÑÛ¿Ú+BµÏKV.—½	0`4@?\nMU,}0l0,..[Â…´×€ŞÓT\0}j~~>—Ë-,,¤½\"Ä«×ë¥R)ŸÏ;åÀ\0ÓT\0ıkyy¹X,ÎÌÌ¤½\"t-l»ñññÑÑQ§œxš\n ¯5›Íph^.—M·F£=Iºš\n jµZ>Ÿ_ZZJ{EØJèŞÎ$é\Z`xh*€lAU(B\\¥½\"l¬Z­¶\'I7³À°ÑT\0™ÖËår8j÷H_™Íår•JÅ)§\0†“¦È˜éééb±èğ½ÌÏÏ‡mQ*•|,`˜i*€ìYXXÈår¦çNÑââbH©T¶\0š\n “\ZF8 ß¿Ú+2têõz¥RÉçó&I MSdXhª±±1“\"œáë<11‘ËåªÕjÚë@ÑT\0Ù677—ÏçÓ^‘AÖl6Û§œš6A\0kh*€Ì«×ë…BaÍfÿê¯şÊûW=Ñ9å”¯\'\0ÒT\0ƒ ÙlW*•ö»(ËËËçœsN¹\\N{½²­V«µO9e–E\0¶ ©\0GµZ-\nKKK—^zéÈÈÈ«^õ*o­Ä™ŸŸÏçó!JëõzÚë@¿ÓT\0åšk®yùË_>Òòú×¿şÿøÓ^£ŒY\\\\,¶ø5\0¶ISO}êS#?í\roxƒ6Ø¦z½^*•òù¼SNĞM08Şıîw¿â¯XİT/~ñ‹ßşö·§½^ınyyy|||ttÔ)§\0ˆ ©\0G£Ñ¨T*{öìÉår]tÑùçŸÿ¢½èÜsÏu>¥Í„¯X{’ô5³&Àöi*€AS¯×çççC*„¾zç;ß922òº×½.í•ê;Íf³3IºSNp&4Àà›œœ,•Ji¯E©V«íIÒÍ‹À™ÓT\0¢ÙlÖjµr¹\\,C0Œ«ğÜÃW 4d\'ÉÀY ©\0ÁÜÜ\\h‰TW^yåu×_ß¡CÇVV†s„ç¾¸ì²ËÂ×Äï’°Ó4@¶µç¥Ø·oß>plå˜±z<öøc¡¬Âgyy9í\rÀÀÒT\0‚*ŸÏñŠ/[9jl6®şêÕ^xa½^O{s0˜4@†U*•VP=gl=®»şÚ‹.úµ´7\0ƒISdÕÜÜÜ¾}¯o\ZÛşÑ\\~ù\'ÒŞh\0 MIÍfsttôÁ‡ê+ÇŸ5¶3ùÑŞ½¿¼´´”ö¦`Ğh*€LªV«•Jeåø3ñ®±ßÚælã«ï5TãòËÿfrr2íMÀ ÑT\0™T*•\\õ¥çƒêâ}?L’ïŸHî]I¾}4¹ãhrëáãÓW}ık=uó±ä›ÉÍÍä†g’kŸKşá†»>0şÁÔó&•qÛÁ…|>Ÿö¦`Ğh*€LÊårwß}ûÊñ#í122r8IœL:<y,y&Işì/>>òÂŸ-\\\\zh%yàhòÀsI½™Üw<ùò7ïh½UudÇá#OìÚµ+íMÀ ÑT\0™´{÷îÇŸxhåøáö™ôÌ‰äè‰Sÿtüä©?¿rÍ÷æ·üå\'ÿşx’<}<yj%yr%i$Éµ·ÜÙjªÃÃ9ÂsOwÃ0xìZ\02©ÕEOwFøë‘ãÉÏ&ÇNüøFã3Ÿıü\'>õÙ>uºÛ•“É±VkİtÛkî;TCSĞsv-\0™Ôê¢ÿëŒSMu\"yì™ä‘ÃÉJ’;z4wÁ##çŒŒìzÏï_¶ú·¼}Í}‡jh*\0zÎ® “Z]ôTg´?û÷Ä³ÉÃO\'>—Üz÷÷Î=÷Üs^ô’—½òµå÷ıTSİrÛÁ5÷ª¡©\0è9»€LjuQ£3Â_Ÿ=™<Ù<õ>ÕcÏ%×ß²ôÖ½oíë^ÿÊİ¯úü¿~ù¹$9|4yæè©;Ş°pËšûÕĞT\0ôœ]@&…68~üGÑN…UO­$?:–<üôÊMwÕ÷¾íïúß|ôhòH3y´™<q4	UuÃÍ·¬¹ïP\rM@ÏÙµ\0dÒš.*¾ë¢;¿sï­w--,.İxpéÆÛï¹éÎCÿuó·¿y×ıÿsğoüî·wá{îº÷Ÿû§+Ş{é{SoMÀÀ°kÈ¤VS=¹z|èCÙ†ß{Ï{ÖÜq¨†¦ çìZ\02©ÕTOİM@ÏÙµ\0dÒ©¦:ñ¸ÑíĞT\0ôœ]@&µšê1£Û¡©\0è9»€Lj5Õ£F·CSĞsv-\0™ÔjªGŒn‡¦ çìZ\02©ÕTËF·CSĞsv-\0™¤©4\0}Â® “ZMõÃë—¼Ùcu®ßze¶÷{R«4íMÀ ±kÈ¤Ğ\'N<¼CcõÂ×?Pçšõ:İÚ6—³CO-íMÀ ±kÈ¤V~<Ôó±e=›õVßlëuÛğî›]Ø‰\'˜ö¦`ĞØµ\0dR«:ìùØl±«¯ï\\n_8íšlxƒU\r¶vÛYæ™<Á´7\0ƒÆ® “ZÕñ@ÏÇf‹]}}çòO¢hƒ;nù~×ÆËéüë=µÎc¥½é\04v-\0™Ô\nô|l¶Ø\r¯_såê¿vuyõ…z^«4íMÀ ±kÈ¤kªÍß_êñr:]Wš\n€±kÈ¤V~|?•±e/=›­/¯¾ıú;ºòio:\0]@&Ê“õ«bÃËíkşÚ¹¼iwm²œ5KØ¹\'•ö¦`ĞØµ\0dR+?îïùh/¶³ğÕ²şÊíÜx;—;ËÙpQ=‚io:\0]@&µªã{=íÅ®Yøš+×\\Xı†ËÜâúŸÔÔéÕ“\'˜ö¦`ĞØµ\0dR«:õv¬^æºìm|ıFíÛj±k–³ÅãöüÙu–Ÿö¦`ĞØµ\0dR«:î3ºš\n€³kÈ¤VSİkt;4\0=g×IšJSĞ\'ìZ\02)´ÁÉ“÷İM@ÏÙµ\0dR«©¾kt;4\0=g×I­¦Z2ºš\n€³kÈ¤VS}Çèvh*\0zÎ® “víÚõì³·Ÿ<ùm£«¡©\0è9»€L\Z½ÿş¯<y·ÑÕĞT\0ôœ]@&ıÇÜÌÉä[ÆöÇw–¾’ËåÒŞt\0\ZMISSS““ïO½R²5ş¥úÉJ¥’ö¦`Ğh*€Lª×ë¹Ü›mŞz2¹ËØæ(•Ş=;;›ö¦`Ğh*€¬ÚÊøÉäNc;ãßkW.¥½Ñ\0@š\n «šÍf±ø……K’;Œ­Çòòõ¹Ü›\ZÒŞh\0 MaKKKùüKK³I²hl6BP…øœŸÿBÚ›€Á¤©\0²maa!dÕÔÔŸ$ÉíÆú1;ûé\\nt~şŸÓŞP\0,MyÍfsr²R,¾½Zıëååk“ä Ñhüw­ö·åò¾R©.§½‰\0dš\n`@ÌÏÏW*¿½gÏkFÙ½ûååòÅ!«ÒŞ,\0>M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄÓT\0\0\0ñ4\0\0@<M\0\0OS\0\0ÄûÿµS!6Keã\0\0\0\0IEND®B`‚',0),('304',1,'qjlc.bpmn','301','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"qjlc\" name=\"è¯·å‡æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤è¯·å‡ç”³è¯·\" activiti:assignee=\"å¼ ä¸‰\"></userTask>\n    <userTask id=\"usertask2\" name=\"é¡¹ç›®ç»ç†å®¡æ‰¹\" activiti:assignee=\"æå››\"></userTask>\n    <userTask id=\"usertask3\" name=\"æ€»ç›‘å®¡æ‰¹\" activiti:assignee=\"ç‹äº”\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts<3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${qjts>=3}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow8\" sourceRef=\"usertask3\" targetRef=\"endevent2\"></sequenceFlow>\n    <sequenceFlow id=\"flow9\" sourceRef=\"usertask2\" targetRef=\"endevent2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_qjlc\">\n    <bpmndi:BPMNPlane bpmnElement=\"qjlc\" id=\"BPMNPlane_qjlc\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"120.0\" y=\"231.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"210.0\" y=\"221.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"110.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"490.0\" y=\"330.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"380.0\" y=\"228.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"760.0\" y=\"215.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"155.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"210.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"315.0\" y=\"248.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"380.0\" y=\"248.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"400.0\" y=\"228.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"400.0\" y=\"268.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"542.0\" y=\"330.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"250.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow9\" id=\"BPMNEdge_flow9\">\n        <omgdi:waypoint x=\"542.0\" y=\"165.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"777.0\" y=\"215.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('305',1,'transfer2.png','301','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0[\0\0f\0\0\0=‹\0\0%—IDATxœíİlÜ÷]?p¯?†;­ª…Fü3OüQk‹ÅÉˆº“¨«%¦ÖğGf©Ú4ÑU\rjƒXC„Ø°ønU[°@£ÉÅÒÚbÖ¦˜‘v¦M“ôG6/mVwi:¯iº+IškbÇŸï\'wííz¶/Ÿ³ïüù|îıxè%ë|¾ûÜçã×;ïÏû™;ßuD\0\0\0¡êH{\0\0\0R#\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—DëU,§§§wìØÑ÷¶îîî\0È¡øV9Å§¶©©©B¡ö™ZK\"‚µ‹ƒĞàà`gggù´1ı¶¹¹¹´w\r\0Ö\">…UNgñ©m`` ««+>ÍMNN¦½kĞ*¬Åüü|ùÿÏœ!\0h{åÿìííM{_ ù$\"hØÔÔTOOO|zH{G\0`ã:t(Eãããiï4™D™œœìëëó¢j\0T,‡††ÆÆÆÒŞh&‰\Z077×ÛÛ+¬8õõõÍÌÌ¤½#Ğ44`ëÖ­Î\0nnn®§§\'Fiï4‡DIMNN¦½\0¾;î¸ctt4í½€æˆ ©©©©´÷\0Ò7;;ÛÓÓ“ö^@sHDÈüüü¦M›ÒŞ\0È\n¯$§mHDˆ—Ì@5/œ£mHDˆy\0ªù¿BÚ†D‰ôõõùHV\0¨ğ§D´\r‰ñji\0¨677×İİö^@HDH<éÇSÚ{\0ÒÑa%I;0!‘®®®B¡ö^\0@†HD´ã1é@\r\'GÚƒq‰˜ô †“#íÁ8†DLú\0PÃÉ‘ö`C\"&}\0¨áäH{0!“>\0Ôpr¤=ÇˆI\0j89ÒŒcHÄ¤\05œiÆ1$bÒ€\ZN´ã1é@\r\'GÚƒq‰˜ô †“#íÁ8†DLú\0PÃÉ‘ö`C\"&}\0¨áäH{0!“>\0Ôpr¤=ÇˆI\0j89ÒŒã*‹ãããCCC}}}İİİ¡Š=ş\r\n…´Û²F&}\0x\'\'GÚƒqÜ*SSSqˆãĞ½÷ŞûğŞ½Ï=z~a!ÌŠ=ş\rLLLlÛ¶-şÄ¹(íæ¬…I\0j89ÒŒãæ+\nÃÃÃıııÇ^:v~á¼ª®¯ˆsQüË™ŸŸO»Q1é@\r\'GÚƒqÜdqêííıú¯_8§V«û¸Ë–-sssi·«&}\0¨áäH{0›lxx¸‡ŞTõëá½İpÃo¤İ®˜ô †“#í!åq\\,\'\'\'wìØ188Ø÷¶øšñññÜışÔÔTÿM‹E•¤>ÿ\'¼sçÒnZR&}\0¨áäH{HmÇA(N>qŠóÏÄÄ}ï}¤\\÷?ğàwŞ544ÔÕÕµuëÖ¼ü!~œîº»»_:>·°xV%©Óg~²yó‡gggÓn]\"&}\0¨áäH{Ha:t¨ü^Ìqò9¿°X¿ö=úØ¶mŸìííŞø]mHœÜ†‡‡ß¨Ô¿ğı©«ïTíÜù—###i·.“>\0Ôpr¤=lô8ŞµkWoŞûÈ%³PuíòÀ\r7Ü°}ûöb±¸Á;œ\\œñ&îû·ŸÆ¡›úE/^ˆ[ˆ¾{.zê\\´ÿôâè}|ëøëŸş·=^Œö½=ôfôwûùôöÏ¤NR©\'ÌÄã!íÖ]Z¡Pxï{ß›»—q@KID´‡Çq˜\Z\Z\Zi(U×Wî¹§¯¯/³ïÚÜÓÓsøğÁ…Å3åŠçˆÓQtf)z}1zí|ôFıÑŸİÕqÙ{·Ş4x|!:v.:öf4WŒ_Œ¾ñ§JO	°NŸ9ÙÙÙ™vë.!Bq ÿú=ñğŠ\0 B\"¢=lĞ8ãĞÖ­[ÇÇÇ×‡*/¢‹·“Íwmîêêzõäñ…ÅÓåŠçˆ7.Dç.\\üÑâÒÅ¯ß|ğ?ñ—>ôçwq1ŠN-F¯/D¯-Dñúú¡\'.%¢ÓaVÆ\'ÓrÚÿäòs•B\0Tdü$	mĞ8\Z\ZZª¼‚.E|ù\\)ÕœªTüí™ÅèäÙèü…·n¯¤ÿöË_ıÂß|ùØËŸæZXŠÎ—’ÒcO>Usß *Ë“iuª?¡\0Ê²|‡ä6bïÚµk=/–[^÷\rnÀ7¤”jş¯RÑ…èÄÑOGQtşÜ¹ë¯ïè¸¼££ó¿·­úû¬¹oP•ÙÉtyŠ\0 ZfOâĞ–ãC‡õöö61•ëÓŸşÌîİ»[½ó\r)¥š×+U~ÕÜÉ³ÑË§¢WŞŒöşÁu×]wùï¾êšk‡~ÿ‰è‰\'ÔÜ7¨ÊædºZŠ\0 \"›\'qhTËÇq‡V[V®§½tü}ïëÎÔkçJ©¦P©øÛ³KÑkÅ‹Ïx3ÚûÄì/oşÈµ?ÿ×tıìWÿéoFÑésÑç.ŞqßÌ5÷\rª28™ÖCB\0”eğ$kĞÚq<99988Øô8T®ÛoÿÜèèhK÷¿!ñ¤°¸ø“J•çˆ8½¾ıä|ôò©…Ç™Ûü+½ñ7ë•sÑ‹Ñ+Åèä¹(ÎDû¢æ¾AUÖ&Ó$qH(€H\"¢]´vÇëÅF?z¨¡§‰6mÚÔÒıoHMªé»ñ†§¿÷ÜşgfgÍ>z`öÑƒG{úè=şİï<óÂ·ùŸßôà÷g:òÌs?¼çï÷Ürë-©\'‰(j$	E\0©“8¬YÇq¼LìêêjQ*×–-[fffZw\r)%¢×ªë³ŸıLG¿û‰OÔÜ1¨ÊÎdÚhŠ\0\\vNâ°-ÇcccÃÃÃ-MDwïÜ922ÒºChH)TVF&ÓµÅ!¡€eä$ëÔÂq¼}ûöİ»w·4=¼÷‘x%ÚºChÈÅDtáUÕhea2]‡îàÁë¯ïyşèÑŞ‰WOnŞ¼ùë{öE\0„,\'qX¿ãxYÙÒD/Xß÷¾îÖÂrãããsss+ş¨”ˆN¨F+õÉtÅ8ÔÙÙïX<º–‡¢r*¿âQ( d©ŸÄ¡)Z8[ô¾ÛÕuêô™xåÚºC¨qäÈ‘ò:øê«¯˜˜¨ùi)½¢\Z­t\'Ó:q¨¬&UÇ!¡€ÀID´‡ãM›6{éxKQ\\ñ?Å¾’íÛ·ï(™œœœ.iú§Å¼ì²ËÊëà+¯¼òƒü`õóE¥DôcÕh¥8™.CqÆÇmÍ[_TBÑò8‹ãSõ8Š\0‡DD{há8îééyöğá\rHDåü³{÷îr\"\Z,g¤Êÿô—¿(ß`tt´|—ÙÙÙFªf¹|ÕUWİvÛmåèUJDóªÑjÅdZçÅ«½•B|MWW×òPtààÁãĞò—†\nE\0B\"¢=´p·ôÃˆÊ•ğïˆÊùgjjªœˆî¸ãrFŠ3[y]Ûİİğ‰¦_ıÕ_­^_sÍ5øÀÊïî e$ÕqcYıw–[1½ûİïN‡„\"\0Â!ÑZ8‡‡‡«ÿÄ¢µïÑÇ¶lÙ²ş]››KøDÓW\\QYÿzÉ¯ıÚ¯•Ÿk*%¢5±êl°úGë|Üòİ>VSqùÖÖßÁjõ_Ü%{£íCQÂ8$‰ˆöĞÂq<::zûíŸki\"Š×¶mŸlİ!T‹óÒı÷ß_^\r_{íµúĞ‡Şó÷|à¨<Ñ»páåõTõwÍökkùC\'ÙHõ}ëï|‡^µb2­óâÆäŸ;T\']2	E\0„@\"¢=´pÏÍÍuww·4õ÷÷OMMµîj¼øâ‹ñRx`` >®‘‘‘š•n)*_OÕßBõOË—W	<\rl¶ò£Õ¶S7Y­ë`«÷!\ru¨¹â8”üÅœÿ5ıß—_~yÍŞõ®wíÙó	·©Ì€æêˆh­Ç-}s…S§Ïtuu5ı\råê›œœ[ñ¯öK!á¥&ÖŠ¬^š×¹Ù%·Sı£ê¯uî»ÚåõfÓÛtÍ5×T~Kƒ%q,)¿¸ñĞ¡Cq(:ñêÉK°ßY®lÅÏ)ZqñãÆØô€,ˆh­Ç-}áÜ¿ô¥xã-İÿ†”BÂ±uV\'7jnVs¡æòŠ7^ñ±êß,áş¬ó›ÛˆB¡PŞÃ8êSŸŠ¿Wß I(ª‡†\"q€¶\'ÑZ;‹Åbwww+>•èÔé3ñ’t~~¾¥ûßRHøá:«z#u.—¿]Q.½Íš+—o¶fSI.¯ÿ›Ûˆú/n,«ŠVŒCïz×»’‡\"q€HD´‡–ãñññ[n½µíŸ Šš—ˆVN¦ö6ËóIğÓP\0kh²–ˆ¢º/n¬X-­ö1¬÷ÿ¾¼âç-Eâ\0ˆh1?~óÍ÷51={øp¼f=uúÌì|r¥ğâ:«z#+^._¨ó£úÛLøpng‡œVË–‡¢ÕâPùåVûğÖêP$‰ˆö°ã¸P(lÙ²¥Yo±P^³ÆkĞ\rØó†\\Ksë¬zÏÉ¼óf•W_³Ú6“ühùÃÕÙ™å»´CN±kËCÑ¶mŸ\\1•ky(êïïÃ¹8@€$\"ÚÃãÙÙÙ8%y{®KÆ¡ß|s¼Bİ˜İnH)!¼°ÎªŞÈj—Wü¶Î£\'üÑ%÷¿)¸âfÓm\\P´âçU‡\"q€¥~‡¦Ø¸q¯7oŞ¼ïÑÇÖób¹8Ve3Eo%¢4±êl°úG•Ë«İ¾Ñí¬aÖy˜i·nåPTçcXË¡H pY8‰Ãúmè8.\nñºóÎ;ïJòi0Õ¯;¿ø¥/•_z·‘;ÜR`8ÚÄª³ÁòŞ~jhåëë¾Úm…‡¸äş7ı\0+›M»u-Eqì©ŸÏÅ!\0—‘“8¬ÓFãb±\'¢ë¯ï‰NeAY¿¾¾gO|ûÛoÿ\\¼îÜà½mH)0<¯\Z­ìL¦É?¼µæ•œâ\0aÊÎIÖ#q<??Çwtuu}üæ›ãÀ³ü?ããkî½÷_n¹õÖø6Û¶}²şÛ(gD)=§\Z­LM¦†\"q€eê$k–æ8.‹“““ÃÃÃËßï8¾&Cããã+~¼f6IDmˆ¢FB‘8@à²v‡µ1›&––¨F+ƒ“i’P$@Oâ°ÆqÓ”Ñ÷U£•ÍÉ´~(‡\0 ’ˆhÆqÓ”Ñ¬j´2;™®ŠÄ!\0(ËìI\Zb7M)}O5ZYL—‡\"q\0*²|‡äŒã¦éìì<{öàÒÒwUC•ñÉ´:‰C\0P-ã\'qHÈ8nšîîî^øÖÒÒaÕPe2-‡¢ç‡\0 ZöOâ„qÜ4ÿ1µ{)zV%¯ïÍ~³§§\'íÖ]Z„âÄ+@5‰ˆö`7Í®]»FFnK=cä«şqìîááá´[—H^ö\06ŒDD{0›fnn®§çıg‹û—¢gTÂ\ZüØäädÚ­KÄ¤\05œiÆq3í¸hûRô´JRÿ:ş×CCi7-)“>\0Ôpr¤=ÇÍT,ûú>:3óÏQô”ª_óó{{zŞ_(ìK»iI™ô †“#íÁ8n²ÙÙÙŞŞëgg\'£èZ­â8GÇéé¯¥İ®˜ô †“#íÁ8n¾™™™8íÚõ‡QtP-¯ÉÉ/õôtOOÿCÚjŒI\0j89ÒŒã–(‹##Ã}}û‹ùù‡¢è€*ş{|ü¯††úûâËi·¨a&}\0¨áäH{0[hzzzxøw6mú¹::ºº®\Zº)Ei·e:Lú\0ğNN´ã1é@\r\'GÚƒq‰˜ô †“#íÁ8†DLú\0PÃÉ‘ö`C\"&}\0¨áäH{0!“>\0Ôpr¤=ÇˆI?ãŠÅâøøøĞĞP___www\Zï§˜	ñ±Ç¿ÁÁÁ±±±B¡v[šFËô·½å±¿N´ã1égÙÔÔT¼’ˆ—S÷Ş{ïÃ{÷>ôèù……0+>öø7011±mÛ¶øw¯«ÒnNè¯şRyéo_ãsbgggooo|aÓ¦Mñ×÷¼ç=³³³iï\Z¬‘E$\"eS¡Pîïï?öÒ±óçUuxõD¼®Š9óóói7jôWƒ­,÷÷ßÿıß—?Áuã7NNN¦½k°FyˆD”Añrª··÷ë{¾v~áœZ­îàş-[¶ÌÍÍ¥İ®†é¯şªlö·X,şÌÏüLuúğ‡?¼iÓ¦¼¼Ò–³ÈƒD$¢\Z.-§ŞTõëá½İpÃo¤İ®†é¯şªÌö÷OÿôO¯¸âŠJ\"úƒ?øƒ‘‘‘´w\nÖÎ\"‘ˆ²fjjª¿ÿ¦…Å¢JRŸÿ“?Ş¹ói7­ú«¿*ãı½îºëÊqèÖ[oíîî.‹iï¬E$\"eJ|êOÀ/Ÿ[X<«’Ôé3?Ù¼ùÃyù»gıÕ_•ış~ûÛß¾òÊ+ã“ãÀÀ€¿ \"ï,ò ‰(SÆÆÆ†‡‡ß¨Ô¿ğım«ïTíÜù—yyY‹şê¯şæ¢¿ûØÇÊ‰(íõ²ÈƒD$¢Lœ¸ïß~ºœº©ÿGQôâ…è¹…è»ç¢§ÎEûO/Ş÷È·¿şøùè‹ÑãÅhßÑCoF·ï™OoÿLê‹›TêÉ3½½½i·.ıÕ_ıÍEçççã“cÖ¼‚5°ÈƒD$¢Lééé9|øàÂâ™rÅİ9Eg–¢×£×ÎGoDÑıÙ]—½wëMƒÇ¢cç¢coFsÅèùÅèßyªôßÌg¬ÓgNvvv¦İºDôWõ7/ıur¤=ÇˆI?Sººº^=y|añt¹âî¼q!:wáâ—.~ıæƒÿù‹¿ô¡?¿û‹‹Qtj1z}!zm!*DÑCO<]ZQ³ò2ŒõWõ7³ı-‹“““;vìì{ÛÀÀ@|ÍØØX?=	’ÈÄ¿.È¾ŒœŠ(+­ŠNU*şöÌbtòltşÂ[7(\nûå¯~áo¾|ìå‹§ç…¥è|i¥õØ“OÕÜ7¨ÊË0Ö_ıÕßö7Bq\nºäßzõööîŞ½Û[Ï‘/ù˜=!uæ÷ì(­Šş¯RWT¢oD?>-DÑùsçz®¿¾£ãòÎOüŞ¶ê;î?p°æ¾AUê+ª„ôWõ7SıŞºukÂw¿(ëîîötäH>fOH]<¹gíSÃCVZ½^©ò«nN^>½òf´ÿğ®»îºË¯x÷U×\\;ôûïXQ=ñäšûU¹Z1ë¯şêoúı-‹ÃÃÃËŸúüçÿdbâ¾‡÷>R©;ï¼«¿¿¿æ–ƒƒƒ…Baãw\Z•ÙRŸ\0:”ö^ğ–Òª¨P©øÛ³KÑkÅ‹ÿÇ|âÍhï³¿¼ù#×şü/\\Óõ³_ı§o¼E§ÏEoœ»xÇ}3OÔÜ7¨ÊÕŠYõWSîïüü|ÍSC·ßş¹ç=¿°¸ZxõäWî¹gÓ¦MÕO9{’}ù˜=!u}}}ÓÓÓiïo‰Ï²‹‹?©Ty¡/ª^_ˆ~r>zùÔÂcÏÌmş•Şø›¿õÊ¹èÇÅè•btò\\¯©ö=şDÍ}ƒª­˜õWõ7İşÎÍÍÅa¦lêg¡š\\tçwUîÛÙÙ933³‘;ÊÇì	©K{/xKÍª¨ïÆşŞsûŸ™94ûèÙGyìé£ÿõøw¿óÌß>pä|ÿÑƒßŸyêÈ3Ïığ¿ßsË­·¤¾²	dEµfú«¿ú›n‹Åbõ³CwïÜ™0U×½÷şKœ…*Ïy:²,³\'¤®ü!ëiïo)­¨^«®Ï~ö3Ëş²w¿û‰OÔÜ1¨ÊÕŠYõWSëïĞĞPå×>1qß\ZâP¹ö?y «««¼¾¾¾\rÛhT>fOHİììlOOOÚ{Á[J+ª“ªÑÊÕŠ9ı_WîJÛ»6¬¿“““•8´¶g‡ªëş¬lmtttc\Z•Ù²À›+dÇÅÕ…WU£•§sÚ¿«<–ş¶wmXã“]9À¬3•«ò7E›6mò9dS>fOÈ‚ÑÑÑ;î¸#í½à¢ÒŠê„j´rµbNÿ×•»Òßö®éïøøx9½tvv{éxSÑ©Óg*ï>ç4J6åcö„,(‹ş64#J+ªWT£•«sú¿®Ü•ş¶wmLûúúÊÑåöÛ?×”8T®¯ïÙSŞlWW×4*³\'dÄôô´¿\rÍ‚ÒŠêÇªÑÊÕŠ9ı_WîJÛ»6 ¿…B¡ò7?Íz‚¨Rï{_wyË>Ê‚ÊÇì	Ù±cÇOúoŒñññ¹¹¹TZQÍ«F+S+fıÕ_•Jë´fll¬ò¾pÍCq}úÓo½£àÈÈHSš(C³\'äE<›\n…´w¤9r¤|î¼úê«\'&&j~jE•îŠjıôWU*ı­ßšíÛ·7ë-æ–×Ã{)o|ëÖ­ë?h®¬Ì/SSSİİİ;vìğgE-R,/»ì²òéóÊ+¯üà?XıŸš¥ÕZT•/¿Pÿúú[kÊÍÖhéµôÚ¦¿—ìæj—õwã+a_–ïŞj;¼ş¡²ñı­ßšòîàÁ¦\'¢ç-o<>{®ÿ@ ¹²2{Bî\n…8Å3{|\n‰/xatÓUŞ›¨ìª«®ºí¶ÛÊïÜ\Z{áÂË­¨ê-—//¬Ê5«íÆò¬x¹Ö]Ú]ı©œöwµ~Õô.Ééos½Y}Yş/qù6“•Ìö·Nk*ï»½ÿÉMODqU´)MdPÂºÄg‘©©©8UŞŸ‡qáÂñ¦WÍ–—?PùÛÊ•«íUÍF.yyÃª£ôç­oNd¹¿Ëo™n[õ·‰}Y¾…Õ®YñBŞû[	KÏ=ÚŠDTÙ~Ú§n¨ePuÍ5×TÎÓƒ%ñj`vv6zëÿ˜_jn•·Y½åå—kV5÷ªÜ¾şFê_niej!’Óş®¸\\­•õo¬¿Í=öæö¥Î€YñÂ´¸Yı­ÓšòõÏ>ÜŠDÔÙÙYŞ~SšÈ ²¨ò&°ñúSŸúTüu||¼òÓÒšãX+ª¼å·—5ÇŞ¹Ê9VıµæöÕ×¯¸Şªlä’·iéÑ¥ØÓjùíïj_WÜ~Íõ­®ûÛŠ¾,ßNÍ½V{ ,÷·~k*ÏA=¼÷‘¦Ç¡¯,oÜG‘AY™=ª½øâ‹İİİ###5ïìWZvü°•dËÕ·)_®şšpƒ•ë[w,+>hZ\r­‘ßşÖùúö‚{…Ú˜.‡Üßæö¥ú.+~[sıÆüsnJë·fxx¸|P_¹ç¦\'¢g.o¼··wıÍ••Ù ÆäääØØØŠŸ›Ñ¢eGÇêV\\-Õ,ƒÖˆ68egÅå¶¿«­•WÜH’‡Óß&6wı}©Ó ÕÆŠ²Üß:­ÙµkWù0·mûdÓÑİ;w–7>44Ô”&ÊĞì	PiÙñbÓ«z³+^®Z9ıôúÕ¾]¾o¼Ò²¬ù‡VyĞ´[—HúÛhß[Z!÷·¹}©ÿ³úoı±‘»şÎÎÎ–«««ëÔé3ÍMD7ÜpCyãqkõ@£ò1{T»¸òXškzUovµË•o+WÖ\\XñÆË¿­³UVÌîï\nkåº\r]ñúÛôcoz_VûÑŠo›şvww—pbâ¾&Æ¡Ê‡Å|¾9”Ù ZiññBëª¼ı·×=+ÿtµË5wYíÛpU+¹VWÚ­K$Gı­¹¾º¿õ·¦¿­èi³ú’ğö5Ú£¿###å\Z›7onâÓD¿ùæòf7à( Qù˜=ª•V?hE½½J¾Ä55ª¿­uêß·Õ•«sú[ıÓš/ßımÅ/¡é}©¾fµ^¾µ6èo¡P¨|jĞİ;w6%í{ô±JS:´GÊÇì	P­´ì8ÚÜz{	µêOk.×\\“p—–ßwùö[W¹Z1g´¿uzW¹Yåëjô·ÇŞ”¾ÔùéòŞ­ØÍ6èïèèhùĞ:;;×ÿ6ÜÏ=Z‰XÛ·oß˜C€Fåcö¨VZs<¯\Z­\\­˜Óÿuå®ô·½k#û»uëÖr†‰ÃLiÖ‡N>³yóæÊ¦æçç7ì !ù˜=ª•VTÏ©F+W+æô]¹+ımïÚÈşÎÍÍuuuU’Ìş\'¬!{éx%uvvNOOoØşC£ò1{T³¢ÊşŠj=ôWUêıLåµ‚qiô3[÷=úXåÅr±ÑÑÑÜyhT>fO€jñùuiéˆj´r´bNıw•ÇÒßö®ïïäädå™¢Ò»ÏİÿÀƒI\ZºåÖ[«ÿøJ\"ûò1{T+­¨¾¯\Z­\\­˜Óÿuå®ô·½+•şÎÎÎöôôTÇ›8İyç]Ï>¼<}å{úûû«o*/–#ò1{T+­¨fU£•«sú¿®Ü•ş¶w¥ÕßB¡°cÇÎÎÎ•lÙ²eµ\r\r\ry+ò\"³\'@µÒŠê{ªÑÊÕŠ9ı_WîJÛ»Òíoœm†‡‡WL>ËõõõÍÌÌ¤¸·Ğ¨|Ì\0Õ:;;Ï=¸´ô]ÕPåeÅ¬¿ú«²Ùßb±8>>G£ŞŞŞšÔİİ=88¸{÷nÏ‘GéÿëhT|ê}á…o--V\rUVTIè¯şªüöòÈ¿. şcj÷Rô¬J^ß›ıfOOOÚ­KDõWå·¿G?»ví\Z¹-õ5J¾êÇîN»u‰è¯şªüöòH\"ògnn®§çıg‹û—¢gTÂ\ZüØäädÚ­KDõWå·¿GK;.Ú¾=­’Ô¿ÿõĞĞ@ÚMk€şê¯Êo!w$\" —ŠÅb_ßGgfş9ŠRõk~~oOÏû…}i7­ú«¿*¿ı…Ü‘ˆ€¼šíí½~vv2Š©Õ*^NÅKÏéé¯¥İ®†é¯şªüöòE\"rlff&^TíÚõ‡QtP-¯ÉÉ/õôtOOÿCÚZ#ıÕß+ïı…‘ˆ€|+‹##Ã}}û‹ùù‡¢è€*ş{|ü¯††úûâËi·h]ôWC«vê/ä…D´ƒéééááßÙ´éç:èèèêºzhè¦xQ•v[šF«éo{k¿şBöID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„K\"\0\0Â%\0\0á’ˆ\0\0€pID\0\0@¸$\"\0\0 \\\0\0.‰\0\0—D\0\0„ëÿÑì¶+¬«ÚH\0\0\0\0IEND®B`‚',0),('310',1,'var-ä¸šåŠ¡æ•°æ®',NULL,'¬í\0sr\0\"com.hhy.bos.domain.Workordermanage–’ÖÕ†ï|\0L\0actlweitt\0Ljava/lang/Double;L\0\narrivecityt\0Ljava/lang/String;L\0\nfeeitemnumt\0Ljava/lang/Integer;L\0	floadreqrq\0~\0L\0idq\0~\0L\0managerCheckq\0~\0L\0numq\0~\0L\0\rprodtimelimitq\0~\0L\0prodtypeq\0~\0L\0productq\0~\0L\0receiveraddrq\0~\0L\0receivernameq\0~\0L\0\rreceiverphoneq\0~\0L\0\nsenderaddrq\0~\0L\0\nsendernameq\0~\0L\0senderphoneq\0~\0L\0startq\0~\0L\0\nupdatetimet\0Ljava/util/Date;L\0volq\0~\0L\0weightq\0~\0xppt\0å¦é—¨pt\0æ— t\0 8ac5995b6a71359c016a713b73ea0000t\00sr\0java.lang.Integerâ ¤÷‡8\0I\0valuexr\0java.lang.Number†¬•”à‹\0\0xp\0\0\0ppt\0æ‰‹æœºppppppt\01sr\0java.sql.Timestamp&ÕÈS¿e\0I\0nanosxr\0java.util.DatehjKYt\0\0xpw\0\0jq;px\0\0\0\0psr\0java.lang.Double€³ÂJ)kû\0D\0valuexq\0~\0?ğ\0\0\0\0\0\0',NULL),('312',1,'hist.var-ä¸šåŠ¡æ•°æ®',NULL,'¬í\0sr\0\"com.hhy.bos.domain.Workordermanage–’ÖÕ†ï|\0L\0actlweitt\0Ljava/lang/Double;L\0\narrivecityt\0Ljava/lang/String;L\0\nfeeitemnumt\0Ljava/lang/Integer;L\0	floadreqrq\0~\0L\0idq\0~\0L\0managerCheckq\0~\0L\0numq\0~\0L\0\rprodtimelimitq\0~\0L\0prodtypeq\0~\0L\0productq\0~\0L\0receiveraddrq\0~\0L\0receivernameq\0~\0L\0\rreceiverphoneq\0~\0L\0\nsenderaddrq\0~\0L\0\nsendernameq\0~\0L\0senderphoneq\0~\0L\0startq\0~\0L\0\nupdatetimet\0Ljava/util/Date;L\0volq\0~\0L\0weightq\0~\0xppt\0å¦é—¨pt\0æ— t\0 8ac5995b6a71359c016a713b73ea0000t\00sr\0java.lang.Integerâ ¤÷‡8\0I\0valuexr\0java.lang.Number†¬•”à‹\0\0xp\0\0\0ppt\0æ‰‹æœºppppppt\01sr\0java.sql.Timestamp&ÕÈS¿e\0I\0nanosxr\0java.util.DatehjKYt\0\0xpw\0\0jq;px\0\0\0\0psr\0java.lang.Double€³ÂJ)kû\0D\0valuexq\0~\0?ğ\0\0\0\0\0\0',NULL);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','401',5),('schema.history','create(5.13)',1),('schema.version','5.13',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`) values ('216','transfer:2:213','215','215','startevent1',NULL,NULL,'Start','startEvent',NULL,'2019-05-01 08:40:32','2019-05-01 08:40:32',46),('220','transfer:2:213','215','215','checkWorkOrderManage','221',NULL,'å®¡æ ¸å·¥ä½œå•','userTask',NULL,'2019-05-01 08:40:32',NULL,NULL),('309','transfer:3:306','308','308','startevent1',NULL,NULL,'Start','startEvent',NULL,'2019-05-01 10:31:40','2019-05-01 10:31:40',5),('313','transfer:3:306','308','308','checkWorkOrderManage','314',NULL,'å®¡æ ¸å·¥ä½œå•','userTask',NULL,'2019-05-01 10:31:40',NULL,NULL);

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('222','ä¸šåŠ¡å‘˜','candidate',NULL,'221',NULL),('315','ä¸šåŠ¡å‘˜','candidate',NULL,'314',NULL);

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  UNIQUE KEY `ACT_UNIQ_HI_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`) values ('215','215','8ac5995b6a6e4245016a6e4710aa0002','transfer:2:213','2019-05-01 08:40:32',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL),('308','308','8ac5995b6a71359c016a713b73ea0000','transfer:3:306','2019-05-01 10:31:40',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`) values ('221','transfer:2:213','checkWorkOrderManage','215','215','å®¡æ ¸å·¥ä½œå•',NULL,NULL,NULL,NULL,'2019-05-01 08:40:32',NULL,NULL,NULL,NULL,50,NULL,NULL),('314','transfer:3:306','checkWorkOrderManage','308','308','å®¡æ ¸å·¥ä½œå•',NULL,NULL,NULL,NULL,'2019-05-01 10:31:40',NULL,NULL,NULL,NULL,50,NULL,NULL);

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('218','215','215',NULL,'ä¸šåŠ¡æ•°æ®','serializable',0,'219',NULL,NULL,NULL,NULL),('311','308','308',NULL,'ä¸šåŠ¡æ•°æ®','serializable',0,'312',NULL,NULL,NULL,NULL);

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

insert  into `act_id_group`(`ID_`,`REV_`,`NAME_`,`TYPE_`) values ('ä¸šåŠ¡å‘˜',1,NULL,NULL),('ä»“åº“ç®¡ç†å‘˜',1,NULL,NULL),('å–æ´¾å‘˜',1,NULL,NULL);

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

insert  into `act_id_membership`(`USER_ID_`,`GROUP_ID_`) values ('8ac5995b6a6e0d4c016a6e0e705a0000','ä¸šåŠ¡å‘˜'),('8ac5995b6a6e0d4c016a6e0f27580001','ä»“åº“ç®¡ç†å‘˜'),('8ac5995b6a6e0d4c016a6e0fb42d0002','å–æ´¾å‘˜');

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

insert  into `act_id_user`(`ID_`,`REV_`,`FIRST_`,`LAST_`,`EMAIL_`,`PWD_`,`PICTURE_ID_`) values ('8ac5995b6a6e0d4c016a6e0e705a0000',1,NULL,NULL,NULL,NULL,NULL),('8ac5995b6a6e0d4c016a6e0f27580001',1,NULL,NULL,NULL,NULL,NULL),('8ac5995b6a6e0d4c016a6e0fb42d0002',1,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`DEPLOY_TIME_`) values ('101',NULL,NULL,'2019-04-30 21:13:00'),('109',NULL,NULL,'2019-04-30 21:14:21'),('113',NULL,NULL,'2019-04-30 21:14:30'),('201',NULL,NULL,'2019-05-01 08:38:57'),('208',NULL,NULL,'2019-05-01 08:39:09'),('301',NULL,NULL,'2019-05-01 10:30:05');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`SUSPENSION_STATE_`) values ('qjlc:1:104',1,'http://www.activiti.org/test','è¯·å‡æµç¨‹','qjlc',1,'101','qjlc.bpmn','qjlc.png',NULL,0,1),('qjlc:2:112',1,'http://www.activiti.org/test','è¯·å‡æµç¨‹','qjlc',2,'109','qjlc.bpmn','qjlc.png',NULL,0,1),('qjlc:3:116',1,'http://www.activiti.org/test','è¯·å‡æµç¨‹','qjlc',3,'113','qjlc.bpmn','qjlc.png',NULL,0,1),('qjlc:4:207',1,'http://www.activiti.org/test','è¯·å‡æµç¨‹','qjlc',4,'201','qjlc.bpmn','qjlc.png',NULL,0,1),('qjlc:5:214',1,'http://www.activiti.org/test','è¯·å‡æµç¨‹','qjlc',5,'208','qjlc.bpmn','qjlc.png',NULL,0,1),('qjlc:6:307',1,'http://www.activiti.org/test','è¯·å‡æµç¨‹','qjlc',6,'301','qjlc.bpmn','qjlc.png',NULL,0,1),('transfer:1:206',1,'http://www.activiti.org/test','ç‰©æµé…é€æµç¨‹','transfer',1,'201','transfer2.bpmn','transfer2.png',NULL,0,1),('transfer:2:213',1,'http://www.activiti.org/test','ç‰©æµé…é€æµç¨‹','transfer',2,'208','transfer2.bpmn','transfer2.png',NULL,0,1),('transfer:3:306',1,'http://www.activiti.org/test','ç‰©æµé…é€æµç¨‹','transfer',3,'301','transfer2.bpmn','transfer2.png',NULL,0,1);

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_RU_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`) values ('215',1,'215','8ac5995b6a6e4245016a6e4710aa0002',NULL,'transfer:2:213',NULL,'checkWorkOrderManage',1,0,1,0,1,2),('308',1,'308','8ac5995b6a71359c016a713b73ea0000',NULL,'transfer:3:306',NULL,'checkWorkOrderManage',1,0,1,0,1,2);

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('222',1,'ä¸šåŠ¡å‘˜','candidate',NULL,'221',NULL,NULL),('315',1,'ä¸šåŠ¡å‘˜','candidate',NULL,'314',NULL,NULL);

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`SUSPENSION_STATE_`) values ('221',1,'215','215','transfer:2:213','å®¡æ ¸å·¥ä½œå•',NULL,NULL,'checkWorkOrderManage',NULL,'8ac5995b6a6e0d4c016a6e0e705a0000',NULL,50,'2019-05-01 11:08:22',NULL,1),('314',1,'308','308','transfer:3:306','å®¡æ ¸å·¥ä½œå•',NULL,NULL,'checkWorkOrderManage',NULL,NULL,NULL,50,'2019-05-01 10:31:40',NULL,1);

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('218',1,'serializable','ä¸šåŠ¡æ•°æ®','215','215',NULL,'217',NULL,NULL,NULL,NULL),('311',1,'serializable','ä¸šåŠ¡æ•°æ®','308','308',NULL,'310',NULL,NULL,NULL,NULL);

/*Table structure for table `auth_function` */

DROP TABLE IF EXISTS `auth_function`;

CREATE TABLE `auth_function` (
  `id` varchar(64) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `generatemenu` varchar(255) DEFAULT NULL,
  `zindex` int(11) DEFAULT NULL,
  `pid` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_10` (`pid`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`pid`) REFERENCES `auth_function` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `auth_function` */

insert  into `auth_function`(`id`,`name`,`code`,`description`,`page`,`generatemenu`,`zindex`,`pid`) values ('11','åŸºç¡€æ¡£æ¡ˆ','jichudangan',NULL,NULL,'1',0,NULL),('112','æ”¶æ´¾æ ‡å‡†','standard',NULL,'page_base_standard.action','1',1,'11'),('113','å–æ´¾å‘˜è®¾ç½®','staff',NULL,'page_base_staff.action','1',2,'11'),('114','åŒºåŸŸè®¾ç½®','region',NULL,'page_base_region.action','1',3,'11'),('115','ç®¡ç†åˆ†åŒº','subarea',NULL,'page_base_subarea.action','1',4,'11'),('116','ç®¡ç†å®šåŒº/è°ƒåº¦æ’ç­','decidedzone',NULL,'page_base_decidedzone.action','1',5,'11'),('12','å—ç†','shouli',NULL,NULL,'1',1,NULL),('121','ä¸šåŠ¡å—ç†','noticebill',NULL,'page_qupai_noticebill_add.action','1',0,'12'),('122','å·¥ä½œå•å¿«é€Ÿå½•å…¥','quickworkordermanage',NULL,'page_qupai_quickworkorder.action','1',1,'12'),('124','å·¥ä½œå•å¯¼å…¥','workordermanageimport',NULL,'page_qupai_workorderimport.action','1',3,'12'),('13','è°ƒåº¦','diaodu',NULL,NULL,'1',2,NULL),('131','æŸ¥å°è½¬å•','changestaff',NULL,NULL,'1',0,'13'),('132','äººå·¥è°ƒåº¦','personalassign',NULL,'page_qupai_diaodu.action','1',1,'13'),('14','ç‰©æµé…é€æµç¨‹ç®¡ç†','zhongzhuan',NULL,NULL,'1',3,NULL),('141','å¯åŠ¨é…é€æµç¨‹','start',NULL,'workordermanageAction_list.action','1',0,'14'),('142','æŸ¥çœ‹ä¸ªäººä»»åŠ¡','personaltask',NULL,'taskAction_findPersonalTask.action','1',1,'14'),('143','æŸ¥çœ‹æˆ‘çš„ç»„ä»»åŠ¡','grouptask',NULL,'taskAction_findGroupTask.action','1',2,'14');

/*Table structure for table `auth_role` */

DROP TABLE IF EXISTS `auth_role`;

CREATE TABLE `auth_role` (
  `id` varchar(64) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `auth_role` */

insert  into `auth_role`(`id`,`name`,`code`,`description`) values ('8ac5995b6a6ddcc9016a6de262530000','ä¸šåŠ¡å‘˜','ywy','ä¸šåŠ¡å‘˜è§’è‰²'),('8ac5995b6a6e0004016a6e00c40a0000','ä»“åº“ç®¡ç†å‘˜','ckgly','ä»“åº“ç®¡ç†å‘˜è§’è‰²'),('8ac5995b6a6e0004016a6e032fcd0001','å–æ´¾å‘˜','qpy','å–æ´¾å‘˜è§’è‰²');

/*Table structure for table `bc_decidedzone` */

DROP TABLE IF EXISTS `bc_decidedzone`;

CREATE TABLE `bc_decidedzone` (
  `id` varchar(32) NOT NULL,
  `staff_id` varchar(32) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK66A3C8AA943DCB3A` (`staff_id`),
  CONSTRAINT `FK66A3C8AA943DCB3A` FOREIGN KEY (`staff_id`) REFERENCES `bc_staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `bc_decidedzone` */

/*Table structure for table `bc_region` */

DROP TABLE IF EXISTS `bc_region`;

CREATE TABLE `bc_region` (
  `id` varchar(32) NOT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `shortcode` varchar(30) DEFAULT NULL,
  `citycode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `bc_region` */

/*Table structure for table `bc_staff` */

DROP TABLE IF EXISTS `bc_staff`;

CREATE TABLE `bc_staff` (
  `id` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `haspda` varchar(1) DEFAULT NULL,
  `deltag` varchar(1) DEFAULT NULL,
  `station` varchar(40) DEFAULT NULL,
  `standard` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `bc_staff` */

/*Table structure for table `bc_subarea` */

DROP TABLE IF EXISTS `bc_subarea`;

CREATE TABLE `bc_subarea` (
  `id` varchar(64) NOT NULL,
  `decidedzone_id` varchar(32) DEFAULT NULL,
  `region_id` varchar(32) DEFAULT NULL,
  `addresskey` varchar(100) DEFAULT NULL,
  `startnum` varchar(30) DEFAULT NULL,
  `endnum` varchar(30) DEFAULT NULL,
  `single` varchar(1) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF7CA50CF898987BA` (`region_id`),
  KEY `FKF7CA50CF4FDA163A` (`decidedzone_id`),
  CONSTRAINT `FKF7CA50CF4FDA163A` FOREIGN KEY (`decidedzone_id`) REFERENCES `bc_decidedzone` (`id`),
  CONSTRAINT `FKF7CA50CF898987BA` FOREIGN KEY (`region_id`) REFERENCES `bc_region` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `bc_subarea` */

/*Table structure for table `qp_noticebill` */

DROP TABLE IF EXISTS `qp_noticebill`;

CREATE TABLE `qp_noticebill` (
  `id` varchar(64) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `staff_id` varchar(32) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `delegater` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `pickaddress` varchar(200) DEFAULT NULL,
  `arrivecity` varchar(20) DEFAULT NULL,
  `product` varchar(20) DEFAULT NULL,
  `pickdate` datetime DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `volume` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `ordertype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9ACB1CFFE8FD645A` (`user_id`),
  KEY `FK9ACB1CFF943DCB3A` (`staff_id`),
  CONSTRAINT `FK9ACB1CFF943DCB3A` FOREIGN KEY (`staff_id`) REFERENCES `bc_staff` (`id`),
  CONSTRAINT `FK9ACB1CFFE8FD645A` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `qp_noticebill` */

/*Table structure for table `qp_workbill` */

DROP TABLE IF EXISTS `qp_workbill`;

CREATE TABLE `qp_workbill` (
  `id` varchar(64) NOT NULL,
  `noticebill_id` varchar(64) DEFAULT NULL,
  `staff_id` varchar(32) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `pickstate` varchar(20) DEFAULT NULL,
  `buildtime` datetime NOT NULL,
  `attachbilltimes` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA09390B8943DCB3A` (`staff_id`),
  KEY `FKA09390B8688DBBDA` (`noticebill_id`),
  CONSTRAINT `FKA09390B8688DBBDA` FOREIGN KEY (`noticebill_id`) REFERENCES `qp_noticebill` (`id`),
  CONSTRAINT `FKA09390B8943DCB3A` FOREIGN KEY (`staff_id`) REFERENCES `bc_staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `qp_workbill` */

/*Table structure for table `qp_workordermanage` */

DROP TABLE IF EXISTS `qp_workordermanage`;

CREATE TABLE `qp_workordermanage` (
  `id` varchar(64) NOT NULL,
  `arrivecity` varchar(20) DEFAULT NULL,
  `product` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `floadreqr` varchar(255) DEFAULT NULL,
  `prodtimelimit` varchar(40) DEFAULT NULL,
  `prodtype` varchar(40) DEFAULT NULL,
  `sendername` varchar(20) DEFAULT NULL,
  `senderphone` varchar(20) DEFAULT NULL,
  `senderaddr` varchar(200) DEFAULT NULL,
  `receivername` varchar(20) DEFAULT NULL,
  `receiverphone` varchar(20) DEFAULT NULL,
  `receiveraddr` varchar(200) DEFAULT NULL,
  `feeitemnum` int(11) DEFAULT NULL,
  `actlweit` double DEFAULT NULL,
  `vol` varchar(20) DEFAULT NULL,
  `managerCheck` varchar(1) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `start` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `qp_workordermanage` */

insert  into `qp_workordermanage`(`id`,`arrivecity`,`product`,`num`,`weight`,`floadreqr`,`prodtimelimit`,`prodtype`,`sendername`,`senderphone`,`senderaddr`,`receivername`,`receiverphone`,`receiveraddr`,`feeitemnum`,`actlweit`,`vol`,`managerCheck`,`updatetime`,`start`) values ('8ac5995b6a6e4245016a6e43faaf0000','è¥¿å®‰','ç”µè„‘',2,10,'æ— ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2019-04-30 20:41:49','0'),('8ac5995b6a6e4245016a6e449fae0001','è¥¿å®‰','ç”µè„‘',2,2,'æ— ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2019-04-30 20:42:32','0'),('8ac5995b6a6e4245016a6e4710aa0002','åŒ—äº¬','æ‰‹æœº',1,1,'æ— ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2019-04-30 20:45:12','1'),('8ac5995b6a71359c016a713b73ea0000','å¦é—¨','æ‰‹æœº',1,1,'æ— ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2019-05-01 10:31:22','1');

/*Table structure for table `role_function` */

DROP TABLE IF EXISTS `role_function`;

CREATE TABLE `role_function` (
  `function_id` varchar(64) NOT NULL,
  `role_id` varchar(64) NOT NULL,
  PRIMARY KEY (`role_id`,`function_id`),
  KEY `FK1589498143D2A07A` (`role_id`),
  KEY `FK15894981B20D0D3A` (`function_id`),
  CONSTRAINT `FK1589498143D2A07A` FOREIGN KEY (`role_id`) REFERENCES `auth_role` (`id`),
  CONSTRAINT `FK15894981B20D0D3A` FOREIGN KEY (`function_id`) REFERENCES `auth_function` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `role_function` */

insert  into `role_function`(`function_id`,`role_id`) values ('11','8ac5995b6a6ddcc9016a6de262530000'),('112','8ac5995b6a6ddcc9016a6de262530000'),('113','8ac5995b6a6ddcc9016a6de262530000'),('114','8ac5995b6a6ddcc9016a6de262530000'),('115','8ac5995b6a6ddcc9016a6de262530000'),('116','8ac5995b6a6ddcc9016a6de262530000'),('12','8ac5995b6a6ddcc9016a6de262530000'),('121','8ac5995b6a6ddcc9016a6de262530000'),('122','8ac5995b6a6ddcc9016a6de262530000'),('124','8ac5995b6a6ddcc9016a6de262530000'),('14','8ac5995b6a6ddcc9016a6de262530000'),('141','8ac5995b6a6ddcc9016a6de262530000'),('142','8ac5995b6a6ddcc9016a6de262530000'),('143','8ac5995b6a6ddcc9016a6de262530000'),('13','8ac5995b6a6e0004016a6e00c40a0000'),('131','8ac5995b6a6e0004016a6e00c40a0000'),('132','8ac5995b6a6e0004016a6e00c40a0000'),('14','8ac5995b6a6e0004016a6e00c40a0000'),('141','8ac5995b6a6e0004016a6e00c40a0000'),('142','8ac5995b6a6e0004016a6e00c40a0000'),('143','8ac5995b6a6e0004016a6e00c40a0000'),('13','8ac5995b6a6e0004016a6e032fcd0001'),('131','8ac5995b6a6e0004016a6e032fcd0001'),('132','8ac5995b6a6e0004016a6e032fcd0001'),('14','8ac5995b6a6e0004016a6e032fcd0001'),('141','8ac5995b6a6e0004016a6e032fcd0001'),('142','8ac5995b6a6e0004016a6e032fcd0001'),('143','8ac5995b6a6e0004016a6e032fcd0001');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` varchar(64) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salary` double DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `station` varchar(40) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`password`,`salary`,`birthday`,`gender`,`station`,`telephone`,`remark`) values ('1','admin','81dc9bdb52d04dc20036dbd8313ed055',NULL,NULL,NULL,NULL,NULL,NULL),('8ac5995b6a6e0d4c016a6e0e705a0000','user1','81dc9bdb52d04dc20036dbd8313ed055',666,'2019-04-03 00:00:00','ç”·','æ€»å…¬å¸','18888888888',NULL),('8ac5995b6a6e0d4c016a6e0f27580001','user2','81dc9bdb52d04dc20036dbd8313ed055',888,'2019-04-17 00:00:00','ç”·','','18888881234',NULL),('8ac5995b6a6e0d4c016a6e0fb42d0002','user3','81dc9bdb52d04dc20036dbd8313ed055',868,'2019-04-25 00:00:00','ç”·','å…ç‚¹','15874589632',NULL);

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `role_id` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK143BF46AE8FD645A` (`user_id`),
  KEY `FK143BF46A43D2A07A` (`role_id`),
  CONSTRAINT `FK143BF46A43D2A07A` FOREIGN KEY (`role_id`) REFERENCES `auth_role` (`id`),
  CONSTRAINT `FK143BF46AE8FD645A` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `user_role` */

insert  into `user_role`(`role_id`,`user_id`) values ('8ac5995b6a6ddcc9016a6de262530000','8ac5995b6a6e0d4c016a6e0e705a0000'),('8ac5995b6a6e0004016a6e00c40a0000','8ac5995b6a6e0d4c016a6e0f27580001'),('8ac5995b6a6e0004016a6e032fcd0001','8ac5995b6a6e0d4c016a6e0fb42d0002');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
