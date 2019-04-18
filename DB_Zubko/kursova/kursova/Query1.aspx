<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Query1.aspx.cs" Inherits="kursova.Query1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TransportID" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="TransportID" HeaderText="TransportID" ReadOnly="True" SortExpression="TransportID" />
                <asp:BoundField DataField="TransportType" HeaderText="TransportType" SortExpression="TransportType" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Speed" HeaderText="Speed" SortExpression="Speed" />
                <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
                <asp:BoundField DataField="RouteID" HeaderText="RouteID" SortExpression="RouteID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KursovaDBConnectionString1 %>" DeleteCommand="DELETE FROM [Transport] WHERE [TransportID] = @TransportID" InsertCommand="INSERT INTO [Transport] ([TransportType], [Model], [Speed], [Capacity], [RouteID]) VALUES (@TransportType, @Model, @Speed, @Capacity, @RouteID)" SelectCommand="SELECT * FROM [Transport] WHERE ([Capacity] &gt; @Capacity) ORDER BY [Capacity]" UpdateCommand="UPDATE [Transport] SET [TransportType] = @TransportType, [Model] = @Model, [Speed] = @Speed, [Capacity] = @Capacity, [RouteID] = @RouteID WHERE [TransportID] = @TransportID">
            <DeleteParameters>
                <asp:Parameter Name="TransportID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TransportType" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Speed" Type="Int32" />
                <asp:Parameter Name="Capacity" Type="Int32" />
                <asp:Parameter Name="RouteID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="50" Name="Capacity" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="TransportType" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Speed" Type="Int32" />
                <asp:Parameter Name="Capacity" Type="Int32" />
                <asp:Parameter Name="RouteID" Type="Int32" />
                <asp:Parameter Name="TransportID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
