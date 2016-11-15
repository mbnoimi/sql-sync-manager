#ifndef CONNECTDB_H
#define CONNECTDB_H

#include <QObject>
#include <QtSql>

class ConnectDB : QObject
{
public:
    ConnectDB(QString driver, QString hostname, QString database, QString username, QString password);
};

#endif // CONNECTDB_H
