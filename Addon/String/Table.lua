--[[
    String Table

    Copyright 2018 okulo

    To reduce memory usage, strings are installed directly without an intermediate environment
    variable, and no version control is used.
]]

local GC = GuildContributionsAddonContainer
local STRING_PREFIX = GC.ADDON_NAME.."_";

-- Prepend the addon identifier and associate a string value.
function GC.LocalizeString( aId, aValue )
    ZO_CreateStringId( STRING_PREFIX..aId, aValue );
end

-- Returns the string with the given ID
function GC.S( aId )
    local idx = _G[STRING_PREFIX..aId];
    if( idx == nil ) then
        return aId; -- Return ID string if not found
    end
    return GetString( idx );
end

local s = GC.LocalizeString

s( "AMOUNT", "Amount" )
s( "BTN_CONTRIBUTE", "Contribute Now" )
s( "CLEAR", "Clear" )
s( "CONTRIBUTION_APPLIED", "Contribution recorded successfully!" )
s( "CONTRIBUTION_DUE_IN", "Contribution due in" )
s( "CONTRIBUTION_DUE_NOW", "Contribution due |cff0000NOW|r" )
s( "CONTRIBUTION_FAILED", "Contribution failed" )
s( "CONTRIBUTION_NOT_RECORDED", "Contribution recording not started" )
s( "CONTRIBUTION_PAST_DUE", "Contribution is |cff0000PAST DUE|r" )
s( "DAY", "Day" )
s( "DEFAULT_GUILD", "Using default settings for guild" )
s( "FRIDAY", "Friday" )
s( "GUI_TITLE", "Guild Contributions" )
s( "GUILD", "Guild" )
s( "GUILD_BANK", "Guild Bank" )
s( "HELP_OPEN_GUILD_BANK", "Open the Guild Bank to deposit" )
s( "LOADED", "Loaded" )
s( "MANUAL", "Manual" )
s( "MONDAY", "Monday" )
s( "NONE", "None" )
s( "OPTION_CONTRIBUTION_METHOD", "Contribution method" )
s( "OPTION_CONTRIBUTION_RULE", "Contribution rule" )
s( "OPTION_DEBUG", "Debug" )
s( "OPTION_EXTRA", "Extra Options" )
s( "OPTION_HDR_GENERAL", "General" )
s( "OPTION_LAST_CONTRIBUTION", "Last contribution" )
s( "OPTION_LOCK_WINDOW_POS", "Lock window position" )
s( "OPTION_SHOW_MSG_ON_STARTUP", "Show message on startup" )
s( "OPTION_RESET", "Reset" )
s( "OPTION_UTC_OFFSET", "Local Offset from UTC (hours)" )
s( "RESET_SETTINGS", "Settings have been reset to default." )
s( "REMOVE_GUILD", "Removing settings for guild" )
s( "SATURDAY", "Saturday" )
s( "SUNDAY", "Sunday" )
s( "THURSDAY", "Thursday" )
s( "TUESDAY", "Tuesday" )
s( "WEDNESDAY", "Wednesday" )
s( "WEEKDAY", "Weekday" )
s( "WINDOW_NO_RULE", "No rule set" )