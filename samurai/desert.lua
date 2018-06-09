return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 50,
  height = 50,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 2,
  properties = {},
  tilesets = {
    {
      name = "desert",
      firstgid = 1,
      filename = "assets/desert.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "assets/desert.png",
      imagewidth = 208,
      imageheight = 384,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 312,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Sand",
      x = 0,
      y = 0,
      width = 50,
      height = 50,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        6, 7, 8, 9, 6, 7, 8, 32, 33, 34, 6, 7, 8, 9, 9, 19, 19, 19, 20, 21, 22, 19, 20, 21, 19, 20, 21, 22, 33, 34, 6, 6, 7, 8, 9, 20, 21, 22, 19, 20, 21, 22, 6, 7, 8, 6, 7, 8, 9, 21,
        19, 20, 21, 22, 19, 20, 21, 45, 46, 47, 19, 20, 21, 22, 22, 32, 32, 32, 33, 34, 35, 32, 33, 34, 32, 33, 34, 35, 46, 47, 19, 19, 20, 21, 22, 33, 34, 35, 32, 33, 34, 35, 6, 7, 8, 19, 20, 21, 22, 34,
        32, 33, 34, 35, 32, 33, 34, 35, 6, 7, 32, 33, 34, 35, 35, 45, 45, 45, 46, 47, 48, 45, 46, 47, 45, 46, 47, 48, 6, 7, 32, 32, 33, 34, 35, 46, 47, 48, 45, 46, 47, 48, 19, 20, 21, 32, 33, 34, 35, 47,
        7, 8, 9, 48, 45, 84, 85, 86, 6, 7, 45, 46, 47, 48, 48, 45, 46, 47, 48, 9, 6, 19, 20, 21, 6, 7, 8, 9, 8, 9, 45, 45, 46, 47, 48, 7, 8, 9, 22, 32, 33, 34, 32, 33, 34, 45, 46, 47, 48, 8,
        20, 21, 22, 8, 9, 97, 98, 99, 19, 20, 21, 22, 6, 7, 8, 9, 19, 20, 21, 22, 19, 32, 33, 34, 19, 20, 21, 22, 21, 22, 34, 6, 7, 8, 9, 20, 21, 22, 35, 45, 46, 47, 45, 46, 47, 84, 85, 19, 20, 21,
        33, 34, 35, 8, 9, 110, 111, 112, 32, 33, 34, 35, 19, 20, 21, 22, 6, 7, 8, 9, 32, 45, 46, 47, 32, 33, 34, 35, 34, 35, 47, 19, 20, 21, 22, 33, 34, 35, 48, 6, 7, 8, 9, 8, 9, 97, 98, 32, 33, 34,
        46, 47, 48, 8, 9, 7, 8, 9, 8, 9, 47, 48, 32, 33, 34, 35, 19, 20, 21, 22, 7, 8, 6, 6, 45, 46, 47, 48, 8, 9, 6, 32, 33, 34, 35, 6, 6, 7, 8, 19, 20, 21, 22, 21, 22, 110, 111, 45, 46, 47,
        8, 6, 7, 8, 9, 20, 21, 22, 21, 6, 7, 8, 9, 58, 59, 60, 32, 33, 34, 35, 20, 21, 19, 19, 32, 33, 19, 20, 21, 22, 19, 45, 46, 6, 7, 8, 9, 20, 21, 32, 33, 34, 35, 34, 6, 7, 8, 9, 33, 34,
        21, 6, 7, 8, 9, 33, 34, 35, 34, 19, 20, 21, 22, 71, 72, 73, 7, 8, 9, 48, 33, 34, 32, 32, 45, 46, 32, 33, 34, 35, 32, 33, 34, 19, 20, 21, 22, 33, 34, 45, 46, 47, 48, 47, 19, 20, 21, 22, 46, 47,
        34, 6, 7, 8, 9, 84, 85, 86, 47, 32, 84, 85, 86, 84, 85, 86, 20, 21, 22, 6, 6, 7, 8, 9, 46, 47, 45, 46, 47, 48, 45, 46, 47, 32, 33, 34, 35, 6, 6, 7, 8, 9, 34, 35, 32, 33, 34, 35, 85, 86,
        47, 6, 7, 8, 9, 97, 98, 99, 32, 45, 97, 98, 99, 97, 98, 99, 33, 34, 35, 19, 19, 20, 21, 22, 6, 7, 8, 6, 7, 8, 9, 34, 35, 45, 46, 47, 48, 19, 19, 20, 21, 22, 7, 8, 45, 46, 47, 48, 98, 99,
        47, 19, 20, 21, 22, 110, 111, 112, 45, 84, 85, 86, 84, 110, 111, 112, 46, 47, 48, 32, 32, 33, 34, 35, 6, 7, 8, 19, 20, 21, 22, 47, 48, 48, 7, 8, 32, 32, 32, 33, 34, 35, 20, 21, 22, 84, 84, 110, 111, 112,
        19, 32, 6, 7, 8, 9, 6, 7, 8, 97, 98, 99, 97, 98, 99, 46, 6, 7, 8, 9, 9, 46, 6, 7, 8, 9, 21, 32, 33, 6, 7, 8, 9, 48, 20, 6, 6, 45, 45, 46, 47, 48, 9, 34, 84, 6, 7, 8, 9, 9,
        32, 45, 19, 20, 21, 22, 6, 7, 8, 110, 111, 112, 110, 111, 6, 7, 8, 9, 21, 22, 22, 22, 19, 20, 21, 22, 6, 7, 8, 9, 20, 21, 6, 7, 8, 9, 19, 20, 21, 22, 20, 21, 22, 47, 97, 19, 20, 21, 22, 22,
        7, 8, 6, 7, 8, 9, 19, 20, 21, 84, 85, 86, 32, 33, 19, 20, 21, 22, 34, 35, 35, 35, 32, 33, 34, 35, 19, 20, 21, 22, 33, 34, 19, 20, 21, 6, 6, 7, 8, 9, 33, 34, 84, 85, 86, 32, 33, 34, 35, 35,
        20, 21, 19, 20, 21, 22, 32, 33, 34, 97, 98, 99, 45, 6, 32, 33, 34, 35, 47, 48, 48, 48, 45, 46, 47, 48, 32, 33, 34, 35, 46, 47, 32, 33, 34, 19, 19, 58, 59, 60, 6, 7, 6, 6, 7, 8, 9, 47, 48, 48,
        33, 34, 32, 33, 34, 35, 45, 46, 47, 110, 111, 112, 45, 19, 45, 46, 47, 48, 6, 7, 8, 9, 19, 20, 21, 22, 45, 46, 47, 48, 9, 6, 45, 46, 47, 32, 32, 71, 72, 73, 19, 20, 19, 19, 20, 21, 22, 99, 45, 46,
        46, 47, 45, 46, 47, 48, 7, 8, 9, 7, 8, 9, 9, 32, 6, 7, 8, 9, 9, 20, 21, 22, 32, 33, 6, 7, 8, 9, 9, 21, 22, 19, 20, 21, 22, 45, 45, 84, 85, 86, 32, 33, 32, 32, 33, 34, 35, 112, 85, 86,
        7, 45, 46, 47, 48, 19, 20, 21, 22, 20, 21, 22, 22, 45, 19, 20, 21, 22, 22, 33, 34, 35, 45, 46, 19, 20, 21, 22, 22, 34, 35, 6, 7, 8, 9, 7, 8, 97, 98, 99, 45, 46, 45, 45, 46, 47, 48, 97, 98, 99,
        7, 8, 9, 21, 22, 32, 33, 34, 35, 33, 34, 35, 35, 6, 7, 8, 9, 9, 35, 46, 6, 7, 8, 9, 32, 33, 34, 35, 35, 47, 48, 19, 20, 21, 22, 20, 21, 110, 111, 112, 34, 35, 19, 20, 21, 22, 34, 6, 7, 8,
        20, 21, 22, 34, 35, 45, 46, 47, 48, 46, 47, 48, 48, 19, 20, 21, 22, 22, 48, 86, 19, 20, 21, 22, 45, 46, 47, 48, 58, 59, 60, 32, 33, 34, 35, 33, 6, 7, 8, 9, 47, 48, 6, 7, 8, 9, 47, 19, 20, 21,
        33, 34, 35, 47, 48, 6, 7, 8, 9, 47, 48, 22, 46, 32, 33, 34, 35, 35, 98, 99, 32, 33, 34, 35, 97, 98, 99, 97, 71, 72, 73, 45, 46, 47, 48, 46, 19, 20, 21, 22, 20, 21, 19, 20, 21, 22, 9, 9, 33, 34,
        46, 47, 48, 6, 7, 19, 20, 21, 22, 33, 34, 35, 58, 45, 46, 47, 48, 48, 111, 112, 45, 46, 47, 48, 110, 111, 112, 110, 84, 85, 86, 72, 19, 20, 21, 22, 32, 33, 34, 35, 9, 34, 32, 33, 34, 35, 22, 22, 7, 8,
        7, 8, 9, 7, 8, 9, 33, 34, 35, 46, 47, 48, 71, 6, 7, 8, 9, 9, 8, 9, 6, 7, 8, 9, 6, 7, 8, 9, 97, 98, 99, 9, 6, 7, 8, 9, 45, 6, 7, 8, 9, 7, 45, 46, 47, 48, 35, 35, 20, 21,
        6, 7, 8, 9, 21, 22, 46, 47, 48, 7, 8, 9, 6, 19, 20, 21, 22, 22, 21, 22, 19, 20, 21, 22, 19, 20, 21, 22, 110, 111, 112, 22, 19, 20, 21, 6, 7, 19, 20, 21, 22, 20, 21, 45, 46, 47, 48, 48, 33, 34,
        19, 20, 21, 22, 34, 35, 48, 21, 19, 20, 21, 22, 19, 32, 33, 34, 35, 35, 34, 35, 32, 33, 34, 35, 32, 6, 7, 8, 9, 33, 34, 35, 32, 33, 34, 19, 20, 32, 33, 34, 35, 33, 34, 35, 32, 6, 7, 45, 46, 47,
        8, 9, 34, 35, 6, 7, 8, 9, 32, 6, 7, 8, 9, 45, 46, 47, 6, 7, 8, 9, 45, 46, 47, 48, 45, 19, 20, 21, 6, 7, 8, 9, 45, 46, 47, 32, 33, 45, 46, 47, 6, 7, 8, 9, 45, 19, 6, 7, 8, 9,
        21, 22, 47, 48, 19, 20, 21, 22, 45, 19, 20, 21, 22, 45, 46, 47, 19, 20, 21, 6, 7, 8, 9, 6, 7, 32, 33, 34, 6, 7, 8, 9, 19, 6, 7, 45, 46, 47, 48, 8, 19, 20, 21, 22, 6, 7, 8, 9, 21, 22,
        58, 59, 60, 21, 32, 33, 34, 35, 6, 32, 33, 34, 35, 6, 7, 8, 9, 33, 34, 6, 7, 8, 9, 19, 20, 45, 46, 47, 19, 20, 21, 22, 7, 19, 20, 21, 22, 19, 20, 21, 32, 33, 34, 35, 19, 20, 6, 7, 8, 9,
        71, 72, 73, 6, 7, 8, 9, 6, 7, 8, 9, 47, 48, 19, 20, 21, 22, 46, 47, 19, 20, 21, 22, 32, 6, 7, 8, 9, 32, 33, 34, 35, 20, 32, 33, 6, 7, 8, 9, 34, 45, 46, 47, 48, 32, 33, 19, 20, 21, 22,
        84, 85, 86, 19, 20, 6, 6, 19, 20, 21, 22, 35, 21, 32, 33, 34, 35, 8, 9, 32, 33, 34, 35, 45, 19, 20, 21, 6, 45, 46, 47, 48, 33, 45, 46, 19, 20, 21, 22, 47, 48, 7, 8, 9, 45, 46, 32, 33, 34, 35,
        97, 98, 99, 32, 33, 19, 19, 32, 33, 34, 35, 48, 34, 45, 46, 47, 48, 21, 22, 45, 46, 47, 48, 45, 32, 33, 34, 6, 7, 8, 32, 45, 46, 47, 48, 32, 33, 34, 35, 22, 19, 20, 21, 22, 6, 7, 45, 46, 47, 48,
        110, 111, 112, 45, 46, 32, 32, 45, 46, 47, 48, 46, 47, 32, 33, 32, 33, 34, 35, 6, 7, 6, 7, 6, 7, 8, 9, 19, 20, 6, 7, 8, 9, 7, 8, 45, 46, 47, 48, 35, 32, 33, 34, 35, 19, 20, 21, 22, 8, 9,
        19, 20, 21, 22, 21, 45, 45, 46, 47, 48, 84, 85, 84, 85, 6, 7, 8, 9, 48, 19, 20, 19, 20, 19, 20, 21, 22, 32, 33, 19, 20, 21, 22, 20, 21, 22, 45, 46, 47, 48, 45, 46, 47, 48, 32, 33, 34, 35, 21, 22,
        32, 33, 34, 35, 34, 35, 7, 8, 9, 19, 97, 98, 84, 85, 19, 20, 21, 22, 86, 32, 33, 32, 33, 32, 33, 34, 35, 6, 7, 32, 33, 34, 35, 33, 34, 35, 45, 6, 7, 8, 6, 7, 8, 9, 8, 9, 47, 48, 34, 35,
        45, 46, 47, 48, 7, 8, 9, 21, 22, 32, 110, 111, 97, 98, 32, 33, 34, 35, 99, 45, 46, 45, 46, 45, 46, 47, 48, 19, 20, 45, 46, 47, 48, 46, 47, 48, 9, 6, 7, 8, 19, 20, 21, 22, 21, 22, 45, 46, 47, 48,
        46, 47, 48, 6, 6, 7, 8, 9, 35, 45, 46, 47, 110, 84, 45, 46, 47, 48, 86, 19, 20, 21, 22, 84, 85, 86, 6, 7, 8, 9, 19, 20, 21, 22, 20, 21, 22, 19, 20, 21, 32, 33, 34, 35, 34, 35, 9, 7, 8, 9,
        46, 47, 48, 19, 19, 20, 21, 22, 48, 9, 6, 7, 8, 97, 98, 99, 97, 98, 99, 32, 33, 34, 35, 97, 98, 99, 19, 20, 21, 22, 32, 33, 34, 35, 33, 34, 35, 32, 33, 34, 45, 46, 47, 48, 47, 48, 9, 20, 21, 22,
        46, 47, 48, 32, 32, 33, 34, 35, 8, 9, 19, 20, 21, 110, 84, 85, 86, 111, 112, 84, 6, 7, 8, 9, 111, 112, 32, 33, 34, 35, 45, 46, 84, 85, 86, 7, 8, 45, 46, 47, 48, 7, 8, 19, 20, 21, 22, 33, 34, 35,
        6, 7, 8, 45, 45, 46, 47, 48, 21, 58, 59, 60, 34, 35, 97, 98, 99, 98, 99, 86, 19, 20, 21, 22, 97, 98, 45, 46, 47, 48, 86, 99, 97, 98, 99, 20, 21, 19, 20, 21, 22, 20, 21, 32, 33, 34, 35, 46, 47, 48,
        19, 20, 21, 6, 7, 8, 9, 33, 6, 71, 72, 73, 47, 48, 110, 111, 112, 111, 112, 99, 32, 33, 34, 84, 84, 85, 86, 112, 84, 85, 86, 84, 110, 111, 112, 33, 34, 6, 7, 8, 9, 33, 34, 45, 46, 47, 48, 6, 7, 8,
        32, 33, 34, 19, 20, 21, 22, 46, 19, 84, 85, 86, 7, 8, 9, 97, 110, 111, 112, 112, 8, 9, 47, 97, 97, 98, 99, 85, 97, 98, 99, 97, 58, 59, 60, 46, 47, 19, 20, 21, 22, 46, 6, 7, 8, 9, 7, 19, 20, 21,
        45, 6, 7, 8, 9, 34, 35, 8, 32, 97, 98, 99, 20, 21, 22, 110, 111, 112, 19, 20, 21, 6, 7, 110, 110, 111, 112, 98, 110, 111, 84, 85, 71, 72, 73, 8, 9, 32, 33, 34, 6, 7, 19, 20, 21, 22, 9, 32, 33, 34,
        45, 19, 20, 21, 22, 7, 8, 9, 45, 110, 111, 112, 7, 8, 9, 20, 21, 58, 59, 60, 34, 19, 20, 21, 22, 22, 110, 111, 112, 6, 7, 8, 84, 85, 86, 21, 6, 7, 8, 9, 9, 20, 32, 33, 34, 35, 22, 45, 46, 47,
        7, 32, 33, 34, 35, 20, 21, 22, 6, 7, 8, 9, 20, 21, 22, 33, 34, 71, 72, 73, 47, 32, 33, 34, 35, 35, 20, 21, 22, 19, 20, 21, 97, 98, 99, 34, 19, 20, 21, 22, 22, 33, 45, 46, 47, 48, 35, 32, 33, 34,
        6, 45, 46, 47, 48, 33, 34, 35, 19, 20, 21, 22, 33, 34, 35, 46, 47, 84, 85, 86, 33, 45, 46, 47, 48, 48, 33, 34, 35, 32, 33, 34, 110, 111, 112, 47, 32, 33, 34, 35, 35, 46, 45, 45, 46, 47, 48, 45, 46, 47,
        19, 20, 21, 22, 45, 46, 47, 48, 32, 33, 34, 35, 46, 47, 48, 46, 47, 97, 98, 99, 46, 47, 6, 7, 8, 9, 6, 7, 8, 9, 46, 47, 48, 9, 9, 9, 45, 46, 47, 48, 48, 48, 9, 9, 6, 7, 8, 45, 46, 47,
        32, 33, 34, 35, 45, 46, 47, 48, 45, 46, 47, 48, 20, 21, 22, 84, 85, 110, 111, 112, 8, 9, 19, 20, 21, 22, 19, 20, 21, 22, 22, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 19, 20, 21, 19, 45, 46,
        45, 46, 47, 48, 35, 84, 84, 85, 86, 84, 85, 86, 33, 34, 35, 97, 98, 99, 19, 20, 21, 22, 32, 33, 34, 35, 32, 33, 34, 35, 35, 34, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 32, 33, 34, 32, 33, 34,
        32, 33, 34, 35, 48, 97, 97, 98, 99, 97, 98, 99, 46, 47, 48, 110, 111, 112, 32, 33, 34, 35, 45, 46, 47, 48, 45, 46, 47, 48, 48, 47, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 45, 46, 47, 45, 46, 47
      }
    },
    {
      type = "tilelayer",
      name = "Water",
      x = 0,
      y = 0,
      width = 50,
      height = 50,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 145, 145,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 145, 146, 79, 80,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 146, 79, 80, 82, 54,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 145, 146, 79, 82, 54, 54, 54,
        41, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 146, 79, 80, 82, 54, 54, 54, 54,
        54, 44, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 146, 79, 82, 54, 54, 54, 54, 54, 54,
        54, 54, 44, 41, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 145, 145, 146, 79, 82, 54, 54, 54, 54, 54, 54, 54,
        54, 54, 54, 54, 44, 41, 41, 41, 41, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 146, 79, 80, 80, 82, 54, 54, 54, 54, 54, 54, 54, 54,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 44, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 41, 41, 41, 41, 80, 82, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 44, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 43, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54
      }
    },
    {
      type = "tilelayer",
      name = "PlantOverlap",
      x = 0,
      y = 0,
      width = 50,
      height = 50,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        129, 130, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        142, 143, 0, 228, 0, 0, 0, 0, 19, 20, 73, 73, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 151, 0, 0, 0, 151, 135, 2, 2, 2, 2, 134, 161, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 240, 241, 0, 0, 0, 0, 32, 33, 34, 35, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 146, 80, 80, 80, 81, 144, 2, 134, 0, 0, 0, 0, 0, 0, 0, 0,
        239, 240, 253, 254, 0, 0, 0, 0, 45, 46, 47, 48, 0, 0, 0, 0, 0, 0, 228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 92, 93, 93, 93, 83, 80, 81, 16, 123, 124, 0, 0, 0, 0, 0, 0,
        252, 253, 266, 267, 0, 73, 0, 0, 0, 0, 127, 128, 0, 0, 0, 0, 0, 240, 241, 0, 0, 0, 0, 0, 0, 0, 151, 0, 0, 0, 0, 151, 0, 122, 120, 106, 95, 93, 93, 93, 94, 16, 136, 137, 0, 0, 0, 0, 0, 0,
        265, 266, 0, 0, 0, 0, 0, 0, 0, 0, 140, 141, 0, 0, 0, 0, 240, 253, 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122, 119, 120, 106, 106, 106, 107, 16, 149, 150, 0, 0, 0, 0, 0, 0,
        278, 279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 253, 266, 267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 151, 0, 0, 0, 147, 148, 122, 28, 28, 28, 28, 121, 0, 0, 0, 0, 0, 0, 0, 0,
        236, 237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 239, 240, 253, 266, 279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 161, 0, 0, 0, 0, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        249, 250, 251, 251, 251, 251, 251, 251, 251, 251, 251, 251, 251, 252, 253, 266, 279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        262, 263, 264, 264, 264, 264, 264, 258, 259, 264, 264, 264, 264, 265, 266, 279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        275, 276, 277, 277, 277, 277, 277, 271, 272, 277, 277, 277, 277, 278, 279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 24, 25, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 52, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 65, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 64, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 78, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 77, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 24, 25, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 37, 38, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 112, 113, 0, 0, 0, 0, 0, 0, 64, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 126, 0, 0, 0, 0, 0, 0, 77, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 84, 84, 85, 86, 138, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 97, 97, 98, 99, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 110, 110, 111, 112, 99, 86, 86, 86, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        85, 86, 86, 85, 86, 0, 110, 111, 112, 112, 99, 99, 99, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        98, 99, 99, 86, 86, 0, 129, 110, 111, 112, 112, 112, 112, 112, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        111, 112, 112, 99, 99, 0, 142, 143, 0, 0, 0, 0, 84, 84, 85, 86, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        110, 111, 112, 112, 112, 0, 0, 0, 0, 0, 0, 0, 97, 97, 98, 99, 86, 86, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 148, 0, 0, 0, 0, 0, 123, 124, 0,
        0, 0, 0, 60, 60, 0, 0, 0, 0, 0, 0, 73, 110, 110, 111, 112, 99, 99, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 161, 0, 0, 0, 0, 0, 136, 137, 0,
        60, 127, 128, 60, 60, 73, 0, 0, 0, 0, 0, 0, 0, 0, 110, 111, 112, 112, 112, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 149, 150, 0,
        60, 140, 141, 60, 60, 60, 0, 0, 0, 0, 0, 0, 0, 86, 0, 0, 110, 111, 112, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        60, 0, 0, 0, 60, 60, 60, 60, 60, 60, 60, 0, 0, 86, 0, 75, 110, 111, 112, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 89, 90, 0, 0, 0, 147, 148, 0, 0, 147, 148, 0, 0, 0, 0, 0, 0, 0, 0,
        60, 0, 0, 75, 60, 60, 0, 0, 0, 75, 0, 0, 0, 86, 0, 0, 0, 110, 111, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 102, 103, 0, 0, 0, 0, 161, 0, 0, 0, 161, 0, 147, 148, 0, 0, 0, 0, 0,
        60, 60, 0, 0, 0, 0, 62, 0, 0, 86, 0, 0, 0, 99, 0, 0, 0, 110, 111, 112, 86, 86, 0, 0, 0, 0, 0, 0, 0, 0, 114, 115, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 75, 0, 86, 99, 0, 86, 86, 86, 0, 0, 0, 110, 111, 112, 99, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 124, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 99, 86, 99, 0, 0, 0, 110, 111, 112, 112, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 124, 0, 0, 0, 0, 136, 137, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 84, 85, 86, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 137, 0, 0, 0, 0, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 98, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 149, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 111, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      name = "Player",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "Player",
          type = "",
          shape = "rectangle",
          x = 432,
          y = 625.333,
          width = 17,
          height = 16.3333,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
