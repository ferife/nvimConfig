{ config, lib, ... }:
{
  # TODO: Set up nixvim for markdown and obsidian

  options = {
    lsp.markdown = {
      enable = lib.mkEnableOption "markdown support";
      obsidian = lib.mkEnableOption "obsidian support";
    };
  };

  config = lib.mkIf config.lsp.markdown.enable {

  plugins = {
    # lsp.servers.markdown_oxide.enable = true;
    # render-markdown = {
    #   enable = true;
    #   settings = {
    #   };
    # };
    obsidian = {
      enable = true;
      settings = {
        completion = {
          min_chars = 2;
          nvim_cmp = true;
        };
        follow_url_func = ''
          function(url)
            vim.fn.jobstart({"xdg-open", url})
          end
        '';
        image_name_func = ''
          function()
            -- Prefix image names with timestamp.
            return string.format("%s-", os.time())
          end
        '';
        new_notes_location = "notes_subdir";
        notes_subdir = "./NewNotes";

        note_frontmatter_func = ''
          function(note)
            -- Add the title of the note as an alias
            if note.title then
              note:add_alias(note.title)
            end

            local out = { id = note.id, aliases = note.aliases, tags = note.tags }

            -- `note.metadata` contains any manually added fields in the frontmatter
            -- So here we make sure that those fields are kept in the front matter
            if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
              for k, v in pairs(note.metadata) do
                out[k] = v
              end
            end

            return out
          end
        '';
        note_path_func = ''
          function(spec)
            -- This is equivalent to the default behavior.
            local path = spec.dir / tostring(spec.id)
            return path:with_suffix(".md")
          end
        '';

        picker.name = "telescope.nvim";

        workspaces = [
          {
            name = "MainVault";
            path = "~/Documents/obsidian-vault";
          }
        ];
      };
    };
  };

  # Plugins to install
  # clipboard-image (to use in my vault)
  # glow
  # image.nvim
  # obsidian.nvim
  # render-markdown
  # zotcite
    # Zotero integration when working on markdown files
};
}
