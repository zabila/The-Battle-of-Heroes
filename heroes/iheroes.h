#pragma once

#include <QtCore/QObject>

#include "common/enums.h"

class IHeroes
{
public:
    virtual void createHeroes() = 0;
    virtual void setName(QString) = 0;
    virtual void setRace(heroes::eRace) = 0;
    virtual ~IHeroes();
};

