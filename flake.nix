{
  description = "Devshell for a SvelteKit project";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    git-hooks = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    system = "x86_64-linux"; # Adjust to "aarch64-darwin" for Apple Silicon if needed
    pkgs = import nixpkgs {
      inherit system;
    };

    lib = pkgs.lib;

    pre-commit-check = inputs.git-hooks.lib.${system}.run {
      src = ./.;

      hooks = {
        # Nix Formatter
        alejandra.enable = true;

        # ESLint via pnpm
        eslint = {
          enable = true;
          name = "eslint";
          entry = "pnpm exec eslint --fix";
          files = "\\.(js|ts|svelte)$";
        };

        # Prettier via pnpm (Handles Svelte, JSON, etc.)
        prettier = {
          enable = true;
          name = "prettier";
          entry = "pnpm exec prettier --write";
          files = "\\.(js|ts|svelte|json|yaml|md)$";
        };

        # Svelte-check for type safety
        svelte-check = {
          enable = true;
          name = "svelte-check";
          entry = "pnpm exec svelte-check";
          pass_filenames = false;
          files = "\\.(js|ts|svelte)$";
        };

        # TOML and Markdown
        taplo.enable = true;
        markdownlint.enable = true;
      };
    };
  in {
    devShells.${system}.default = pkgs.mkShell {
      inherit (pre-commit-check) shellHook;

      packages = with pkgs; [
        # NIX
        nixd
        alejandra

        # NODE
        nodejs_22
        pnpm

        # MARKDOWN
        markdownlint-cli
      ];
    };
  };
}