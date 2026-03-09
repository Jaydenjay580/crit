# Crit — full code review lifecycle with Claude Code

Output demo/code-review.gif

Require crit
Require tmux
Require claude

Set Shell "zsh"
Set FontSize 14
Set Width 1800
Set Height 900
Set Theme "Catppuccin Mocha"
Set Padding 20
Set TypingSpeed 50ms
Set WindowBar Colorful

Hide

# Start a tmux session
Type "tmux new -s demo"
Enter
Sleep 1.5s

# Launch Claude Code inside tmux
Type "claude --dangerously-skip-permissions"
Enter
Sleep 5s

Show

# Call the code review skill
Type@40ms "/crit:code-review"
Sleep 500ms
Enter
Sleep 8s

# --- Focus is now in the crit TUI split pane (right side) ---
Sleep 1s


# Switch to next file tab
Tab
Sleep 1.5s

# Scroll through the second file
Type@80ms "jjjjjj"
Sleep 800ms

# Jump to next change in this file
Type "n"
Sleep 800ms

# Visual select a block
Type "v"
Sleep 400ms
Type@100ms "jjjj"
Sleep 800ms

# Add a comment on the selection
Enter
Sleep 1s

Type@40ms "Consider extracting this into a helper function."
Sleep 800ms

# Save the comment
Ctrl+S
Sleep 1.5s

# Quit crit — focus returns to Claude Code pane
Type "q"

# --- Claude is now reading comments and making changes ---
# Wait for Claude to process comments and start editing files
Sleep 15s
