#!/usr/bin/env bash

# 1. Load Hardware Environment (Mali GPU drivers)
source /etc/nix-hardware/burnet.env

# 2. Inject Nix Profile into the Bridge (Absolute paths for stability)
export PATH="/home/zexolver/.nix-profile/bin:/nix/var/nix/profiles/default/bin:$PATH"

# 3. Handle PulseAudio/PipeWire for sound (Optional but good)
export ALSA_CONFIG_DIR="/nix/store/$(ls /nix/store | grep alsa-lib | head -n 1)/share/alsa"

# 4. Execute the command
exec "$@"
