function [trainedClassifier, validationAccuracy] = trainClassifier(datasetTable)
% Convert input to table
datasetTable = table(datasetTable);
datasetTable.Properties.VariableNames = {'column'};
% Split matrices in the input table into vectors
datasetTable.column_1 = datasetTable.column(:,1);
datasetTable.column_2 = datasetTable.column(:,2);
datasetTable.column_3 = datasetTable.column(:,3);
datasetTable.column_4 = datasetTable.column(:,4);
datasetTable.column_5 = datasetTable.column(:,5);
datasetTable.column_6 = datasetTable.column(:,6);
datasetTable.column_7 = datasetTable.column(:,7);
datasetTable.column_8 = datasetTable.column(:,8);
datasetTable.column_9 = datasetTable.column(:,9);
datasetTable.column_10 = datasetTable.column(:,10);
datasetTable.column_11 = datasetTable.column(:,11);
datasetTable.column_12 = datasetTable.column(:,12);
datasetTable.column_13 = datasetTable.column(:,13);
datasetTable.column_14 = datasetTable.column(:,14);
datasetTable.column_15 = datasetTable.column(:,15);
datasetTable.column_16 = datasetTable.column(:,16);
datasetTable.column_17 = datasetTable.column(:,17);
datasetTable.column_18 = datasetTable.column(:,18);
datasetTable.column_19 = datasetTable.column(:,19);
datasetTable.column_20 = datasetTable.column(:,20);
datasetTable.column_21 = datasetTable.column(:,21);
datasetTable.column_22 = datasetTable.column(:,22);
datasetTable.column_23 = datasetTable.column(:,23);
datasetTable.column_24 = datasetTable.column(:,24);
datasetTable.column_25 = datasetTable.column(:,25);
datasetTable.column_26 = datasetTable.column(:,26);
datasetTable.column_27 = datasetTable.column(:,27);
datasetTable.column_28 = datasetTable.column(:,28);
datasetTable.column_29 = datasetTable.column(:,29);
datasetTable.column_30 = datasetTable.column(:,30);
datasetTable.column_31 = datasetTable.column(:,31);
datasetTable.column_32 = datasetTable.column(:,32);
datasetTable.column_33 = datasetTable.column(:,33);
datasetTable.column_34 = datasetTable.column(:,34);
datasetTable.column_35 = datasetTable.column(:,35);
datasetTable.column_36 = datasetTable.column(:,36);
datasetTable.column_37 = datasetTable.column(:,37);
datasetTable.column_38 = datasetTable.column(:,38);
datasetTable.column_39 = datasetTable.column(:,39);
datasetTable.column_40 = datasetTable.column(:,40);
datasetTable.column_41 = datasetTable.column(:,41);
datasetTable.column_42 = datasetTable.column(:,42);
datasetTable.column_43 = datasetTable.column(:,43);
datasetTable.column_44 = datasetTable.column(:,44);
datasetTable.column_45 = datasetTable.column(:,45);
datasetTable.column_46 = datasetTable.column(:,46);
datasetTable.column_47 = datasetTable.column(:,47);
datasetTable.column_48 = datasetTable.column(:,48);
datasetTable.column_49 = datasetTable.column(:,49);
datasetTable.column_50 = datasetTable.column(:,50);
datasetTable.column_51 = datasetTable.column(:,51);
datasetTable.column_52 = datasetTable.column(:,52);
datasetTable.column_53 = datasetTable.column(:,53);
datasetTable.column_54 = datasetTable.column(:,54);
datasetTable.column_55 = datasetTable.column(:,55);
datasetTable.column_56 = datasetTable.column(:,56);
datasetTable.column_57 = datasetTable.column(:,57);
datasetTable.column_58 = datasetTable.column(:,58);
datasetTable.column_59 = datasetTable.column(:,59);
datasetTable.column_60 = datasetTable.column(:,60);
datasetTable.column_61 = datasetTable.column(:,61);
datasetTable.column_62 = datasetTable.column(:,62);
datasetTable.column_63 = datasetTable.column(:,63);
datasetTable.column_64 = datasetTable.column(:,64);
datasetTable.column_65 = datasetTable.column(:,65);
datasetTable.column_66 = datasetTable.column(:,66);
datasetTable.column_67 = datasetTable.column(:,67);
datasetTable.column_68 = datasetTable.column(:,68);
datasetTable.column_69 = datasetTable.column(:,69);
datasetTable.column_70 = datasetTable.column(:,70);
datasetTable.column_71 = datasetTable.column(:,71);
datasetTable.column_72 = datasetTable.column(:,72);
datasetTable.column_73 = datasetTable.column(:,73);
datasetTable.column_74 = datasetTable.column(:,74);
datasetTable.column_75 = datasetTable.column(:,75);
datasetTable.column_76 = datasetTable.column(:,76);
datasetTable.column_77 = datasetTable.column(:,77);
datasetTable.column_78 = datasetTable.column(:,78);
datasetTable.column_79 = datasetTable.column(:,79);
datasetTable.column_80 = datasetTable.column(:,80);
datasetTable.column_81 = datasetTable.column(:,81);
datasetTable.column_82 = datasetTable.column(:,82);
datasetTable.column_83 = datasetTable.column(:,83);
datasetTable.column_84 = datasetTable.column(:,84);
datasetTable.column_85 = datasetTable.column(:,85);
datasetTable.column_86 = datasetTable.column(:,86);
datasetTable.column_87 = datasetTable.column(:,87);
datasetTable.column_88 = datasetTable.column(:,88);
datasetTable.column_89 = datasetTable.column(:,89);
datasetTable.column_90 = datasetTable.column(:,90);
datasetTable.column_91 = datasetTable.column(:,91);
datasetTable.column_92 = datasetTable.column(:,92);
datasetTable.column_93 = datasetTable.column(:,93);
datasetTable.column_94 = datasetTable.column(:,94);
datasetTable.column_95 = datasetTable.column(:,95);
datasetTable.column_96 = datasetTable.column(:,96);
datasetTable.column_97 = datasetTable.column(:,97);
datasetTable.column_98 = datasetTable.column(:,98);
datasetTable.column_99 = datasetTable.column(:,99);
datasetTable.column_100 = datasetTable.column(:,100);
datasetTable.column_101 = datasetTable.column(:,101);
datasetTable.column_102 = datasetTable.column(:,102);
datasetTable.column_103 = datasetTable.column(:,103);
datasetTable.column_104 = datasetTable.column(:,104);
datasetTable.column_105 = datasetTable.column(:,105);
datasetTable.column_106 = datasetTable.column(:,106);
datasetTable.column_107 = datasetTable.column(:,107);
datasetTable.column_108 = datasetTable.column(:,108);
datasetTable.column_109 = datasetTable.column(:,109);
datasetTable.column_110 = datasetTable.column(:,110);
datasetTable.column_111 = datasetTable.column(:,111);
datasetTable.column_112 = datasetTable.column(:,112);
datasetTable.column_113 = datasetTable.column(:,113);
datasetTable.column_114 = datasetTable.column(:,114);
datasetTable.column_115 = datasetTable.column(:,115);
datasetTable.column_116 = datasetTable.column(:,116);
datasetTable.column_117 = datasetTable.column(:,117);
datasetTable.column_118 = datasetTable.column(:,118);
datasetTable.column_119 = datasetTable.column(:,119);
datasetTable.column_120 = datasetTable.column(:,120);
datasetTable.column_121 = datasetTable.column(:,121);
datasetTable.column_122 = datasetTable.column(:,122);
datasetTable.column_123 = datasetTable.column(:,123);
datasetTable.column_124 = datasetTable.column(:,124);
datasetTable.column_125 = datasetTable.column(:,125);
datasetTable.column_126 = datasetTable.column(:,126);
datasetTable.column_127 = datasetTable.column(:,127);
datasetTable.column_128 = datasetTable.column(:,128);
datasetTable.column_129 = datasetTable.column(:,129);
datasetTable.column_130 = datasetTable.column(:,130);
datasetTable.column_131 = datasetTable.column(:,131);
datasetTable.column_132 = datasetTable.column(:,132);
datasetTable.column_133 = datasetTable.column(:,133);
datasetTable.column_134 = datasetTable.column(:,134);
datasetTable.column_135 = datasetTable.column(:,135);
datasetTable.column_136 = datasetTable.column(:,136);
datasetTable.column_137 = datasetTable.column(:,137);
datasetTable.column_138 = datasetTable.column(:,138);
datasetTable.column_139 = datasetTable.column(:,139);
datasetTable.column_140 = datasetTable.column(:,140);
datasetTable.column_141 = datasetTable.column(:,141);
datasetTable.column_142 = datasetTable.column(:,142);
datasetTable.column_143 = datasetTable.column(:,143);
datasetTable.column_144 = datasetTable.column(:,144);
datasetTable.column_145 = datasetTable.column(:,145);
datasetTable.column_146 = datasetTable.column(:,146);
datasetTable.column_147 = datasetTable.column(:,147);
datasetTable.column_148 = datasetTable.column(:,148);
datasetTable.column_149 = datasetTable.column(:,149);
datasetTable.column_150 = datasetTable.column(:,150);
datasetTable.column_151 = datasetTable.column(:,151);
datasetTable.column_152 = datasetTable.column(:,152);
datasetTable.column_153 = datasetTable.column(:,153);
datasetTable.column_154 = datasetTable.column(:,154);
datasetTable.column_155 = datasetTable.column(:,155);
datasetTable.column_156 = datasetTable.column(:,156);
datasetTable.column_157 = datasetTable.column(:,157);
datasetTable.column_158 = datasetTable.column(:,158);
datasetTable.column_159 = datasetTable.column(:,159);
datasetTable.column_160 = datasetTable.column(:,160);
datasetTable.column_161 = datasetTable.column(:,161);
datasetTable.column_162 = datasetTable.column(:,162);
datasetTable.column_163 = datasetTable.column(:,163);
datasetTable.column_164 = datasetTable.column(:,164);
datasetTable.column_165 = datasetTable.column(:,165);
datasetTable.column_166 = datasetTable.column(:,166);
datasetTable.column_167 = datasetTable.column(:,167);
datasetTable.column_168 = datasetTable.column(:,168);
datasetTable.column_169 = datasetTable.column(:,169);
datasetTable.column_170 = datasetTable.column(:,170);
datasetTable.column_171 = datasetTable.column(:,171);
datasetTable.column_172 = datasetTable.column(:,172);
datasetTable.column_173 = datasetTable.column(:,173);
datasetTable.column_174 = datasetTable.column(:,174);
datasetTable.column_175 = datasetTable.column(:,175);
datasetTable.column_176 = datasetTable.column(:,176);
datasetTable.column_177 = datasetTable.column(:,177);
datasetTable.column_178 = datasetTable.column(:,178);
datasetTable.column_179 = datasetTable.column(:,179);
datasetTable.column_180 = datasetTable.column(:,180);
datasetTable.column_181 = datasetTable.column(:,181);
datasetTable.column_182 = datasetTable.column(:,182);
datasetTable.column_183 = datasetTable.column(:,183);
datasetTable.column_184 = datasetTable.column(:,184);
datasetTable.column_185 = datasetTable.column(:,185);
datasetTable.column_186 = datasetTable.column(:,186);
datasetTable.column_187 = datasetTable.column(:,187);
datasetTable.column_188 = datasetTable.column(:,188);
datasetTable.column_189 = datasetTable.column(:,189);
datasetTable.column_190 = datasetTable.column(:,190);
datasetTable.column_191 = datasetTable.column(:,191);
datasetTable.column_192 = datasetTable.column(:,192);
datasetTable.column_193 = datasetTable.column(:,193);
datasetTable.column_194 = datasetTable.column(:,194);
datasetTable.column_195 = datasetTable.column(:,195);
datasetTable.column_196 = datasetTable.column(:,196);
datasetTable.column_197 = datasetTable.column(:,197);
datasetTable.column_198 = datasetTable.column(:,198);
datasetTable.column_199 = datasetTable.column(:,199);
datasetTable.column_200 = datasetTable.column(:,200);
datasetTable.column_201 = datasetTable.column(:,201);
datasetTable.column_202 = datasetTable.column(:,202);
datasetTable.column_203 = datasetTable.column(:,203);
datasetTable.column_204 = datasetTable.column(:,204);
datasetTable.column_205 = datasetTable.column(:,205);
datasetTable.column_206 = datasetTable.column(:,206);
datasetTable.column_207 = datasetTable.column(:,207);
datasetTable.column_208 = datasetTable.column(:,208);
datasetTable.column_209 = datasetTable.column(:,209);
datasetTable.column_210 = datasetTable.column(:,210);
datasetTable.column_211 = datasetTable.column(:,211);
datasetTable.column_212 = datasetTable.column(:,212);
datasetTable.column_213 = datasetTable.column(:,213);
datasetTable.column_214 = datasetTable.column(:,214);
datasetTable.column_215 = datasetTable.column(:,215);
datasetTable.column_216 = datasetTable.column(:,216);
datasetTable.column_217 = datasetTable.column(:,217);
datasetTable.column_218 = datasetTable.column(:,218);
datasetTable.column_219 = datasetTable.column(:,219);
datasetTable.column_220 = datasetTable.column(:,220);
datasetTable.column_221 = datasetTable.column(:,221);
datasetTable.column_222 = datasetTable.column(:,222);
datasetTable.column_223 = datasetTable.column(:,223);
datasetTable.column_224 = datasetTable.column(:,224);
datasetTable.column_225 = datasetTable.column(:,225);
datasetTable.column_226 = datasetTable.column(:,226);
datasetTable.column_227 = datasetTable.column(:,227);
datasetTable.column_228 = datasetTable.column(:,228);
datasetTable.column_229 = datasetTable.column(:,229);
datasetTable.column_230 = datasetTable.column(:,230);
datasetTable.column_231 = datasetTable.column(:,231);
datasetTable.column_232 = datasetTable.column(:,232);
datasetTable.column_233 = datasetTable.column(:,233);
datasetTable.column_234 = datasetTable.column(:,234);
datasetTable.column_235 = datasetTable.column(:,235);
datasetTable.column_236 = datasetTable.column(:,236);
datasetTable.column_237 = datasetTable.column(:,237);
datasetTable.column_238 = datasetTable.column(:,238);
datasetTable.column_239 = datasetTable.column(:,239);
datasetTable.column_240 = datasetTable.column(:,240);
datasetTable.column_241 = datasetTable.column(:,241);
datasetTable.column_242 = datasetTable.column(:,242);
datasetTable.column_243 = datasetTable.column(:,243);
datasetTable.column_244 = datasetTable.column(:,244);
datasetTable.column_245 = datasetTable.column(:,245);
datasetTable.column_246 = datasetTable.column(:,246);
datasetTable.column_247 = datasetTable.column(:,247);
datasetTable.column_248 = datasetTable.column(:,248);
datasetTable.column_249 = datasetTable.column(:,249);
datasetTable.column_250 = datasetTable.column(:,250);
datasetTable.column_251 = datasetTable.column(:,251);
datasetTable.column_252 = datasetTable.column(:,252);
datasetTable.column_253 = datasetTable.column(:,253);
datasetTable.column_254 = datasetTable.column(:,254);
datasetTable.column_255 = datasetTable.column(:,255);
datasetTable.column_256 = datasetTable.column(:,256);
datasetTable.column_257 = datasetTable.column(:,257);
datasetTable.column_258 = datasetTable.column(:,258);
datasetTable.column_259 = datasetTable.column(:,259);
datasetTable.column_260 = datasetTable.column(:,260);
datasetTable.column_261 = datasetTable.column(:,261);
datasetTable.column_262 = datasetTable.column(:,262);
datasetTable.column_263 = datasetTable.column(:,263);
datasetTable.column_264 = datasetTable.column(:,264);
datasetTable.column_265 = datasetTable.column(:,265);
datasetTable.column_266 = datasetTable.column(:,266);
datasetTable.column_267 = datasetTable.column(:,267);
datasetTable.column_268 = datasetTable.column(:,268);
datasetTable.column_269 = datasetTable.column(:,269);
datasetTable.column_270 = datasetTable.column(:,270);
datasetTable.column_271 = datasetTable.column(:,271);
datasetTable.column_272 = datasetTable.column(:,272);
datasetTable.column_273 = datasetTable.column(:,273);
datasetTable.column_274 = datasetTable.column(:,274);
datasetTable.column_275 = datasetTable.column(:,275);
datasetTable.column_276 = datasetTable.column(:,276);
datasetTable.column_277 = datasetTable.column(:,277);
datasetTable.column_278 = datasetTable.column(:,278);
datasetTable.column_279 = datasetTable.column(:,279);
datasetTable.column_280 = datasetTable.column(:,280);
datasetTable.column_281 = datasetTable.column(:,281);
datasetTable.column_282 = datasetTable.column(:,282);
datasetTable.column_283 = datasetTable.column(:,283);
datasetTable.column_284 = datasetTable.column(:,284);
datasetTable.column_285 = datasetTable.column(:,285);
datasetTable.column_286 = datasetTable.column(:,286);
datasetTable.column_287 = datasetTable.column(:,287);
datasetTable.column_288 = datasetTable.column(:,288);
datasetTable.column_289 = datasetTable.column(:,289);
datasetTable.column_290 = datasetTable.column(:,290);
datasetTable.column_291 = datasetTable.column(:,291);
datasetTable.column_292 = datasetTable.column(:,292);
datasetTable.column_293 = datasetTable.column(:,293);
datasetTable.column_294 = datasetTable.column(:,294);
datasetTable.column_295 = datasetTable.column(:,295);
datasetTable.column_296 = datasetTable.column(:,296);
datasetTable.column_297 = datasetTable.column(:,297);
datasetTable.column_298 = datasetTable.column(:,298);
datasetTable.column_299 = datasetTable.column(:,299);
datasetTable.column_300 = datasetTable.column(:,300);
datasetTable.column_301 = datasetTable.column(:,301);
datasetTable.column_302 = datasetTable.column(:,302);
datasetTable.column_303 = datasetTable.column(:,303);
datasetTable.column_304 = datasetTable.column(:,304);
datasetTable.column_305 = datasetTable.column(:,305);
datasetTable.column_306 = datasetTable.column(:,306);
datasetTable.column_307 = datasetTable.column(:,307);
datasetTable.column_308 = datasetTable.column(:,308);
datasetTable.column_309 = datasetTable.column(:,309);
datasetTable.column_310 = datasetTable.column(:,310);
datasetTable.column_311 = datasetTable.column(:,311);
datasetTable.column_312 = datasetTable.column(:,312);
datasetTable.column_313 = datasetTable.column(:,313);
datasetTable.column_314 = datasetTable.column(:,314);
datasetTable.column_315 = datasetTable.column(:,315);
datasetTable.column_316 = datasetTable.column(:,316);
datasetTable.column_317 = datasetTable.column(:,317);
datasetTable.column_318 = datasetTable.column(:,318);
datasetTable.column_319 = datasetTable.column(:,319);
datasetTable.column_320 = datasetTable.column(:,320);
datasetTable.column_321 = datasetTable.column(:,321);
datasetTable.column_322 = datasetTable.column(:,322);
datasetTable.column_323 = datasetTable.column(:,323);
datasetTable.column_324 = datasetTable.column(:,324);
datasetTable.column_325 = datasetTable.column(:,325);
datasetTable.column_326 = datasetTable.column(:,326);
datasetTable.column_327 = datasetTable.column(:,327);
datasetTable.column_328 = datasetTable.column(:,328);
datasetTable.column_329 = datasetTable.column(:,329);
datasetTable.column_330 = datasetTable.column(:,330);
datasetTable.column_331 = datasetTable.column(:,331);
datasetTable.column_332 = datasetTable.column(:,332);
datasetTable.column_333 = datasetTable.column(:,333);
datasetTable.column_334 = datasetTable.column(:,334);
datasetTable.column_335 = datasetTable.column(:,335);
datasetTable.column_336 = datasetTable.column(:,336);
datasetTable.column_337 = datasetTable.column(:,337);
datasetTable.column_338 = datasetTable.column(:,338);
datasetTable.column_339 = datasetTable.column(:,339);
datasetTable.column_340 = datasetTable.column(:,340);
datasetTable.column_341 = datasetTable.column(:,341);
datasetTable.column_342 = datasetTable.column(:,342);
datasetTable.column_343 = datasetTable.column(:,343);
datasetTable.column_344 = datasetTable.column(:,344);
datasetTable.column_345 = datasetTable.column(:,345);
datasetTable.column_346 = datasetTable.column(:,346);
datasetTable.column_347 = datasetTable.column(:,347);
datasetTable.column_348 = datasetTable.column(:,348);
datasetTable.column_349 = datasetTable.column(:,349);
datasetTable.column_350 = datasetTable.column(:,350);
datasetTable.column = [];
% Extract predictors and response
predictorNames = {'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12', 'column_13', 'column_14', 'column_15', 'column_16', 'column_17', 'column_18', 'column_19', 'column_20', 'column_21', 'column_22', 'column_23', 'column_24', 'column_25', 'column_26', 'column_27', 'column_28', 'column_29', 'column_30', 'column_31', 'column_32', 'column_33', 'column_34', 'column_35', 'column_36', 'column_37', 'column_38', 'column_39', 'column_40', 'column_41', 'column_42', 'column_43', 'column_44', 'column_45', 'column_46', 'column_47', 'column_48', 'column_49', 'column_50', 'column_51', 'column_52', 'column_53', 'column_54', 'column_55', 'column_56', 'column_57', 'column_58', 'column_59', 'column_60', 'column_61', 'column_62', 'column_63', 'column_64', 'column_65', 'column_66', 'column_67', 'column_68', 'column_69', 'column_70', 'column_71', 'column_72', 'column_73', 'column_74', 'column_75', 'column_76', 'column_77', 'column_78', 'column_79', 'column_80', 'column_81', 'column_82', 'column_83', 'column_84', 'column_85', 'column_86', 'column_87', 'column_88', 'column_89', 'column_90', 'column_91', 'column_92', 'column_93', 'column_94', 'column_95', 'column_96', 'column_97', 'column_98', 'column_99', 'column_100', 'column_101', 'column_102', 'column_103', 'column_104', 'column_105', 'column_106', 'column_107', 'column_108', 'column_109', 'column_110', 'column_111', 'column_112', 'column_113', 'column_114', 'column_115', 'column_116', 'column_117', 'column_118', 'column_119', 'column_120', 'column_121', 'column_122', 'column_123', 'column_124', 'column_125', 'column_126', 'column_127', 'column_128', 'column_129', 'column_130', 'column_131', 'column_132', 'column_133', 'column_134', 'column_135', 'column_136', 'column_137', 'column_138', 'column_139', 'column_140', 'column_141', 'column_142', 'column_143', 'column_144', 'column_145', 'column_146', 'column_147', 'column_148', 'column_149', 'column_150', 'column_151', 'column_152', 'column_153', 'column_154', 'column_155', 'column_156', 'column_157', 'column_158', 'column_159', 'column_160', 'column_161', 'column_162', 'column_163', 'column_164', 'column_165', 'column_166', 'column_167', 'column_168', 'column_169', 'column_170', 'column_171', 'column_172', 'column_173', 'column_174', 'column_175', 'column_176', 'column_177', 'column_178', 'column_179', 'column_180', 'column_181', 'column_182', 'column_183', 'column_184', 'column_185', 'column_186', 'column_187', 'column_188', 'column_189', 'column_190', 'column_191', 'column_192', 'column_193', 'column_194', 'column_195', 'column_196', 'column_197', 'column_198', 'column_199', 'column_200', 'column_201', 'column_202', 'column_203', 'column_204', 'column_205', 'column_206', 'column_207', 'column_208', 'column_209', 'column_210', 'column_211', 'column_212', 'column_213', 'column_214', 'column_215', 'column_216', 'column_217', 'column_218', 'column_219', 'column_220', 'column_221', 'column_222', 'column_223', 'column_224', 'column_225', 'column_226', 'column_227', 'column_228', 'column_229', 'column_230', 'column_231', 'column_232', 'column_233', 'column_234', 'column_235', 'column_236', 'column_237', 'column_238', 'column_239', 'column_240', 'column_241', 'column_242', 'column_243', 'column_244', 'column_245', 'column_246', 'column_247', 'column_248', 'column_249', 'column_250', 'column_251', 'column_252', 'column_253', 'column_254', 'column_255', 'column_256', 'column_257', 'column_258', 'column_259', 'column_260', 'column_261', 'column_262', 'column_263', 'column_264', 'column_265', 'column_266', 'column_267', 'column_268', 'column_269', 'column_270', 'column_271', 'column_272', 'column_273', 'column_274', 'column_275', 'column_276', 'column_277', 'column_278', 'column_279', 'column_280', 'column_281', 'column_282', 'column_283', 'column_284', 'column_285', 'column_286', 'column_287', 'column_288', 'column_289', 'column_290', 'column_291', 'column_292', 'column_293', 'column_294', 'column_295', 'column_296', 'column_297', 'column_298', 'column_299', 'column_300', 'column_301', 'column_302', 'column_303', 'column_304', 'column_305', 'column_306', 'column_307', 'column_308', 'column_309', 'column_310', 'column_311', 'column_312', 'column_313', 'column_314', 'column_315', 'column_316', 'column_317', 'column_318', 'column_319', 'column_320', 'column_321', 'column_322', 'column_323', 'column_324', 'column_325', 'column_326', 'column_327', 'column_328', 'column_329', 'column_330', 'column_331', 'column_332', 'column_333', 'column_334', 'column_335', 'column_336', 'column_337', 'column_338', 'column_339', 'column_340', 'column_341', 'column_342', 'column_343', 'column_344', 'column_345', 'column_346', 'column_347', 'column_348', 'column_349', 'column_350'};
predictors = datasetTable(:,predictorNames);
predictors = table2array(varfun(@double, predictors));
response = datasetTable.column_1;
% Train a classifier
trainedClassifier = fitcsvm(predictors, response, 'KernelFunction', 'linear', 'PolynomialOrder', [], 'KernelScale', 'auto', 'BoxConstraint', 1, 'Standardize', 1, 'PredictorNames', {'column_2' 'column_3' 'column_4' 'column_5' 'column_6' 'column_7' 'column_8' 'column_9' 'column_10' 'column_11' 'column_12' 'column_13' 'column_14' 'column_15' 'column_16' 'column_17' 'column_18' 'column_19' 'column_20' 'column_21' 'column_22' 'column_23' 'column_24' 'column_25' 'column_26' 'column_27' 'column_28' 'column_29' 'column_30' 'column_31' 'column_32' 'column_33' 'column_34' 'column_35' 'column_36' 'column_37' 'column_38' 'column_39' 'column_40' 'column_41' 'column_42' 'column_43' 'column_44' 'column_45' 'column_46' 'column_47' 'column_48' 'column_49' 'column_50' 'column_51' 'column_52' 'column_53' 'column_54' 'column_55' 'column_56' 'column_57' 'column_58' 'column_59' 'column_60' 'column_61' 'column_62' 'column_63' 'column_64' 'column_65' 'column_66' 'column_67' 'column_68' 'column_69' 'column_70' 'column_71' 'column_72' 'column_73' 'column_74' 'column_75' 'column_76' 'column_77' 'column_78' 'column_79' 'column_80' 'column_81' 'column_82' 'column_83' 'column_84' 'column_85' 'column_86' 'column_87' 'column_88' 'column_89' 'column_90' 'column_91' 'column_92' 'column_93' 'column_94' 'column_95' 'column_96' 'column_97' 'column_98' 'column_99' 'column_100' 'column_101' 'column_102' 'column_103' 'column_104' 'column_105' 'column_106' 'column_107' 'column_108' 'column_109' 'column_110' 'column_111' 'column_112' 'column_113' 'column_114' 'column_115' 'column_116' 'column_117' 'column_118' 'column_119' 'column_120' 'column_121' 'column_122' 'column_123' 'column_124' 'column_125' 'column_126' 'column_127' 'column_128' 'column_129' 'column_130' 'column_131' 'column_132' 'column_133' 'column_134' 'column_135' 'column_136' 'column_137' 'column_138' 'column_139' 'column_140' 'column_141' 'column_142' 'column_143' 'column_144' 'column_145' 'column_146' 'column_147' 'column_148' 'column_149' 'column_150' 'column_151' 'column_152' 'column_153' 'column_154' 'column_155' 'column_156' 'column_157' 'column_158' 'column_159' 'column_160' 'column_161' 'column_162' 'column_163' 'column_164' 'column_165' 'column_166' 'column_167' 'column_168' 'column_169' 'column_170' 'column_171' 'column_172' 'column_173' 'column_174' 'column_175' 'column_176' 'column_177' 'column_178' 'column_179' 'column_180' 'column_181' 'column_182' 'column_183' 'column_184' 'column_185' 'column_186' 'column_187' 'column_188' 'column_189' 'column_190' 'column_191' 'column_192' 'column_193' 'column_194' 'column_195' 'column_196' 'column_197' 'column_198' 'column_199' 'column_200' 'column_201' 'column_202' 'column_203' 'column_204' 'column_205' 'column_206' 'column_207' 'column_208' 'column_209' 'column_210' 'column_211' 'column_212' 'column_213' 'column_214' 'column_215' 'column_216' 'column_217' 'column_218' 'column_219' 'column_220' 'column_221' 'column_222' 'column_223' 'column_224' 'column_225' 'column_226' 'column_227' 'column_228' 'column_229' 'column_230' 'column_231' 'column_232' 'column_233' 'column_234' 'column_235' 'column_236' 'column_237' 'column_238' 'column_239' 'column_240' 'column_241' 'column_242' 'column_243' 'column_244' 'column_245' 'column_246' 'column_247' 'column_248' 'column_249' 'column_250' 'column_251' 'column_252' 'column_253' 'column_254' 'column_255' 'column_256' 'column_257' 'column_258' 'column_259' 'column_260' 'column_261' 'column_262' 'column_263' 'column_264' 'column_265' 'column_266' 'column_267' 'column_268' 'column_269' 'column_270' 'column_271' 'column_272' 'column_273' 'column_274' 'column_275' 'column_276' 'column_277' 'column_278' 'column_279' 'column_280' 'column_281' 'column_282' 'column_283' 'column_284' 'column_285' 'column_286' 'column_287' 'column_288' 'column_289' 'column_290' 'column_291' 'column_292' 'column_293' 'column_294' 'column_295' 'column_296' 'column_297' 'column_298' 'column_299' 'column_300' 'column_301' 'column_302' 'column_303' 'column_304' 'column_305' 'column_306' 'column_307' 'column_308' 'column_309' 'column_310' 'column_311' 'column_312' 'column_313' 'column_314' 'column_315' 'column_316' 'column_317' 'column_318' 'column_319' 'column_320' 'column_321' 'column_322' 'column_323' 'column_324' 'column_325' 'column_326' 'column_327' 'column_328' 'column_329' 'column_330' 'column_331' 'column_332' 'column_333' 'column_334' 'column_335' 'column_336' 'column_337' 'column_338' 'column_339' 'column_340' 'column_341' 'column_342' 'column_343' 'column_344' 'column_345' 'column_346' 'column_347' 'column_348' 'column_349' 'column_350'}, 'ResponseName', 'column_1', 'ClassNames', [0 1]);

% Set up holdout validation
cvp = cvpartition(response, 'Holdout', 0.25);
trainingPredictors = predictors(cvp.training,:);
trainingResponse = response(cvp.training,:);

% Train a classifier
validationModel = fitcsvm(trainingPredictors, trainingResponse, 'KernelFunction', 'linear', 'PolynomialOrder', [], 'KernelScale', 'auto', 'BoxConstraint', 1, 'Standardize', 1, 'PredictorNames', {'column_2' 'column_3' 'column_4' 'column_5' 'column_6' 'column_7' 'column_8' 'column_9' 'column_10' 'column_11' 'column_12' 'column_13' 'column_14' 'column_15' 'column_16' 'column_17' 'column_18' 'column_19' 'column_20' 'column_21' 'column_22' 'column_23' 'column_24' 'column_25' 'column_26' 'column_27' 'column_28' 'column_29' 'column_30' 'column_31' 'column_32' 'column_33' 'column_34' 'column_35' 'column_36' 'column_37' 'column_38' 'column_39' 'column_40' 'column_41' 'column_42' 'column_43' 'column_44' 'column_45' 'column_46' 'column_47' 'column_48' 'column_49' 'column_50' 'column_51' 'column_52' 'column_53' 'column_54' 'column_55' 'column_56' 'column_57' 'column_58' 'column_59' 'column_60' 'column_61' 'column_62' 'column_63' 'column_64' 'column_65' 'column_66' 'column_67' 'column_68' 'column_69' 'column_70' 'column_71' 'column_72' 'column_73' 'column_74' 'column_75' 'column_76' 'column_77' 'column_78' 'column_79' 'column_80' 'column_81' 'column_82' 'column_83' 'column_84' 'column_85' 'column_86' 'column_87' 'column_88' 'column_89' 'column_90' 'column_91' 'column_92' 'column_93' 'column_94' 'column_95' 'column_96' 'column_97' 'column_98' 'column_99' 'column_100' 'column_101' 'column_102' 'column_103' 'column_104' 'column_105' 'column_106' 'column_107' 'column_108' 'column_109' 'column_110' 'column_111' 'column_112' 'column_113' 'column_114' 'column_115' 'column_116' 'column_117' 'column_118' 'column_119' 'column_120' 'column_121' 'column_122' 'column_123' 'column_124' 'column_125' 'column_126' 'column_127' 'column_128' 'column_129' 'column_130' 'column_131' 'column_132' 'column_133' 'column_134' 'column_135' 'column_136' 'column_137' 'column_138' 'column_139' 'column_140' 'column_141' 'column_142' 'column_143' 'column_144' 'column_145' 'column_146' 'column_147' 'column_148' 'column_149' 'column_150' 'column_151' 'column_152' 'column_153' 'column_154' 'column_155' 'column_156' 'column_157' 'column_158' 'column_159' 'column_160' 'column_161' 'column_162' 'column_163' 'column_164' 'column_165' 'column_166' 'column_167' 'column_168' 'column_169' 'column_170' 'column_171' 'column_172' 'column_173' 'column_174' 'column_175' 'column_176' 'column_177' 'column_178' 'column_179' 'column_180' 'column_181' 'column_182' 'column_183' 'column_184' 'column_185' 'column_186' 'column_187' 'column_188' 'column_189' 'column_190' 'column_191' 'column_192' 'column_193' 'column_194' 'column_195' 'column_196' 'column_197' 'column_198' 'column_199' 'column_200' 'column_201' 'column_202' 'column_203' 'column_204' 'column_205' 'column_206' 'column_207' 'column_208' 'column_209' 'column_210' 'column_211' 'column_212' 'column_213' 'column_214' 'column_215' 'column_216' 'column_217' 'column_218' 'column_219' 'column_220' 'column_221' 'column_222' 'column_223' 'column_224' 'column_225' 'column_226' 'column_227' 'column_228' 'column_229' 'column_230' 'column_231' 'column_232' 'column_233' 'column_234' 'column_235' 'column_236' 'column_237' 'column_238' 'column_239' 'column_240' 'column_241' 'column_242' 'column_243' 'column_244' 'column_245' 'column_246' 'column_247' 'column_248' 'column_249' 'column_250' 'column_251' 'column_252' 'column_253' 'column_254' 'column_255' 'column_256' 'column_257' 'column_258' 'column_259' 'column_260' 'column_261' 'column_262' 'column_263' 'column_264' 'column_265' 'column_266' 'column_267' 'column_268' 'column_269' 'column_270' 'column_271' 'column_272' 'column_273' 'column_274' 'column_275' 'column_276' 'column_277' 'column_278' 'column_279' 'column_280' 'column_281' 'column_282' 'column_283' 'column_284' 'column_285' 'column_286' 'column_287' 'column_288' 'column_289' 'column_290' 'column_291' 'column_292' 'column_293' 'column_294' 'column_295' 'column_296' 'column_297' 'column_298' 'column_299' 'column_300' 'column_301' 'column_302' 'column_303' 'column_304' 'column_305' 'column_306' 'column_307' 'column_308' 'column_309' 'column_310' 'column_311' 'column_312' 'column_313' 'column_314' 'column_315' 'column_316' 'column_317' 'column_318' 'column_319' 'column_320' 'column_321' 'column_322' 'column_323' 'column_324' 'column_325' 'column_326' 'column_327' 'column_328' 'column_329' 'column_330' 'column_331' 'column_332' 'column_333' 'column_334' 'column_335' 'column_336' 'column_337' 'column_338' 'column_339' 'column_340' 'column_341' 'column_342' 'column_343' 'column_344' 'column_345' 'column_346' 'column_347' 'column_348' 'column_349' 'column_350'}, 'ResponseName', 'column_1', 'ClassNames', [0 1]);

% Compute validation accuracy
validationPredictors = predictors(cvp.test,:);
validationResponse = response(cvp.test,:);
validationAccuracy = 1 - loss(validationModel, validationPredictors, validationResponse, 'LossFun', 'ClassifError');

%% Uncomment this section to compute validation predictions and scores:
% % Compute validation predictions and scores
% [validationPredictions, validationScores] = predict(validationModel, validationPredictors);