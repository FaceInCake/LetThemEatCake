// File: kubejs/server_scripts/motd.js
PlayerEvents.loggedIn(event => {
    const player = event.player;
    const server = event.server;

	function tellDelayed(delaySeconds, message) {
		server.scheduleInTicks(20 * delaySeconds, () => {
			player.tell(message);
		});
	}

	function key(text) {
		return Text.of(text).color('#00FFFF');
	}

    if (!player.stages.has('cake_welcome_shown')) {
        player.stages.add('cake_welcome_shown');

        tellDelayed(15, Text.of(`Welcome Mr. ${player.name.getString()}!`));
        tellDelayed(17, Text.of('Hold ').append(key('[R]')).append(Text.of(' for map controls')));
        tellDelayed(19, Text.of('Hold ').append(key('[G]')).append(Text.of(' for opening various menus')));
        tellDelayed(21, Text.of('')
            .append(key('[Z]')).append(Text.of(' zoom - '))
            .append(key('[X/C]')).append(Text.of(' jetpack - '))
            .append(key('[V]')).append(Text.of(' 3rd person - '))
            .append(key('[B]')).append(Text.of(' backpack'))
        );
        tellDelayed(23, Text.of('Ive tried to frontload important items in the JEI list, and put decorative blocks in the back.'));
		tellDelayed(25, Text.of('You can also view the ').append(Text.of('Advancements').green()).append(Text.of(' for quests that can be done.')));
        tellDelayed(27, Text.of('Eat unique food items to increase your max health, check the food book!').green());
    } else {
        let currentTime = player.level.getDayTime() % 24000;
		let timeText = currentTime < 13000 ? Text.of('daytime').gold() : Text.of('nighttime').color('#340739');
        player.tell(
            Text.of(`Welcome back ${player.name.getString()}, it is currently `).append(timeText).append(Text.of('.'))
        );
    }
});