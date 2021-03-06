<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegProduct.aspx.cs" Inherits="parcial2.RegProduct" %>

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
                    <asp:Label ID="Label2" runat="server" Text="Registrar Producto" Font-Size="XX-Large"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="atras" OnClick="Button1_Click" ValidationGroup="atras" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Para agregar un nuevo producto, por favor llenar tu informacion"></asp:Label>
                </div>
                <div class="card-body" style="background: #D9BB95">
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label8" runat="server" Text="Codigo:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtCodigo" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtCodigo" ValidationExpression="^\d+$" ForeColor="Red" ></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtCodigo" runat="server" ></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtNombre" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtNombre" ValidationExpression="^[\w\-\s]+$" ForeColor="Red" ></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtNombre" runat="server" ></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label4" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtCantidad" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtCantidad" ValidationExpression="^\d+$" ForeColor="Red" ></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" ></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label6" runat="server" Text="Precio:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtPrecio" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtPrecio" ValidationExpression="^\d+$" ForeColor="Red" ></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtPrecio" runat="server" TextMode="Number" ></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col d-flex justify-content-center">
                            <asp:Button ID="btGuardar" runat="server" Text="Guardar" OnClick="btGuardar_Click" />
                        </div>
                        <div class="col d-flex justify-content-center">
                            <asp:Button ID="btCancelar" runat="server" Text="Cancelar" />
                        </div>
                    </div>
                </div>
            </div>            
        </div>
    </form>
</body>
</html>
