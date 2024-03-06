fx_version 'cerulean'
game "gta5"
lua54 'yes'

author "OK1ez"
version '1.0.0'

client_script {
  "config/actions.lua",
  'client/**',
}

server_script {
  "config/webhook.lua",
  "server/**"
}

shared_script {
  '@ox_lib/init.lua',
  "shared/**",
}

files {
  'html/**',
  'locales/*.json'
}

-- ui_page 'html/index.html'
ui_page 'http://localhost:5173/'

ox_lib 'locale'