(generic_command
  command: (command_name) @conceal
  (#any-of? @conceal "\\emph" "\\mathit" "\\textit" "\\mathbf" "\\textbf")
  (#set! conceal ""))

((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathbb{%u}")
 (#set-pairs! @conceal conceal
  "\\mathbb{A}" "𝔸"
  "\\mathbb{B}" "𝔹"
  "\\mathbb{C}" "ℂ"
  "\\mathbb{D}" "𝔻"
  "\\mathbb{E}" "𝔼"
  "\\mathbb{F}" "𝔽"
  "\\mathbb{G}" "𝔾"
  "\\mathbb{H}" "ℍ"
  "\\mathbb{I}" "𝕀"
  "\\mathbb{J}" "𝕁"
  "\\mathbb{K}" "𝕂"
  "\\mathbb{L}" "𝕃"
  "\\mathbb{M}" "𝕄"
  "\\mathbb{N}" "ℕ"
  "\\mathbb{O}" "𝕆"
  "\\mathbb{P}" "ℙ"
  "\\mathbb{Q}" "ℚ"
  "\\mathbb{R}" "ℝ"
  "\\mathbb{S}" "𝕊"
  "\\mathbb{T}" "𝕋"
  "\\mathbb{U}" "𝕌"
  "\\mathbb{V}" "𝕍"
  "\\mathbb{W}" "𝕎"
  "\\mathbb{X}" "𝕏"
  "\\mathbb{Y}" "𝕐"
  "\\mathbb{Z}" "ℤ"))

((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathcal{%u}")
 (#set-pairs! @conceal conceal
  "\\mathcal{A}" "𝓐"
  "\\mathcal{B}" "𝓑"
  "\\mathcal{C}" "𝓒"
  "\\mathcal{D}" "𝓓"
  "\\mathcal{E}" "𝓔"
  "\\mathcal{F}" "𝓕"
  "\\mathcal{G}" "𝓖"
  "\\mathcal{H}" "𝓗"
  "\\mathcal{I}" "𝓘"
  "\\mathcal{J}" "𝓙"
  "\\mathcal{K}" "𝓚"
  "\\mathcal{L}" "𝓛"
  "\\mathcal{M}" "𝓜"
  "\\mathcal{N}" "𝓝"
  "\\mathcal{O}" "𝓞"
  "\\mathcal{P}" "𝓟"
  "\\mathcal{Q}" "𝓠"
  "\\mathcal{R}" "𝓡"
  "\\mathcal{S}" "𝓢"
  "\\mathcal{T}" "𝓣"
  "\\mathcal{U}" "𝓤"
  "\\mathcal{V}" "𝓥"
  "\\mathcal{W}" "𝓦"
  "\\mathcal{X}" "𝓧"
  "\\mathcal{Y}" "𝓨"
  "\\mathcal{Z}" "𝓩"))

((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathfrak{[a-Z]}")
 (#set-pairs! @conceal conceal
  "\\mathfrak{a}" "𝔞"
  "\\mathfrak{b}" "𝔟"
  "\\mathfrak{c}" "𝔠"
  "\\mathfrak{d}" "𝔡"
  "\\mathfrak{e}" "𝔢"
  "\\mathfrak{f}" "𝔣"
  "\\mathfrak{g}" "𝔤"
  "\\mathfrak{h}" "𝔥"
  "\\mathfrak{i}" "𝔦"
  "\\mathfrak{j}" "𝔧"
  "\\mathfrak{k}" "𝔨"
  "\\mathfrak{l}" "𝔩"
  "\\mathfrak{m}" "𝔪"
  "\\mathfrak{n}" "𝔫"
  "\\mathfrak{o}" "𝔬"
  "\\mathfrak{p}" "𝔭"
  "\\mathfrak{q}" "𝔮"
  "\\mathfrak{r}" "𝔯"
  "\\mathfrak{s}" "𝔰"
  "\\mathfrak{t}" "𝔱"
  "\\mathfrak{u}" "𝔲"
  "\\mathfrak{v}" "𝔳"
  "\\mathfrak{w}" "𝔴"
  "\\mathfrak{x}" "𝔵"
  "\\mathfrak{y}" "𝔶"
  "\\mathfrak{z}" "𝔷"
  "\\mathfrak{A}" "𝔄"
  "\\mathfrak{B}" "𝔅"
  "\\mathfrak{C}" "ℭ"
  "\\mathfrak{D}" "𝔇"
  "\\mathfrak{E}" "𝔈"
  "\\mathfrak{F}" "𝔉"
  "\\mathfrak{G}" "𝔊"
  "\\mathfrak{H}" "ℌ"
  "\\mathfrak{I}" "ℑ"
  "\\mathfrak{J}" "𝔍"
  "\\mathfrak{K}" "𝔎"
  "\\mathfrak{L}" "𝔏"
  "\\mathfrak{M}" "𝔐"
  "\\mathfrak{N}" "𝔑"
  "\\mathfrak{O}" "𝔒"
  "\\mathfrak{P}" "𝔓"
  "\\mathfrak{Q}" "𝔔"
  "\\mathfrak{R}" "ℜ"
  "\\mathfrak{S}" "𝔖"
  "\\mathfrak{T}" "𝔗"
  "\\mathfrak{U}" "𝔘"
  "\\mathfrak{V}" "𝔙"
  "\\mathfrak{W}" "𝔚"
  "\\mathfrak{X}" "𝔛"
  "\\mathfrak{Y}" "𝔜"
  "\\mathfrak{Z}" "ℨ"))

((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathscr{[a-Z]}")
 (#set-pairs! @conceal conceal
  "\\mathscr{A}" "𝓐"
  "\\mathscr{B}" "𝓑"
  "\\mathscr{C}" "𝓒"
  "\\mathscr{D}" "𝓓"
  "\\mathscr{E}" "𝓔"
  "\\mathscr{F}" "𝓕"
  "\\mathscr{G}" "𝓖"
  "\\mathscr{H}" "𝓗"
  "\\mathscr{I}" "𝓘"
  "\\mathscr{J}" "𝓙"
  "\\mathscr{K}" "𝓚"
  "\\mathscr{L}" "𝓛"
  "\\mathscr{M}" "𝓜"
  "\\mathscr{N}" "𝓝"
  "\\mathscr{O}" "𝓞"
  "\\mathscr{P}" "𝓟"
  "\\mathscr{Q}" "𝓠"
  "\\mathscr{R}" "𝓡"
  "\\mathscr{S}" "𝓢"
  "\\mathscr{T}" "𝓣"
  "\\mathscr{U}" "𝓤"
  "\\mathscr{V}" "𝓥"
  "\\mathscr{W}" "𝓦"
  "\\mathscr{X}" "𝓧"
  "\\mathscr{Y}" "𝓨"
  "\\mathscr{Z}" "𝓩"))

((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathsf{[a-Z]}")
 (#set-pairs! @conceal conceal
  "\\mathsf{a}" "𝖺"
  "\\mathsf{b}" "𝖻"
  "\\mathsf{c}" "𝖼"
  "\\mathsf{d}" "𝖽"
  "\\mathsf{e}" "𝖾"
  "\\mathsf{f}" "𝖿"
  "\\mathsf{g}" "𝗀"
  "\\mathsf{h}" "𝗁"
  "\\mathsf{i}" "𝗂"
  "\\mathsf{j}" "𝗃"
  "\\mathsf{k}" "𝗄"
  "\\mathsf{l}" "𝗅"
  "\\mathsf{m}" "𝗆"
  "\\mathsf{n}" "𝗇"
  "\\mathsf{o}" "𝗈"
  "\\mathsf{p}" "𝗉"
  "\\mathsf{q}" "𝗊"
  "\\mathsf{r}" "𝗋"
  "\\mathsf{s}" "𝗌"
  "\\mathsf{t}" "𝗍"
  "\\mathsf{u}" "𝗎"
  "\\mathsf{v}" "𝗏"
  "\\mathsf{w}" "𝗐"
  "\\mathsf{x}" "𝗑"
  "\\mathsf{y}" "𝗒"
  "\\mathsf{z}" "𝗓"
  "\\mathsf{A}" "𝖠"
  "\\mathsf{B}" "𝖡"
  "\\mathsf{C}" "𝖢"
  "\\mathsf{D}" "𝖣"
  "\\mathsf{E}" "𝖤"
  "\\mathsf{F}" "𝖥"
  "\\mathsf{G}" "𝖦"
  "\\mathsf{H}" "𝖧"
  "\\mathsf{I}" "𝖨"
  "\\mathsf{J}" "𝖩"
  "\\mathsf{K}" "𝖪"
  "\\mathsf{L}" "𝖫"
  "\\mathsf{M}" "𝖬"
  "\\mathsf{N}" "𝖭"
  "\\mathsf{O}" "𝖮"
  "\\mathsf{P}" "𝖯"
  "\\mathsf{Q}" "𝖰"
  "\\mathsf{R}" "𝖱"
  "\\mathsf{S}" "𝖲"
  "\\mathsf{T}" "𝖳"
  "\\mathsf{U}" "𝖴"
  "\\mathsf{V}" "𝖵"
  "\\mathsf{W}" "𝖶"
  "\\mathsf{X}" "𝖷"
  "\\mathsf{Y}" "𝖸"
  "\\mathsf{Z}" "𝖹"))
