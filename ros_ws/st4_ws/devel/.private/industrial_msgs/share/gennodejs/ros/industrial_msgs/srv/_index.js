
"use strict";

let SetDrivePower = require('./SetDrivePower.js')
let StartMotion = require('./StartMotion.js')
let SetRemoteLoggerLevel = require('./SetRemoteLoggerLevel.js')
let GetRobotInfo = require('./GetRobotInfo.js')
let CmdJointTrajectory = require('./CmdJointTrajectory.js')
let StopMotion = require('./StopMotion.js')

module.exports = {
  SetDrivePower: SetDrivePower,
  StartMotion: StartMotion,
  SetRemoteLoggerLevel: SetRemoteLoggerLevel,
  GetRobotInfo: GetRobotInfo,
  CmdJointTrajectory: CmdJointTrajectory,
  StopMotion: StopMotion,
};
