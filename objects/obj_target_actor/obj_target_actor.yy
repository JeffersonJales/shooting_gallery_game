{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_target_actor",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":7,"eventType":7,"isDnD":false,},
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spr_idle","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"sprite_index","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spr_hurt","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"spr_basic_target_hurt","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spr_death","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"spr_basic_target_death","varType":5,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_basic_target_idle",
    "path": "sprites/spr_basic_target_idle/spr_basic_target_idle.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}