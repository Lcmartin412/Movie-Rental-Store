<%@ Page Language="VB" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">
        
             <p>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VideoConnectionString %>" SelectCommand="SELECT * FROM [DVDTable] WHERE ([DVDAvailableInBluRay] = 'true')">
        </asp:SqlDataSource>        </p>
    <h2>All DVDs Available in Blu Ray:</h2>
    <%=Request.QueryString("DVDID") %>
     <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    <LayoutTemplate>
          
            <br />
            <asp:placeholder runat="server" ID ="itemPlaceholder">
            </asp:placeholder>
            <br />
            
        </LayoutTemplate>
        <ItemTemplate>
            <table>
            <td>           
                Title: <%# Eval("DVDName")%> <br />
                Genre: <%# Eval("DVDDescription")%> <br />
                Price: <%# Eval("DVDPrice")%> <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("DVDImage") %>' Width="200" Height="200" AlternateText='<%#Eval("DVDName") %>'/><br />

           
            <a href="ViewPage.aspx?DVDID=<%#Eval("DVDID") %>" target="_blank">View More Info</a>
            </td>
            </table>
        </ItemTemplate>
    </asp:ListView>
    </form>
</body>
</html>
