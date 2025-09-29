#let cn-font-serif = "Source Han Serif SC"
#let en-font-serif = "New Computer Modern"
#let cn-font-sans = "Source Han Sans SC"
#let en-font-sans = "New Computer Modern Sans"

#let translation=(
  problem:(
    zh:"问题",
    en:"Problem"
  ),
  proof:(
    zh:"证明",
    en:"Proof."
  ),
  solution:(
    zh:"解答",
    en:"Solution."
  )
)

#let rank = math.op("rank")
#let End = math.op("End")

#let show-math-format(body) = {
  show math.equation: it => {
    show regex("\p{script=Han}"): set text(font: cn-font-serif, weight: "light")
    it
  }
  set math.mat(delim: "[")
  set math.vec(delim: "[")
  set math.cases(gap: 0.5em)
  body
}
