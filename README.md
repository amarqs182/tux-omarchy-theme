# Tux — Omarchy Theme

Light theme for [Omarchy](https://github.com/basecamp/omarchy) on Hyprland, aligned with the **Omarchy Linux Light Design System**. Linux Yellow (#F5B700) accents on warm ivory (#F5F5F3), with readable terminal colors (all ANSI ≥ 4.5:1 WCAG AA on #F5F5F3).

![preview](preview.png)

## Design System

| Token            | Value     | Usage                              |
|------------------|-----------|-------------------------------------|
| Background       | `#F5F5F3` | Main background (warm ivory)        |
| Surface          | `#FFFFFF` | Cards, modals, floating elements    |
| Surface 2        | `#ECECE8` | Sidebar, secondary containers       |
| Foreground       | `#222222` | Primary text (14.57:1 AAA)          |
| Muted            | `#6B7280` | Secondary labels, metadata          |
| Linux Yellow     | `#F5B700` | Primary accent (buttons, focus)     |
| Yellow Hover     | `#FFD54A` | Hover and active highlights         |
| Border           | `#E5E7EB` | Dividers, selection background      |
| Soft Border      | `#D1D5DB` | Subtle separators                   |
| Success          | `#22C55E` | Confirmations, online states        |
| Warning          | `#F59E0B` | Attention, warnings                 |
| Danger           | `#EF4444` | Errors, destructive actions         |
| Info             | `#3B82F6` | Informational, links                |

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
| Black     | `#5A5A5A` (dim)     | `#6B7280` (muted)   |
| Red       | `#CC3333`           | `#EF4444` (danger)  |
| Green     | `#1B8B3F`           | `#22C55E` (success) |
| Yellow    | `#7A5C00`           | `#F5B700` (primary) |
| Blue      | `#2563EB`           | `#3B82F6` (info)    |
| Magenta   | `#9333EA`           | `#A855F7`           |
| Cyan      | `#0D9488`           | `#14B8A6`           |
| White     | `#374151` (text)    | `#1F2937`           |

All normal colors ≥ 4.5:1 contrast on `#F5F5F3`. Bright colors match design system semantic tokens (danger, success, primary, info).

## Installation

### Omarchy Theme

```bash
# Clone into your Omarchy themes directory
git clone https://github.com/amarqs182/tux-omarchy-theme.git ~/.config/omarchy/themes/tux

# Apply the theme
omarchy theme set tux
# Or: Super+Alt+Space → Style → Theme → tux
```

### Hermes TUI Skin

The theme includes a Hermes Agent TUI skin for light terminal backgrounds:

```bash
# Copy the skin
mkdir -p ~/.hermes/skins
cp ~/.config/omarchy/themes/tux/hermes-skin.yaml ~/.hermes/skins/tux.yaml

# Activate in ~/.hermes/config.yaml
# display.skin: tux
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
tux/
├── colors.toml          # Full palette (UI + 16 ANSI) — Design System tokens
├── light.mode           # Marks theme as light mode
├── icons.theme          # Walker/menu icons
├── neovim.lua           # Neovim colors (gruvbox base with DS palette)
├── vscode.json          # VS Code token colors
├── btop.theme           # btop system monitor theme
├── hermes-skin.yaml     # Hermes Agent TUI skin
├── alacritty.example.toml  # Example Alacritty config with light mode env
├── backgrounds/
│   └── tux.png          # Theme wallpaper
├── preview.png          # Preview with wallpaper
├── unlock.png           # Lock screen preview
└── preview-unlock.png   # Lock screen preview (no wallpaper)
```

## Generated Components (22+)

When `omarchy theme set tux` runs, Omarchy auto-generates configs for:

Hyprland, Alacritty, Ghostty, Kitty, Foot, Waybar, Walker, Mako, Hyprlock, SwayOSD, Chromium, Obsidian, Neovim, btop, Helix, Gum, Keyboard RGB, VS Code, and more.

## License

MIT
