# Amber Dawn — Omarchy Theme

Warm light theme for [Omarchy](https://github.com/basecamp/omarchy) on Hyprland. Aligned with the **Omarchy Linux Light Design System** — Linux Yellow (#F5B700) accents on warm ivory (#F5F5F3), with high-contrast readable terminal colors (all ANSI colors ≥ 4.5:1 WCAG AA contrast).

![preview](preview.png)

## Design System Alignment

This theme follows the **Omarchy Linux Light Design System** principles:

| Token           | Value       | Usage                          |
|-----------------|-------------|--------------------------------|
| Background      | `#F5F5F3`   | Main background (warm ivory)   |
| Surface         | `#ECECE8`   | Card/panel surfaces            |
| Foreground      | `#222222`   | Primary text (14.57:1 AAA)     |
| Linux Yellow    | `#F5B700`   | UI accent (borders, buttons)   |
| Accent (dark)   | `#8E6A00`   | Terminal text accent (4.57:1)  |
| Muted           | `#555B66`   | Secondary text (6.26:1)        |
| Border          | `#E5E7EB`   | Dividers, selection bg         |
| Success         | `#16803D`   | Green status (4.59:1)          |
| Danger          | `#CD3A3A`   | Red status (4.51:1)            |
| Info            | `#316DCE`   | Blue status (4.57:1)           |

### Design Principles

- **Simplicity** — Remove unnecessary visual noise
- **Consistency** — Predictable spacing, shadows, and interactions
- **Breathing Space** — Large padding and calm layouts
- **Linux Identity** — Inspired by open-source philosophy and Tux

### 8px Grid System

Spacing scale: 4 · 8 · 16 · 24 · 32 · 48 · 64

Global border radius: 12px

## ANSI 16 Colors

| Slot      | Normal              | Bright              |
|-----------|---------------------|---------------------|
| Black     | `#555B66` (dim)     | `#69707E` (muted)   |
| Red       | `#CD3A3A`           | `#B74D4D`           |
| Green     | `#16803D`           | `#2A7E48`           |
| Yellow    | `#8E6A00`           | `#906900`           |
| Blue      | `#316DCE`           | `#4271AC`           |
| Magenta   | `#934AD9`           | `#885DB2`           |
| Cyan      | `#0D7E72`           | `#1A7D70`           |
| White     | `#222222` (text)    | `#3D3D3D`           |

## Installation

### Omarchy Theme

```bash
# Clone into your Omarchy themes directory
git clone https://github.com/amarqs182/amber-dawn-omarchy-theme.git ~/.config/omarchy/themes/amber-dawn

# Apply the theme
omarchy theme set amber-dawn
# Or: Super+Alt+Space → Style → Theme → amber-dawn
```

### Hermes TUI Skin

The theme includes a Hermes Agent TUI skin for light terminal backgrounds:

```bash
# Copy the skin
mkdir -p ~/.hermes/skins
cp ~/.config/omarchy/themes/amber-dawn/hermes-skin.yaml ~/.hermes/skins/amber-dawn.yaml

# Activate in ~/.hermes/config.yaml
# display.skin: amber-dawn
```

### Terminal Light Mode Detection

The Hermes TUI defaults to dark mode. To ensure light mode is detected, add to your terminal config:

**Alacritty** (`~/.config/alacritty/alacritty.toml`):
```toml
[env]
TERM = "xterm-256color"
HERMES_TUI_LIGHT = "1"
COLORFGBG = "0;15"
```

An example Alacritty config is included as `alacritty.example.toml`.

## Files

```
amber-dawn/
├── colors.toml          # Full palette (UI + 16 ANSI) — Omarchy Design System tokens
├── light.mode           # Marks theme as light mode
├── icons.theme          # Walker/menu icons
├── neovim.lua           # Neovim colors
├── vscode.json          # VS Code token colors
├── btop.theme           # btop system monitor theme
├── hermes-skin.yaml     # Hermes Agent TUI skin
├── alacritty.example.toml  # Example Alacritty config with light mode env
├── backgrounds/
│   └── amber-dawn.png   # Theme wallpaper
├── preview.png          # Preview with wallpaper
├── unlock.png           # Lock screen preview
└── preview-unlock.png   # Lock screen preview (no wallpaper)
```

## Generated Components (22+)

When `omarchy theme set amber-dawn` runs, Omarchy auto-generates configs for:

Hyprland, Alacritty, Ghostty, Kitty, Foot, Waybar, Walker, Mako, Hyprlock, SwayOSD, Chromium, Obsidian, Neovim, btop, Helix, Gum, Keyboard RGB, VS Code, and more.

## License

MIT
