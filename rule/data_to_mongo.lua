---@diagnostic disable: undefined-global

-- Success
function Success()

end

-- Failed
function Failed(error)
    print("failed:", error)
end

-- Actions

Actions = {
    function(args)
        local dataTable, err1 = rhilexlib:J2T(data)
        if err1 ~= nil then
            return true, args
        end
        for _k, entity in pairs(dataTable) do
            data:ToMongoDB("OUT8404b5afb7fe4baea335ebcb0d821491", rhilexlib:T2J(entity["value"]))
        end
        return true, args
    end
}
