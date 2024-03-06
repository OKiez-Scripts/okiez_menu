return {

    spectate_player = {
        label = "Spectate Player",
        permission = "mod",
        args = {
            player_dropdown = {
                type = "dropdown",
                label = "Select Player",
                data = "players",
                showValue = true
            },
            confirm_button = {
                type = "button",
                label = "Confirm",
                action = "admin:server:spectate"
            }
        }
    },

    test_action = {
        label = "Test Action",
        permission = "mod",
        event = "admin:client:test"
    },

}
