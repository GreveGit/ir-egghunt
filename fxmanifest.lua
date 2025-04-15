fx_version 'cerulean'
game 'gta5'

description 'Core Resource - Mancave Roleplay'

shared_scripts {
    -- Add shared scripts here if needed
}

client_scripts {
    'modules/client/api-client/cl_mongodb.lua', -- MongoDB client API
    'modules/client/cl_egghunt.lua' -- Egg hunt client script
}

server_scripts {
    'modules/server/api-server/sv_mongodb.lua', -- MongoDB server API
    'modules/server/sv_egghunt.lua' -- Egg hunt server script
}

dependencies {
    'ox_target' -- Required for the egg hunt functionality
}