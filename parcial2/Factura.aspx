<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="parcial2.Factura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous" />
    <title>Factura</title>
</head>
<body style="background: #FFE8C9; color: white;">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="card" style="margin-top: 40px; width: 50%;">
                        <div class="card-header" style="background: #8C7353;">
                            <asp:Label ID="Label2" runat="server" Text="Factura" Font-Size="XX-Large"></asp:Label>
                            <asp:Button ID="Button1" runat="server" Text="atras" ValidationGroup="atras" OnClick="Button1_Click" />
                        </div>
                        <div class="card-body" style="background: #D9BB95">
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="Label1" runat="server" Text="Cedula cliente:"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="ddCedulas" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="cedula">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cedula], [nombre] FROM [cliente]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="Label7" runat="server" Text="Producto:"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="ddProducto" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="codigo">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nombre], [codigo] FROM [producto]"></asp:SqlDataSource>
                                </div>
                                <div class="col">
                                    <asp:Label ID="Label14" runat="server" Text="Cantidad:"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="txtCantidad" ForeColor="Red" ValidationGroup="producto"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" ValidationGroup="producto"></asp:TextBox>
                                </div>
                                <div class="col d-flex justify-content-center">
                                    <asp:Button ID="btGuardar" runat="server" Text="Guardar" OnClick="btGuardar_Click" ValidationGroup="producto" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" OnItemCommand="comando">
                                        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                                        <EditItemTemplate>
                                            <div class="card">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col">
                                                            codigo del pedido:&nbsp;&nbsp;
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("pedido") %>'></asp:Label>
                                                            <br />
                                                            Cedula del comprador:&nbsp;&nbsp;
                                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("idcliente") %>'></asp:Label>
                                                            <br />
                                                            nombre del cliente:&nbsp;&nbsp; <%#Eval("nombreCliente") %>
                                                            <br />
                                                            nombre del producto:&nbsp;&nbsp; <%#Eval("nombreProducto") %>
                                                            <br />
                                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("codigoProducto") %>'></asp:Label>
                                                            <br />
                                                            cantidad:&nbsp;&nbsp
                                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("cantidad") %>'></asp:TextBox>
                                                            <br />
                                                            <asp:Button ID="Button4" runat="server" CommandName="actualizar" Text="actualizar" ValidationGroup="edicion" />
                                                            <asp:Button ID="Button5" runat="server" CommandName="cancelar" Text="cancelar" ValidationGroup="edicion" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </EditItemTemplate>
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <ItemTemplate>
                                            <div class="card">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col">
                                                            codigo del pedido:&nbsp;&nbsp;
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("pedido") %>'></asp:Label>
                                                            <br />
                                                            Cedula del comprador:&nbsp;&nbsp;
                                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("idcliente") %>'></asp:Label>
                                                            <br />
                                                            nombre del cliente:&nbsp;&nbsp; <%#Eval("nombreCliente") %><br />
                                                            nombre del producto:&nbsp;&nbsp; <%#Eval("nombreProducto") %><br />
                                                            cantidad:&nbsp;&nbsp; <%#Eval("cantidad") %><br />
                                                            PrecioUnitario:&nbsp;&nbsp; <%#Eval("precioUnitario") %><br />
                                                            vendedor:&nbsp;&nbsp; <%#Eval("nombreVendedor") %><br />
                                                            PrecioSubtotal:&nbsp;&nbsp; <%#Eval("precioSubtotal") %><br />
                                                            <asp:Button ID="Button4" runat="server" Text="editar" CommandName="editar" ValidationGroup="lista" />
                                                            <asp:Button ID="Button5" runat="server" Text="borrar" CommandName="borrar" ValidationGroup="lista" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    </asp:DataList>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="margin-top: 40px; width: 50%;">
                        <div class="card-header" style="background: #8C7353;">
                            <asp:Label ID="Label3" runat="server" Text="Total" Font-Size="XX-Large"></asp:Label>
                            <asp:Button ID="Button2" runat="server" Text="reset" ValidationGroup="reset" OnClick="Button2_Click" />
                        </div>
                        <div class="card-body" style="background: #D9BB95">
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="Label4" runat="server" Text="Total a pagar: testo de ejemplo"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:Button ID="Button3" runat="server" Text="calcular" ValidationGroup="calcular" OnClick="Button3_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
