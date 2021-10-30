<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegeCliente.aspx.cs" Inherits="parcial2.RegeCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous" />
    <title>Registrar Cliente</title>
</head>
<body style="background: #FFE8C9; color: white;">
    <form id="form1" runat="server">
        <div class="container">
            <div class="card" style="margin-top: 40px; width: 50%;">
                <div class="card-header" style="background: #8C7353;">
                    <asp:Label ID="Label2" runat="server" Text="Registrar Producto" Font-Size="XX-Large"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Para agregar un nuevo producto, por favor llenar tu informacion"></asp:Label>
                </div>
                <div class="card-body" style="background: #D9BB95">
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label8" runat="server" Text="Cedula:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtCedula" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtCedula" ValidationExpression="\d{6,10}" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtNombre" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtNombre" ValidationExpression="^[\w\-\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label4" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtCantidad" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtCantidad" ValidationExpression="\d" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col d-flex justify-content-center">
                            <asp:Button ID="btGuardar" runat="server" Text="Guardar" />
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
