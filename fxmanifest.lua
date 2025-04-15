fx_version 'cerulean'
game 'gta5'

description 'Egghunt Resource - Interactive Resources'

-- shared_scripts {
--     -- Add shared scripts here if needed
-- }

client_scripts {
    'modules/client/cl_egghunt.lua' -- Egg hunt client script
}

server_scripts {
    'modules/server/sv_egghunt.lua' -- Egg hunt server script
}

dependencies {
    'ox_target' -- Required for the egg hunt functionality
}