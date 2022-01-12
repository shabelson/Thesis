#ifndef RAPID_RESPONCE_SIMULATOR_H
#define RAPID_RESPONCE_SIMULATOR_H

#include <iomanip>
#include <stdlib.h>
#include <sstream>
#include <string>
#include <vector>
#include <iostream>

using namespace std;

const double GAP_TIME = 0.01;
const int OK_SERVER = 1;
const int SERVER_BAD_MSG =  0;


struct cartesian
{
  double loc[3];
  double trans[4];
  string ToString()
  {
    string sep = " ";
    stringstream ss;
    ss<<fixed;
    ss<<setprecision(5);
    for(double l:loc)
    {
      ss << ("%f",l) << sep;
    }
    for(int i=0;i<4;i++)
    {
      sep = (i<3)?" ":"";
      ss << ("%f",trans[i]) << sep;
    }
    return ss.str();
  }
};



class Rapid_Responce_simulator
{
public:
  bool JCswitch  = true;
  Rapid_Responce_simulator();
  string ServerIncomeMsg( string msg);
  string LoggerMsg();
  private:
  //DATA
  int idcode;
  int nParams;
  string inMsg;
  string outMsg;
  string ResponceGenerator( string msg);
  double jointPosition[6];
  int currentSpeed[4];
  double currentZone[7];
  cartesian CartesianPosition;
  cartesian currentTool;
  cartesian currentWobj;
  vector<cartesian> CartesianBuffer;
  vector<vector<double>> jointPositionBuffer;
  vector<vector<int>> speedBuffer;

  //methods
  void ParseMsg( string msg);
  vector< string> SplitList(string msg);
  void RobotCommandTree(vector<string>);

};


#endif // RAPID_RESPONCE_SIMULATOR_H
