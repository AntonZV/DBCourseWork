<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report2.aspx.cs" Inherits="kursova.Report2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="WorkerID" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="WorkerID" HeaderText="WorkerID" ReadOnly="True" SortExpression="WorkerID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="SecondName" HeaderText="SecondName" SortExpression="SecondName" />
                <asp:BoundField DataField="DateBirth" HeaderText="DateBirth" SortExpression="DateBirth" />
                <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                <asp:BoundField DataField="PositionID" HeaderText="PositionID" SortExpression="PositionID" />
                <asp:BoundField DataField="TransportID" HeaderText="TransportID" SortExpression="TransportID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KursovaDBConnectionString1 %>" DeleteCommand="DELETE FROM [Worker] WHERE [WorkerID] = @WorkerID" InsertCommand="INSERT INTO [Worker] ([FirstName], [SecondName], [DateBirth], [Experience], [PositionID], [TransportID]) VALUES (@FirstName, @SecondName, @DateBirth, @Experience, @PositionID, @TransportID)" SelectCommand="SELECT * FROM [Worker]" UpdateCommand="UPDATE [Worker] SET [FirstName] = @FirstName, [SecondName] = @SecondName, [DateBirth] = @DateBirth, [Experience] = @Experience, [PositionID] = @PositionID, [TransportID] = @TransportID WHERE [WorkerID] = @WorkerID">
            <DeleteParameters>
                <asp:Parameter Name="WorkerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="SecondName" Type="String" />
                <asp:Parameter DbType="Date" Name="DateBirth" />
                <asp:Parameter Name="Experience" Type="Int32" />
                <asp:Parameter Name="PositionID" Type="Int32" />
                <asp:Parameter Name="TransportID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="SecondName" Type="String" />
                <asp:Parameter DbType="Date" Name="DateBirth" />
                <asp:Parameter Name="Experience" Type="Int32" />
                <asp:Parameter Name="PositionID" Type="Int32" />
                <asp:Parameter Name="TransportID" Type="Int32" />
                <asp:Parameter Name="WorkerID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
