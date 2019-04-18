<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report1.aspx.cs" Inherits="kursova.Report1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="RouteID" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="RouteID" HeaderText="RouteID" ReadOnly="True" SortExpression="RouteID" />
                <asp:BoundField DataField="StartPoint" HeaderText="StartPoint" SortExpression="StartPoint" />
                <asp:BoundField DataField="EndPoint" HeaderText="EndPoint" SortExpression="EndPoint" />
                <asp:BoundField DataField="FirstRace" HeaderText="FirstRace" SortExpression="FirstRace" />
                <asp:BoundField DataField="LastRace" HeaderText="LastRace" SortExpression="LastRace" />
                <asp:BoundField DataField="Interval" HeaderText="Interval" SortExpression="Interval" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KursovaDBConnectionString1 %>" DeleteCommand="DELETE FROM [Route] WHERE [RouteID] = @RouteID" InsertCommand="INSERT INTO [Route] ([StartPoint], [EndPoint], [FirstRace], [LastRace], [Interval]) VALUES (@StartPoint, @EndPoint, @FirstRace, @LastRace, @Interval)" SelectCommand="SELECT * FROM [Route]" UpdateCommand="UPDATE [Route] SET [StartPoint] = @StartPoint, [EndPoint] = @EndPoint, [FirstRace] = @FirstRace, [LastRace] = @LastRace, [Interval] = @Interval WHERE [RouteID] = @RouteID">
            <DeleteParameters>
                <asp:Parameter Name="RouteID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StartPoint" Type="String" />
                <asp:Parameter Name="EndPoint" Type="String" />
                <asp:Parameter DbType="Time" Name="FirstRace" />
                <asp:Parameter DbType="Time" Name="LastRace" />
                <asp:Parameter DbType="Time" Name="Interval" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StartPoint" Type="String" />
                <asp:Parameter Name="EndPoint" Type="String" />
                <asp:Parameter DbType="Time" Name="FirstRace" />
                <asp:Parameter DbType="Time" Name="LastRace" />
                <asp:Parameter DbType="Time" Name="Interval" />
                <asp:Parameter Name="RouteID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
