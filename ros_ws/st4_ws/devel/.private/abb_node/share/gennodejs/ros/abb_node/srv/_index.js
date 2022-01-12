
"use strict";

let robot_SetSpeed = require('./robot_SetSpeed.js')
let robot_SpecialCommand = require('./robot_SpecialCommand.js')
let robot_SetDIO = require('./robot_SetDIO.js')
let robot_SetZone = require('./robot_SetZone.js')
let robot_SetVacuum = require('./robot_SetVacuum.js')
let robot_SetTool = require('./robot_SetTool.js')
let robot_GetJoints = require('./robot_GetJoints.js')
let robot_GetCartesian = require('./robot_GetCartesian.js')
let robot_SetTrackDist = require('./robot_SetTrackDist.js')
let robot_Stop = require('./robot_Stop.js')
let robot_IsMoving = require('./robot_IsMoving.js')
let robot_Ping = require('./robot_Ping.js')
let robot_SetJoints = require('./robot_SetJoints.js')
let robot_SetCartesian = require('./robot_SetCartesian.js')
let robot_SetComm = require('./robot_SetComm.js')
let robot_SetWorkObject = require('./robot_SetWorkObject.js')

module.exports = {
  robot_SetSpeed: robot_SetSpeed,
  robot_SpecialCommand: robot_SpecialCommand,
  robot_SetDIO: robot_SetDIO,
  robot_SetZone: robot_SetZone,
  robot_SetVacuum: robot_SetVacuum,
  robot_SetTool: robot_SetTool,
  robot_GetJoints: robot_GetJoints,
  robot_GetCartesian: robot_GetCartesian,
  robot_SetTrackDist: robot_SetTrackDist,
  robot_Stop: robot_Stop,
  robot_IsMoving: robot_IsMoving,
  robot_Ping: robot_Ping,
  robot_SetJoints: robot_SetJoints,
  robot_SetCartesian: robot_SetCartesian,
  robot_SetComm: robot_SetComm,
  robot_SetWorkObject: robot_SetWorkObject,
};
