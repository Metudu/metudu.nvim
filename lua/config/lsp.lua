local lsp = require("lspconfig")
local coq = require("coq")

lsp.gopls.setup(coq.lsp_ensure_capabilities({}))
lsp.ansiblels.setup(coq.lsp_ensure_capabilities({}))
