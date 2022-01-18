#include "rapid_responce_simulator.h"
#include <ros/ros.h>
#include <ctime>
using namespace std;
//This is a static class that mimics the abb_node RAPID side->It excepts the
//same msgs and return the same expected responces + time gap

Rapid_Responce_simulator::Rapid_Responce_simulator()
{

 cout<<"RAPID RESPONCE SIMULATOR - INITATED"<<std::endl;
 idcode =-1;
 nParams = -1;
 int jointPosition[6] = {0,0,0,0,0,0};

 double currentSpeed[4] = {0,0,0,0};
 double currentZone[7]={0,0,0,0,0,0,0};
 inMsg = "";
 outMsg = "";

 cartesian currentTool = {0,0,0,0,0,0,0};
 cartesian currentWobj = {0,0,0,0,0,0,0};
 cartesian CartesianPosition= {0,0,0,0,0,0,0};
 vector<vector<int>> speedBuffer = {};

}


  string Rapid_Responce_simulator::ServerIncomeMsg(string msg)
  {

  ParseMsg(msg);
  return(outMsg);
  }
  string Rapid_Responce_simulator::LoggerMsg()
  {
    time_t now = time(0);
    tm *ltm = localtime(&now);

    stringstream ss;
    ss<<fixed;
    ss<<setprecision(5);
    ss<<ltm->tm_mday<<" "<<ltm->tm_hour<<" "<<ltm->tm_sec<<" ";
    string tstamp = ss.str();
    ss.str("");



    if (JCswitch)

    {

      ss<<"# 0 "<<tstamp<<" ";
      ss<< CartesianPosition.ToString();
      JCswitch = !JCswitch;
      return ss.str();
    }
    else
    {

      ss<<"# 1 "<<tstamp<<" ";
      for(int i = 0;i<6;i++)
      {
        string sep = (i<5)?" ":"";
        ss<<jointPosition[i]<<sep;
      }

      JCswitch = !JCswitch;
      return ss.str();
    }
  }
  //DATA
  string Rapid_Responce_simulator::ResponceGenerator(string msg){return "";}
  //methods

  void Rapid_Responce_simulator::ParseMsg(string msg)
  {


    bool auxOk = true;
    bool end =false;
    int ind =1;
    size_t newInd = 0;
    int length =0;
    int indParam = 1;
    string subString = "";
    size_t hashPlace = msg.find_first_of('#',0);
    vector<string> splittedMsg{};
    vector<double> msgVals{};
 ;
    if(hashPlace>msg.length()){this->nParams = -1;}
    else
      {
 ;
      splittedMsg = SplitList(msg);

      RobotCommandTree(splittedMsg);
      }



  }
  void Rapid_Responce_simulator::RobotCommandTree(vector<string> msgDeco)
  {

    cout<<setprecision(5);
    cout<<std::fixed;

    string msgOut = "";
    int ok = SERVER_BAD_MSG;
    vector<double> msgNums{};
    double num=0;
    int cmdCode = stod(msgDeco[0]);

    for(int i=1;i<msgDeco.size();i++)
    {


      double num = stod(msgDeco[i]);
      msgNums.push_back(num);

    }

    switch(cmdCode)
    {

    case 0:// !Ping
        ok = OK_SERVER;
          break;

    case 1:// !Cartesian Move
        if (msgNums.size() == 7)
        {
        ok = OK_SERVER;
        cartesian newCart = {msgNums[0],msgNums[1],msgNums[2],msgNums[3],msgNums[4],msgNums[5],msgNums[6]};
        CartesianPosition = newCart;
        }
       break;

    case 2:// !Joint Move
        if(msgNums.size() ==6)
        {
          ok = OK_SERVER;
          for(int i=0;i<6;i++)
          {
            jointPosition[i] = msgNums[i];
          }
        }
        break;

    case 3:// !Get Cartesian Coordinates (with current tool and workobject)
      if (msgNums.size()==0)
      {
        ok = OK_SERVER;
        msgOut = CartesianPosition.ToString();
      }
      break;

    case 4:// !Get Joint Coordinates
      if (msgNums.size()==0)
      {
        stringstream ss;
        for(int i = 0;i<6;i++)
        {
          string sep = (i<5)?" ":"";
          ss<<jointPosition[i]<<sep;
        }
        msgOut =ss.str();
        ok = OK_SERVER;
      }
        break;

    case 5:// !Get external axis positions
        if (msgNums.size()==0)
        {
        msgOut = "METHOD NOT IMPLEMENTED";
        ok = OK_SERVER;
        }
        break;


    case 6:// !Set Tool
        if (msgNums.size()==7)
        {
         cartesian newTool = {msgNums[0],msgNums[1],msgNums[2],msgNums[3],msgNums[4],msgNums[5],msgNums[6]};
         currentTool = newTool;
         ok = OK_SERVER;
        }
        break;
      case 7:// !Set Work Object

      if (msgNums.size()==7)

      {
       cartesian newWobj = {msgNums[0],msgNums[1],msgNums[2],msgNums[3],msgNums[4],msgNums[5],msgNums[6]};
       currentWobj = newWobj;
       ok = OK_SERVER;

      }
        break;
      case 8:// !Set Speed of the Robot

      if (msgNums.size()==4)
      {
         ok = OK_SERVER;
        for(int i=0;i<4;i++){currentSpeed[i]=msgNums[i];}
      }
      else if (msgNums.size()==2) {
        ok = OK_SERVER;
        currentSpeed[0] = msgNums[0];
        currentSpeed[1] = msgNums[1];
      }
        break;
      case 9:// !Set zone data
      if (msgNums.size()==4)
      {
        if(msgNums[0]==1)
        {
          ok =OK_SERVER;
          currentZone[0]=1;
          for (int i=1;i<4;i++)
          {
            currentZone[i] = 0.0;
          }
        }


        else
          {
            currentZone[0]= 0.0;
            for (int i=1;i<4;i++)
            {
              currentZone[i] = msgNums[i];
            }

          }

        }


        break;
      case 30:// !Add Cartesian Coordinates to buffer
      if (msgNums.size() == 7)
      {
      ok = OK_SERVER;
      cartesian newCart = {msgNums[0],msgNums[1],msgNums[2],msgNums[3],msgNums[4],msgNums[5],msgNums[6]};
      CartesianBuffer.push_back(newCart);
      vector<int> newSpeed;
      for(int i=0;i<4;i++) {newSpeed[i] = currentSpeed[i];}
      speedBuffer.push_back(newSpeed);
      }

        break;
      case 31:// !Clear Cartesian Buffer
      if (msgNums.size()==0)
      {
        ok = OK_SERVER;
        CartesianBuffer.clear();
        speedBuffer.clear();
      }
        break;
      case 32:// !Get Buffer Size)
      if (msgNums.size()==0)
      {
      stringstream ss;
      ss<<CartesianBuffer.size();
      ss>>msgOut;
      ok = OK_SERVER;
      }
        break;
      case 33:// !Execute moves in cartesianBuffer as linear moves
        break;
      case 34:// !External Axis move
        break;
      case 35:// !Specify circPoint for circular move, and then wait on toPoint
        break;
      case 36:// !specify toPoint, and use circPoint specified previously
        break;
      case 98:// !returns current robot info: serial number, robotware version, and robot type
        break;
      case 99:// !Close Connection
        break;
      default:
        cout<<"WRONG MSG CODE!"<<endl;
   }
//compile msg



  stringstream ssout;
  ssout<<cmdCode<<" "<<ok<<" "<<msgOut;
  outMsg = ssout.str();
  }


  vector<string> Rapid_Responce_simulator::SplitList(string msg)
  {
    string space_delimiter = " ";
    vector<string> words{};

    size_t pos = 0;
    while ((pos = msg.find(space_delimiter)) != string::npos)
    {
        words.push_back(msg.substr(0, pos));
        msg.erase(0, pos + space_delimiter.length());
    }
  return words;

 }


  /*
  ################################
  #  RAPID LOGGER FILE MSGS      #
  ################################
      !Cartesian Coordinates
      position := CRobT(\Tool:=currentTool \WObj:=currentWObj);
      data := "# 0 ";
      data := data + date + " " + time + " ";
      data := data + NumToStr(ClkRead(timer),2) + " ";
      data := data + NumToStr(position.trans.x,1) + " ";
      data := data + NumToStr(position.trans.y,1) + " ";
      data := data + NumToStr(position.trans.z,1) + " ";
      data := data + NumToStr(position.rot.q1,3) + " ";
      data := data + NumToStr(position.rot.q2,3) + " ";
      data := data + NumToStr(position.rot.q3,3) + " ";
      data := data + NumToStr(position.rot.q4,3); !End of string
      IF connected = TRUE THEN
        SocketSend clientSocket \Str:=data;
      ENDIF
      WaitTime loggerWaitTime;

      !Joint Coordinates
      joints := CJointT();
      data := "# 1 ";
      data := data + date + " " + time + " ";
      data := data + NumToStr(ClkRead(timer),2) + " ";
      data := data + NumToStr(joints.robax.rax_1,2) + " ";
      data := data + NumToStr(joints.robax.rax_2,2) + " ";
      data := data + NumToStr(joints.robax.rax_3,2) + " ";
      data := data + NumToStr(joints.robax.rax_4,2) + " ";
      data := data + NumToStr(joints.robax.rax_5,2) + " ";
      data := data + NumToStr(joints.robax.rax_6,2); !End of string
      IF connected = TRUE THEN
        SocketSend clientSocket \Str:=data;


  ################################
  #  RAPID SERVER FILE MSGS      #
  ################################

    WHILE TRUE DO
          !//Initialization of program flow variables
          ok:=SERVER_OK;              !//Correctness of executed instruction.
          reconnected:=FALSE;         !//Has communication dropped after receiving a command?
          addString := "";

          !//Wait for a command
          SocketReceive clientSocket \Str:=receivedString \Time:=WAIT_MAX;
          ParseMsg receivedString;


              CASE 6: !Set Tool
                  IF nParams = 7 THEN
         WHILE (frameMutex) DO
              WaitTime .01; !// If the frame is being used by logger, wait here
         ENDWHILE
      frameMutex:= TRUE;
                      currentTool.tframe.trans.x:=params{1};
                      currentTool.tframe.trans.y:=params{2};
                      currentTool.tframe.trans.z:=params{3};
                      currentTool.tframe.rot.q1:=params{4};
                      currentTool.tframe.rot.q2:=params{5};
                      currentTool.tframe.rot.q3:=params{6};
                      currentTool.tframe.rot.q4:=params{7};
                      ok := SERVER_OK;
          frameMutex:= FALSE;
                  ELSE
                      ok:=SERVER_BAD_MSG;
                  ENDIF

              CASE 7: !Set Work Object
                  IF nParams = 7 THEN
                      currentWobj.oframe.trans.x:=params{1};
                      currentWobj.oframe.trans.y:=params{2};
                      currentWobj.oframe.trans.z:=params{3};
                      currentWobj.oframe.rot.q1:=params{4};
                      currentWobj.oframe.rot.q2:=params{5};
                      currentWobj.oframe.rot.q3:=params{6};
                      currentWobj.oframe.rot.q4:=params{7};
                      ok := SERVER_OK;
                  ELSE
                      ok:=SERVER_BAD_MSG;
                  ENDIF

              CASE 8: !Set Speed of the Robot
                  IF nParams = 4 THEN
                      currentSpeed.v_tcp:=params{1};
                      currentSpeed.v_ori:=params{2};
                      currentSpeed.v_leax:=params{3};
                      currentSpeed.v_reax:=params{4};
                      ok := SERVER_OK;
                  ELSEIF nParams = 2 THEN
            currentSpeed.v_tcp:=params{1};
            currentSpeed.v_ori:=params{2};
            ok := SERVER_OK;
          ELSE
                      ok:=SERVER_BAD_MSG;
                  ENDIF

              CASE 9: !Set zone data
                  IF nParams = 4 THEN
                      IF params{1}=1 THEN
                          currentZone.finep := TRUE;
                          currentZone.pzone_tcp := 0.0;
                          currentZone.pzone_ori := 0.0;
                          currentZone.zone_ori := 0.0;
                      ELSE
                          currentZone.finep := FALSE;
                          currentZone.pzone_tcp := params{2};
                          currentZone.pzone_ori := params{3};
                          currentZone.zone_ori := params{4};
                      ENDIF
                      ok := SERVER_OK;
                  ELSE
                      ok:=SERVER_BAD_MSG;
                  ENDIF

              CASE 30: !Add Cartesian Coordinates to buffer
                  IF nParams = 7 THEN
                      cartesianTarget :=[[params{1},params{2},params{3}],
                                          [params{4},params{5},params{6},params{7}],
                                          [0,0,0,0],
                                          externalAxis];
                      IF BUFFER_POS < MAX_BUFFER THEN
                          BUFFER_POS := BUFFER_POS + 1;
                          bufferTargets{BUFFER_POS} := cartesianTarget;
                          bufferSpeeds{BUFFER_POS} := currentSpeed;
                      ENDIF
                      ok := SERVER_OK;
                  ELSE
                      ok:=SERVER_BAD_MSG;
                  ENDIF


                  IF nParams = 0 THEN
                      BUFFER_POS := 0;
                      ok := SERVER_OK;
                  ELSE
                      ok:=SERVER_BAD_MSG;
                  ENDIF

              CASE 32: !Get Buffer Size)
                  IF nParams = 0 THEN
                      addString := NumToStr(BUFFER_POS,2);
                      ok := SERVER_OK;
                  ELSE
                      ok:=SERVER_BAD_MSG;
                  ENDIF

              CASE 33: !Execute moves in cartesianBuffer as linear moves
                  IF nParams = 0 THEN
                      FOR i FROM 1 TO (BUFFER_POS) DO
                          MoveL bufferTargets{i}, bufferSpeeds{i}, currentZone, currentTool \WObj:=currentWobj ;
                      ENDFOR
                      ok := SERVER_OK;
                  ELSE
                      ok:=SERVER_BAD_MSG;
                  ENDIF

              CASE 34: !External Axis move
                  IF nParams = 6 THEN
                      externalAxis :=[params{1},params{2},params{3},params{4},params{5},params{6}];
                      jointsTarget := CJointT();
                      jointsTarget.extax := externalAxis;
                      ok := SERVER_OK;
                      moveCompleted := FALSE;
                      MoveAbsJ jointsTarget, currentSpeed, currentZone, currentTool \Wobj:=currentWobj;
                      moveCompleted := TRUE;
                  ELSE
                      ok :=SERVER_BAD_MSG;
                  ENDIF

              CASE 35: !Specify circPoint for circular move, and then wait on toPoint
                  IF nParams = 7 THEN
                      circPoint :=[[params{1},params{2},params{3}],
                                  [params{4},params{5},params{6},params{7}],
                                  [0,0,0,0],
                                  externalAxis];
                      ok := SERVER_OK;
                  ELSE
                      ok:=SERVER_BAD_MSG;
                  ENDIF

              CASE 36: !specify toPoint, and use circPoint specified previously
                  IF nParams = 7 THEN
                      cartesianTarget :=[[params{1},params{2},params{3}],
                                          [params{4},params{5},params{6},params{7}],
                                          [0,0,0,0],
                                          externalAxis];
                      MoveC circPoint, cartesianTarget, currentSpeed, currentZone, currentTool \WObj:=currentWobj ;
                      ok := SERVER_OK;
                  ELSE
                      ok:=SERVER_BAD_MSG;
                  ENDIF

              CASE 98: !returns current robot info: serial number, robotware version, and robot type
                  IF nParams = 0 THEN
                      addString := GetSysInfo(\SerialNo) + "*";
                      addString := addString + GetSysInfo(\SWVersion) + "*";
                      addString := addString + GetSysInfo(\RobotType);
                      ok := SERVER_OK;
                  ELSE
                      ok :=SERVER_BAD_MSG;
                  ENDIF

              CASE 99: !Close Connection
                  IF nParams = 0 THEN
                      TPWrite "SERVER: Client has closed connection.";
                      connected := FALSE;
                      !//Closing the server
                      SocketClose clientSocket;
                      SocketClose serverSocket;

                      !Reinitiate the server
                      ServerCreateAndConnect ipController,serverPort;
                      connected := TRUE;
                      reconnected := TRUE;
                      ok := SERVER_OK;
                  ELSE
                      ok := SERVER_BAD_MSG;
                  ENDIF
              DEFAULT:
                  TPWrite "SERVER: Illegal instruction code";
                  ok := SERVER_BAD_MSG;
          ENDTEST

          !Compose the acknowledge string to send back to the client
          IF connected = TRUE THEN
              IF reconnected = FALSE THEN
            IF SocketGetStatus(clientSocket) = SOCKET_CONNECTED THEN
              sendString := NumToStr(instructionCode,0);
                      sendString := sendString + " " + NumToStr(ok,0);
                      sendString := sendString + " " + addString;
                      SocketSend clientSocket \Str:=sendString;
            ENDIF
              ENDIF
          ENDIF
      ENDWHILE

  */
