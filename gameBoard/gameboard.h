#pragma once

#include <QtCore/QObject>
#include <QtQuick>

#include <memory>

#include "heroes/iheroes.h"
#include "map/imap.h"

class GameBoard : public QObject
{
    Q_OBJECT
public:
    explicit GameBoard(QObject *parent = nullptr);
    void start();

signals:

public slots:

private:
    std::shared_ptr<IHeroes> heroes;
    std::shared_ptr<IMap> map;
};

