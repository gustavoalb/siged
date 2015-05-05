namespace :busca do
  desc "buscar contratos por matriculas"
  task :matriculas => :environment do
  	User.usuario_atual = User.find 1
  	arquivo = File.open('/home/gustavo/resultado.txt','w+')
f2 = Pessoa.find_by_cpf('08387630225')
f20 = Pessoa.find_by_cpf('81684320291')
f29 = Pessoa.find_by_cpf('74237454215')
f31 = Pessoa.find_by_cpf('43216293220')
f33 = Pessoa.find_by_cpf('60927461234')
f39 = Pessoa.find_by_cpf('16388868234')
f43 = Pessoa.find_by_cpf('65854128268')
f44 = Pessoa.find_by_cpf('82613940263')
f48 = Pessoa.find_by_cpf('22617892204')
f66 = Pessoa.find_by_cpf('45143129249')
f67 = Pessoa.find_by_cpf('68186240225')
f76 = Pessoa.find_by_cpf('69733473200')
f80 = Pessoa.find_by_cpf('38859092272')
f81 = Pessoa.find_by_cpf('72890622215')
f83 = Pessoa.find_by_cpf('76953556234')
f87 = Pessoa.find_by_cpf('77880528334')
f88 = Pessoa.find_by_cpf('65884531249')
f92 = Pessoa.find_by_cpf('87139766215')
f94 = Pessoa.find_by_cpf('41557697272')
f98 = Pessoa.find_by_cpf('73644030278')
f103 = Pessoa.find_by_cpf('00200199200')
f109 = Pessoa.find_by_cpf('81717059287')
f112 = Pessoa.find_by_cpf('52155102291')
f113 = Pessoa.find_by_cpf('79305547249')
f114 = Pessoa.find_by_cpf('65128915204')
f115 = Pessoa.find_by_cpf('20976690268')
f116 = Pessoa.find_by_cpf('66857864268')
f123 = Pessoa.find_by_cpf('60953047253')
f124 = Pessoa.find_by_cpf('59185112291')
f125 = Pessoa.find_by_cpf('59288204249')
f126 = Pessoa.find_by_cpf('67684491253')
f127 = Pessoa.find_by_cpf('43279740215')
f128 = Pessoa.find_by_cpf('59994576291')
f129 = Pessoa.find_by_cpf('35537965291')
f130 = Pessoa.find_by_cpf('79611761287')
f131 = Pessoa.find_by_cpf('60217324215')
f132 = Pessoa.find_by_cpf('58692509272')
f134 = Pessoa.find_by_cpf('65789865291')
f135 = Pessoa.find_by_cpf('34081607320')
f150 = Pessoa.find_by_cpf('59916575215')
f153 = Pessoa.find_by_cpf('00697555232')
f155 = Pessoa.find_by_cpf('59425016291')
f160 = Pessoa.find_by_cpf('12094749215')
f161 = Pessoa.find_by_cpf('53725450200')
f166 = Pessoa.find_by_cpf('89179455204')
f171 = Pessoa.find_by_cpf('70724628215')
f185 = Pessoa.find_by_cpf('50871803291')
f190 = Pessoa.find_by_cpf('00795515482')
f194 = Pessoa.find_by_cpf('74553224704')
f198 = Pessoa.find_by_cpf('99062364268')
f211 = Pessoa.find_by_cpf('77113454291')
f213 = Pessoa.find_by_cpf('39244652234')
f214 = Pessoa.find_by_cpf('77223357215')
f217 = Pessoa.find_by_cpf('93892462291')
f218 = Pessoa.find_by_cpf('70823200272')
f223 = Pessoa.find_by_cpf('22673423249')
f226 = Pessoa.find_by_cpf('71687092249')
f227 = Pessoa.find_by_cpf('88687503253')
f229 = Pessoa.find_by_cpf('79812228268')
f232 = Pessoa.find_by_cpf('67059350225')
f233 = Pessoa.find_by_cpf('66179122253')
f237 = Pessoa.find_by_cpf('52045820297')
f238 = Pessoa.find_by_cpf('93466994268')
f239 = Pessoa.find_by_cpf('00864126632')
f240 = Pessoa.find_by_cpf('51771136200')
f241 = Pessoa.find_by_cpf('99127750230')
f243 = Pessoa.find_by_cpf('41528328272')
f244 = Pessoa.find_by_cpf('69399549291')
f246 = Pessoa.find_by_cpf('80115845291')
f247 = Pessoa.find_by_cpf('09748300200')
f248 = Pessoa.find_by_cpf('85614610200')
f251 = Pessoa.find_by_cpf('85240940282')
f254 = Pessoa.find_by_cpf('61575070200')
f256 = Pessoa.find_by_cpf('78036690268')
f257 = Pessoa.find_by_cpf('32491085291')
f258 = Pessoa.find_by_cpf('79606709272')
f259 = Pessoa.find_by_cpf('73459569204')
f260 = Pessoa.find_by_cpf('41556208200')
f263 = Pessoa.find_by_cpf('64814840225')
f265 = Pessoa.find_by_cpf('88615618291')
f266 = Pessoa.find_by_cpf('75773830230')
f267 = Pessoa.find_by_cpf('79711251272')
f269 = Pessoa.find_by_cpf('82572798204')
f276 = Pessoa.find_by_cpf('68613954200')
f279 = Pessoa.find_by_cpf('84943890253')
f280 = Pessoa.find_by_cpf('80341730297')
f287 = Pessoa.find_by_cpf('79631509249')
f290 = Pessoa.find_by_cpf('93426968215')
f291 = Pessoa.find_by_cpf('51036940268')
f292 = Pessoa.find_by_cpf('75494493253')
f293 = Pessoa.find_by_cpf('80362656215')
f298 = Pessoa.find_by_cpf('65887760206')
f299 = Pessoa.find_by_cpf('82465205291')
f300 = Pessoa.find_by_cpf('71734970278')
f301 = Pessoa.find_by_cpf('81311907220')
f302 = Pessoa.find_by_cpf('86088416220')
f304 = Pessoa.find_by_cpf('76916138220')
f305 = Pessoa.find_by_cpf('64496376253')
f310 = Pessoa.find_by_cpf('79052282234')
f311 = Pessoa.find_by_cpf('68781750200')
f313 = Pessoa.find_by_cpf('20936974249')
f318 = Pessoa.find_by_cpf('62032569272')
f319 = Pessoa.find_by_cpf('92199054268')
f321 = Pessoa.find_by_cpf('78259010291')
f325 = Pessoa.find_by_cpf('72718420200')
f327 = Pessoa.find_by_cpf('65818954234')
f328 = Pessoa.find_by_cpf('87035529268')
f329 = Pessoa.find_by_cpf('74053515220')
f330 = Pessoa.find_by_cpf('71381244220')
f332 = Pessoa.find_by_cpf('88744280220')
f336 = Pessoa.find_by_cpf('76278271249')
f339 = Pessoa.find_by_cpf('89961900200')
f340 = Pessoa.find_by_cpf('80750010282')
f345 = Pessoa.find_by_cpf('69494002253')
f349 = Pessoa.find_by_cpf('81387229249')
f352 = Pessoa.find_by_cpf('00524319243')
f353 = Pessoa.find_by_cpf('52687104272')
f354 = Pessoa.find_by_cpf('70441979220')
f360 = Pessoa.find_by_cpf('84202599268')
f361 = Pessoa.find_by_cpf('93440456234')
f369 = Pessoa.find_by_cpf('99170140200')
f370 = Pessoa.find_by_cpf('20949146234')
f371 = Pessoa.find_by_cpf('78907217220')
f373 = Pessoa.find_by_cpf('73018732200')
f376 = Pessoa.find_by_cpf('20919794220')
f379 = Pessoa.find_by_cpf('70245665234')
f383 = Pessoa.find_by_cpf('89996674215')
f389 = Pessoa.find_by_cpf('92008925234')
f392 = Pessoa.find_by_cpf('63652978234')
f395 = Pessoa.find_by_cpf('94140499249')
f399 = Pessoa.find_by_cpf('83578560200')
f406 = Pessoa.find_by_cpf('34143297272')
f409 = Pessoa.find_by_cpf('93231679249')
f415 = Pessoa.find_by_cpf('63395118215')
f416 = Pessoa.find_by_cpf('88988384253')
f421 = Pessoa.find_by_cpf('79846106220')
f429 = Pessoa.find_by_cpf('56186959287')
f430 = Pessoa.find_by_cpf('89676360244')
f438 = Pessoa.find_by_cpf('79005870268')
f439 = Pessoa.find_by_cpf('65887816287')
f441 = Pessoa.find_by_cpf('21013977220')
f447 = Pessoa.find_by_cpf('37768042204')
f448 = Pessoa.find_by_cpf('00367054388')
f455 = Pessoa.find_by_cpf('43255264200')
f459 = Pessoa.find_by_cpf('63384990200')
f462 = Pessoa.find_by_cpf('76751937253')
f466 = Pessoa.find_by_cpf('51096994291')
f467 = Pessoa.find_by_cpf('74833324253')
f479 = Pessoa.find_by_cpf('80407129200')
f483 = Pessoa.find_by_cpf('20989008215')
f487 = Pessoa.find_by_cpf('93942460297')
f489 = Pessoa.find_by_cpf('83981926234')
f498 = Pessoa.find_by_cpf('14237130282')
f504 = Pessoa.find_by_cpf('74665294291')
f507 = Pessoa.find_by_cpf('33570563253')
f520 = Pessoa.find_by_cpf('57155461252')
f524 = Pessoa.find_by_cpf('01698446926')
f528 = Pessoa.find_by_cpf('43307957287')
f529 = Pessoa.find_by_cpf('65446674200')
f530 = Pessoa.find_by_cpf('98796283220')
f533 = Pessoa.find_by_cpf('60646527215')
f534 = Pessoa.find_by_cpf('20876556268')
f537 = Pessoa.find_by_cpf('79583512249')
f539 = Pessoa.find_by_cpf('74801465234')
f540 = Pessoa.find_by_cpf('89082109204')
f542 = Pessoa.find_by_cpf('71726004287')
f543 = Pessoa.find_by_cpf('38890500263')
f544 = Pessoa.find_by_cpf('83385010268')
f547 = Pessoa.find_by_cpf('75176050200')
f552 = Pessoa.find_by_cpf('22912487234')
f557 = Pessoa.find_by_cpf('81662513020')
f558 = Pessoa.find_by_cpf('95367128220')
f559 = Pessoa.find_by_cpf('82064695249')
f561 = Pessoa.find_by_cpf('79663613220')
f564 = Pessoa.find_by_cpf('69242534234')
f565 = Pessoa.find_by_cpf('68309988249')
f566 = Pessoa.find_by_cpf('00432586032')
f569 = Pessoa.find_by_cpf('28869213862')
f572 = Pessoa.find_by_cpf('05531589611')
f582 = Pessoa.find_by_cpf('82656029287')
f594 = Pessoa.find_by_cpf('53701127204')
f595 = Pessoa.find_by_cpf('00021023239')
f601 = Pessoa.find_by_cpf('50814028268')
f604 = Pessoa.find_by_cpf('65688023287')
f614 = Pessoa.find_by_cpf('78896223253')
f616 = Pessoa.find_by_cpf('30360226272')
f617 = Pessoa.find_by_cpf('82853010287')
f618 = Pessoa.find_by_cpf('43237738204')
f623 = Pessoa.find_by_cpf('81755023200')
f624 = Pessoa.find_by_cpf('59990694249')
f626 = Pessoa.find_by_cpf('68296177234')
f628 = Pessoa.find_by_cpf('71563202204')
f633 = Pessoa.find_by_cpf('10744126215')
f636 = Pessoa.find_by_cpf('60904950263')
f639 = Pessoa.find_by_cpf('87693909249')
f646 = Pessoa.find_by_cpf('60894180215')
f650 = Pessoa.find_by_cpf('84064981249')
f651 = Pessoa.find_by_cpf('65896319215')
f654 = Pessoa.find_by_cpf('92402763272')
f656 = Pessoa.find_by_cpf('94728100200')
f657 = Pessoa.find_by_cpf('78681391291')
f659 = Pessoa.find_by_cpf('82036861253')
f660 = Pessoa.find_by_cpf('14202018249')
f661 = Pessoa.find_by_cpf('70953732215')
f663 = Pessoa.find_by_cpf('60583142249')
f664 = Pessoa.find_by_cpf('68319258200')
f668 = Pessoa.find_by_cpf('82595720287')
f673 = Pessoa.find_by_cpf('00189874279')
f674 = Pessoa.find_by_cpf('38899566291')
f675 = Pessoa.find_by_cpf('51193361249')
f677 = Pessoa.find_by_cpf('94767742234')
f684 = Pessoa.find_by_cpf('82640505220')
f686 = Pessoa.find_by_cpf('82984735234')
f687 = Pessoa.find_by_cpf('34170359291')
f691 = Pessoa.find_by_cpf('76899560259')
f694 = Pessoa.find_by_cpf('68613920225')
f696 = Pessoa.find_by_cpf('63208440278')
f697 = Pessoa.find_by_cpf('65611594204')
f700 = Pessoa.find_by_cpf('65932579234')
f701 = Pessoa.find_by_cpf('71571337253')
f703 = Pessoa.find_by_cpf('80357253272')
f705 = Pessoa.find_by_cpf('06952878777')
f707 = Pessoa.find_by_cpf('43308317249')
f708 = Pessoa.find_by_cpf('38898551219')
f711 = Pessoa.find_by_cpf('50941828204')
f723 = Pessoa.find_by_cpf('95279130206')
f726 = Pessoa.find_by_cpf('75128160220')
f734 = Pessoa.find_by_cpf('46705562234')
f736 = Pessoa.find_by_cpf('79351069249')
f737 = Pessoa.find_by_cpf('00035789255')
f739 = Pessoa.find_by_cpf('83603735234')
f741 = Pessoa.find_by_cpf('59800763287')
f743 = Pessoa.find_by_cpf('87583003253')
f755 = Pessoa.find_by_cpf('68903413253')
f761 = Pessoa.find_by_cpf('95858806287')
f766 = Pessoa.find_by_cpf('48954039200')
f767 = Pessoa.find_by_cpf('70271674253')
f772 = Pessoa.find_by_cpf('96607432204')
f801 = Pessoa.find_by_cpf('53157052268')
f804 = Pessoa.find_by_cpf('63985357234')
f805 = Pessoa.find_by_cpf('84024984268')
f810 = Pessoa.find_by_cpf('61676705287')
f812 = Pessoa.find_by_cpf('25909827200')
f813 = Pessoa.find_by_cpf('41574435272')
f814 = Pessoa.find_by_cpf('78754623200')
f815 = Pessoa.find_by_cpf('38864886249')
f817 = Pessoa.find_by_cpf('00509754201')
f818 = Pessoa.find_by_cpf('81781830215')
f822 = Pessoa.find_by_cpf('57280738249')
f823 = Pessoa.find_by_cpf('87112523249')
f826 = Pessoa.find_by_cpf('91772486278')
f830 = Pessoa.find_by_cpf('78953928249')
f834 = Pessoa.find_by_cpf('83554149268')
f837 = Pessoa.find_by_cpf('73947040253')
f838 = Pessoa.find_by_cpf('30567033287')
f839 = Pessoa.find_by_cpf('82980756253')
f842 = Pessoa.find_by_cpf('84544988268')
f844 = Pessoa.find_by_cpf('30565073249')
f855 = Pessoa.find_by_cpf('68931271204')
f856 = Pessoa.find_by_cpf('65096142272')
f862 = Pessoa.find_by_cpf('67188168253')
f865 = Pessoa.find_by_cpf('52794628291')
f869 = Pessoa.find_by_cpf('83803904234')
f870 = Pessoa.find_by_cpf('53157052268')
f877 = Pessoa.find_by_cpf('73948594287')
f881 = Pessoa.find_by_cpf('88412911253')
f885 = Pessoa.find_by_cpf('87110482200')
f888 = Pessoa.find_by_cpf('81622767268')
f894 = Pessoa.find_by_cpf('32462980253')
f912 = Pessoa.find_by_cpf('94680620234')
f922 = Pessoa.find_by_cpf('57203709272')
f932 = Pessoa.find_by_cpf('77529138200')
f942 = Pessoa.find_by_cpf('98493353272')
f943 = Pessoa.find_by_cpf('80441009204')
f944 = Pessoa.find_by_cpf('74523937249')
f945 = Pessoa.find_by_cpf('59156848234')
f950 = Pessoa.find_by_cpf('82461120234')
f953 = Pessoa.find_by_cpf('00272504238')
f962 = Pessoa.find_by_cpf('52120899215')
f963 = Pessoa.find_by_cpf('64537641215')
f965 = Pessoa.find_by_cpf('62939726272')
f971 = Pessoa.find_by_cpf('73317675268')
f972 = Pessoa.find_by_cpf('65565258200')
f990 = Pessoa.find_by_cpf('99637570225')
f993 = Pessoa.find_by_cpf('79889549204')
f996 = Pessoa.find_by_cpf('94587272272')
f1008 = Pessoa.find_by_cpf('18219985291')
f1010 = Pessoa.find_by_cpf('73372617215')
f1011 = Pessoa.find_by_cpf('94096252387')
f1012 = Pessoa.find_by_cpf('00044045212')
f1021 = Pessoa.find_by_cpf('68183143253')
f1022 = Pessoa.find_by_cpf('92574866215')
f1023 = Pessoa.find_by_cpf('76368688220')
f1028 = Pessoa.find_by_cpf('41530640253')
f1029 = Pessoa.find_by_cpf('65680138204')
f1030 = Pessoa.find_by_cpf('63540797220')
f1033 = Pessoa.find_by_cpf('71656707268')
f1036 = Pessoa.find_by_cpf('03889532683')
f1038 = Pessoa.find_by_cpf('43282466234')
f1039 = Pessoa.find_by_cpf('81608381234')
f1046 = Pessoa.find_by_cpf('38865629215')
f1047 = Pessoa.find_by_cpf('25728849253')
f1049 = Pessoa.find_by_cpf('79803229249')
f1051 = Pessoa.find_by_cpf('89614216204')
f1052 = Pessoa.find_by_cpf('43924808287')
f1053 = Pessoa.find_by_cpf('60324805268')
f1055 = Pessoa.find_by_cpf('26406179234')
f1056 = Pessoa.find_by_cpf('71600280234')
f1057 = Pessoa.find_by_cpf('65194861249')
f1058 = Pessoa.find_by_cpf('34190830259')
f1060 = Pessoa.find_by_cpf('71560866268')
f1061 = Pessoa.find_by_cpf('71964320291')
f1062 = Pessoa.find_by_cpf('87051036220')
f1065 = Pessoa.find_by_cpf('83578714291')
f1066 = Pessoa.find_by_cpf('60689625200')
f1071 = Pessoa.find_by_cpf('97427112272')
f1075 = Pessoa.find_by_cpf('81098235215')
f1077 = Pessoa.find_by_cpf('88798747215')
f1082 = Pessoa.find_by_cpf('61317772253')
f1086 = Pessoa.find_by_cpf('78732930259')
f1087 = Pessoa.find_by_cpf('86695746249')
f1088 = Pessoa.find_by_cpf('86203835234')
f1089 = Pessoa.find_by_cpf('91526116200')
f1096 = Pessoa.find_by_cpf('52190129249')
if f2 then arquivo.write "#{f2.cpf} - #{f2.funcionarios.first.matricula}\n" end
if f20 then arquivo.write "#{f20.cpf} - #{f20.funcionarios.first.matricula}\n" end
if f29 then arquivo.write "#{f29.cpf} - #{f29.funcionarios.first.matricula}\n" end
if f31 then arquivo.write "#{f31.cpf} - #{f31.funcionarios.first.matricula}\n" end
if f33 then arquivo.write "#{f33.cpf} - #{f33.funcionarios.first.matricula}\n" end
if f39 then arquivo.write "#{f39.cpf} - #{f39.funcionarios.first.matricula}\n" end
if f43 then arquivo.write "#{f43.cpf} - #{f43.funcionarios.first.matricula}\n" end
if f44 then arquivo.write "#{f44.cpf} - #{f44.funcionarios.first.matricula}\n" end
if f48 then arquivo.write "#{f48.cpf} - #{f48.funcionarios.first.matricula}\n" end
if f66 then arquivo.write "#{f66.cpf} - #{f66.funcionarios.first.matricula}\n" end
if f67 then arquivo.write "#{f67.cpf} - #{f67.funcionarios.first.matricula}\n" end
if f76 then arquivo.write "#{f76.cpf} - #{f76.funcionarios.first.matricula}\n" end
if f80 then arquivo.write "#{f80.cpf} - #{f80.funcionarios.first.matricula}\n" end
if f81 then arquivo.write "#{f81.cpf} - #{f81.funcionarios.first.matricula}\n" end
if f83 then arquivo.write "#{f83.cpf} - #{f83.funcionarios.first.matricula}\n" end
if f87 then arquivo.write "#{f87.cpf} - #{f87.funcionarios.first.matricula}\n" end
if f88 then arquivo.write "#{f88.cpf} - #{f88.funcionarios.first.matricula}\n" end
if f92 then arquivo.write "#{f92.cpf} - #{f92.funcionarios.first.matricula}\n" end
if f94 then arquivo.write "#{f94.cpf} - #{f94.funcionarios.first.matricula}\n" end
if f98 then arquivo.write "#{f98.cpf} - #{f98.funcionarios.first.matricula}\n" end
if f103 then arquivo.write "#{f103.cpf} - #{f103.funcionarios.first.matricula}\n" end
if f109 then arquivo.write "#{f109.cpf} - #{f109.funcionarios.first.matricula}\n" end
if f112 then arquivo.write "#{f112.cpf} - #{f112.funcionarios.first.matricula}\n" end
if f113 then arquivo.write "#{f113.cpf} - #{f113.funcionarios.first.matricula}\n" end
if f114 then arquivo.write "#{f114.cpf} - #{f114.funcionarios.first.matricula}\n" end
if f115 then arquivo.write "#{f115.cpf} - #{f115.funcionarios.first.matricula}\n" end
if f116 then arquivo.write "#{f116.cpf} - #{f116.funcionarios.first.matricula}\n" end
if f123 then arquivo.write "#{f123.cpf} - #{f123.funcionarios.first.matricula}\n" end
if f124 then arquivo.write "#{f124.cpf} - #{f124.funcionarios.first.matricula}\n" end
if f125 then arquivo.write "#{f125.cpf} - #{f125.funcionarios.first.matricula}\n" end
if f126 then arquivo.write "#{f126.cpf} - #{f126.funcionarios.first.matricula}\n" end
if f127 then arquivo.write "#{f127.cpf} - #{f127.funcionarios.first.matricula}\n" end
if f128 then arquivo.write "#{f128.cpf} - #{f128.funcionarios.first.matricula}\n" end
if f129 then arquivo.write "#{f129.cpf} - #{f129.funcionarios.first.matricula}\n" end
if f130 then arquivo.write "#{f130.cpf} - #{f130.funcionarios.first.matricula}\n" end
if f131 then arquivo.write "#{f131.cpf} - #{f131.funcionarios.first.matricula}\n" end
if f132 then arquivo.write "#{f132.cpf} - #{f132.funcionarios.first.matricula}\n" end
if f134 then arquivo.write "#{f134.cpf} - #{f134.funcionarios.first.matricula}\n" end
if f135 then arquivo.write "#{f135.cpf} - #{f135.funcionarios.first.matricula}\n" end
if f150 then arquivo.write "#{f150.cpf} - #{f150.funcionarios.first.matricula}\n" end
if f153 then arquivo.write "#{f153.cpf} - #{f153.funcionarios.first.matricula}\n" end
if f155 then arquivo.write "#{f155.cpf} - #{f155.funcionarios.first.matricula}\n" end
if f160 then arquivo.write "#{f160.cpf} - #{f160.funcionarios.first.matricula}\n" end
if f161 then arquivo.write "#{f161.cpf} - #{f161.funcionarios.first.matricula}\n" end
if f166 then arquivo.write "#{f166.cpf} - #{f166.funcionarios.first.matricula}\n" end
if f171 then arquivo.write "#{f171.cpf} - #{f171.funcionarios.first.matricula}\n" end
if f185 then arquivo.write "#{f185.cpf} - #{f185.funcionarios.first.matricula}\n" end
if f190 then arquivo.write "#{f190.cpf} - #{f190.funcionarios.first.matricula}\n" end
if f194 then arquivo.write "#{f194.cpf} - #{f194.funcionarios.first.matricula}\n" end
if f198 then arquivo.write "#{f198.cpf} - #{f198.funcionarios.first.matricula}\n" end
if f211 then arquivo.write "#{f211.cpf} - #{f211.funcionarios.first.matricula}\n" end
if f213 then arquivo.write "#{f213.cpf} - #{f213.funcionarios.first.matricula}\n" end
if f214 then arquivo.write "#{f214.cpf} - #{f214.funcionarios.first.matricula}\n" end
if f217 then arquivo.write "#{f217.cpf} - #{f217.funcionarios.first.matricula}\n" end
if f218 then arquivo.write "#{f218.cpf} - #{f218.funcionarios.first.matricula}\n" end
if f223 then arquivo.write "#{f223.cpf} - #{f223.funcionarios.first.matricula}\n" end
if f226 then arquivo.write "#{f226.cpf} - #{f226.funcionarios.first.matricula}\n" end
if f227 then arquivo.write "#{f227.cpf} - #{f227.funcionarios.first.matricula}\n" end
if f229 then arquivo.write "#{f229.cpf} - #{f229.funcionarios.first.matricula}\n" end
if f232 then arquivo.write "#{f232.cpf} - #{f232.funcionarios.first.matricula}\n" end
if f233 then arquivo.write "#{f233.cpf} - #{f233.funcionarios.first.matricula}\n" end
if f237 then arquivo.write "#{f237.cpf} - #{f237.funcionarios.first.matricula}\n" end
if f238 then arquivo.write "#{f238.cpf} - #{f238.funcionarios.first.matricula}\n" end
if f239 then arquivo.write "#{f239.cpf} - #{f239.funcionarios.first.matricula}\n" end
if f240 then arquivo.write "#{f240.cpf} - #{f240.funcionarios.first.matricula}\n" end
if f241 then arquivo.write "#{f241.cpf} - #{f241.funcionarios.first.matricula}\n" end
if f243 then arquivo.write "#{f243.cpf} - #{f243.funcionarios.first.matricula}\n" end
if f244 then arquivo.write "#{f244.cpf} - #{f244.funcionarios.first.matricula}\n" end
if f246 then arquivo.write "#{f246.cpf} - #{f246.funcionarios.first.matricula}\n" end
if f247 then arquivo.write "#{f247.cpf} - #{f247.funcionarios.first.matricula}\n" end
if f248 then arquivo.write "#{f248.cpf} - #{f248.funcionarios.first.matricula}\n" end
if f251 then arquivo.write "#{f251.cpf} - #{f251.funcionarios.first.matricula}\n" end
if f254 then arquivo.write "#{f254.cpf} - #{f254.funcionarios.first.matricula}\n" end
if f256 then arquivo.write "#{f256.cpf} - #{f256.funcionarios.first.matricula}\n" end
if f257 then arquivo.write "#{f257.cpf} - #{f257.funcionarios.first.matricula}\n" end
if f258 then arquivo.write "#{f258.cpf} - #{f258.funcionarios.first.matricula}\n" end
if f259 then arquivo.write "#{f259.cpf} - #{f259.funcionarios.first.matricula}\n" end
if f260 then arquivo.write "#{f260.cpf} - #{f260.funcionarios.first.matricula}\n" end
if f263 then arquivo.write "#{f263.cpf} - #{f263.funcionarios.first.matricula}\n" end
if f265 then arquivo.write "#{f265.cpf} - #{f265.funcionarios.first.matricula}\n" end
if f266 then arquivo.write "#{f266.cpf} - #{f266.funcionarios.first.matricula}\n" end
if f267 then arquivo.write "#{f267.cpf} - #{f267.funcionarios.first.matricula}\n" end
if f269 then arquivo.write "#{f269.cpf} - #{f269.funcionarios.first.matricula}\n" end
if f276 then arquivo.write "#{f276.cpf} - #{f276.funcionarios.first.matricula}\n" end
if f279 then arquivo.write "#{f279.cpf} - #{f279.funcionarios.first.matricula}\n" end
if f280 then arquivo.write "#{f280.cpf} - #{f280.funcionarios.first.matricula}\n" end
if f287 then arquivo.write "#{f287.cpf} - #{f287.funcionarios.first.matricula}\n" end
if f290 then arquivo.write "#{f290.cpf} - #{f290.funcionarios.first.matricula}\n" end
if f291 then arquivo.write "#{f291.cpf} - #{f291.funcionarios.first.matricula}\n" end
if f292 then arquivo.write "#{f292.cpf} - #{f292.funcionarios.first.matricula}\n" end
if f293 then arquivo.write "#{f293.cpf} - #{f293.funcionarios.first.matricula}\n" end
if f298 then arquivo.write "#{f298.cpf} - #{f298.funcionarios.first.matricula}\n" end
if f299 then arquivo.write "#{f299.cpf} - #{f299.funcionarios.first.matricula}\n" end
if f300 then arquivo.write "#{f300.cpf} - #{f300.funcionarios.first.matricula}\n" end
if f301 then arquivo.write "#{f301.cpf} - #{f301.funcionarios.first.matricula}\n" end
if f302 then arquivo.write "#{f302.cpf} - #{f302.funcionarios.first.matricula}\n" end
if f304 then arquivo.write "#{f304.cpf} - #{f304.funcionarios.first.matricula}\n" end
if f305 then arquivo.write "#{f305.cpf} - #{f305.funcionarios.first.matricula}\n" end
if f310 then arquivo.write "#{f310.cpf} - #{f310.funcionarios.first.matricula}\n" end
if f311 then arquivo.write "#{f311.cpf} - #{f311.funcionarios.first.matricula}\n" end
if f313 then arquivo.write "#{f313.cpf} - #{f313.funcionarios.first.matricula}\n" end
if f318 then arquivo.write "#{f318.cpf} - #{f318.funcionarios.first.matricula}\n" end
if f319 then arquivo.write "#{f319.cpf} - #{f319.funcionarios.first.matricula}\n" end
if f321 then arquivo.write "#{f321.cpf} - #{f321.funcionarios.first.matricula}\n" end
if f325 then arquivo.write "#{f325.cpf} - #{f325.funcionarios.first.matricula}\n" end
if f327 then arquivo.write "#{f327.cpf} - #{f327.funcionarios.first.matricula}\n" end
if f328 then arquivo.write "#{f328.cpf} - #{f328.funcionarios.first.matricula}\n" end
if f329 then arquivo.write "#{f329.cpf} - #{f329.funcionarios.first.matricula}\n" end
if f330 then arquivo.write "#{f330.cpf} - #{f330.funcionarios.first.matricula}\n" end
if f332 then arquivo.write "#{f332.cpf} - #{f332.funcionarios.first.matricula}\n" end
if f336 then arquivo.write "#{f336.cpf} - #{f336.funcionarios.first.matricula}\n" end
if f339 then arquivo.write "#{f339.cpf} - #{f339.funcionarios.first.matricula}\n" end
if f340 then arquivo.write "#{f340.cpf} - #{f340.funcionarios.first.matricula}\n" end
if f345 then arquivo.write "#{f345.cpf} - #{f345.funcionarios.first.matricula}\n" end
if f349 then arquivo.write "#{f349.cpf} - #{f349.funcionarios.first.matricula}\n" end
if f352 then arquivo.write "#{f352.cpf} - #{f352.funcionarios.first.matricula}\n" end
if f353 then arquivo.write "#{f353.cpf} - #{f353.funcionarios.first.matricula}\n" end
if f354 then arquivo.write "#{f354.cpf} - #{f354.funcionarios.first.matricula}\n" end
if f360 then arquivo.write "#{f360.cpf} - #{f360.funcionarios.first.matricula}\n" end
if f361 then arquivo.write "#{f361.cpf} - #{f361.funcionarios.first.matricula}\n" end
if f369 then arquivo.write "#{f369.cpf} - #{f369.funcionarios.first.matricula}\n" end
if f370 then arquivo.write "#{f370.cpf} - #{f370.funcionarios.first.matricula}\n" end
if f371 then arquivo.write "#{f371.cpf} - #{f371.funcionarios.first.matricula}\n" end
if f373 then arquivo.write "#{f373.cpf} - #{f373.funcionarios.first.matricula}\n" end
if f376 then arquivo.write "#{f376.cpf} - #{f376.funcionarios.first.matricula}\n" end
if f379 then arquivo.write "#{f379.cpf} - #{f379.funcionarios.first.matricula}\n" end
if f383 then arquivo.write "#{f383.cpf} - #{f383.funcionarios.first.matricula}\n" end
if f389 then arquivo.write "#{f389.cpf} - #{f389.funcionarios.first.matricula}\n" end
if f392 then arquivo.write "#{f392.cpf} - #{f392.funcionarios.first.matricula}\n" end
if f395 then arquivo.write "#{f395.cpf} - #{f395.funcionarios.first.matricula}\n" end
if f399 then arquivo.write "#{f399.cpf} - #{f399.funcionarios.first.matricula}\n" end
if f406 then arquivo.write "#{f406.cpf} - #{f406.funcionarios.first.matricula}\n" end
if f409 then arquivo.write "#{f409.cpf} - #{f409.funcionarios.first.matricula}\n" end
if f415 then arquivo.write "#{f415.cpf} - #{f415.funcionarios.first.matricula}\n" end
if f416 then arquivo.write "#{f416.cpf} - #{f416.funcionarios.first.matricula}\n" end
if f421 then arquivo.write "#{f421.cpf} - #{f421.funcionarios.first.matricula}\n" end
if f429 then arquivo.write "#{f429.cpf} - #{f429.funcionarios.first.matricula}\n" end
if f430 then arquivo.write "#{f430.cpf} - #{f430.funcionarios.first.matricula}\n" end
if f438 then arquivo.write "#{f438.cpf} - #{f438.funcionarios.first.matricula}\n" end
if f439 then arquivo.write "#{f439.cpf} - #{f439.funcionarios.first.matricula}\n" end
if f441 then arquivo.write "#{f441.cpf} - #{f441.funcionarios.first.matricula}\n" end
if f447 then arquivo.write "#{f447.cpf} - #{f447.funcionarios.first.matricula}\n" end
if f448 then arquivo.write "#{f448.cpf} - #{f448.funcionarios.first.matricula}\n" end
if f455 then arquivo.write "#{f455.cpf} - #{f455.funcionarios.first.matricula}\n" end
if f459 then arquivo.write "#{f459.cpf} - #{f459.funcionarios.first.matricula}\n" end
if f462 then arquivo.write "#{f462.cpf} - #{f462.funcionarios.first.matricula}\n" end
if f466 then arquivo.write "#{f466.cpf} - #{f466.funcionarios.first.matricula}\n" end
if f467 then arquivo.write "#{f467.cpf} - #{f467.funcionarios.first.matricula}\n" end
if f479 then arquivo.write "#{f479.cpf} - #{f479.funcionarios.first.matricula}\n" end
if f483 then arquivo.write "#{f483.cpf} - #{f483.funcionarios.first.matricula}\n" end
if f487 then arquivo.write "#{f487.cpf} - #{f487.funcionarios.first.matricula}\n" end
if f489 then arquivo.write "#{f489.cpf} - #{f489.funcionarios.first.matricula}\n" end
if f498 then arquivo.write "#{f498.cpf} - #{f498.funcionarios.first.matricula}\n" end
if f504 then arquivo.write "#{f504.cpf} - #{f504.funcionarios.first.matricula}\n" end
if f507 then arquivo.write "#{f507.cpf} - #{f507.funcionarios.first.matricula}\n" end
if f520 then arquivo.write "#{f520.cpf} - #{f520.funcionarios.first.matricula}\n" end
if f524 then arquivo.write "#{f524.cpf} - #{f524.funcionarios.first.matricula}\n" end
if f528 then arquivo.write "#{f528.cpf} - #{f528.funcionarios.first.matricula}\n" end
if f529 then arquivo.write "#{f529.cpf} - #{f529.funcionarios.first.matricula}\n" end
if f530 then arquivo.write "#{f530.cpf} - #{f530.funcionarios.first.matricula}\n" end
if f533 then arquivo.write "#{f533.cpf} - #{f533.funcionarios.first.matricula}\n" end
if f534 then arquivo.write "#{f534.cpf} - #{f534.funcionarios.first.matricula}\n" end
if f537 then arquivo.write "#{f537.cpf} - #{f537.funcionarios.first.matricula}\n" end
if f539 then arquivo.write "#{f539.cpf} - #{f539.funcionarios.first.matricula}\n" end
if f540 then arquivo.write "#{f540.cpf} - #{f540.funcionarios.first.matricula}\n" end
if f542 then arquivo.write "#{f542.cpf} - #{f542.funcionarios.first.matricula}\n" end
if f543 then arquivo.write "#{f543.cpf} - #{f543.funcionarios.first.matricula}\n" end
if f544 then arquivo.write "#{f544.cpf} - #{f544.funcionarios.first.matricula}\n" end
if f547 then arquivo.write "#{f547.cpf} - #{f547.funcionarios.first.matricula}\n" end
if f552 then arquivo.write "#{f552.cpf} - #{f552.funcionarios.first.matricula}\n" end
if f557 then arquivo.write "#{f557.cpf} - #{f557.funcionarios.first.matricula}\n" end
if f558 then arquivo.write "#{f558.cpf} - #{f558.funcionarios.first.matricula}\n" end
if f559 then arquivo.write "#{f559.cpf} - #{f559.funcionarios.first.matricula}\n" end
if f561 then arquivo.write "#{f561.cpf} - #{f561.funcionarios.first.matricula}\n" end
if f564 then arquivo.write "#{f564.cpf} - #{f564.funcionarios.first.matricula}\n" end
if f565 then arquivo.write "#{f565.cpf} - #{f565.funcionarios.first.matricula}\n" end
if f566 then arquivo.write "#{f566.cpf} - #{f566.funcionarios.first.matricula}\n" end
if f569 then arquivo.write "#{f569.cpf} - #{f569.funcionarios.first.matricula}\n" end
if f572 then arquivo.write "#{f572.cpf} - #{f572.funcionarios.first.matricula}\n" end
if f582 then arquivo.write "#{f582.cpf} - #{f582.funcionarios.first.matricula}\n" end
if f594 then arquivo.write "#{f594.cpf} - #{f594.funcionarios.first.matricula}\n" end
if f595 then arquivo.write "#{f595.cpf} - #{f595.funcionarios.first.matricula}\n" end
if f601 then arquivo.write "#{f601.cpf} - #{f601.funcionarios.first.matricula}\n" end
if f604 then arquivo.write "#{f604.cpf} - #{f604.funcionarios.first.matricula}\n" end
if f614 then arquivo.write "#{f614.cpf} - #{f614.funcionarios.first.matricula}\n" end
if f616 then arquivo.write "#{f616.cpf} - #{f616.funcionarios.first.matricula}\n" end
if f617 then arquivo.write "#{f617.cpf} - #{f617.funcionarios.first.matricula}\n" end
if f618 then arquivo.write "#{f618.cpf} - #{f618.funcionarios.first.matricula}\n" end
if f623 then arquivo.write "#{f623.cpf} - #{f623.funcionarios.first.matricula}\n" end
if f624 then arquivo.write "#{f624.cpf} - #{f624.funcionarios.first.matricula}\n" end
if f626 then arquivo.write "#{f626.cpf} - #{f626.funcionarios.first.matricula}\n" end
if f628 then arquivo.write "#{f628.cpf} - #{f628.funcionarios.first.matricula}\n" end
if f633 then arquivo.write "#{f633.cpf} - #{f633.funcionarios.first.matricula}\n" end
if f636 then arquivo.write "#{f636.cpf} - #{f636.funcionarios.first.matricula}\n" end
if f639 then arquivo.write "#{f639.cpf} - #{f639.funcionarios.first.matricula}\n" end
if f646 then arquivo.write "#{f646.cpf} - #{f646.funcionarios.first.matricula}\n" end
if f650 then arquivo.write "#{f650.cpf} - #{f650.funcionarios.first.matricula}\n" end
if f651 then arquivo.write "#{f651.cpf} - #{f651.funcionarios.first.matricula}\n" end
if f654 then arquivo.write "#{f654.cpf} - #{f654.funcionarios.first.matricula}\n" end
if f656 then arquivo.write "#{f656.cpf} - #{f656.funcionarios.first.matricula}\n" end
if f657 then arquivo.write "#{f657.cpf} - #{f657.funcionarios.first.matricula}\n" end
if f659 then arquivo.write "#{f659.cpf} - #{f659.funcionarios.first.matricula}\n" end
if f660 then arquivo.write "#{f660.cpf} - #{f660.funcionarios.first.matricula}\n" end
if f661 then arquivo.write "#{f661.cpf} - #{f661.funcionarios.first.matricula}\n" end
if f663 then arquivo.write "#{f663.cpf} - #{f663.funcionarios.first.matricula}\n" end
if f664 then arquivo.write "#{f664.cpf} - #{f664.funcionarios.first.matricula}\n" end
if f668 then arquivo.write "#{f668.cpf} - #{f668.funcionarios.first.matricula}\n" end
if f673 then arquivo.write "#{f673.cpf} - #{f673.funcionarios.first.matricula}\n" end
if f674 then arquivo.write "#{f674.cpf} - #{f674.funcionarios.first.matricula}\n" end
if f675 then arquivo.write "#{f675.cpf} - #{f675.funcionarios.first.matricula}\n" end
if f677 then arquivo.write "#{f677.cpf} - #{f677.funcionarios.first.matricula}\n" end
if f684 then arquivo.write "#{f684.cpf} - #{f684.funcionarios.first.matricula}\n" end
if f686 then arquivo.write "#{f686.cpf} - #{f686.funcionarios.first.matricula}\n" end
if f687 then arquivo.write "#{f687.cpf} - #{f687.funcionarios.first.matricula}\n" end
if f691 then arquivo.write "#{f691.cpf} - #{f691.funcionarios.first.matricula}\n" end
if f694 then arquivo.write "#{f694.cpf} - #{f694.funcionarios.first.matricula}\n" end
if f696 then arquivo.write "#{f696.cpf} - #{f696.funcionarios.first.matricula}\n" end
if f697 then arquivo.write "#{f697.cpf} - #{f697.funcionarios.first.matricula}\n" end
if f700 then arquivo.write "#{f700.cpf} - #{f700.funcionarios.first.matricula}\n" end
if f701 then arquivo.write "#{f701.cpf} - #{f701.funcionarios.first.matricula}\n" end
if f703 then arquivo.write "#{f703.cpf} - #{f703.funcionarios.first.matricula}\n" end
if f705 then arquivo.write "#{f705.cpf} - #{f705.funcionarios.first.matricula}\n" end
if f707 then arquivo.write "#{f707.cpf} - #{f707.funcionarios.first.matricula}\n" end
if f708 then arquivo.write "#{f708.cpf} - #{f708.funcionarios.first.matricula}\n" end
if f711 then arquivo.write "#{f711.cpf} - #{f711.funcionarios.first.matricula}\n" end
if f723 then arquivo.write "#{f723.cpf} - #{f723.funcionarios.first.matricula}\n" end
if f726 then arquivo.write "#{f726.cpf} - #{f726.funcionarios.first.matricula}\n" end
if f734 then arquivo.write "#{f734.cpf} - #{f734.funcionarios.first.matricula}\n" end
if f736 then arquivo.write "#{f736.cpf} - #{f736.funcionarios.first.matricula}\n" end
if f737 then arquivo.write "#{f737.cpf} - #{f737.funcionarios.first.matricula}\n" end
if f739 then arquivo.write "#{f739.cpf} - #{f739.funcionarios.first.matricula}\n" end
if f741 then arquivo.write "#{f741.cpf} - #{f741.funcionarios.first.matricula}\n" end
if f743 then arquivo.write "#{f743.cpf} - #{f743.funcionarios.first.matricula}\n" end
if f755 then arquivo.write "#{f755.cpf} - #{f755.funcionarios.first.matricula}\n" end
if f761 then arquivo.write "#{f761.cpf} - #{f761.funcionarios.first.matricula}\n" end
if f766 then arquivo.write "#{f766.cpf} - #{f766.funcionarios.first.matricula}\n" end
if f767 then arquivo.write "#{f767.cpf} - #{f767.funcionarios.first.matricula}\n" end
if f772 then arquivo.write "#{f772.cpf} - #{f772.funcionarios.first.matricula}\n" end
if f801 then arquivo.write "#{f801.cpf} - #{f801.funcionarios.first.matricula}\n" end
if f804 then arquivo.write "#{f804.cpf} - #{f804.funcionarios.first.matricula}\n" end
if f805 then arquivo.write "#{f805.cpf} - #{f805.funcionarios.first.matricula}\n" end
if f810 then arquivo.write "#{f810.cpf} - #{f810.funcionarios.first.matricula}\n" end
if f812 then arquivo.write "#{f812.cpf} - #{f812.funcionarios.first.matricula}\n" end
if f813 then arquivo.write "#{f813.cpf} - #{f813.funcionarios.first.matricula}\n" end
if f814 then arquivo.write "#{f814.cpf} - #{f814.funcionarios.first.matricula}\n" end
if f815 then arquivo.write "#{f815.cpf} - #{f815.funcionarios.first.matricula}\n" end
if f817 then arquivo.write "#{f817.cpf} - #{f817.funcionarios.first.matricula}\n" end
if f818 then arquivo.write "#{f818.cpf} - #{f818.funcionarios.first.matricula}\n" end
if f822 then arquivo.write "#{f822.cpf} - #{f822.funcionarios.first.matricula}\n" end
if f823 then arquivo.write "#{f823.cpf} - #{f823.funcionarios.first.matricula}\n" end
if f826 then arquivo.write "#{f826.cpf} - #{f826.funcionarios.first.matricula}\n" end
if f830 then arquivo.write "#{f830.cpf} - #{f830.funcionarios.first.matricula}\n" end
if f834 then arquivo.write "#{f834.cpf} - #{f834.funcionarios.first.matricula}\n" end
if f837 then arquivo.write "#{f837.cpf} - #{f837.funcionarios.first.matricula}\n" end
if f838 then arquivo.write "#{f838.cpf} - #{f838.funcionarios.first.matricula}\n" end
if f839 then arquivo.write "#{f839.cpf} - #{f839.funcionarios.first.matricula}\n" end
if f842 then arquivo.write "#{f842.cpf} - #{f842.funcionarios.first.matricula}\n" end
if f844 then arquivo.write "#{f844.cpf} - #{f844.funcionarios.first.matricula}\n" end
if f855 then arquivo.write "#{f855.cpf} - #{f855.funcionarios.first.matricula}\n" end
if f856 then arquivo.write "#{f856.cpf} - #{f856.funcionarios.first.matricula}\n" end
if f862 then arquivo.write "#{f862.cpf} - #{f862.funcionarios.first.matricula}\n" end
if f865 then arquivo.write "#{f865.cpf} - #{f865.funcionarios.first.matricula}\n" end
if f869 then arquivo.write "#{f869.cpf} - #{f869.funcionarios.first.matricula}\n" end
if f870 then arquivo.write "#{f870.cpf} - #{f870.funcionarios.first.matricula}\n" end
if f877 then arquivo.write "#{f877.cpf} - #{f877.funcionarios.first.matricula}\n" end
if f881 then arquivo.write "#{f881.cpf} - #{f881.funcionarios.first.matricula}\n" end
if f885 then arquivo.write "#{f885.cpf} - #{f885.funcionarios.first.matricula}\n" end
if f888 then arquivo.write "#{f888.cpf} - #{f888.funcionarios.first.matricula}\n" end
if f894 then arquivo.write "#{f894.cpf} - #{f894.funcionarios.first.matricula}\n" end
if f912 then arquivo.write "#{f912.cpf} - #{f912.funcionarios.first.matricula}\n" end
if f922 then arquivo.write "#{f922.cpf} - #{f922.funcionarios.first.matricula}\n" end
if f932 then arquivo.write "#{f932.cpf} - #{f932.funcionarios.first.matricula}\n" end
if f942 then arquivo.write "#{f942.cpf} - #{f942.funcionarios.first.matricula}\n" end
if f943 then arquivo.write "#{f943.cpf} - #{f943.funcionarios.first.matricula}\n" end
if f944 then arquivo.write "#{f944.cpf} - #{f944.funcionarios.first.matricula}\n" end
if f945 then arquivo.write "#{f945.cpf} - #{f945.funcionarios.first.matricula}\n" end
if f950 then arquivo.write "#{f950.cpf} - #{f950.funcionarios.first.matricula}\n" end
if f953 then arquivo.write "#{f953.cpf} - #{f953.funcionarios.first.matricula}\n" end
if f962 then arquivo.write "#{f962.cpf} - #{f962.funcionarios.first.matricula}\n" end
if f963 then arquivo.write "#{f963.cpf} - #{f963.funcionarios.first.matricula}\n" end
if f965 then arquivo.write "#{f965.cpf} - #{f965.funcionarios.first.matricula}\n" end
if f971 then arquivo.write "#{f971.cpf} - #{f971.funcionarios.first.matricula}\n" end
if f972 then arquivo.write "#{f972.cpf} - #{f972.funcionarios.first.matricula}\n" end
if f990 then arquivo.write "#{f990.cpf} - #{f990.funcionarios.first.matricula}\n" end
if f993 then arquivo.write "#{f993.cpf} - #{f993.funcionarios.first.matricula}\n" end
if f996 then arquivo.write "#{f996.cpf} - #{f996.funcionarios.first.matricula}\n" end
if f1008 then arquivo.write "#{f1008.cpf} - #{f1008.funcionarios.first.matricula}\n" end
if f1010 then arquivo.write "#{f1010.cpf} - #{f1010.funcionarios.first.matricula}\n" end
if f1011 then arquivo.write "#{f1011.cpf} - #{f1011.funcionarios.first.matricula}\n" end
if f1012 then arquivo.write "#{f1012.cpf} - #{f1012.funcionarios.first.matricula}\n" end
if f1021 then arquivo.write "#{f1021.cpf} - #{f1021.funcionarios.first.matricula}\n" end
if f1022 then arquivo.write "#{f1022.cpf} - #{f1022.funcionarios.first.matricula}\n" end
if f1023 then arquivo.write "#{f1023.cpf} - #{f1023.funcionarios.first.matricula}\n" end
if f1028 then arquivo.write "#{f1028.cpf} - #{f1028.funcionarios.first.matricula}\n" end
if f1029 then arquivo.write "#{f1029.cpf} - #{f1029.funcionarios.first.matricula}\n" end
if f1030 then arquivo.write "#{f1030.cpf} - #{f1030.funcionarios.first.matricula}\n" end
if f1033 then arquivo.write "#{f1033.cpf} - #{f1033.funcionarios.first.matricula}\n" end
if f1036 then arquivo.write "#{f1036.cpf} - #{f1036.funcionarios.first.matricula}\n" end
if f1038 then arquivo.write "#{f1038.cpf} - #{f1038.funcionarios.first.matricula}\n" end
if f1039 then arquivo.write "#{f1039.cpf} - #{f1039.funcionarios.first.matricula}\n" end
if f1046 then arquivo.write "#{f1046.cpf} - #{f1046.funcionarios.first.matricula}\n" end
if f1047 then arquivo.write "#{f1047.cpf} - #{f1047.funcionarios.first.matricula}\n" end
if f1049 then arquivo.write "#{f1049.cpf} - #{f1049.funcionarios.first.matricula}\n" end
if f1051 then arquivo.write "#{f1051.cpf} - #{f1051.funcionarios.first.matricula}\n" end
if f1052 then arquivo.write "#{f1052.cpf} - #{f1052.funcionarios.first.matricula}\n" end
if f1053 then arquivo.write "#{f1053.cpf} - #{f1053.funcionarios.first.matricula}\n" end
if f1055 then arquivo.write "#{f1055.cpf} - #{f1055.funcionarios.first.matricula}\n" end
if f1056 then arquivo.write "#{f1056.cpf} - #{f1056.funcionarios.first.matricula}\n" end
if f1057 then arquivo.write "#{f1057.cpf} - #{f1057.funcionarios.first.matricula}\n" end
if f1058 then arquivo.write "#{f1058.cpf} - #{f1058.funcionarios.first.matricula}\n" end
if f1060 then arquivo.write "#{f1060.cpf} - #{f1060.funcionarios.first.matricula}\n" end
if f1061 then arquivo.write "#{f1061.cpf} - #{f1061.funcionarios.first.matricula}\n" end
if f1062 then arquivo.write "#{f1062.cpf} - #{f1062.funcionarios.first.matricula}\n" end
if f1065 then arquivo.write "#{f1065.cpf} - #{f1065.funcionarios.first.matricula}\n" end
if f1066 then arquivo.write "#{f1066.cpf} - #{f1066.funcionarios.first.matricula}\n" end
if f1071 then arquivo.write "#{f1071.cpf} - #{f1071.funcionarios.first.matricula}\n" end
if f1075 then arquivo.write "#{f1075.cpf} - #{f1075.funcionarios.first.matricula}\n" end
if f1077 then arquivo.write "#{f1077.cpf} - #{f1077.funcionarios.first.matricula}\n" end
if f1082 then arquivo.write "#{f1082.cpf} - #{f1082.funcionarios.first.matricula}\n" end
if f1086 then arquivo.write "#{f1086.cpf} - #{f1086.funcionarios.first.matricula}\n" end
if f1087 then arquivo.write "#{f1087.cpf} - #{f1087.funcionarios.first.matricula}\n" end
if f1088 then arquivo.write "#{f1088.cpf} - #{f1088.funcionarios.first.matricula}\n" end
if f1089 then arquivo.write "#{f1089.cpf} - #{f1089.funcionarios.first.matricula}\n" end
if f1096 then arquivo.write "#{f1096.cpf} - #{f1096.funcionarios.first.matricula}\n" end
arquivo.close
puts "OK"
end
end