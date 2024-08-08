-- $Id: build.lua 10202 2024-08-08 15:33:47Z cfrees $
-- Build configuration for fillwith
--------------------------------------------------------------------------------
os.setenv ("PATH", "/usr/local/texlive/bin:/usr/bin:")
os.setenv ("TEXMFHOME", ".")
os.setenv ("TEXMFLOCAL", ".")
os.setenv ("TEXMFARCH", ".")
--------------------------------------------------------------------------------
local maindir = maindir or "."
local l3dir = maindir .. "/../adnoddau/l3build"
--------------------------------------------------------------------------------
dofile(l3dir .. "/tag.lua")
--------------------------------------------------------------------------------
ctanpkg = "fillwith"
module = "fillwith"
typesetfiles = {"*.dtx","*.tex"}
typesetdemofiles = {"fillwith-example.tex"}
uploadconfig = {
  ctanPath = "pkg/fillwith",
  pkg = "fillwith",
  version = "v0.3",
  author = "Clea F. Rees",
  uploader = "Clea F. Rees",
  license = "lppl1.3c",
  update = false,
  summary = "LaTeX package for filling vertical space with something rather than nothing. Currently supported somethings are solid rules and dotted lines, with or without numbers.",
  description = "LaTeX package for filling vertical space with something rather than nothing. Currently supported somethings are solid rules and dotted lines, with or without numbers. The package uses a mixture of plain-ish macros, LaTeX 2e and expl3 methods, but a key-value approach to configuration should make the document-level interface relatively sane, even if nothing else is.",
	bugtracker = {"https://codeberg.org/cfr/fillwith/issues"},
	repository = {"https://codeberg.org/cfr/fillwith", "https://github.com/cfr42/fillwith"},
  topic = {"exercise", "teaching", "leaders", "expl3"}, 
}
--------------------------------------------------------------------------------
dofile(l3dir .. "/manifest.lua")
-- vim: ts=2:sw=2:
