//
// Created by kamau on 12/2/20.
//

#ifndef APP_WEBSOCKETS_APPWEBSOCKETSCONNECTIONOBJECT_H
#define APP_WEBSOCKETS_APPWEBSOCKETSCONNECTIONOBJECT_H

#include <string>
#include <map>

class AppWebSocketsConnectionObject {
public:
    std::string url;
    int port;
    bool forceSSl;
    std::string username;
    std::string password;
    std::map<int, std::string> header;

};


#endif //APP_WEBSOCKETS_APPWEBSOCKETSCONNECTIONOBJECT_H
