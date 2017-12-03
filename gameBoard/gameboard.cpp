#include "gameboard.h"
#include "common/loger.h"
#include <qlogging.h>

GameBoard::GameBoard(QObject *parent) : QObject(parent)
{

}

void GameBoard::start()
{
    LOG_TRACE;
}
