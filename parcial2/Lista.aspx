<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="parcial2.Lista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous" />
    <title>Registrar Producto</title>
</head>
<body style="background: #FFE8C9; color: white;">
    <form id="form1" runat="server">
        <div class="container">
            <div class="card" style="margin-top: 40px; width: 50%;">
                <div class="card-header" style="background: #8C7353;">
                    <asp:Label ID="Label5" runat="server" Text="Lista" Font-Size="XX-Large"></asp:Label>
                </div>
                <div class="card-body" style="background: #D9BB95">
                    <div class="row">
                        <div class="col">
                            <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" Height="100%" Width="100%" OnItemCommand="Comando">
                                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                                <EditItemTemplate>
                                    Codigo:&nbsp;&nbsp; <%#Eval("codigo") %>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("codigo") %>'></asp:Label>
                                    <br />
                                    Nombre:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("nombre") %>'></asp:TextBox>
                                    <br />
                                    Cantidad:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("cantidad") %>'></asp:TextBox>
                                    <br />
                                    Precio:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("precio") %>'></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CommandName="actualizar" Text="Actualizar" />
                                    <asp:Button ID="Button2" runat="server" CommandName="cancelar" Text="Cancelar" />
                                </EditItemTemplate>
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <ItemTemplate>
                                    Codigo:&nbsp;&nbsp; <asp:Label ID="Label10" runat="server" Text='<%# Eval("codigo") %>'></asp:Label><br />
                                    Nombre:&nbsp;&nbsp; <%#Eval("nombre") %><br />
                                    Cantidad:&nbsp;&nbsp; <%#Eval("cantidad") %><br />
                                    Precio:&nbsp;&nbsp; <%#Eval("precio") %><br />
                                    <br />
                                    <asp:Button ID="Button3" runat="server" CommandName="editar" Text="Editar" />
                                    <asp:Button ID="Button4" runat="server" CommandName="borrar" Text="Borrar" />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
