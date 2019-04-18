<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Position_Form.aspx.cs" Inherits="kursova.Position_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="PositionType"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Salary"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="WorkShift"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
    
        <br />
    
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PositionID" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="PositionID" HeaderText="PositionID" ReadOnly="True" SortExpression="PositionID" />
                <asp:BoundField DataField="PositionType" HeaderText="PositionType" SortExpression="PositionType" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="WorkShift" HeaderText="WorkShift" SortExpression="WorkShift" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KursovaDBConnectionString1 %>" DeleteCommand="DELETE FROM [Position] WHERE [PositionID] = @PositionID" InsertCommand="INSERT INTO [Position] ([PositionType], [Salary], [WorkShift]) VALUES (@PositionType, @Salary, @WorkShift)" SelectCommand="SELECT * FROM [Position]" UpdateCommand="UPDATE [Position] SET [PositionType] = @PositionType, [Salary] = @Salary, [WorkShift] = @WorkShift WHERE [PositionID] = @PositionID">
            <DeleteParameters>
                <asp:Parameter Name="PositionID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PositionType" Type="String" />
                <asp:Parameter Name="Salary" Type="Decimal" />
                <asp:Parameter DbType="Time" Name="WorkShift" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PositionType" Type="String" />
                <asp:Parameter Name="Salary" Type="Decimal" />
                <asp:Parameter DbType="Time" Name="WorkShift" />
                <asp:Parameter Name="PositionID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
