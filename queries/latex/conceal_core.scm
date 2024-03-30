; math conceals
(generic_command
  command: ((command_name) @conceal
						   (#any-of? @conceal
							"\\aleph"
							"\\amalg"
							"\\angle"
							"\\approx"
							"\\ast"
							"\\asymp"
							"\\backslash"
							"\\bigcap"
							"\\bigcirc"
							"\\bigcup"
							"\\bigodot"
							"\\bigoplus"
							"\\bigotimes"
							"\\bigsqcup"
							"\\bigtriangledown"
							"\\bigtriangleup"
							"\\bigvee"
							"\\bigwedge"
							"\\bot"
							"\\bowtie"
							"\\bullet"
							"\\cap"
							"\\cdot"
							"\\cdots"
							"\\circ"
							"\\clubsuit"
							"\\cong"
							"\\coprod"
							"\\copyright"
							"\\cup"
							"\\dagger"
							"\\dashv"
							"\\ddagger"
							"\\ddots"
							"\\diamond"
							"\\diamondsuit"
							"\\div"
							"\\doteq"
							"\\dots"
							"\\downarrow"
							"\\Downarrow"
							"\\ell"
							"\\emptyset"
							"\\equiv"
							"\\exists"
							"\\flat"
							"\\forall"
							"\\frown"
							"\\ge"
							"\\geq"
							"\\gets"
							"\\gg"
							"\\hbar"
							"\\heartsuit"
							"\\hookleftarrow"
							"\\hookrightarrow"
							"\\iff"
							"\\Im"
							"\\imath"
							"\\in"
							"\\infty"
							"\\int"
							"\\iint"
							"\\iiint"
							"\\jmath"
							"\\land"
							"\\lnot"
							"\\lceil"
							"\\ldots"
							"\\le"
							"\\leftarrow"
							"\\Leftarrow"
							"\\leftharpoondown"
							"\\leftharpoonup"
							"\\leftrightarrow"
							"\\Leftrightarrow"
							"\\lhd"
							"\\rhd"
							"\\leq"
							"\\ll"
							"\\lmoustache"
							"\\lor"
							"\\mapsto"
							"\\mid"
							"\\models"
							"\\mp"
							"\\nabla"
							"\\natural"
							"\\ne"
							"\\nearrow"
							"\\neg"
							"\\neq"
							"\\ni"
							"\\notin"
							"\\nwarrow"
							"\\odot"
							"\\oint"
							"\\ominus"
							"\\oplus"
							"\\oslash"
							"\\otimes"
							"\\owns"
							"\\P"
							"\\parallel"
							"\\partial"
							"\\perp"
							"\\pm"
							"\\prec"
							"\\preceq"
							"\\prime"
							"\\prod"
							"\\propto"
							"\\rceil"
							"\\Re"
							"\\rightarrow"
							"\\Rightarrow"
							"\\leftarrow"
							"\\Leftarrow"
							"\\rightleftharpoons"
							"\\rmoustache"
							"\\S"
							"\\searrow"
							"\\setminus"
							"\\sharp"
							"\\sim"
							"\\simeq"
							"\\smile"
							"\\spadesuit"
							"\\sqcap"
							"\\sqcup"
							"\\sqsubset"
							"\\sqsubseteq"
							"\\sqsupset"
							"\\sqsupseteq"
							"\\star"
							"\\subset"
							"\\subseteq"
							"\\succ"
							"\\succeq"
							"\\sum"
							"\\supset"
							"\\supseteq"
							"\\surd"
							"\\swarrow"
							"\\times"
							"\\to"
							"\\top"
							"\\triangle"
							"\\triangleleft"
							"\\triangleright"
							"\\uparrow"
							"\\Uparrow"
							"\\updownarrow"
							"\\Updownarrow"
							"\\vdash"
							"\\vdots"
							"\\vee"
							"\\wedge"
							"\\wp"
							"\\wr"
							"\\implies"
							"\\choose"
							"\\sqrt"
							"\\colon"
							"\\coloneqq"
              "\\eqqcolon"
							))
  (#has-ancestor? @conceal math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @conceal label_definition text_mode)
  (#set-pairs! @conceal conceal
   "\\aleph" "ℵ"
   "\\amalg" "∐"
   "\\angle" "∠"
   "\\approx" "≈"
   "\\ast" "∗"
   "\\asymp" "≍"
   "\\backslash" "∖"
   "\\bigcap" "∩"
   "\\bigcirc" "○"
   "\\bigcup" "∪"
   "\\bigodot" "⊙"
   "\\bigoplus" "⊕"
   "\\bigotimes" "⊗"
   "\\bigsqcup" "⊔"
   "\\bigtriangledown" "∇"
   "\\bigtriangleup" "∆"
   "\\bigvee" "⋁"
   "\\bigwedge" "⋀"
   "\\bot" "⊥"
   "\\bowtie" "⋈"
   "\\bullet" "•"
   "\\cap" "∩"
   "\\cdot" "·"
   "\\cdots" "⋯"
   "\\circ" "∘"
   "\\clubsuit" "♣"
   "\\cong" "≅"
   "\\coprod" "∐"
   "\\copyright" "©"
   "\\cup" "∪"
   "\\dagger" "†"
   "\\dashv" "⊣"
   "\\ddagger" "‡"
   "\\ddots" "⋱"
   "\\diamond" "⋄"
   "\\diamondsuit" "♢"
   "\\div" "÷"
   "\\doteq" "≐"
   "\\dots" "…"
   "\\downarrow" "↓"
   "\\Downarrow" "⇓"
   "\\ell" "ℓ"
   "\\emptyset" "Ø"
   "\\equiv" "≡"
   "\\exists" "∃"
   "\\flat" "♭"
   "\\forall" "∀"
   "\\frown" "⁔"
   "\\ge" "≥"
   "\\geq" "≥"
   "\\gets" "←"
   "\\gg" "⟫"
   "\\hbar" "ℏ"
   "\\heartsuit" "♡"
   "\\hookleftarrow" "↩"
   "\\hookrightarrow" "↪"
   "\\iff" "⇔"
   "\\Im" "ℑ"
   "\\imath" "ɩ"
   "\\in" "∈"
   "\\infty" "∞"
   "\\int" "∫"
   "\\iint" "∬"
   "\\iiint" "∭"
   "\\jmath" "𝚥"
   "\\land" "∧"
   "\\lnot" "¬"
   "\\lceil" "⌈"
   "\\ldots" "…"
   "\\le" "≤"
   "\\leftarrow" "←"
   "\\Leftarrow" "⇐"
   "\\leftharpoondown" "↽"
   "\\leftharpoonup" "↼"
   "\\leftrightarrow" "↔"
   "\\Leftrightarrow" "⇔"
   "\\lhd" "◁"
   "\\rhd" "▷"
   "\\leq" "≤"
   "\\ll" "≪"
   "\\lmoustache" "╭"
   "\\lor" "∨"
   "\\mapsto" "↦"
   "\\mid" "∣"
   "\\models" "⊨"
   "\\mp" "∓"
   "\\nabla" "∇"
   "\\natural" "♮"
   "\\ne" "≠"
   "\\nearrow" "↗"
   "\\neg" "¬"
   "\\neq" "≠"
   "\\ni" "∋"
   "\\notin" "∉"
   "\\nwarrow" "↖"
   "\\odot" "⊙"
   "\\oint" "∮"
   "\\ominus" "⊖"
   "\\oplus" "⊕"
   "\\oslash" "⊘"
   "\\otimes" "⊗"
   "\\owns" "∋"
   "\\P" "¶"
   "\\parallel" "║"
   "\\partial" "∂"
   "\\perp" "⊥"
   "\\pm" "±"
   "\\prec" "≺"
   "\\preceq" "⪯"
   "\\prime" "′"
   "\\prod" "∏"
   "\\propto" "∝"
   "\\rceil" "⌉"
   "\\Re" "ℜ"
   "\\rightarrow" "→"
   "\\Rightarrow" "⇒"
   "\\leftarrow" "←"
   "\\Leftarrow" "⇐"
   "\\rightleftharpoons" "⇌"
   "\\rmoustache" "╮"
   "\\S" "§"
   "\\searrow" "↘"
   "\\setminus" "⧵"
   "\\sharp" "♯"
   "\\sim" "∼"
   "\\simeq" "⋍"
   "\\smile" "‿"
   "\\spadesuit" "♠"
   "\\sqcap" "⊓"
   "\\sqcup" "⊔"
   "\\sqsubset" "⊏"
   "\\sqsubseteq" "⊑"
   "\\sqsupset" "⊐"
   "\\sqsupseteq" "⊒"
   "\\star" "✫"
   "\\subset" "⊂"
   "\\subseteq" "⊆"
   "\\succ" "≻"
   "\\succeq" "⪰"
   "\\sum" "∑"
   "\\supset" "⊃"
   "\\supseteq" "⊇"
   "\\surd" "√"
   "\\swarrow" "↙"
   "\\times" "×"
   "\\to" "→"
   "\\top" "⊤"
   "\\triangle" "∆"
   "\\triangleleft" "⊲"
   "\\triangleright" "⊳"
   "\\uparrow" "↑"
   "\\Uparrow" "⇑"
   "\\updownarrow" "↕"
   "\\Updownarrow" "⇕"
   "\\vdash" "⊢"
   "\\vdots" "⋮"
   "\\vee" "∨"
   "\\wedge" "∧"
   "\\wp" "℘"
   "\\wr" "≀"
   "\\implies" "⇒"
   "\\choose" "C"
   "\\sqrt" "√"
   "\\colon" ":"
   "\\coloneqq" "≔"
   "\\eqqcolon" "≕"
   ))
