using Documenter

include("pages.jl")

makedocs(
 sitename="BlockComponents",
  warnonly=[:cross_references],
  pages=pages)