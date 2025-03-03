# HideCore-Datapack
A simple to setup Datapack that turns any Minecraft world/server into H&amp;S.

> [!WARNING]
>**Required Minecraft version: 1.21.4**

# Features

✔️ Auto End Game (When 1 player or one team dies)!

✔️ Setting book and custom /trigger commands!

✔️ No Coordinates needed! (No Coordinates required to be hardcoded)!

✔️ Seeker Tool (Gives Hiders a glowing effect on drop)!

✔️ Timer ( 5 min, 7 min, 10 min, 15 min, 20 min )!

✔️ Glowing Fireworks (Gives Hiders a glowing effect)!

✔️ Extra Hider HP (Default:10 , 14, 20)!

✔️ Winrate system ( Wins/Lose/Total played...)!

✔️ Auto Firework (Must be configured in ```HideCore\data\core\function\mechanics\firework.mcfunction```)!

✔️ Anti Leave system (If player disconnects player role downgrades Hider -> seeker -> spectator (out of game) )

# Installation

> [!CAUTION]
> Before adding Datapack to your server/world make sure you make a backup
> because datapack uses spawnpoints, teleportation, item clearing and other that may or will break
> survival

1. Download and move ```HideCore.zip``` in ```[world name] / datapacks ```
2. Enable datapack by typing ```/datapack enable "file/HideCore"``` in your world/server
> [!NOTE]
> You may need to use ```/datapack list``` command before if datapack`s name isnt ```HideCore.zip```
3. If you received message "└ Core loaded" it means datapack was loaded, then use ```/function core:install/install_all```
4. Setup markers (Spawns and lobby) ```/function core:install/set_markers``` and follow the instruction in chat
> Spawn eggs will be replaced with clickable text in chat in future
5. Setup Hide & Seek settings in book (If you deleted it before ```/function core:install/setting_book```)
> Additionally you can place wooden sign (Stats) in your lobby

# How to play?

```/function _:start_game```
> You may make a command block with that function in your lobby if you want

```/function _:end_game```

```/function _:reload```

> If you decide to modify datapack and you are lazy to unload and load pack again and again

# Custom commands

```/trigger lobby``` (Works if game isnt running)

```/trigger self_kill``` (If player got bored or something like that)

```/trigger stats``` (displays Win rate and other stats)

# Contribution

I am not a god at coding so if you have any suggestion / improvment feel free to make pull requests, because pack was originally made for 1.16.5 but after some time I kinda rewrite all code keeping parts of original pack for 1.20.6, so there may be some unused / useless functions that could be done better, for example debug.mcfunction that shouldnt exsist in fact
