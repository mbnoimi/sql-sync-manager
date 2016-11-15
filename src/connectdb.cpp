#include "connectdb.h"

ConnectDB::ConnectDB(QString driver, QString hostname, QString database, QString username, QString password)
{
    QSqlDatabase db = QSqlDatabase::addDatabase(driver);
    db.setHostName(hostname);
    db.setDatabaseName(database);
    db.setUserName(username);
    db.setPassword(password);
    bool ok = db.open();
    if (!ok)
        qDebug() << "Unable to connect!";
}
