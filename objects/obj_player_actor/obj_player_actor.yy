{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_player_actor",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Actors",
    "path": "folders/Objects/Game Objects/Actors.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spr_left_move","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"spr_actor_walk_left","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spr_right_move","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"spr_actor_walk_right","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spr_shooting","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"spr_actor_idle_shooting","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"gun_position_offset_x","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"gun_position_offset_y","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"-32","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_actor_idle",
    "path": "sprites/spr_actor_idle/spr_actor_idle.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}