//
// Created by kamau on 12/1/20.
//

#include "AppWebSockets.h"

void AppWebSockets::connect() {
    std::cout << "connect !" << std::endl;
}

void AppWebSockets::subscribe(std::string topic) {
    std::cout << "subscribe !" << std::endl;
}

void AppWebSockets::unSubscribe(std::string topic) {
    std::cout << "unSubscribe !" << std::endl;
}

void AppWebSockets::disconnect() {
    std::cout << "disconnect !" << std::endl;
}