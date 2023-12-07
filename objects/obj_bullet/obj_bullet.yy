{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_bullet",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Bullet",
    "path": "folders/Objects/Game Objects/Bullet.yy",
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"damage","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"1","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spd_bullet","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"20","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"size_loss","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":1.0,"rangeMin":0.0,"value":"0.35","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"obj_target_search","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"obj_target","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_bullet_simple",
    "path": "sprites/spr_bullet_simple/spr_bullet_simple.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}