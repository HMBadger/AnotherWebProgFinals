<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserMaster.Master" AutoEventWireup="true" CodeBehind="directory.aspx.cs" Inherits="AnotherWebProgFinals.User.directory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col m12">
                <table id="data-table-simple" class="responsive-table display" cellspacing="0" style="margin-top: 50px">
                    <thead>
                        <tr>
                            <th>Department</th>
                            <th>Contact Person</th>
                            <th>Position</th>
                            <th>Telephone Number</th>
                        </tr>
                    </thead>

                    <tfoot>
                        <tr>
                            <th>Department</th>
                            <th>Contact Person</th>
                            <th>Position</th>
                            <th>Telephone Number</th>
                        </tr>
                    </tfoot>

                    <tbody>
                        <tr>
                            <td>Office of the Mayor</td>
                            <td>Hon. Antonio A. Ferrer</td>
                            <td>City Mayor</td>
                            <td>509 - 1250</td>
                        </tr>
                        <tr>
                            <td>Office of the Vice Mayor</td>
                            <td>Hon. Maurito C. Sison</td>
                            <td>City Vice Mayor</td>
                            <td>418 - 0674</td>
                        </tr>
                        <tr>
                            <td>Administrator's Office</td>
                            <td>Winifred M. Jarin</td>
                            <td>Administrator</td>
                            <td>509 - 5054</td>
                        </tr>
                        <tr>
                            <td>Sangguniang Panglungosod Office</td>
                            <td>Wenceslao P. Camingay</td>
                            <td>SB Secretary</td>
                            <td>509 - 5226</td>
                        </tr>
                        <tr>
                            <td>Accounting Office</td>
                            <td>Emmanuel D. Magsino</td>
                            <td>Accountant</td>
                            <td>509 - 0171</td>
                        </tr>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
