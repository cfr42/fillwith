-- $Id: build.lua 10571 2024-11-04 07:47:42Z cfrees $
-- Build configuration for fillwith
--------------------------------------------------------------------------------
maindir = maindir or "."
sourcedir = sourcedir or "."
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
ctanpkg = "fillwith"
module = "fillwith"
installfiles = { "*.cls", "*.sty", "*.tex" }
packtdszip = true
tdslocations = {
  "doc/latex/fillwith/fillwith-example.tex",
}
typesetfiles = {"*.dtx","*.tex"}
typesetdemofiles = {"fillwith-example.tex"}
uploadconfig = {
  ctanPath = "/macros/latex/contrib/fillwith",
  pkg = "fillwith",
  version = "v0.3",
  author = "Clea F. Rees",
  uploader = "Clea F. Rees",
  license = "lppl1.3c",
  update = false,
  summary = "LaTeX package for filling vertical space with something (e.g. solid rules or dotted lines) rather than nothing.",
  description = "LaTeX package for filling vertical space with something rather than nothing. Currently supported somethings are solid rules and dotted lines, with or without numbers. The package uses a mixture of plain-ish macros, LaTeX 2e and expl3 methods, but a key-value approach to configuration should make the document-level interface relatively sane, even if nothing else is.",
	bugtracker = "https://codeberg.org/cfr/fillwith/issues",
  -- repository is documented as accepting multiple values, but validation fails
	-- repository = {"https://codeberg.org/cfr/fillwith", "https://github.com/cfr42/fillwith"},
	repository = "https://codeberg.org/cfr/fillwith",
  topic = {"exercise", "teaching", "leaders", "expl3"},
}
--------------------------------------------------------------------------------
if direxists(sourcedir .. "/../adnoddau/l3build") then
  dofile(sourcedir .. "/../adnoddau/l3build/manifest.lua")
  dofile(sourcedir .. "/../adnoddau/l3build/tag.lua")
end
--------------------------------------------------------------------------------
-- vim: ts=2:sw=2:
