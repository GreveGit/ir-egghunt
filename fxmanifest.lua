fx_version 'cerulean'
game 'gta5'

description 'Egghunt Resource - Interactive Resources'

shared_scripts {
    'modules/shared/config.lua' -- Egg hunt config
}

client_scripts {
    'modules/client/cl_egghunt.lua' -- Egg hunt client side
}

server_scripts {
    'modules/server/sv_egghunt.lua' -- Egg hunt server side
}

dependencies {
    'ox_target' -- Required for the egg hunt functionality
}