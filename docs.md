# NewWave Datapack - Documentation 📚

- **[Global](#global)**
  - [Triggers](#triggers)
  - [Pads](#pads)
    - *[Launchpad](#launchpad)*
- **[Management](#management)**
  - [Teams](#teams)
  - [Admin menu](#admin-menu)
- **[Developing](#developing)**
  - [Delayer](#delayer)

## Global

### Triggers

Triggers can be activated inside the chat by players to execute a specific action.

|  Name |            Description           |
|-------|----------------------------------|
| spawn | Makes the player return to spawn |

### Pads

Pads are carpets below armor stands that make different actions.

|    Name   |        Tag       |    Color    |                       Description                      |
|-----------|------------------|-------------|--------------------------------------------------------|
| Spawn     | `pads.spawn`     | Light Green | Makes the player return to spawn                       |
| Speed     | `pads.speed`     | Light Blue  | Gives a 3 seconds speed boost                          |
| Launchpad | `pads.launchpad` | Purple      | Launches the player to a location. *See details below* |

#### Launchpad

A launchpad is created with a `pads.launchpad` tag and a `pads.launchpad.*name*` tag where `*name*` is an identifier for this specific launchpad. Then, add this command into an execution loop with the according parameters:

```mcfunction
execute at @e[type=minecraft:armor_stand,tag=pads.launchpad.*name*] run data modify entity @e[type=minecraft:armor_stand,tag=pads.launchpad.guide,distance=..1,limit=1] Motion set value [*x_motion*d, *y_motion*d, *z_motion*d]
```

Motion is the initial speed of the launch, in meters/tick and in the three dimensions of space. The `d` suffix is mandatory so as to create an array uniquely made of doubles.

## Management

### Teams

Teams separate all the users of NewWave between different categories according to their permissions:

| Name      | Description                                      | Color  | Permissions      | Advice                                            |
|-----------|--------------------------------------------------|--------|------------------|---------------------------------------------------|
| member    | The default team for players                     | Green  | Play games, chat |                                                   |
| moderator | Helps players and manages violation of the rules | Orange | Warn, jail, ban  |                                                   |
| admin     | Manages the server and the teams                 | Red    | All              | Give operator privileges to have full permissions |

### Admin menu

To display content when an administrator requests the menu, make your command check for score `admin.menu` from player `Global`:

```mcfunction
execute if score Global admin.menu matches 1 run ...
```

Place the command inside a loop so it can instantly react to a menu request.

## Developing

### Delayer

The delayer is a system that enables commands to be executed only after a certain amount of time. To set a delay on a command, use this template:

```mcfunction
summon command_block_minecart 0 40 0 {Tags:["delay"],PortalCooldown:*delay*,Command:"*your command*"}
```

*delay* is the delay after which the command is executed, in ticks (20 ticks = 1 second).
