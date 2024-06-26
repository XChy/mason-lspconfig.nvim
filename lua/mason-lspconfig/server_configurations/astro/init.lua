---@param install_dir string
return function(install_dir)
    return {
        on_new_config = function(new_config, workspace_dir)
            local typescript = require "mason-lspconfig.typescript"

            new_config.init_options.typescript.serverPath = typescript.resolve_tsserver(install_dir, workspace_dir)
            new_config.init_options.typescript.tsdk = typescript.resolve_tsdk(install_dir, workspace_dir)
        end,
    }
end
