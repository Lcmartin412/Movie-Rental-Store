<%@ Page Language="VB" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:VideoConnectionString %>"
            SelectCommand="SELECT * FROM [DVDTable] WHERE ([DVDID] = @DVDID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="DVDID" QueryStringField="DVDID"
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
             <LayoutTemplate>
          
            <br />
            <asp:placeholder runat="server" ID ="itemPlaceholder">
            </asp:placeholder>
            <br />
            
        </LayoutTemplate>
            <ItemTemplate>
             
            Title: <%# Eval("DVdName")%> <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("DVDImage") %>' Width="200" Height="200" AlternateText='<%#Eval("DVDName") %>'/><br />
            Genre: <%# Eval("DVDDescription")%> <br />
            Price: <%# Eval("DVDPrice", "{0:c}")%> <br />
            Rating: <%# Eval("DVDRating")%> <br />

            <br />
                Available in BluRay: <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%#Eval("DVDAvailableInBluRay") %>' Enabled="false"/>
                <br />

           
        </ItemTemplate>
        </asp:ListView>

    </form>

</body>
</html>
