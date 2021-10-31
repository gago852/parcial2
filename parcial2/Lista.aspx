<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="parcial2.Lista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous" />
    <title>Listado</title>
</head>
<body style="background: #FFE8C9; color: white;">
    <form id="form1" runat="server">
        <div class="container">
            <div class="card" style="margin-top: 40px; width: 50%;">
                <div class="card-header" style="background: #8C7353;">
                    <asp:Label ID="Label5" runat="server" Text="Lista Productos" Font-Size="XX-Large"></asp:Label>
                </div>
                <div class="card-body" style="background: #D9BB95">
                    <div class="row">
                        <div class="col">
                            <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" Height="100%" Width="100%" OnItemCommand="ComandoD1">
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
                                    Codigo:&nbsp;&nbsp;
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("codigo") %>'></asp:Label><br />
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

            <div class="card" style="margin-top: 40px; width: 50%;">
                <div class="card-header" style="background: #8C7353;">
                    <asp:Label ID="Label1" runat="server" Text="Lista Cliente" Font-Size="XX-Large"></asp:Label>
                </div>
                <div class="card-body" style="background: #D9BB95">
                    <div class="row">
                        <div class="col">
                            <asp:DataList ID="DataList2" runat="server" CellPadding="4" ForeColor="#333333" Height="100%" Width="100%" OnItemCommand="ComandoD1">
                                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                                <EditItemTemplate>
                                    Cedula:&nbsp;&nbsp; <%#Eval("cedula") %>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("cedula") %>'></asp:Label>
                                    <br />
                                    Nombre:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("nombre") %>'></asp:TextBox>
                                    <br />
                                    Apellido:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("apellido") %>'></asp:TextBox>
                                    <br />
                                    Direccion:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("direccion") %>'></asp:TextBox>
                                    <br />
                                    Telefono Fijo:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("fijo") %>'></asp:TextBox>
                                    <br />
                                    Telefono Celular:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("celular") %>'></asp:TextBox>
                                    <br />
                                    Correo:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("correo") %>'></asp:TextBox>
                                    <br />
                                    Edad:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("edad") %>'></asp:TextBox>
                                    <br />
                                    Sexo:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Eval("sexo") %>'></asp:TextBox>
                                    <br />
                                    Fecha de nacimiento:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Eval("fecha") %>'></asp:TextBox>
                                    <br />
                                    Metodo de pago:&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Eval("pago") %>'></asp:TextBox>
                                    <asp:DropDownList ID="ddPago" runat="server" AutoPostBack="True" i>
                                        <asp:ListItem>Efectivo</asp:ListItem>
                                        <asp:ListItem>Tarjeta de credito/debito</asp:ListItem>
                                        <asp:ListItem>Web</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CommandName="actualizar" Text="Actualizar" />
                                    <asp:Button ID="Button2" runat="server" CommandName="cancelar" Text="Cancelar" />
                                </EditItemTemplate>
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <ItemTemplate>
                                    Cedula:&nbsp;&nbsp;
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("cedula") %>'></asp:Label><br />
                                    Nombre:&nbsp;&nbsp; <%#Eval("nombre") %><br />
                                    Apellido:&nbsp;&nbsp; <%#Eval("apellido") %><br />
                                    Direccion:&nbsp;&nbsp; <%#Eval("direccion") %><br />
                                    Telefono Fijo:&nbsp;&nbsp; <%#Eval("fijo") %><br />
                                    Telefono Celular:&nbsp;&nbsp; <%#Eval("celular") %><br />
                                    Correo:&nbsp;&nbsp; <%#Eval("correo") %><br />
                                    Edad:&nbsp;&nbsp; <%#Eval("edad") %><br />
                                    Sexo:&nbsp;&nbsp; <%#Eval("sexo") %><br />
                                    Fecha de nacimiento:&nbsp;&nbsp; <%#Eval("fecha") %><br />
                                    Metodo de pago:&nbsp;&nbsp; <%#Eval("pago") %><br />
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

            <div class="card" style="margin-top: 40px; width: 50%;">
                <div class="card-header" style="background: #8C7353;">
                    <asp:Label ID="Label2" runat="server" Text="Lista Productos" Font-Size="XX-Large"></asp:Label>
                </div>
                <div class="card-body" style="background: #D9BB95">
                    <div class="row">
                        <div class="col">
                            <asp:DataList ID="DataList3" runat="server" CellPadding="4" ForeColor="#333333" Height="100%" Width="100%" OnItemCommand="ComandoD1">
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
                                    Codigo:&nbsp;&nbsp;
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("codigo") %>'></asp:Label><br />
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
