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
            <div class="card" style="margin-top: 40px; width: 50%;">
                <div class="card-header" style="background: #8C7353;">
                    <asp:Label ID="Label2" runat="server" Text="Factura" Font-Size="XX-Large"></asp:Label>
                </div>
                <div class="card-body" style="background: #D9BB95">
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label1" runat="server" Text="Cedula cliente:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddCedulas" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="nombre">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cedula] FROM [cliente]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label7" runat="server" Text="Producto:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddProducto" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="nombre">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nombre] FROM [producto]"></asp:SqlDataSource>
                        </div>
                        <div class="col">
                            <asp:Label ID="Label14" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="txtCantidad" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="col d-flex justify-content-center">
                            <asp:Button ID="btGuardar" runat="server" Text="Guardar" OnClick="btGuardar_Click" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:DataList ID="DataList1" runat="server">
                                <ItemTemplate>
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    Producto:&nbsp;&nbsp; <%#Eval("nproducto") %><br />
                                                    cantidad:&nbsp;&nbsp; <%#Eval("cantidad") %><br />
                                                    Precio:&nbsp;&nbsp; <%#Eval("precio") %><br />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
