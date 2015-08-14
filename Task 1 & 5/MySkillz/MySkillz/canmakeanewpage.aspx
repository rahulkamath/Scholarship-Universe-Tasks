<%@ Page Language="VB" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta charset="utf-8" />
    <title>Task 5</title>
    <script type="text/javascript" src="Scripts/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        
        function initiate_countdown() {
            var i = 10
            var obj = setInterval(function () {
                if (i >= 0) {
                    $("#countdown").html("In " + i);
                    i--;

                }
                else {
                    $('#countdown').html("1 million dollars");
                }

            }, 1000);

            
            return false;

        };
    </script>    
</head>
<body>
    <h1>Task 5</h1>
    <form id="form1" runat="server" onsubmit="return initiate_countdown()">
        <asp:TextBox id="status" Textmode="Number" runat="server" />
        <input type="submit" value="Show me the money" />   
    </form>
    <div id="countdown">
        
    </div>
</body>
</html>
