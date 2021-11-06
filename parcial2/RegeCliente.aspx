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
                    <asp:Label ID="Label2" runat="server" Text="Registrar Cliente" Font-Size="XX-Large"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="atras" OnClick="Button1_Click" ValidationGroup="atras"/>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Para agregar un nuevo cliente, por favor llenar tu informacion"></asp:Label>
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
                            <asp:Label ID="Label5" runat="server" Text="Apellido:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtApellido" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtApellido" ValidationExpression="^[\w\-\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label9" runat="server" Text="Direccion:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtDireccion" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtDireccion" ValidationExpression="^[\w\-\s\-\#]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label6" runat="server" Text="Tel Fijo:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtFijo" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtFijo" ValidationExpression="\d{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtFijo" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label7" runat="server" Text="Celular:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtCel" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtCel" ValidationExpression="\d{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtCel" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label4" runat="server" Text="Correo electronico:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label10" runat="server" Text="Edad:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtEdad" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtEdad" ValidationExpression="\d{2,3}" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtEdad" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label11" runat="server" Text="Genero:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="rbGenero" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RadioButtonList ID="rbGenero" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>M</asp:ListItem>
                                <asp:ListItem>F</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label12" runat="server" Text="Fecha:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="txtFechaCumple" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtFechaCumple" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label13" runat="server" Text="Metodo de pago:"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:DropDownList ID="ddPago" runat="server" AutoPostBack="True">
                                <asp:ListItem>Efectivo</asp:ListItem>
                                <asp:ListItem>Tarjeta de credito/debito</asp:ListItem>
                                <asp:ListItem>Web</asp:ListItem>
                            </asp:DropDownList>
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
