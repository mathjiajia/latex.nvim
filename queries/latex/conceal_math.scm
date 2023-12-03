; math conceals
(generic_command
  command: ((command_name) @function
  (#any-of? @function
	 "\\{" "\\}"
	 "\\|"
	 "\\aleph"
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
	 "\\colon"
	 "\\coloneqq"
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
	 "\\downarrow" "\\Downarrow"
	 "\\ell"
	 "\\emptyset"
	 "\\equiv"
	 "\\exists"
	 "\\flat"
	 "\\forall"
	 "\\frown"
	 "\\ge" "\\geq"
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
	 "\\jmath"
	 "\\land"
	 "\\lceil"
	 "\\ldots"
	 "\\le" "\\leq"
	 "\\left"
	 "\\leftarrow" "\\Leftarrow"
	 "\\leftharpoondown"
	 "\\leftharpoonup"
	 "\\leftrightarrow" "\\Leftrightarrow"
	 "\\lfloor"
	 "\\ll"
	 "\\lmoustache"
	 "\\lor"
	 "\\mapsto"
	 "\\mid"
	 "\\models"
	 "\\mp"
	 "\\nabla"
	 "\\natural"
	 "\\ne" "\\neq"
	 "\\nearrow"
	 "\\neg"
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
	 "\\qquad"
	 "\\quad"
	 "\\rceil"
	 "\\Re"
	 "\\rfloor"
	 "\\right"
	 "\\rightarrow" "\\Rightarrow"
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
	 "\\uparrow" "\\Uparrow"
	 "\\updownarrow" "\\Updownarrow"
	 "\\varnothing"
	 "\\vdash"
	 "\\vdots"
	 "\\vee"
	 "\\wedge"
	 "\\wp"
	 "\\wr"))
  (#has-ancestor? @function math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @function label_definition text_mode)
  (#set-pairs! @function conceal
	 "\\{" "{"
	 "\\}" "}"
	 "\\|" "‖"
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
	 "\\colon" ":"
	 "\\coloneqq" "≔"
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
	 "\\emptyset" "∅"
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
	 "\\jmath" "𝚥"
	 "\\land" "∧"
	 "\\lceil" "⌈"
	 "\\ldots" "…"
	 "\\le" "≤"
	 "\\left" ""
	 "\\leftarrow" "←"
	 "\\Leftarrow" "⇐"
	 "\\leftharpoondown" "↽"
	 "\\leftharpoonup" "↼"
	 "\\leftrightarrow" "↔"
	 "\\Leftrightarrow" "⇔"
	 "\\leq" "≤"
	 "\\leq" "≤"
	 "\\lfloor" "⌊"
	 "\\ll" "≪"
	 "\\lmoustache" "╭"
	 "\\lor" "∨"
	 "\\mapsto" "↦"
	 "\\mid" "∣"
	 "\\models" "╞"
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
	 "\\quad" " "
	 "\\qquad" " "
	 "\\rfloor" "⌋"
	 "\\right" ""
	 "\\rightarrow" "→"
	 "\\Rightarrow" "⇒"
	 "\\rightleftharpoons" "⇌"
	 "\\rmoustache" "╮"
	 "\\S" "§"
	 "\\searrow" "↘"
	 "\\setminus" "∖"
	 "\\sharp" "♯"
	 "\\spadesuit" "♠"
	 "\\sim" "∼"
	 "\\simeq" "⋍"
	 "\\smile" "‿"
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
	 "\\varnothing" "∅"
	 "\\vdash" "⊢"
	 "\\vdots" "⋮"
	 "\\vee" "∨"
	 "\\wedge" "∧"
	 "\\wp" "℘"
	 "\\wr" "≀"
	 ))
