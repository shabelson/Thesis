
"use strict";

let robot_SetJoints = require('./robot_SetJoints.js')
let robot_SetComm = require('./robot_SetComm.js')
let robot_SpecialCommand = require('./robot_SpecialCommand.js')
let robot_GetJoints = require('./robot_GetJoints.js')
let robot_SetSpeed = require('./robot_SetSpeed.js')
let robot_IsMoving = require('./robot_IsMoving.js')
let robot_Ping = require('./robot_Ping.js')
let robot_SetVacuum = require('./robot_SetVacuum.js')
let robot_SetZone = require('./robot_SetZone.js')
let robot_SetDIO = require('./robot_SetDIO.js')
let robot_SetCartesian = require('./robot_SetCartesian.js')
let robot_SetWorkObject = require('./robot_SetWorkObject.js')
let robot_SetTool = require('./robot_SetTool.js')
let robot_GetCartesian = require('./robot_GetCartesian.js')
let robot_Stop = require('./robot_Stop.js')
let robot_SetTrackDist = require('./robot_SetTrackDist.js')

module.exports = {
  robot_SetJoints: robot_SetJoints,
  robot_SetComm: robot_SetComm,
  robot_SpecialCommand: robot_SpecialCommand,
  robot_GetJoints: robot_GetJoints,
  robot_SetSpeed: robot_SetSpeed,
  robot_IsMoving: robot_IsMoving,
  robot_Ping: robot_Ping,
  robot_SetVacuum: robot_SetVacuum,
  robot_SetZone: robot_SetZone,
  robot_SetDIO: robot_SetDIO,
  robot_SetCartesian: robot_SetCartesian,
  robot_SetWorkObject: robot_SetWorkObject,
  robot_SetTool: robot_SetTool,
  robot_GetCartesian: robot_GetCartesian,
  robot_Stop: robot_Stop,
  robot_SetTrackDist: robot_SetTrackDist,
};
