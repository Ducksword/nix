{ lib, config, pkgs, ... }:
{
  options.flatpak.enable = lib.mkEnableOption "enable flatpak";

  config = lib.mkIf config.flatpak.enable {

    services.flatpak.enable = true;

    # Enable flatpak remote and install flatpaks
    systemd.services.flatpak = {
      wantedBy = [ "multi-user.target" ];
      path = [ pkgs.flatpak ];
      script = ''
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && \
        flatpak install -y com.github.tchx84.Flatseal && \
        # flatpak install -y com.obsproject.Studio && \
        flatpak install -y sh.ppy.osu && \
        flatpak install -y com.adamcake.Bolt && \
        flatpak install -y org.videolan.VLC && \
        flatpak update -y
      '';
    };
  };
}
