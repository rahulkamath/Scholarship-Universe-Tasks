<%@ Page Language="VB" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title>Task 1</title>
    <script type="text/javascript" src="Scripts/jquery-1.8.2.js"></script>
    <script type="text/javascript" >
        $(document).ready(function () {
            $("#status").val("Starting");
        });
        function submit_trigger() {
            
            $("#status").val("Coming Soon");
            return false;

        };
    </script>    
</head>
<body>
    <h1>Task 1</h1>
    <form id="form1" runat="server" onsubmit="return submit_trigger()">
        <asp:TextBox id="status" runat="server" />
        
        <input type="submit" value="When is it coming?"/>  
    </form>
</body>
</html>
