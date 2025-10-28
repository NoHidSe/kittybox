return {
  'neovim/nvim-lspconfig',
  dependencies = { 'saghen/blink.cmp' },

  opts = {
    servers = {
      lua_ls = {}
    }
  },

  config = function(_, opts)
    local lspconfig = require('lspconfig')
    local capabilities = {
      textDocument = {
	foldingRange = {
	  dynamicRegistration = false,
	  lineFoldingOnly = true
	}
      }
    }

    capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)

    for server, config in pairs(opts.servers) do
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end
}

