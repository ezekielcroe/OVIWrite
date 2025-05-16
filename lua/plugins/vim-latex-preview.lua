return {
	"xuhdev/vim-latex-live-preview",
	ft = { "tex" }, -- Load only for LaTeX files
	cmd = {"LLPStartPreview","LLPStopPreview","LLPTogglePreview"},
	init = function()
		vim.g.livepreview_previewer = "open -a Skim"
		vim.g.livepreview_engine = "pdflatex" -- or "xelatex"
	end,
}
