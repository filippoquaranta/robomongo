#include "App.h"
#include "MongoServer.h"
#include "MongoShell.h"
#include "Dispatcher.h"

using namespace Robomongo;

App::App(Dispatcher *dispatcher) :
    QObject(),
    _dispatcher(dispatcher)
{
}

MongoServerPtr App::openServer(const ConnectionRecordPtr &connectionRecord)
{
    MongoServerPtr server(new MongoServer(connectionRecord));
    _servers.append(server);

    _dispatcher->publish(this, new ConnectingEvent(server));
    server->tryConnect();
    return server;
}

MongoShellPtr App::openShell(const MongoCollectionPtr &collection)
{
    MongoShellPtr shell(new MongoShell());
    _shells.append(shell);

    _dispatcher->publish(this, new OpeningShellEvent(shell));

    shell->open(collection);
    return shell;
}
