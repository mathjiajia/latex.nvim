; greek conceal
(generic_command
  command: ((command_name) @function 
  (#any-of? @function 
   "\\alpha" "\\beta" "\\gamma" "\\delta" "\\epsilon"
	 "\\varepsilon" "\\zeta" "\\eta" "\\theta" "\\vartheta"
	 "\\iota" "\\kappa" "\\lambda" "\\mu" "\\nu"
	 "\\xi" "\\pi" "\\varpi" "\\rho" "\\varrho"
   "\\sigma" "\\varsigma" "\\tau" "\\upsilon" "\\phi"
	 "\\varphi" "\\chi" "\\psi" "\\omega"
	 "\\Gamma" "\\Delta" "\\Theta" "\\Lambda" "\\Xi"
	 "\\Pi" "\\Sigma" "\\Upsilon" "\\Phi" "\\Chi"
	 "\\Psi" "\\Omega"))
  (#has-ancestor? @function math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @function label_definition text_mode)
  (#set-pairs! @function conceal 
   "\\alpha" "α" 
   "\\beta" "β"
   "\\gamma" "γ"
   "\\delta" "δ"
   "\\epsilon" "ϵ"
   "\\varepsilon" "ε"
   "\\zeta" "ζ"
   "\\eta" "η"
   "\\theta" "θ"
   "\\vartheta" "ϑ"
   "\\iota" "ι"
   "\\kappa" "κ"
   "\\lambda" "λ"
   "\\mu" "μ"
   "\\nu" "ν"
   "\\xi" "ξ"
   "\\pi" "π"
   "\\varpi" "ϖ"
   "\\rho" "ρ"
   "\\varrho" "ϱ"
   "\\sigma" "σ"
   "\\varsigma" "ς"
   "\\tau" "τ"
   "\\upsilon" "υ"
   "\\phi" "ϕ"
   "\\varphi" "φ"
   "\\chi" "χ"
   "\\psi" "ψ"
   "\\omega" "ω"
   "\\Gamma" "Γ"
   "\\Delta" "Δ"
   "\\Theta" "Θ"
   "\\Lambda" "Λ"
   "\\Xi" "Ξ"
   "\\Pi" "Π"
   "\\Sigma" "Σ"
   "\\Upsilon" "Υ"
   "\\Phi" "Φ"
   "\\Chi" "Χ"
   "\\Psi" "Ψ"
   "\\Omega" "Ω"))
