
local old
old = hookmetamethod(
    game,
    "__namecall",
    function(self, ...)
        local method = tostring(getnamecallmethod())
        if string.lower(method) == "kick" then
            return wait(9e9)
        end
        return old(self, ...)
    end
)
