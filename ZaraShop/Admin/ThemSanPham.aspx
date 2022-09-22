<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster.Master" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="ZaraShop.Admin.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/SanPham.css" rel="stylesheet" />
    <div class="container">
        <div style="clear:both; height:20px;"></div>
        <div class="left">
            <ul>
                <li><a href="DanhSachSanPham.aspx">Danh sách sản phẩm</a></li>                
                <li><a href="DanhSachNSX.aspx">Danh sách nhà sản xuất</a></li>
            </ul>
        </div>

        <div class="right">
            <div class="head">Thêm mới sản phẩm</div>
            <div class="form">
                <div class="thongtin">
                    <div class="tenTruong">Tên sản phẩm:</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="" ControlToValidate="txtTenSP" ForeColor="Red" Text="(Bạn chưa nhập tên sản phẩm)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class="thongtin">
                    <div class="tenTruong">Hình:</div>
                    <div class="nhap"><asp:FileUpload ID="fulHinh" runat="server" /></div>

                </div>

                <div class="thongtin">
                    <div class="tenTruong">Số lượng:</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtSoLuong" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="" ControlToValidate="txtSoLuong" ForeColor="Red" Text="(Bạn chưa nhập số lượng sản phẩm)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Giá bán:</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtGiaBan" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="" ControlToValidate="txtGiaBan" ForeColor="Red" Text="(Bạn chưa nhập giá của sản phẩm)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Giá khuyến mãi:</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtGiaKM" runat="server" TextMode="Number"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="" ControlToValidate="txtGiaKM" ForeColor="Red" Text="(Bạn chưa nhập gía khuyến mại)" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Ngày tạo:</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtNgayTao" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="" ControlToValidate="txtNgayTao" ForeColor="Red" Text="(Bạn chưa nhập ngày)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Mã loại:</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtMaLoai" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="" ControlToValidate="txtMaLoai" ForeColor="Red" Text="(Bạn chưa nhập mã loại sản phẩm)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Mã NSX:</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtMaNSX" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="" ControlToValidate="txtMaNSX" ForeColor="Red" Text="(Bạn chưa nhập mã NSX sản phẩm)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                </div>

                 <div class="thongtin">
                    <div class="tenTruong">Mô tả:</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtMoTa" runat="server" TextMode="MultiLine" Height="100px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="" ControlToValidate="txtMota" ForeColor="Red" Text="(Bạn chưa nhập mô tả)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">&nbsp;</div>
                    <div class="nhap">
                        <asp:CheckBox ID="cbThemSP" runat="server" Text="Tạo thêm sản phẩm khác sau khi tạo sản phẩm này"/>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">&nbsp;</div>
                    <div class="nhap">
                        <asp:Button ID="btnThem" runat="server" Text="Thêm mới" CssClass="btnThem" OnClick="btnThem_Click" />
                        <asp:Button ID="btnHuy" runat="server" Text="Hủy" CssClass="btnHuy" CausesValidation="False" OnClick="btnHuy_Click" />
                    </div>
                </div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="False" Width="595px" ForeColor="Red" />
                <asp:Label ID="lbTB" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
