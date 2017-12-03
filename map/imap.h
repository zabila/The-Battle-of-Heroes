#pragma once

#include <QtCore/QObject>

class IMap
{
public:
    virtual void renderMap() = 0;
    virtual void updateMap() = 0;
    virtual ~IMap();
};
