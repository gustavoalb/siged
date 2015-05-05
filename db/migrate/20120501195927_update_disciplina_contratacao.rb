# -*- encoding : utf-8 -*-
class UpdateDisciplinaContratacao < ActiveRecord::Migration
  def self.up   
User.usuario_atual = User.find 1
f1 = Funcionario.find_by_matricula('862443')
f2 = Funcionario.find_by_matricula('869988')
f4 = Funcionario.find_by_matricula('857726')
f5 = Funcionario.find_by_matricula('875940')
f6 = Funcionario.find_by_matricula('887480')
f7 = Funcionario.find_by_matricula('864293')
f10 = Funcionario.find_by_matricula('654760')
f11 = Funcionario.find_by_matricula('901008')
f12 = Funcionario.find_by_matricula('884286')
f13 = Funcionario.find_by_matricula('861243')
f14 = Funcionario.find_by_matricula('868442')
f15 = Funcionario.find_by_matricula('869201')
f16 = Funcionario.find_by_matricula('875899')
f17 = Funcionario.find_by_matricula('853194')
f18 = Funcionario.find_by_matricula('855367')
f19 = Funcionario.find_by_matricula('946265')
f20 = Funcionario.find_by_matricula('968145')
f21 = Funcionario.find_by_matricula('908274')
f22 = Funcionario.find_by_matricula('881260')
f23 = Funcionario.find_by_matricula('906026')
f24 = Funcionario.find_by_matricula('981001')
f25 = Funcionario.find_by_matricula('984930')
f27 = Funcionario.find_by_matricula('881279')
f28 = Funcionario.find_by_matricula('852953')
f29 = Funcionario.find_by_matricula('863424')
f30 = Funcionario.find_by_matricula('858315')
f31 = Funcionario.find_by_matricula('858307')
f32 = Funcionario.find_by_matricula('871028')
f33 = Funcionario.find_by_matricula('887560')
f35 = Funcionario.find_by_matricula('894052')
f36 = Funcionario.find_by_matricula('853950')
f37 = Funcionario.find_by_matricula('854069')
f38 = Funcionario.find_by_matricula('858285')
f39 = Funcionario.find_by_matricula('887552')
f40 = Funcionario.find_by_matricula('870170')
f41 = Funcionario.find_by_matricula('882461')
f42 = Funcionario.find_by_matricula('887544')
f43 = Funcionario.find_by_matricula('859710')
f44 = Funcionario.find_by_matricula('868590')
f45 = Funcionario.find_by_matricula('864447')
f46 = Funcionario.find_by_matricula('870200')
f48 = Funcionario.find_by_matricula('856606')
f50 = Funcionario.find_by_matricula('863505')
f51 = Funcionario.find_by_matricula('853186')
f52 = Funcionario.find_by_matricula('862118')
f53 = Funcionario.find_by_matricula('864757')
f54 = Funcionario.find_by_matricula('908266')
f55 = Funcionario.find_by_matricula('949302')
f56 = Funcionario.find_by_matricula('854018')
f57 = Funcionario.find_by_matricula('862754')
f58 = Funcionario.find_by_matricula('981516')
f59 = Funcionario.find_by_matricula('912190')
f61 = Funcionario.find_by_matricula('861359')
f62 = Funcionario.find_by_matricula('993573')
f63 = Funcionario.find_by_matricula('868426')
f64 = Funcionario.find_by_matricula('907456')
f65 = Funcionario.find_by_matricula('871559')
f66 = Funcionario.find_by_matricula('855022')
f67 = Funcionario.find_by_matricula('869449')
f68 = Funcionario.find_by_matricula('869759')
f69 = Funcionario.find_by_matricula('910279')
f70 = Funcionario.find_by_matricula('884057')
f71 = Funcionario.find_by_matricula('863262')
f72 = Funcionario.find_by_matricula('926400')
f73 = Funcionario.find_by_matricula('993611')
f74 = Funcionario.find_by_matricula('968943')
f75 = Funcionario.find_by_matricula('851582')
f76 = Funcionario.find_by_matricula('864994')
f77 = Funcionario.find_by_matricula('859737')
f78 = Funcionario.find_by_matricula('864900')
f79 = Funcionario.find_by_matricula('912201')
f80 = Funcionario.find_by_matricula('949442')
f81 = Funcionario.find_by_matricula('878839')
f82 = Funcionario.find_by_matricula('986615')
f83 = Funcionario.find_by_matricula('991856')
f85 = Funcionario.find_by_matricula('887072')
f86 = Funcionario.find_by_matricula('886521')
f87 = Funcionario.find_by_matricula('871982')
f88 = Funcionario.find_by_matricula('930750')
f89 = Funcionario.find_by_matricula('856436')
f90 = Funcionario.find_by_matricula('949400')
f91 = Funcionario.find_by_matricula('865460')
f93 = Funcionario.find_by_matricula('953733')
f94 = Funcionario.find_by_matricula('885088')
f95 = Funcionario.find_by_matricula('881104')
f96 = Funcionario.find_by_matricula('930784')
f97 = Funcionario.find_by_matricula('971073')
f99 = Funcionario.find_by_matricula('887315')
f100 = Funcionario.find_by_matricula('864439')
f101 = Funcionario.find_by_matricula('864617')
f102 = Funcionario.find_by_matricula('886416')
f103 = Funcionario.find_by_matricula('887285')
f105 = Funcionario.find_by_matricula('994596')
f107 = Funcionario.find_by_matricula('949639')
f108 = Funcionario.find_by_matricula('853321')
f109 = Funcionario.find_by_matricula('975664')
f110 = Funcionario.find_by_matricula('860689')
f111 = Funcionario.find_by_matricula('907944')
f112 = Funcionario.find_by_matricula('860735')
f113 = Funcionario.find_by_matricula('926345')
f114 = Funcionario.find_by_matricula('868884')
f115 = Funcionario.find_by_matricula('856703')
f117 = Funcionario.find_by_matricula('890553')
f118 = Funcionario.find_by_matricula('891347')
f119 = Funcionario.find_by_matricula('1027417')
f120 = Funcionario.find_by_matricula('902489')
f121 = Funcionario.find_by_matricula('882399')
f122 = Funcionario.find_by_matricula('860867')
f123 = Funcionario.find_by_matricula('994600')
f124 = Funcionario.find_by_matricula('958085')
f125 = Funcionario.find_by_matricula('986631')
f126 = Funcionario.find_by_matricula('994707')
f127 = Funcionario.find_by_matricula('852392')
f128 = Funcionario.find_by_matricula('890472')
f129 = Funcionario.find_by_matricula('887234')
f130 = Funcionario.find_by_matricula('928607')
f131 = Funcionario.find_by_matricula('875619')
f132 = Funcionario.find_by_matricula('908282')
f133 = Funcionario.find_by_matricula('886777')
f134 = Funcionario.find_by_matricula('853054')
f135 = Funcionario.find_by_matricula('994685')
f136 = Funcionario.find_by_matricula('853798')
f137 = Funcionario.find_by_matricula('871907')
f138 = Funcionario.find_by_matricula('969060')
f139 = Funcionario.find_by_matricula('864315')
f140 = Funcionario.find_by_matricula('858595')
f141 = Funcionario.find_by_matricula('853780')
f142 = Funcionario.find_by_matricula('868914')
f143 = Funcionario.find_by_matricula('856690')
f144 = Funcionario.find_by_matricula('872067')
f145 = Funcionario.find_by_matricula('858633')
f146 = Funcionario.find_by_matricula('864889')
f147 = Funcionario.find_by_matricula('895792')
f149 = Funcionario.find_by_matricula('864684')
f150 = Funcionario.find_by_matricula('862975')
f152 = Funcionario.find_by_matricula('880078')
f153 = Funcionario.find_by_matricula('862959')
f154 = Funcionario.find_by_matricula('1025392')
f155 = Funcionario.find_by_matricula('911283')
f156 = Funcionario.find_by_matricula('855995')
f157 = Funcionario.find_by_matricula('888885')
f158 = Funcionario.find_by_matricula('853542')
f159 = Funcionario.find_by_matricula('853569')
f160 = Funcionario.find_by_matricula('886475')
f161 = Funcionario.find_by_matricula('863130')
f162 = Funcionario.find_by_matricula('908126')
f163 = Funcionario.find_by_matricula('888915')
f164 = Funcionario.find_by_matricula('853585')
f165 = Funcionario.find_by_matricula('861669')
f166 = Funcionario.find_by_matricula('901059')
f167 = Funcionario.find_by_matricula('926310')
f168 = Funcionario.find_by_matricula('973777')
f169 = Funcionario.find_by_matricula('868604')
f170 = Funcionario.find_by_matricula('865494')
f171 = Funcionario.find_by_matricula('885320')
f172 = Funcionario.find_by_matricula('949906')
f173 = Funcionario.find_by_matricula('870722')
f174 = Funcionario.find_by_matricula('902454')
f175 = Funcionario.find_by_matricula('860603')
f177 = Funcionario.find_by_matricula('909949')
f178 = Funcionario.find_by_matricula('869856')
f179 = Funcionario.find_by_matricula('924237')
f180 = Funcionario.find_by_matricula('883646')
f181 = Funcionario.find_by_matricula('851825')
f183 = Funcionario.find_by_matricula('861960')
f185 = Funcionario.find_by_matricula('949981')
f187 = Funcionario.find_by_matricula('870706')
f188 = Funcionario.find_by_matricula('880710')
f189 = Funcionario.find_by_matricula('865818')
f190 = Funcionario.find_by_matricula('863491')
f191 = Funcionario.find_by_matricula('852686')
f192 = Funcionario.find_by_matricula('855715')
f194 = Funcionario.find_by_matricula('859877')
f195 = Funcionario.find_by_matricula('871311')
f196 = Funcionario.find_by_matricula('858200')
f197 = Funcionario.find_by_matricula('902330')
f198 = Funcionario.find_by_matricula('856061')
f199 = Funcionario.find_by_matricula('887145')
f200 = Funcionario.find_by_matricula('854921')
f201 = Funcionario.find_by_matricula('867047')
f202 = Funcionario.find_by_matricula('924610')
f203 = Funcionario.find_by_matricula('855740')
f204 = Funcionario.find_by_matricula('865915')
f206 = Funcionario.find_by_matricula('880590')
f207 = Funcionario.find_by_matricula('887714')
f209 = Funcionario.find_by_matricula('935760')
f210 = Funcionario.find_by_matricula('1016695')
f211 = Funcionario.find_by_matricula('886602')
f212 = Funcionario.find_by_matricula('856118')
f213 = Funcionario.find_by_matricula('980471')
f214 = Funcionario.find_by_matricula('872830')
f215 = Funcionario.find_by_matricula('861170')
f216 = Funcionario.find_by_matricula('855723')
f217 = Funcionario.find_by_matricula('856100')
f218 = Funcionario.find_by_matricula('899585')
f220 = Funcionario.find_by_matricula('853224')
f221 = Funcionario.find_by_matricula('887722')
f222 = Funcionario.find_by_matricula('859222')
f223 = Funcionario.find_by_matricula('859192')
f224 = Funcionario.find_by_matricula('912166')
f225 = Funcionario.find_by_matricula('630179')
f226 = Funcionario.find_by_matricula('871540')
f227 = Funcionario.find_by_matricula('870455')
f228 = Funcionario.find_by_matricula('854751')
f229 = Funcionario.find_by_matricula('854590')
f231 = Funcionario.find_by_matricula('859524')
f232 = Funcionario.find_by_matricula('857556')
f233 = Funcionario.find_by_matricula('855677')
f234 = Funcionario.find_by_matricula('883417')
f235 = Funcionario.find_by_matricula('859630')
f236 = Funcionario.find_by_matricula('862207')
f237 = Funcionario.find_by_matricula('864110')
f238 = Funcionario.find_by_matricula('853917')
f239 = Funcionario.find_by_matricula('854573')
f240 = Funcionario.find_by_matricula('870498')
f242 = Funcionario.find_by_matricula('935794')
f243 = Funcionario.find_by_matricula('861952')
f244 = Funcionario.find_by_matricula('856134')
f245 = Funcionario.find_by_matricula('865338')
f246 = Funcionario.find_by_matricula('855693')
f247 = Funcionario.find_by_matricula('858242')
f248 = Funcionario.find_by_matricula('886807')
f249 = Funcionario.find_by_matricula('861820')
f250 = Funcionario.find_by_matricula('854964')
f252 = Funcionario.find_by_matricula('883450')
f253 = Funcionario.find_by_matricula('856169')
f254 = Funcionario.find_by_matricula('859320')
f255 = Funcionario.find_by_matricula('637688')
f256 = Funcionario.find_by_matricula('886793')
f257 = Funcionario.find_by_matricula('883476')
f258 = Funcionario.find_by_matricula('863742')
f259 = Funcionario.find_by_matricula('863858')
f260 = Funcionario.find_by_matricula('858137')
f261 = Funcionario.find_by_matricula('883484')
f262 = Funcionario.find_by_matricula('871494')
f263 = Funcionario.find_by_matricula('875520')
f264 = Funcionario.find_by_matricula('862240')
f265 = Funcionario.find_by_matricula('950068')
f266 = Funcionario.find_by_matricula('870560')
f268 = Funcionario.find_by_matricula('887633')
f269 = Funcionario.find_by_matricula('862452')
f270 = Funcionario.find_by_matricula('863734')
f271 = Funcionario.find_by_matricula('854506')
f272 = Funcionario.find_by_matricula('870447')
f273 = Funcionario.find_by_matricula('863769')
f274 = Funcionario.find_by_matricula('871478')
f275 = Funcionario.find_by_matricula('935794')
f276 = Funcionario.find_by_matricula('907774')
f277 = Funcionario.find_by_matricula('863890')
f278 = Funcionario.find_by_matricula('853933')
f279 = Funcionario.find_by_matricula('867020')
f281 = Funcionario.find_by_matricula('907766')
f282 = Funcionario.find_by_matricula('886963')
f283 = Funcionario.find_by_matricula('865710')
f284 = Funcionario.find_by_matricula('865958')
f286 = Funcionario.find_by_matricula('862304')
f287 = Funcionario.find_by_matricula('936456')
f288 = Funcionario.find_by_matricula('885231')
f289 = Funcionario.find_by_matricula('854581')
f290 = Funcionario.find_by_matricula('854468')
f291 = Funcionario.find_by_matricula('935816')
f292 = Funcionario.find_by_matricula('886599')
f293 = Funcionario.find_by_matricula('862169')
f294 = Funcionario.find_by_matricula('859028')
f295 = Funcionario.find_by_matricula('852783')
f296 = Funcionario.find_by_matricula('907740')
f297 = Funcionario.find_by_matricula('862355')
f299 = Funcionario.find_by_matricula('884782')
f301 = Funcionario.find_by_matricula('852589')
f302 = Funcionario.find_by_matricula('886580')
f303 = Funcionario.find_by_matricula('857394')
f304 = Funcionario.find_by_matricula('907731')
f306 = Funcionario.find_by_matricula('652466')
f307 = Funcionario.find_by_matricula('910112')
f308 = Funcionario.find_by_matricula('890499')
f309 = Funcionario.find_by_matricula('882330')
f310 = Funcionario.find_by_matricula('865443')
f311 = Funcionario.find_by_matricula('887641')
f312 = Funcionario.find_by_matricula('852511')
f313 = Funcionario.find_by_matricula('863351')
f314 = Funcionario.find_by_matricula('861480')
f315 = Funcionario.find_by_matricula('851949')
f316 = Funcionario.find_by_matricula('865737')
f317 = Funcionario.find_by_matricula('858188')
f318 = Funcionario.find_by_matricula('860883')
f319 = Funcionario.find_by_matricula('866563')
f320 = Funcionario.find_by_matricula('865397')
f321 = Funcionario.find_by_matricula('868906')
f322 = Funcionario.find_by_matricula('859699')
f323 = Funcionario.find_by_matricula('869775')
f324 = Funcionario.find_by_matricula('903345')
f325 = Funcionario.find_by_matricula('883352')
f326 = Funcionario.find_by_matricula('917559')
f328 = Funcionario.find_by_matricula('984906')
f329 = Funcionario.find_by_matricula('861316')
f330 = Funcionario.find_by_matricula('854204')
f332 = Funcionario.find_by_matricula('855138')
f333 = Funcionario.find_by_matricula('859532')
f334 = Funcionario.find_by_matricula('859648')
f335 = Funcionario.find_by_matricula('866601')
f336 = Funcionario.find_by_matricula('861626')
f337 = Funcionario.find_by_matricula('887102')
f338 = Funcionario.find_by_matricula('857505')
f339 = Funcionario.find_by_matricula('882569')
f340 = Funcionario.find_by_matricula('891789')
f341 = Funcionario.find_by_matricula('907669')
f342 = Funcionario.find_by_matricula('886467')
f343 = Funcionario.find_by_matricula('965502')
f344 = Funcionario.find_by_matricula('905569')
f346 = Funcionario.find_by_matricula('887293')
f347 = Funcionario.find_by_matricula('866091')
f348 = Funcionario.find_by_matricula('886742')
f349 = Funcionario.find_by_matricula('861723')
f350 = Funcionario.find_by_matricula('886971')
f351 = Funcionario.find_by_matricula('887609')
f352 = Funcionario.find_by_matricula('833827')
f353 = Funcionario.find_by_matricula('864382')
f354 = Funcionario.find_by_matricula('869767')
f355 = Funcionario.find_by_matricula('833301')
f356 = Funcionario.find_by_matricula('855596')
f358 = Funcionario.find_by_matricula('882305')
f359 = Funcionario.find_by_matricula('861928')
f360 = Funcionario.find_by_matricula('863840')
f361 = Funcionario.find_by_matricula('866571')
f362 = Funcionario.find_by_matricula('951064')
f363 = Funcionario.find_by_matricula('954829')
f364 = Funcionario.find_by_matricula('954713')
f365 = Funcionario.find_by_matricula('927716')
f366 = Funcionario.find_by_matricula('954780')
f367 = Funcionario.find_by_matricula('954667')
f368 = Funcionario.find_by_matricula('993344')
f369 = Funcionario.find_by_matricula('974064')
f370 = Funcionario.find_by_matricula('977284')
f371 = Funcionario.find_by_matricula('980196')
f374 = Funcionario.find_by_matricula('871079')
f375 = Funcionario.find_by_matricula('895539')
f376 = Funcionario.find_by_matricula('857971')
f377 = Funcionario.find_by_matricula('866083')
f378 = Funcionario.find_by_matricula('858170')
f380 = Funcionario.find_by_matricula('861774')
f381 = Funcionario.find_by_matricula('864005')
f382 = Funcionario.find_by_matricula('883328')
f383 = Funcionario.find_by_matricula('854174')
f385 = Funcionario.find_by_matricula('861375')
f386 = Funcionario.find_by_matricula('865478')
f387 = Funcionario.find_by_matricula('861430')
f388 = Funcionario.find_by_matricula('883336')
f389 = Funcionario.find_by_matricula('852473')
f390 = Funcionario.find_by_matricula('870579')
f391 = Funcionario.find_by_matricula('899810')
f396 = Funcionario.find_by_matricula('974579')
f397 = Funcionario.find_by_matricula('861537')
f398 = Funcionario.find_by_matricula('868760')
f399 = Funcionario.find_by_matricula('882291')
f400 = Funcionario.find_by_matricula('832219')
f401 = Funcionario.find_by_matricula('888451')
f402 = Funcionario.find_by_matricula('858250')
f403 = Funcionario.find_by_matricula('855162')
f404 = Funcionario.find_by_matricula('871869')
f405 = Funcionario.find_by_matricula('870390')
f408 = Funcionario.find_by_matricula('875465')
f409 = Funcionario.find_by_matricula('886734')
f412 = Funcionario.find_by_matricula('878820')
f413 = Funcionario.find_by_matricula('853720')
f415 = Funcionario.find_by_matricula('865974')
f416 = Funcionario.find_by_matricula('887404')
f417 = Funcionario.find_by_matricula('863335')
f418 = Funcionario.find_by_matricula('863939')
f419 = Funcionario.find_by_matricula('859605')
f420 = Funcionario.find_by_matricula('862711')
f421 = Funcionario.find_by_matricula('870340')
f422 = Funcionario.find_by_matricula('883247')
f424 = Funcionario.find_by_matricula('854042')
f425 = Funcionario.find_by_matricula('861677')
f426 = Funcionario.find_by_matricula('864544')
f427 = Funcionario.find_by_matricula('853984')
f428 = Funcionario.find_by_matricula('866105')
f429 = Funcionario.find_by_matricula('863459')
f430 = Funcionario.find_by_matricula('863882')
f431 = Funcionario.find_by_matricula('883271')
f435 = Funcionario.find_by_matricula('863521')
f436 = Funcionario.find_by_matricula('883190')
f437 = Funcionario.find_by_matricula('866067')
f438 = Funcionario.find_by_matricula('886270')
f439 = Funcionario.find_by_matricula('870307')
f440 = Funcionario.find_by_matricula('886700')
f441 = Funcionario.find_by_matricula('860638')
f442 = Funcionario.find_by_matricula('886718')
f443 = Funcionario.find_by_matricula('888346')
f444 = Funcionario.find_by_matricula('869996')
f445 = Funcionario.find_by_matricula('859370')
f446 = Funcionario.find_by_matricula('861588')
f447 = Funcionario.find_by_matricula('930903')
f448 = Funcionario.find_by_matricula('980277')
f449 = Funcionario.find_by_matricula('980323')
f450 = Funcionario.find_by_matricula('888370')
f451 = Funcionario.find_by_matricula('907634')
f452 = Funcionario.find_by_matricula('862746')
f453 = Funcionario.find_by_matricula('878294')
f454 = Funcionario.find_by_matricula('887587')
f455 = Funcionario.find_by_matricula('858234')
f456 = Funcionario.find_by_matricula('883140')
f457 = Funcionario.find_by_matricula('851957')
f458 = Funcionario.find_by_matricula('861839')
f459 = Funcionario.find_by_matricula('857831')
f461 = Funcionario.find_by_matricula('860700')
f462 = Funcionario.find_by_matricula('874914')
f464 = Funcionario.find_by_matricula('870013')
f465 = Funcionario.find_by_matricula('870412')
f467 = Funcionario.find_by_matricula('861782')
f469 = Funcionario.find_by_matricula('851469')
f470 = Funcionario.find_by_matricula('969362')
f473 = Funcionario.find_by_matricula('863599')
f474 = Funcionario.find_by_matricula('863920')
f476 = Funcionario.find_by_matricula('923907')
f478 = Funcionario.find_by_matricula('883360')
f479 = Funcionario.find_by_matricula('888435')
f480 = Funcionario.find_by_matricula('863645')
f482 = Funcionario.find_by_matricula('937991')
f485 = Funcionario.find_by_matricula('950084')
f486 = Funcionario.find_by_matricula('980145')
f487 = Funcionario.find_by_matricula('994413')
f488 = Funcionario.find_by_matricula('612278')
f489 = Funcionario.find_by_matricula('1005413')
f490 = Funcionario.find_by_matricula('852031')
f491 = Funcionario.find_by_matricula('885274')
f492 = Funcionario.find_by_matricula('888281')
f493 = Funcionario.find_by_matricula('886920')
f494 = Funcionario.find_by_matricula('853518')
f495 = Funcionario.find_by_matricula('864730')
f497 = Funcionario.find_by_matricula('854220')
f498 = Funcionario.find_by_matricula('865516')
f499 = Funcionario.find_by_matricula('853844')
f500 = Funcionario.find_by_matricula('*')
f501 = Funcionario.find_by_matricula('864773')
f502 = Funcionario.find_by_matricula('928860')
f503 = Funcionario.find_by_matricula('862630')
f504 = Funcionario.find_by_matricula('862673')
f505 = Funcionario.find_by_matricula('859540')
f506 = Funcionario.find_by_matricula('901067')
f507 = Funcionario.find_by_matricula('864587')
f508 = Funcionario.find_by_matricula('872113')
f509 = Funcionario.find_by_matricula('907596')
f510 = Funcionario.find_by_matricula('859478')
f511 = Funcionario.find_by_matricula('949515')
f512 = Funcionario.find_by_matricula('866768')
f513 = Funcionario.find_by_matricula('854271')
f514 = Funcionario.find_by_matricula('885096')
f516 = Funcionario.find_by_matricula('858080')
f517 = Funcionario.find_by_matricula('870463')
f518 = Funcionario.find_by_matricula('891509')
f520 = Funcionario.find_by_matricula('866989')
f522 = Funcionario.find_by_matricula('912123')
f523 = Funcionario.find_by_matricula('937886')
f524 = Funcionario.find_by_matricula('950220')
f525 = Funcionario.find_by_matricula('856347')
f526 = Funcionario.find_by_matricula('862290')
f527 = Funcionario.find_by_matricula('876534')
f528 = Funcionario.find_by_matricula('880086')
f529 = Funcionario.find_by_matricula('862320')
f530 = Funcionario.find_by_matricula('890448')
f531 = Funcionario.find_by_matricula('891100')
f532 = Funcionario.find_by_matricula('865842')
f533 = Funcionario.find_by_matricula('862266')
f534 = Funcionario.find_by_matricula('951730')
f535 = Funcionario.find_by_matricula('857483')
f536 = Funcionario.find_by_matricula('899640')
f537 = Funcionario.find_by_matricula('862690')
f538 = Funcionario.find_by_matricula('859257')
f539 = Funcionario.find_by_matricula('862789')
f540 = Funcionario.find_by_matricula('924210')
f541 = Funcionario.find_by_matricula('865630')
f542 = Funcionario.find_by_matricula('856428')
f543 = Funcionario.find_by_matricula('887919')
f544 = Funcionario.find_by_matricula('853020')
f545 = Funcionario.find_by_matricula('866738')
f546 = Funcionario.find_by_matricula('857491')
f547 = Funcionario.find_by_matricula('882623')
f549 = Funcionario.find_by_matricula('871621')
f550 = Funcionario.find_by_matricula('870408')
f551 = Funcionario.find_by_matricula('853097')
f553 = Funcionario.find_by_matricula('860530')
f554 = Funcionario.find_by_matricula('899739')
f555 = Funcionario.find_by_matricula('880299')
f556 = Funcionario.find_by_matricula('854646')
f557 = Funcionario.find_by_matricula('887862')
f558 = Funcionario.find_by_matricula('883069')
f559 = Funcionario.find_by_matricula('880310')
f560 = Funcionario.find_by_matricula('870048')
f561 = Funcionario.find_by_matricula('886750')
f562 = Funcionario.find_by_matricula('859109')
f563 = Funcionario.find_by_matricula('863947')
f565 = Funcionario.find_by_matricula('852139')
f566 = Funcionario.find_by_matricula('854000')
f567 = Funcionario.find_by_matricula('860565')
f568 = Funcionario.find_by_matricula('915254')
f569 = Funcionario.find_by_matricula('854700')
f570 = Funcionario.find_by_matricula('859892')
f571 = Funcionario.find_by_matricula('854263')
f572 = Funcionario.find_by_matricula('902381')
f573 = Funcionario.find_by_matricula('908355')
f574 = Funcionario.find_by_matricula('870056')
f575 = Funcionario.find_by_matricula('856452')
f576 = Funcionario.find_by_matricula('862983')
f577 = Funcionario.find_by_matricula('852139')
f578 = Funcionario.find_by_matricula('860450')
f580 = Funcionario.find_by_matricula('862410')
f581 = Funcionario.find_by_matricula('912905')
f582 = Funcionario.find_by_matricula('866920')
f583 = Funcionario.find_by_matricula('860522')
f585 = Funcionario.find_by_matricula('862827')
f586 = Funcionario.find_by_matricula('854085')
f587 = Funcionario.find_by_matricula('870528')
f588 = Funcionario.find_by_matricula('864021')
f589 = Funcionario.find_by_matricula('863050')
f590 = Funcionario.find_by_matricula('660361')
f591 = Funcionario.find_by_matricula('857378')
f592 = Funcionario.find_by_matricula('882615')
f594 = Funcionario.find_by_matricula('650447')
f595 = Funcionario.find_by_matricula('863076')
f596 = Funcionario.find_by_matricula('870331')
f597 = Funcionario.find_by_matricula('320900')
f598 = Funcionario.find_by_matricula('890430')
f599 = Funcionario.find_by_matricula('930946')
f600 = Funcionario.find_by_matricula('887331')
f601 = Funcionario.find_by_matricula('857688')
f602 = Funcionario.find_by_matricula('854727')
f603 = Funcionario.find_by_matricula('246964')
f604 = Funcionario.find_by_matricula('853364')
f605 = Funcionario.find_by_matricula('862347')
f606 = Funcionario.find_by_matricula('854077')
f608 = Funcionario.find_by_matricula('875224')
f609 = Funcionario.find_by_matricula('883077')
f610 = Funcionario.find_by_matricula('888257')
f611 = Funcionario.find_by_matricula('886459')
f612 = Funcionario.find_by_matricula('872695')
f613 = Funcionario.find_by_matricula('866482')
f615 = Funcionario.find_by_matricula('912972')
f616 = Funcionario.find_by_matricula('863106')
f617 = Funcionario.find_by_matricula('866873')
f618 = Funcionario.find_by_matricula('854280')
f619 = Funcionario.find_by_matricula('863041')
f620 = Funcionario.find_by_matricula('880272')
f622 = Funcionario.find_by_matricula('863947')
f624 = Funcionario.find_by_matricula('883107')
f625 = Funcionario.find_by_matricula('899712')
f626 = Funcionario.find_by_matricula('871931')
f627 = Funcionario.find_by_matricula('857211')
f628 = Funcionario.find_by_matricula('865400')
f629 = Funcionario.find_by_matricula('899690')
f630 = Funcionario.find_by_matricula('674990')
f631 = Funcionario.find_by_matricula('855340')
f632 = Funcionario.find_by_matricula('853941')
f633 = Funcionario.find_by_matricula('854620')
f634 = Funcionario.find_by_matricula('853305')
f635 = Funcionario.find_by_matricula('887846')
f636 = Funcionario.find_by_matricula('885070')
f637 = Funcionario.find_by_matricula('862860')
f638 = Funcionario.find_by_matricula('862835')
f639 = Funcionario.find_by_matricula('1028740')
f640 = Funcionario.find_by_matricula('870080')
f641 = Funcionario.find_by_matricula('854948')
f642 = Funcionario.find_by_matricula('882917')
f643 = Funcionario.find_by_matricula('1004646')
f645 = Funcionario.find_by_matricula('853313')
f646 = Funcionario.find_by_matricula('863092')
f647 = Funcionario.find_by_matricula('857424')
f648 = Funcionario.find_by_matricula('870595')
f650 = Funcionario.find_by_matricula('870102')
f651 = Funcionario.find_by_matricula('853291')
f652 = Funcionario.find_by_matricula('886440')
f653 = Funcionario.find_by_matricula('886149')
f654 = Funcionario.find_by_matricula('855383')
f657 = Funcionario.find_by_matricula('862967')
f658 = Funcionario.find_by_matricula('860549')
f659 = Funcionario.find_by_matricula('861642')
f660 = Funcionario.find_by_matricula('862773')
f661 = Funcionario.find_by_matricula('853208')
f662 = Funcionario.find_by_matricula('866806')
f663 = Funcionario.find_by_matricula('853160')
f665 = Funcionario.find_by_matricula('863017')
f667 = Funcionario.find_by_matricula('854026')
f668 = Funcionario.find_by_matricula('886360')
f669 = Funcionario.find_by_matricula('857297')
f670 = Funcionario.find_by_matricula('862924')
f672 = Funcionario.find_by_matricula('882950')
f673 = Funcionario.find_by_matricula('860557')
f674 = Funcionario.find_by_matricula('857858')
f675 = Funcionario.find_by_matricula('855324')
f676 = Funcionario.find_by_matricula('870641')
f678 = Funcionario.find_by_matricula('870129')
f679 = Funcionario.find_by_matricula('930717')
f680 = Funcionario.find_by_matricula('857122')
f681 = Funcionario.find_by_matricula('907588')
f682 = Funcionario.find_by_matricula('854115')
f683 = Funcionario.find_by_matricula('880175')
f685 = Funcionario.find_by_matricula('866857')
f686 = Funcionario.find_by_matricula('982199')
f688 = Funcionario.find_by_matricula('887820')
f689 = Funcionario.find_by_matricula('870650')
f691 = Funcionario.find_by_matricula('982458')
f692 = Funcionario.find_by_matricula('857084')
f694 = Funcionario.find_by_matricula('650420')
f695 = Funcionario.find_by_matricula('860247')
f696 = Funcionario.find_by_matricula('860069')
f697 = Funcionario.find_by_matricula('865486')
f698 = Funcionario.find_by_matricula('965456')
f699 = Funcionario.find_by_matricula('872121')
f700 = Funcionario.find_by_matricula('891398')
f701 = Funcionario.find_by_matricula('866202')
f702 = Funcionario.find_by_matricula('851450')
f703 = Funcionario.find_by_matricula('852155')
f704 = Funcionario.find_by_matricula('874566')
f706 = Funcionario.find_by_matricula('853399')
f707 = Funcionario.find_by_matricula('860131')
f708 = Funcionario.find_by_matricula('858781')
f709 = Funcionario.find_by_matricula('854450')
f710 = Funcionario.find_by_matricula('935948')
f711 = Funcionario.find_by_matricula('994197')
f713 = Funcionario.find_by_matricula('907421')
f714 = Funcionario.find_by_matricula('854514')
f715 = Funcionario.find_by_matricula('852945')
f716 = Funcionario.find_by_matricula('855774')
f717 = Funcionario.find_by_matricula('899577')
f718 = Funcionario.find_by_matricula('860875')
f719 = Funcionario.find_by_matricula('885045')
f721 = Funcionario.find_by_matricula('885010')
f723 = Funcionario.find_by_matricula('854310')
f724 = Funcionario.find_by_matricula('854476')
f725 = Funcionario.find_by_matricula('855936')
f726 = Funcionario.find_by_matricula('890421')
f727 = Funcionario.find_by_matricula('861308')
f728 = Funcionario.find_by_matricula('863485')
f729 = Funcionario.find_by_matricula('858919')
f730 = Funcionario.find_by_matricula('855278')
f731 = Funcionario.find_by_matricula('886254')
f733 = Funcionario.find_by_matricula('866741')
f735 = Funcionario.find_by_matricula('860212')
f736 = Funcionario.find_by_matricula('855421')
f737 = Funcionario.find_by_matricula('853488')
f739 = Funcionario.find_by_matricula('871214')
f740 = Funcionario.find_by_matricula('866660')
f741 = Funcionario.find_by_matricula('861502')
f742 = Funcionario.find_by_matricula('878219')
f744 = Funcionario.find_by_matricula('860263')
f745 = Funcionario.find_by_matricula('860794')
f746 = Funcionario.find_by_matricula('852163')
f747 = Funcionario.find_by_matricula('887803')
f748 = Funcionario.find_by_matricula('860077')
f749 = Funcionario.find_by_matricula('865290')
f750 = Funcionario.find_by_matricula('858889')
f751 = Funcionario.find_by_matricula('855588')
f752 = Funcionario.find_by_matricula('852198')
f754 = Funcionario.find_by_matricula('859800')
f755 = Funcionario.find_by_matricula('855561')
f756 = Funcionario.find_by_matricula('871508')
f757 = Funcionario.find_by_matricula('856835')
f758 = Funcionario.find_by_matricula('901032')
f759 = Funcionario.find_by_matricula('859842')
f760 = Funcionario.find_by_matricula('994260')
f761 = Funcionario.find_by_matricula('950459')
f762 = Funcionario.find_by_matricula('870226')
f763 = Funcionario.find_by_matricula('887781')
f764 = Funcionario.find_by_matricula('866008')
f766 = Funcionario.find_by_matricula('963267')
f767 = Funcionario.find_by_matricula('982679')
f768 = Funcionario.find_by_matricula('860395')
f769 = Funcionario.find_by_matricula('864919')
f770 = Funcionario.find_by_matricula('866695')
f771 = Funcionario.find_by_matricula('860310')
f772 = Funcionario.find_by_matricula('950475')
f773 = Funcionario.find_by_matricula('859800')
f774 = Funcionario.find_by_matricula('908037')
f775 = Funcionario.find_by_matricula('859869')
f776 = Funcionario.find_by_matricula('887927')
f777 = Funcionario.find_by_matricula('842354')
f778 = Funcionario.find_by_matricula('870714')
f779 = Funcionario.find_by_matricula('860271')
f780 = Funcionario.find_by_matricula('994235')
f781 = Funcionario.find_by_matricula('860140')
f782 = Funcionario.find_by_matricula('868922')
if f1 then f1.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f2 then f2.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f4 then f4.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Francês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f5 then f5.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f6 then f6.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Não definido')) end
if f7 then f7.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f10 then f10.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f11 then f11.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Instrutor'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f12 then f12.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f13 then f13.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f14 then f14.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f15 then f15.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f16 then f16.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f17 then f17.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f18 then f18.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f19 then f19.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f20 then f20.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f21 then f21.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f22 then f22.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f23 then f23.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Santana')) end
if f24 then f24.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f25 then f25.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Calçoene')) end
if f27 then f27.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f28 then f28.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f29 then f29.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f30 then f30.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Serra do Navio')) end
if f31 then f31.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Santana')) end
if f32 then f32.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Santana')) end
if f33 then f33.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f35 then f35.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f36 then f36.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Sociologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f37 then f37.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f38 then f38.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Santana')) end
if f39 then f39.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f40 then f40.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f41 then f41.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Francês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f42 then f42.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f43 then f43.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f44 then f44.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f45 then f45.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f46 then f46.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f48 then f48.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f50 then f50.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ensino Religioso'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f51 then f51.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f52 then f52.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f53 then f53.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f54 then f54.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Calçoene')) end
if f55 then f55.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f56 then f56.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f57 then f57.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f58 then f58.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f59 then f59.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f61 then f61.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f62 then f62.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f63 then f63.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ensino Especial - DA'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f64 then f64.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f65 then f65.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f66 then f66.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f67 then f67.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f68 then f68.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Vitória do Jarí')) end
if f69 then f69.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f70 then f70.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Serra do Navio')) end
if f71 then f71.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f72 then f72.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f73 then f73.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f74 then f74.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f75 then f75.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Química'),:municipio=>Municipio.find_by_nome('Santana')) end
if f76 then f76.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Especialista em Educação'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f77 then f77.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f78 then f78.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f79 then f79.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f80 then f80.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f81 then f81.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f82 then f82.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Literatura'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f83 then f83.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Vitória do Jarí')) end
if f85 then f85.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f86 then f86.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f87 then f87.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f88 then f88.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f89 then f89.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f90 then f90.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f91 then f91.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f93 then f93.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f94 then f94.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f95 then f95.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f96 then f96.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Sociologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f97 then f97.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Santana')) end
if f99 then f99.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f100 then f100.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f101 then f101.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f102 then f102.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f103 then f103.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f105 then f105.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f107 then f107.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f108 then f108.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f109 then f109.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f110 then f110.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f111 then f111.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f112 then f112.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f113 then f113.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f114 then f114.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Química'),:municipio=>Municipio.find_by_nome('Santana')) end
if f115 then f115.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f117 then f117.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f118 then f118.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f119 then f119.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f120 then f120.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f121 then f121.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f122 then f122.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f123 then f123.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f124 then f124.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ensino Religioso'),:municipio=>Municipio.find_by_nome('Santana')) end
if f125 then f125.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Filosofia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f126 then f126.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Filosofia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f127 then f127.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f128 then f128.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f129 then f129.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f130 then f130.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f131 then f131.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f132 then f132.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f133 then f133.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f134 then f134.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f135 then f135.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f136 then f136.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ensino Especial - CT'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f137 then f137.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f138 then f138.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f139 then f139.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f140 then f140.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f141 then f141.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f142 then f142.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f143 then f143.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ensino Especial - DA'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f144 then f144.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f145 then f145.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f146 then f146.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ensino Religioso'),:municipio=>Municipio.find_by_nome('Santana')) end
if f147 then f147.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f149 then f149.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f150 then f150.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f152 then f152.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f153 then f153.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f154 then f154.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Santana')) end
if f155 then f155.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Santana')) end
if f156 then f156.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f157 then f157.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Serra do navio')) end
if f158 then f158.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f159 then f159.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f160 then f160.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f161 then f161.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f162 then f162.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f163 then f163.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f164 then f164.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f165 then f165.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f166 then f166.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Instrutor'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f167 then f167.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f168 then f168.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f169 then f169.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f170 then f170.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f171 then f171.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f172 then f172.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f173 then f173.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f174 then f174.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f175 then f175.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f177 then f177.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f178 then f178.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f179 then f179.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f180 then f180.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f181 then f181.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f183 then f183.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f185 then f185.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Santana')) end
if f187 then f187.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Santana')) end
if f188 then f188.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f189 then f189.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f190 then f190.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Santana')) end
if f191 then f191.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f192 then f192.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Ferreira Gomes')) end
if f194 then f194.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f195 then f195.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f196 then f196.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Santana')) end
if f197 then f197.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f198 then f198.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f199 then f199.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f200 then f200.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f201 then f201.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f202 then f202.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f203 then f203.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f204 then f204.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Francês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f206 then f206.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Serra do Navio')) end
if f207 then f207.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Sociologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f209 then f209.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f210 then f210.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f211 then f211.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f212 then f212.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f213 then f213.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Calçoene')) end
if f214 then f214.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f215 then f215.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f216 then f216.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Calçoene')) end
if f217 then f217.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f218 then f218.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f220 then f220.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f221 then f221.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f222 then f222.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Serra do navio')) end
if f223 then f223.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f224 then f224.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f225 then f225.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f226 then f226.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Santana')) end
if f227 then f227.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f228 then f228.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Santana')) end
if f229 then f229.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f231 then f231.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f232 then f232.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Francês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f233 then f233.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f234 then f234.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f235 then f235.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f236 then f236.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f237 then f237.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f238 then f238.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f239 then f239.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f240 then f240.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f242 then f242.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f243 then f243.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f244 then f244.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f245 then f245.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f246 then f246.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Serra do Navio')) end
if f247 then f247.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Santana')) end
if f248 then f248.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f249 then f249.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f250 then f250.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f252 then f252.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f253 then f253.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f254 then f254.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f255 then f255.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f256 then f256.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f257 then f257.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f258 then f258.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f259 then f259.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Santana')) end
if f260 then f260.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Filosofia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f261 then f261.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f262 then f262.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Especialista em Educação'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f263 then f263.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f264 then f264.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f265 then f265.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f266 then f266.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f268 then f268.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f269 then f269.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f270 then f270.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f271 then f271.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f272 then f272.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f273 then f273.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f274 then f274.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f275 then f275.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f276 then f276.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f277 then f277.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f278 then f278.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f279 then f279.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Santana')) end
if f281 then f281.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f282 then f282.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f283 then f283.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f284 then f284.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Francês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f286 then f286.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f287 then f287.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f288 then f288.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f289 then f289.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Francês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f290 then f290.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f291 then f291.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f292 then f292.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f293 then f293.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f294 then f294.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f295 then f295.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Serra do Navio')) end
if f296 then f296.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f297 then f297.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f299 then f299.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f301 then f301.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f302 then f302.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f303 then f303.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f304 then f304.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f306 then f306.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f307 then f307.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f308 then f308.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f309 then f309.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Santana')) end
if f310 then f310.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f311 then f311.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f312 then f312.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f313 then f313.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f314 then f314.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f315 then f315.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f316 then f316.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f317 then f317.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Instrutor'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f318 then f318.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f319 then f319.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Santana')) end
if f320 then f320.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f321 then f321.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f322 then f322.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f323 then f323.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Calçoene')) end
if f324 then f324.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Vitória do Jarí')) end
if f325 then f325.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f326 then f326.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f328 then f328.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f329 then f329.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f330 then f330.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f332 then f332.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f333 then f333.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f334 then f334.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f335 then f335.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f336 then f336.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f337 then f337.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f338 then f338.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Calçoene')) end
if f339 then f339.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f340 then f340.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f341 then f341.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f342 then f342.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f343 then f343.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f344 then f344.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f346 then f346.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f347 then f347.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f348 then f348.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f349 then f349.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f350 then f350.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f351 then f351.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Santana')) end
if f352 then f352.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f353 then f353.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f354 then f354.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f355 then f355.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f356 then f356.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Calçoene')) end
if f358 then f358.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f359 then f359.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f360 then f360.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f361 then f361.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Instrutor'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f362 then f362.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f363 then f363.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f364 then f364.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f365 then f365.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f366 then f366.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Santana')) end
if f367 then f367.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f368 then f368.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f369 then f369.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f370 then f370.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ensino Religioso'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f371 then f371.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f374 then f374.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f375 then f375.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Vitória do Jarí')) end
if f376 then f376.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f377 then f377.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f378 then f378.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f380 then f380.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f381 then f381.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f382 then f382.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f383 then f383.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f385 then f385.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f386 then f386.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f387 then f387.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f388 then f388.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f389 then f389.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Calçoene')) end
if f390 then f390.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f391 then f391.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Santana')) end
if f396 then f396.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f397 then f397.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f398 then f398.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f399 then f399.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Santana')) end
if f400 then f400.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Santana')) end
if f401 then f401.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f402 then f402.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Química'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f403 then f403.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f404 then f404.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f405 then f405.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Santana')) end
if f408 then f408.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f409 then f409.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f412 then f412.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f413 then f413.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f415 then f415.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f416 then f416.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Santana')) end
if f417 then f417.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f418 then f418.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f419 then f419.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f420 then f420.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f421 then f421.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f422 then f422.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f424 then f424.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f425 then f425.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f426 then f426.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f427 then f427.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f428 then f428.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f429 then f429.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f430 then f430.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f431 then f431.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f435 then f435.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f436 then f436.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f437 then f437.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Música'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f438 then f438.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f439 then f439.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f440 then f440.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f441 then f441.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f442 then f442.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f443 then f443.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f444 then f444.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f445 then f445.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f446 then f446.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f447 then f447.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f448 then f448.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f449 then f449.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f450 then f450.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f451 then f451.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f452 then f452.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f453 then f453.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f454 then f454.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f455 then f455.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f456 then f456.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f457 then f457.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f458 then f458.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f459 then f459.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f461 then f461.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f462 then f462.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f464 then f464.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f465 then f465.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f467 then f467.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f469 then f469.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Santana')) end
if f470 then f470.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ensino Religioso'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f473 then f473.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f474 then f474.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Francês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f476 then f476.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Santana')) end
if f478 then f478.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f479 then f479.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f480 then f480.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f482 then f482.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f485 then f485.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f486 then f486.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Literatura'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f487 then f487.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f488 then f488.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f489 then f489.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f490 then f490.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f491 then f491.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Francês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f492 then f492.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f493 then f493.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('BIOLOGIA'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f494 then f494.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Especialista em Educação'),:municipio=>Municipio.find_by_nome('CALÇOENE')) end
if f495 then f495.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Química'),:municipio=>Municipio.find_by_nome('Santana')) end
if f497 then f497.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f498 then f498.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f499 then f499.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f500 then f500.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f501 then f501.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f502 then f502.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f503 then f503.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f504 then f504.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f505 then f505.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f506 then f506.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f507 then f507.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Francês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f508 then f508.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f509 then f509.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f510 then f510.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f511 then f511.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f512 then f512.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f513 then f513.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f514 then f514.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f516 then f516.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Santana')) end
if f517 then f517.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f518 then f518.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f520 then f520.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f522 then f522.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f523 then f523.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f524 then f524.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Química'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f525 then f525.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f526 then f526.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f527 then f527.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f528 then f528.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Calçoene')) end
if f529 then f529.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f530 then f530.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f531 then f531.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f532 then f532.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f533 then f533.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f534 then f534.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f535 then f535.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f536 then f536.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Sociologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f537 then f537.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f538 then f538.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f539 then f539.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f540 then f540.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Sociologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f541 then f541.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Santana')) end
if f542 then f542.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Serra do Navio')) end
if f543 then f543.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f544 then f544.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f545 then f545.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f546 then f546.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f547 then f547.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f549 then f549.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f550 then f550.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f551 then f551.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f553 then f553.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f554 then f554.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Sociologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f555 then f555.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f556 then f556.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f557 then f557.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f558 then f558.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f559 then f559.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f560 then f560.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f561 then f561.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f562 then f562.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f563 then f563.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f565 then f565.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Vitória do Jarí')) end
if f566 then f566.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f567 then f567.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f568 then f568.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f569 then f569.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Química'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f570 then f570.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f571 then f571.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f572 then f572.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f573 then f573.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f574 then f574.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f575 then f575.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f576 then f576.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f577 then f577.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f578 then f578.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f580 then f580.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f581 then f581.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f582 then f582.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f583 then f583.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f585 then f585.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f586 then f586.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Vitória do Jarí')) end
if f587 then f587.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f588 then f588.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f589 then f589.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f590 then f590.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('BIOLOGIA'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f591 then f591.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f592 then f592.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f594 then f594.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Vitória do Jarí')) end
if f595 then f595.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f596 then f596.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f597 then f597.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f598 then f598.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f599 then f599.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f600 then f600.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f601 then f601.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Vitória do Jarí')) end
if f602 then f602.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f603 then f603.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f604 then f604.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f605 then f605.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f606 then f606.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Serra do Navio')) end
if f608 then f608.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('BIOLOGIA'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f609 then f609.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f610 then f610.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f611 then f611.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f612 then f612.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f613 then f613.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Santana')) end
if f615 then f615.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f616 then f616.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f617 then f617.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ensino Religioso'),:municipio=>Municipio.find_by_nome('Santana')) end
if f618 then f618.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f619 then f619.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f620 then f620.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f622 then f622.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f624 then f624.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f625 then f625.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f626 then f626.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Química'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f627 then f627.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f628 then f628.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f629 then f629.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f630 then f630.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Santana')) end
if f631 then f631.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f632 then f632.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f633 then f633.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Química'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f634 then f634.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f635 then f635.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f636 then f636.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Psicologia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f637 then f637.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f638 then f638.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f639 then f639.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f640 then f640.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Sociologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f641 then f641.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f642 then f642.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Porto Grande')) end
if f643 then f643.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f645 then f645.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f646 then f646.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f647 then f647.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f648 then f648.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f650 then f650.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f651 then f651.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f652 then f652.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f653 then f653.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f654 then f654.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f657 then f657.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f658 then f658.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f659 then f659.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f660 then f660.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f661 then f661.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Vitória do Jarí')) end
if f662 then f662.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Santana')) end
if f663 then f663.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f665 then f665.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f667 then f667.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f668 then f668.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f669 then f669.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f670 then f670.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f672 then f672.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f673 then f673.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f674 then f674.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Santana')) end
if f675 then f675.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f676 then f676.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f678 then f678.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f679 then f679.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f680 then f680.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f681 then f681.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f682 then f682.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f683 then f683.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f685 then f685.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Santana')) end
if f686 then f686.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f688 then f688.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f689 then f689.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f691 then f691.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f692 then f692.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f694 then f694.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Literatura'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f695 then f695.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f696 then f696.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f697 then f697.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f698 then f698.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f699 then f699.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f700 then f700.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f701 then f701.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Francês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f702 then f702.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f703 then f703.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Santana')) end
if f704 then f704.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f706 then f706.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f707 then f707.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Itaubal')) end
if f708 then f708.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f709 then f709.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f710 then f710.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f711 then f711.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f713 then f713.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('BIOLOGIA'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f714 then f714.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f715 then f715.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('CALÇOENE')) end
if f716 then f716.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f717 then f717.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f718 then f718.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f719 then f719.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f721 then f721.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f723 then f723.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f724 then f724.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Literatura'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f725 then f725.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f726 then f726.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Santana')) end
if f727 then f727.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f728 then f728.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f729 then f729.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Artes'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f730 then f730.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f731 then f731.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f733 then f733.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Francês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f735 then f735.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f736 then f736.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Mazagão')) end
if f737 then f737.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Ferreira Gomes')) end
if f739 then f739.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f740 then f740.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Biologia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f741 then f741.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f742 then f742.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f744 then f744.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f745 then f745.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f746 then f746.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Santana')) end
if f747 then f747.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Psicologia'),:municipio=>Municipio.find_by_nome('Santana')) end
if f748 then f748.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Laranjal do Jari')) end
if f749 then f749.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f750 then f750.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f751 then f751.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pracuúba')) end
if f752 then f752.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Matemática'),:municipio=>Municipio.find_by_nome('Santana')) end
if f754 then f754.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f755 then f755.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f756 then f756.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('BIOLOGIA'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f757 then f757.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Cutias')) end
if f758 then f758.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Instrutor'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f759 then f759.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f760 then f760.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f761 then f761.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f762 then f762.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Geografia'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f763 then f763.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Santana')) end
if f764 then f764.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f766 then f766.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f767 then f767.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Educação Física'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f768 then f768.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f769 then f769.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Tartarugualzinho')) end
if f770 then f770.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f771 then f771.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Amapá')) end
if f772 then f772.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f773 then f773.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Química'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f774 then f774.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Oiapoque')) end
if f775 then f775.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Pedra Branca do Amapari')) end
if f776 then f776.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f777 then f777.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Ciências'),:municipio=>Municipio.find_by_nome('Mazagão')) end	
if f778 then f778.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f779 then f779.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Estrangeira - Inglês'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f780 then f780.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('História'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f781 then f781.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('1 à 4 series'),:municipio=>Municipio.find_by_nome('Macapá')) end
if f782 then f782.update_attributes(:disciplina_contratacao=>DisciplinaContratacao.find_by_nome('Língua Portuguesa'),:municipio=>Municipio.find_by_nome('Macapá')) end


  end

  def self.down
  end
end

