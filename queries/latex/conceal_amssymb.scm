; amssymb conceals
(generic_command
	command: ( (command_name) @conceal
	 (#any-of? @conceal
		"\\Bbbk" "\\Bumpeq" "\\Finv" "\\Game" "\\Lleftarrow" "\\Rrightarrow" "\\Subset" "\\Supset"
		"\\Vdash" "\\Vvdash" "\\approxeq" "\\backepsilon" "\\backprime" "\\backsim" "\\backsimeq"
		"\\barwedge" "\\because" "\\beth" "\\between" "\\bigstar" "\\blacklozenge" "\\blacksquare"
		"\\blacktriangle" "\\blacktriangledown" "\\blacktriangleleft" "\\blacktriangleright"
		"\\boxdot" "\\boxminus" "\\boxplus" "\\boxtimes" "\\bumpeq" "\\centerdot" "\\checkmark"
		"\\circeq" "\\circlearrowleft" "\\circlearrowright" "\\circledS" "\\circledast"
		"\\circledcirc" "\\circleddash" "\\complement" "\\curlyeqprec" "\\curlyeqsucc" "\\curlyvee"
		"\\curlywedge" "\\curvearrowleft" "\\curvearrowright" "\\daleth" "\\diagdown" "\\diagup"
		"\\digamma" "\\divideontimes" "\\doteqdot" "\\dotplus" "\\doublebarwedge" "\\downdownarrows"
		"\\downharpoonleft" "\\downharpoonright" "\\eqcirc" "\\eqsim" "\\eqslantgtr" "\\eqslantless"
		"\\fallingdotseq" "\\geqq" "\\geqslant" "\\gimel" "\\gnapprox" "\\gneq" "\\gneqq" "\\gnsim"
		"\\gtrapprox" "\\gtrdot" "\\gtreqless" "\\gtreqqless" "\\gtrless" "\\gtrsim" "\\gvertneqq"
		"\\hslash" "\\intercal" "\\leftarrowtail" "\\leftleftarrows" "\\leftrightarrows"
		"\\leftrightharpoons" "\\leftrightsquigarrow" "\\leftthreetimes" "\\leqq" "\\leqslant"
		"\\lessapprox" "\\lessdot" "\\lesseqgtr" "\\lesseqqgtr" "\\lessgtr" "\\lesssim" "\\lnapprox"
		"\\lneq" "\\lneqq" "\\lnsim" "\\looparrowleft" "\\looparrowright" "\\lozenge" "\\ltimes"
		"\\lvertneqq" "\\maltese" "\\measuredangle" "\\multimap" "\\nLeftarrow" "\\nLeftrightarrow"
		"\\nRightarrow" "\\nVDash" "\\nVdash" "\\ncong" "\\nexists" "\\ngeq" "\\ngeqq" "\\ngeqslant"
		"\\ngtr" "\\nleftarrow" "\\nleftrightarrow" "\\nleq" "\\nleqq" "\\nleqslant" "\\nless"
		"\\nmid" "\\nparallel" "\\nprec" "\\npreceq" "\\nrightarrow" "\\nshortmid" "\\nshortparallel"
		"\\nsim" "\\nsubseteq" "\\nsubseteqq" "\\nsucc" "\\nsucceq" "\\nsupseteq" "\\nsupseteqq"
		"\\ntriangleleft" "\\ntrianglelefteq" "\\ntriangleright" "\\ntrianglerighteq" "\\nvDash"
		"\\nvdash" "\\pitchfork" "\\precapprox" "\\preccurlyeq" "\\precnapprox" "\\precneqq"
		"\\precnsim" "\\precsim" "\\rightarrowtail" "\\rightleftarrows" "\\rightrightarrows"
		"\\rightsquigarrow" "\\rightthreetimes" "\\risingdotseq" "\\rtimes" "\\shortmid"
		"\\shortparallel" "\\smallfrown" "\\smallsetminus" "\\smallsmile" "\\sphericalangle"
		"\\square" "\\subseteqq" "\\subsetneq" "\\subsetneqq" "\\succapprox" "\\succcurlyeq"
		"\\succnapprox" "\\succneqq" "\\succnsim" "\\succsim" "\\supseteqq" "\\supsetneq"
		"\\supsetneqq" "\\therefore" "\\thickapprox" "\\thicksim" "\\triangledown" "\\trianglelefteq"
		"\\triangleq" "\\trianglerighteq" "\\twoheadleftarrow" "\\twoheadrightarrow" "\\upharpoonleft"
		"\\upharpoonright" "\\upuparrows" "\\vDash" "\\varkappa" "\\varnothing" "\\varpropto"
		"\\varsubsetneq" "\\varsubsetneqq" "\\varsupsetneq" "\\varsupsetneqq" "\\vartriangle"
		"\\vartriangleleft" "\\vartriangleright" "\\veebar"))
	(#has-ancestor? @conceal math_environment inline_formula displayed_equation)
	(#not-has-ancestor? @conceal label_definition text_mode)
	(#set-pairs! @conceal
	 conceal
	 "\\Bbbk" "𝕜"
	 "\\Bumpeq" "≎"
	 "\\Finv" "Ⅎ"
	 "\\Game" "⅁"
	 "\\Lleftarrow" "⇚"
	 "\\Rrightarrow" "⇛"
	 "\\Subset" "⋐" 
	 "\\Supset" "⋑"
	 "\\Vdash" "⊩"
	 "\\Vvdash" "⊪"
	 "\\approxeq" "≊"
	 "\\backepsilon" "∍"
	 "\\backprime" "‵"
	 "\\backsim" "∽"
	 "\\backsimeq" "⋍"
	 "\\barwedge" "⊼"
	 "\\because" "∵"
	 "\\beth" "ℶ"
	 "\\between" "≬"
	 "\\bigstar" "★"
	 "\\blacklozenge" "◆"
	 "\\blacksquare" "■"
	 "\\blacktriangle" "▲"
	 "\\blacktriangledown" "▼"
	 "\\blacktriangleleft" "◀"
	 "\\blacktriangleright" "▶"
	 "\\boxdot" "⊡"
	 "\\boxminus" "⊟"
	 "\\boxplus" "⊞"
	 "\\boxtimes" "⊠"
	 "\\bumpeq" "≏"
	 "\\centerdot" "⋅"
	 "\\checkmark" "✓"
	 "\\circeq" "≗"
	 "\\circlearrowleft" "↺"
	 "\\circlearrowright" "↻"
	 "\\circledS" "Ⓢ"
	 "\\circledast" "⊛"
	 "\\circledcirc" "⊚"
	 "\\circleddash" "⊝"
	 "\\complement" "∁"
	 "\\curlyeqprec" "⋞"
	 "\\curlyeqsucc" "⋟"
	 "\\curlyvee" "⋎"
	 "\\curlywedge" "⋏"
	 "\\curvearrowleft" "↶"
	 "\\curvearrowright" "↷"
	 "\\daleth" "ℸ"
	 "\\diagdown" "╲"
	 "\\diagup" "╱"
	 "\\digamma" "ϝ"
	 "\\divideontimes" "⋇"
	 "\\doteqdot" "≑"
	 "\\dotplus" "∔"
	 "\\doublebarwedge" "⩞"
	 "\\downdownarrows" "⇊"
	 "\\downharpoonleft" "⇃"
	 "\\downharpoonright" "⇂"
	 "\\eqcirc" "≖"
	 "\\eqsim" "≂"
	 "\\eqslantgtr" "⪖"
	 "\\eqslantless" "⪕"
	 "\\fallingdotseq" "≒"
	 "\\geqq" "≧"
	 "\\geqslant" "⩾"
	 "\\gimel" "ℷ"
	 "\\gnapprox" "⪊"
	 "\\gneq" "⪈"
	 "\\gneqq" "≩"
	 "\\gnsim" "⋧"
	 "\\gtrapprox" "⪆"
	 "\\gtrdot" "⋗"
	 "\\gtreqless" "⋛"
	 "\\gtreqqless" "⪌"
	 "\\gtrless" "≷"
	 "\\gtrsim" "≳"
	 "\\gvertneqq" ""
	 "\\hslash" "ℏ"
	 "\\intercal" "⊺"
	 "\\leftarrowtail" "↢"
	 "\\leftleftarrows" "⇇"
	 "\\leftrightarrows" "⇆"
	 "\\leftrightharpoons" "⇋"
	 "\\leftrightsquigarrow" "↭"
	 "\\leftthreetimes" "⋋"
	 "\\leqq" "≦"
	 "\\leqslant" "⩽"
	 "\\lessapprox" "⪅"
	 "\\lessdot" "⋖"
	 "\\lesseqgtr" "⋚"
	 "\\lesseqqgtr" "⪋"
	 "\\lessgtr" "≶"
	 "\\lesssim" "≲"
	 "\\lnapprox" "⪉"
	 "\\lneq" "⪇"
	 "\\lneqq" "≨"
	 "\\lnsim" "⋦"
	 "\\looparrowleft" "↫"
	 "\\looparrowright" "↬"
	 "\\lozenge" "◊"
	 "\\ltimes" "⋉"
	 "\\lvertneqq" ""
	 "\\maltese" "✠"
	 "\\measuredangle" "∡"
	 "\\multimap" "⊸"
	 "\\nLeftarrow" "⇍"
	 "\\nLeftrightarrow" "⇎"
	 "\\nRightarrow" "⇏"
	 "\\nVDash" "⊯"
	 "\\nVdash" "⊮"
	 "\\ncong" "≆"
	 "\\nexists" "∄"
	 "\\ngeq" "≱"
	 "\\ngeqq" ""
	 "\\ngeqslant" ""
	 "\\ngtr" "≯"
	 "\\nleftarrow" "↚"
	 "\\nleftrightarrow" "↮"
	 "\\nleq" "≰"
	 "\\nleqq" ""
	 "\\nleqslant" ""
	 "\\nless" "≮"
	 "\\nmid" "∤" 
	 "\\nparallel" "∦"
	 "\\nprec" "⊀" 
	 "\\npreceq" "⋠" 
	 "\\nrightarrow" "↛" 
	 "\\nshortmid" "" 
	 "\\nshortparallel" "" 
	 "\\nsim" "≁" 
	 "\\nsubseteq" "⊈" 
	 "\\nsubseteqq" "" 
	 "\\nsucc" "⊁" 
	 "\\nsucceq" "⋡"
	 "\\nsupseteq" "⊉" 
	 "\\nsupseteqq" "" 
	 "\\ntriangleleft" "⋪"
	 "\\ntrianglelefteq" "⋬"
	 "\\ntriangleright" "⋫" 
	 "\\ntrianglerighteq" "⋭" 
	 "\\nvDash" "⊭" 
	 "\\nvdash" "⊬"
	 "\\pitchfork" "⋔" 
	 "\\precapprox" "⪷" 
	 "\\preccurlyeq" "≼"
	 "\\precnapprox" "⪹"
	 "\\precneqq" "⪵" 
	 "\\precnsim" "⋨" 
	 "\\precsim" "≾"
	 "\\rightarrowtail" "↣"
	 "\\rightleftarrows" "⇄" 
	 "\\rightrightarrows" "⇉"
	 "\\rightsquigarrow" "⇝"
	 "\\rightthreetimes" "⋌" 
	 "\\risingdotseq" "≓" 
	 "\\rtimes" "⋊"
	 "\\shortmid" "∣"
	 "\\shortparallel" "∥" 
	 "\\smallfrown" "⌢" 
	 "\\smallsetminus" "∖"
	 "\\smallsmile" "⌣"
	 "\\sphericalangle" "∢" 
	 "\\square" "□" 
	 "\\subseteqq" "⫅" 
	 "\\subsetneq" "⊊" 
	 "\\subsetneqq" "⫋" 
	 "\\succapprox" "⪸" 
	 "\\succcurlyeq" "≽" 
	 "\\succnapprox" "⪺"
	 "\\succneqq" "⪶"
	 "\\succnsim" "⋩" 
	 "\\succsim" "≿" 
	 "\\supseteqq" "⫆" 
	 "\\supsetneq" "⊋" 
	 "\\supsetneqq" "⫌" 
	 "\\therefore" "∴" 
	 "\\thickapprox" "≈" 
	 "\\thicksim" "∼" 
	 "\\triangledown" "▽"
	 "\\trianglelefteq" "⊴" 
	 "\\triangleq" "≜" 
	 "\\trianglerighteq" "⊵" 
	 "\\twoheadleftarrow" "↞" 
	 "\\twoheadrightarrow" "↠" 
	 "\\upharpoonleft" "↿" 
	 "\\upharpoonright" "↾"
	 "\\upuparrows" "⇈" 
	 "\\vDash" "⊨" 
	 "\\varkappa" "ϰ" 
	 "\\varnothing" "∅" 
	 "\\varpropto" "∝"
	 "\\varsubsetneq" "" 
	 "\\varsubsetneqq" "" 
	 "\\varsupsetneq" "" 
	 "\\varsupsetneqq" ""
	 "\\vartriangle" "△" 
	 "\\vartriangleleft" "⊲" 
	 "\\vartriangleright" "⊳" 
	 "\\veebar" "⊻")
	)
