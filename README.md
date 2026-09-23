# Moonbow

Moonbow is a theme for nvim inspired by Gruvbox and Ayu dark

![demo1](https://github.com/arturgoms/moonbow.nvim/blob/master/images/image_1.png)

# Installing

Using `packer`

```lua
use { "arturgoms/moonbow.nvim" }
```

Using `lazy`

```lua
{ "arturgoms/moonbow.nvim" }
```

and add this to your Lazy config

```lua
 install = { colorscheme = { "moonbow" } }
```

# Lualine support

Just add

```lua
 options = { theme = "moonbow" } }
```

to the setup of lualine

<p>
<img width='700' src='https://user-images.githubusercontent.com/6445354/218488141-863f4c3b-06a8-49be-83ed-6dc3f3221702.png'/>
<img width='700' src='https://user-images.githubusercontent.com/6445354/218488156-967e0ac3-9b3f-4c50-883b-23959fcb043c.png'/>
<img width='700' src='https://user-images.githubusercontent.com/6445354/218488149-932f2af5-c000-4430-93f8-a2508ed60061.png'/>
<img width='700' src='https://user-images.githubusercontent.com/6445354/218488154-b7f3ff80-5c53-413f-951a-f59994b4f8fa.png'/>
</p>

# Transparency

Moonbow ships with first-class transparency support that works out of the box.
Enabling it renders a fully transparent theme - no manual highlight overrides
needed.

```lua
require("moonbow").setup({
  transparent = true,
})
```

By default `transparent = true` makes the editor, floating windows, sidebars and
popup menus transparent. The status line and tab line stay opaque for
readability, but you can opt in:

```lua
require("moonbow").setup({
  transparent = true,
  styles = {
    statusline = "transparent",
    tabline = "transparent",
  },
})
```

## Fine-grained control

Every background can be controlled independently through `styles`:

| Option              | Values                                          | Default    | Description                                                    |
| ------------------- | ----------------------------------------------- | ---------- | -------------------------------------------------------------- |
| `styles.sidebars`   | `"auto"`, `"transparent"`, `"dark"`, `"normal"` | `"auto"`   | Sidebars (`NormalSB`, `NvimTree`, `Neo-tree`, ...)             |
| `styles.floats`     | `"auto"`, `"transparent"`, `"dark"`, `"normal"` | `"auto"`   | Floating windows (`NormalFloat`, `Telescope`, `WhichKey`, ...) |
| `styles.popups`     | `"auto"`, `"transparent"`, `"dark"`, `"normal"` | `"auto"`   | Popup menu (`Pmenu`)                                           |
| `styles.statusline` | `"normal"`, `"transparent"`                     | `"normal"` | `StatusLine`, `WinBar` and the lualine theme                   |
| `styles.tabline`    | `"normal"`, `"transparent"`                     | `"normal"` | `TabLine`                                                      |

- `"auto"` follows the global `transparent` switch
- `"transparent"` always uses a transparent background
- `"dark"` uses the darker background (`bg1`)
- `"normal"` uses the normal background (`bg0`)

For example, only make floating windows transparent while keeping everything
else solid:

```lua
require("moonbow").setup({
  styles = { floats = "transparent" },
})
```

> `transparent_mode` is kept as a deprecated alias for `transparent`.

# Config example

See ![my config](https://github.com/arturgoms/nvim) if you want a config using this theme.

Credits to:

- ![Gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
- ![Ayu](https://github.com/Shatur/neovim-ayu)
