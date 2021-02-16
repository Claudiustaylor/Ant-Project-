--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:6801d04754c1167a23669e08f7d797d9:6b5bf764631ad107f716f618977a79c7:910fc4b7cd9a9f708718a70048ba1823$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- __red_ant_walk-0
            x=161,
            y=1,
            width=44,
            height=76,

            sourceX = 3,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-1
            x=207,
            y=1,
            width=44,
            height=76,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-2
            x=159,
            y=79,
            width=46,
            height=76,

            sourceX = 3,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-3
            x=107,
            y=79,
            width=50,
            height=76,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-4
            x=109,
            y=1,
            width=50,
            height=76,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-5
            x=1,
            y=157,
            width=52,
            height=76,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-6
            x=55,
            y=1,
            width=52,
            height=76,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-7
            x=107,
            y=157,
            width=48,
            height=76,

            sourceX = 3,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-8
            x=205,
            y=157,
            width=46,
            height=76,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-9
            x=207,
            y=79,
            width=44,
            height=76,

            sourceX = 6,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-10
            x=157,
            y=157,
            width=46,
            height=76,

            sourceX = 6,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-11
            x=55,
            y=79,
            width=50,
            height=76,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-12
            x=1,
            y=1,
            width=52,
            height=76,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-13
            x=1,
            y=79,
            width=52,
            height=76,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
        {
            -- __red_ant_walk-14
            x=55,
            y=157,
            width=50,
            height=76,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 76
        },
    },

    sheetContentWidth = 252,
    sheetContentHeight = 234
}

SheetInfo.frameIndex =
{

    ["__red_ant_walk-0"] = 1,
    ["__red_ant_walk-1"] = 2,
    ["__red_ant_walk-2"] = 3,
    ["__red_ant_walk-3"] = 4,
    ["__red_ant_walk-4"] = 5,
    ["__red_ant_walk-5"] = 6,
    ["__red_ant_walk-6"] = 7,
    ["__red_ant_walk-7"] = 8,
    ["__red_ant_walk-8"] = 9,
    ["__red_ant_walk-9"] = 10,
    ["__red_ant_walk-10"] = 11,
    ["__red_ant_walk-11"] = 12,
    ["__red_ant_walk-12"] = 13,
    ["__red_ant_walk-13"] = 14,
    ["__red_ant_walk-14"] = 15,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
