// File: kubejs/server_scripts/motd.js
PlayerEvents.loggedIn(event => {
    const player = event.player;
    const server = event.server;

    if (!player.stages.has('welcome_shown')) {
        player.stages.add('welcome_shown');

        // Helper for delayed messages
        function tellDelayed(delaySeconds, message) {
            server.scheduleInTicks(20 * delaySeconds, () => {
                player.tell(message);
            });
        }

        // Hardcoded cyan key
        function key(text) {
            return Text.of(text).color('cyan');
        }

        tellDelayed(1, Text.of('Welcome Mr. ' + player.name + '!'));
        tellDelayed(2, Text.of('Hold ').append(key('[R]')).append(Text.of(' for map controls')));
        tellDelayed(3, Text.of('Hold ').append(key('[G]')).append(Text.of(' for opening various menus')));
        tellDelayed(4, Text.of('')
            .append(key('[Z]')).append(Text.of(' zoom - '))
            .append(key('[X/C]')).append(Text.of(' jetpack - '))
            .append(key('[V]')).append(Text.of(' third person - '))
            .append(key('[B]')).append(Text.of(' backpack'))
        );
        tellDelayed(5, Text.of('There are a bunch of ').append(Text.of('bookmarked items').gold()).append(Text.of(' to showcase the various functional mods')));
        tellDelayed(6, Text.of('Eat unique food items to increase your max health, check the food book!').green());
    } else {
        const time = player.level.getDayTime() % 24000;
        const isDaytime = time < 13000;
        const timeText = isDaytime ? 'daytime' : 'nighttime';
        const timeColor = isDaytime ? 'gold' : 'dark_purple';

        player.tell(
            Text.of('Welcome back ' + player.name + ', ').white()
                .append(Text.of('it is currently ' + timeText + '.').color(timeColor))
        );
    }
});