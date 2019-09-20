# Levels

a level belongs to a map.

while the level is loading the player is left on the loading level.



## The 'Loading Level' Level

the idea is like the no internet dinosaur game

i want the player to never not be falling so even in the 

## the process of creating a new level:

#### 1. the 3d modeler
create a landscape / scene in something like blender and import each mesh as a obstacle or decoration.
then add: 
- goals
- the start point 
- end points
- the target
- select a background

I want someone to be able to take a mesh of a city and use that as the obstacles in the game.

#### 2. pre built obstacles

someone added obstacles that are prebuilt with decorations and shapes in their level.


## level.data

the data needed to add objects into a scene to recreate a level.

**Q**: Do i attempt to abstract the data or do I just save thw whole scene?

**A**: I want players to be able to create and share maps. if i am going to be hosting maps on a server that the game fetches, then i will want the data to be abstracted to json for easy hosting and fast fetching.


```
obstacles: {
    location: {
        x:0,y:0,z:0
    },
    rotation: {
        x:0,y:0,z:0
    },
}
```


