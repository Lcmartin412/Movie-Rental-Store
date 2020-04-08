<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>
<%--Levi Martin
10/07/2019--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
         <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VideoConnectionString %>" SelectCommand="SELECT DISTINCT [DVDRating] FROM [DVDTable]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        </p>
        <h2> Lima Video Rental </h2>
        <h4> We sell videos for less!</h4>
         <p>
        Display All Videos:</p>
    <asp:Button ID="AllVideosButton" runat="server" Text="All Videos" />
    <br />
          
    <p>
                <asp:DropDownList ID="RatingDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="DVDRating" DataValueField="DVDRating">
        </asp:DropDownList>
    </p>
    <p> Search By Rating: </p>
        <asp:Button ID="RatingButton" runat="server" Text="Search By Rating" />
        <br />
        <br />
        <p>Display all videos available in Blu Ray:</p>
        <asp:Button ID="BluRay" runat="server" Text="Blu Ray" />
    <div>
    
    </div>
    </form>
        
</body>
</html>
