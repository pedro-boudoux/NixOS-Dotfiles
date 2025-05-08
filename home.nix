{ config, pkgs, ... }:
{
	home.username = "pedro";
	home.homeDirectory = "/home/pedro";
	home.stateVersion = "24.11";

	programs.bash = {

		enable = true;
		shellAliases = {
			btw = "echo i use nixos btw";
			nrs = "sudo nixos-rebuild switch";
			
		};

		initExtra = ''
			export PS1='\[\e[38;5;81m\]\u\[\e[0m\] @ \[\e[38;5;81m\]\w\[\e[0m\] >'
		'';
		
	};


	programs.alacritty = {
		enable = true;
		settings = {
			window.opacity = 0.9;
			font.normal = {
				family = "JetBrains Mono";
				style = "Regular";
			};
			font.size = 16;
		};
	};

	home.file.".config/bat/config".text = ''
		--theme="Nord"
		--style="numbers,changes,grid"
		--paging=auto
	'';

	home.packages = with pkgs; [
		
		bat

	];

}
