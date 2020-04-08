<%@ Page Language="VB" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">
           <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VideoConnectionString %>" SelectCommand="SELECT * FROM [DVDTable] WHERE ([DVDRating] = @SelectedRating)">
            <SelectParameters>
                <asp:QueryStringParameter Name="SelectedRating" QueryStringField="SelectedRating" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <h2>You Searched for Movies with the Rating: <%=Request.QueryString("SelectedRating") %> </h2>
        <br />
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

           
            <a href="ViewPage.aspx?DVdID=<%#Eval("DVDID") %>" target="_blank">View More Info</a>
            </td>
            </table>
        </ItemTemplate>
    </asp:ListView>
    
        <br />
    
    </div>
    </form>
</body>
</html>
