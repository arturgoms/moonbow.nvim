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

Still pending merge: https://github.com/nvim-lualine/lualine.nvim/pull/966

<p>
<img width='700' src='https://user-images.githubusercontent.com/6445354/218488141-863f4c3b-06a8-49be-83ed-6dc3f3221702.png'/>
<img width='700' src='https://user-images.githubusercontent.com/6445354/218488156-967e0ac3-9b3f-4c50-883b-23959fcb043c.png'/>
<img width='700' src='https://user-images.githubusercontent.com/6445354/218488149-932f2af5-c000-4430-93f8-a2508ed60061.png'/>
<img width='700' src='https://user-images.githubusercontent.com/6445354/218488154-b7f3ff80-5c53-413f-951a-f59994b4f8fa.png'/>
</p>

# Config example
See ![my config](https://github.com/arturgoms/nvim) if you want a config using this theme.

Credits to:
- ![Gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
- ![Ayu](https://github.com/Shatur/neovim-ayu)
