﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Live_Chat_Master.master" AutoEventWireup="true" CodeFile="Live_Chat.aspx.cs" Inherits="Live_Chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Live_chatting">
        <label>Name</label>
         <input type="text" id="displayname" />
        <label>Message</label>
        <input type="text" id="message" /><br />
       <input type="button" id="sendmessage" value="Send" />
        
        <div><ul id="discussion"></ul></div>
    </div>
     <!--Script references. -->
   <!--Reference the jQuery library. -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <!--Reference the SignalR library. -->
    <script src="Scripts/jquery.signalR-2.2.1.min.js"></script>
    <!--Reference the autogenerated SignalR hub script. -->
    <script src="signalr/hubs"></script>
    <!--Reference the SignalR library. -->
   
    <!--Reference the autogenerated SignalR hub script. -->
    
    <!--Add script to update the page and send messages.-->
    <script type="text/javascript">
        $(function () {
            debugger;
            // Declare a proxy to reference the hub.
            var chat = $.connection.myhub3;
            // Create a function that the hub can call to broadcast messages.
            chat.client.hello = function (name, msg) {
                // Html encode display name and message.
                var encodedName = $('<div />').text(name).html();
                var encodedMsg = $('<div />').text(msg).html();
                // Add the message to the page.
                $('#discussion').append('<li><strong>' + encodedName
                    + '</strong>:&nbsp;&nbsp;' + encodedMsg + '</li>');
            };
            // Get the user name and store it to prepend to messages.
            $('#displayname').val();
            // Set initial focus to message input box.
            $('#message').focus();
            // Start the connection.
            $.connection.hub.start().done(function () {
                $('#sendmessage').click(function () {
                    // Call the Send method on the hub.
                  
                     chat.server.hello($('#displayname').val(), $('#message').val());
                    
                    // Clear text box and reset focus for next comment.
                    $('#message').val('').focus();
                });
            });
        });
    </script>
</asp:Content>

