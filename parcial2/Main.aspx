<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="parcial2.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous" />
    <title>Menu principal</title>
</head>
<body style="background: #FFE8C9; color: white;">
    <form id="form1" runat="server">
        <div class="container">
            <div class="card" style="margin-top: 40px; width: 50%;">
                <div class="card-header" style="background: #8C7353;">
                    <asp:Label ID="Label5" runat="server" Text="Menu principal" Font-Size="XX-Large"></asp:Label>
                </div>
                <div class="card-body" style="background: #D9BB95">
                    <div class="row">
                        <div class="col">
                            <asp:Button ID="Button1" runat="server" Text="Listar" OnClick="Button1_Click" />
                        </div>
                        <div class="col">
                            <asp:Button ID="Button2" runat="server" Text="Registrar Cliente" OnClick="Button2_Click" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Button ID="Button3" runat="server" Text="Registrar Producto" OnClick="Button3_Click" />
                        </div>
                        <div class="col">
                            <asp:Button ID="Button4" runat="server" Text="Registrar Vendedor" OnClick="Button4_Click" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Button ID="Button5" runat="server" Text="Factura" OnClick="Button5_Click" />
                        </div>
                        <div class="col">
                            <asp:Button ID="Button6" runat="server" Text="boton no funcional" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
