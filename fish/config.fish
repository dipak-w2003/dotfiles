# Disable the welcome message
set -U fish_greeting ""

# Only run if this is an interactive shell
if status is-interactive
    # Start Oh My Posh
    oh-my-posh init fish --config ~/.poshthemes/simple-minimal.omp.json | source

    # Run hyfetch only if we're inside the Kitty terminal
    if set -q KITTY_WINDOW_ID
        # hyfetch
        # neofetch
    end
end
