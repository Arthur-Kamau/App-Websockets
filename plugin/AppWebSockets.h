//
// Created by kamau on 12/1/20.
//

#include <string>
#include <iostream>
#ifndef APP_WEBSOCKETS_APPWEBSOCKETS_H
#define APP_WEBSOCKETS_APPWEBSOCKETS_H


class AppWebSockets {

public:
   void connect();
   void subscribe(std::string topic);
   void unSubscribe(std::string topic);
   void disconnect();
};


#endif //APP_WEBSOCKETS_APPWEBSOCKETS_H
