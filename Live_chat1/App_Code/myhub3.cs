using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

public class myhub3 : Hub
{
    public void Hello(string name, string msg)
    {
        Clients.All.hello(name, msg);
    }
}
