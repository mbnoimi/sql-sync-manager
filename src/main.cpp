#include <QCoreApplication>

#include "connectdb.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    //QSqlDatabase::drivers()
    ConnectDB *dataServer = new ConnectDB("QMYSQL",
                                          "localhost",
                                          "crystali_0ahmad",
                                          "root",
                                          "root");

    return a.exec();
}
