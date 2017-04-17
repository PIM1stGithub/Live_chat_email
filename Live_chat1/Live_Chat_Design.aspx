<%@ Page Title="" Language="C#" MasterPageFile="~/Live_Chat_Master.master" AutoEventWireup="true" CodeFile="Live_Chat_Design.aspx.cs" Inherits="Live_Chat_Design" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="div_Longin">
         <br />
       <input id="myemail" type="text" placeholder="Your email address" /><br />
         <input id="password" type="text" placeholder="Your password" /><br />
        <input type="button" id="login" value="Login" onclick="LiveChat()" />
        
        <br />
        <a href="Live_chat_Registration.aspx" onclick="for_got_Psw()" id="for_got_p"> I for got password</a>
        <br />
       <%-- <button id="submit">submit</button>--%>
        <label>Stay login</label>
</div>
<script type="text/javascript">
    function LiveChat() {
        location.href = 'email_php.php';
    }

   
   function for_got_Psw(){
    
       debugger;
       const tra = require("tra");
       const Xoauth2 = require("Xoauth2");
       var transpot = tra.createTransport({
           service: 'gmail',
           auth: {
               Xoauth2: Xoauth2.creatXoauth2Generator({

                   user: 'gummadiharika58@gmail.com',
                   clientId: '',
                   clientSecret: '',
                   refrashTocken: ''

               })


           }


       })

       var mailOptions = {
           from: '<gummadiharika58@gmail.com>',
           to: '120kbm@gmail.com',
           subject: 'Testing',
           text: 'Hello....'


       }
       transpot.sendMail(mailOptions, function (err, res) {
           if (err) {
               console.log('error');
           }
           else {
               console.log('sent email');
           }

       })
    
    
    
    
    }






    //$(document).onclick(function (e) {
    //    var eml = document.getElementById('myemail');
    //    $.ajax({
    //        url: 'http://localhost:64124/Live_chat_Registration.aspx/gummadiharika58@gmail.com',
    //        method: 'post',
    //        data:
    //    });
    //    e.preventDefault()
    //    $(this).get(0).reset()
    //    alertify.success("success")


    //});
    //function for_got_Psw()

    //{
    //    debugger;
    //    var emails = $('#myemail').val();
    //    var json = { 'sendmail': emails };
    //    //console.log(json.sendmail);
    //    $.ajax({
           
    //        type: 'post',
    //        url: 'http://localhost:64124/Live_Chat_Design.aspx'+'/'+emails ,
    //        //data: json.sendmail,
    //        data:$(this).serialize,
    //        datatype:JSON,
    //        success: function (data) { alert(data); }
           

    //    });
      
    //}

</script>
    <footer class="div_login_ftr">wipro</footer>
</asp:Content>

