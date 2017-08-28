<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer_details.aspx.cs" Inherits="customer_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="favicon.ico">
<title>We Do XPS</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- default css -->
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link href="css/jquery.FlowupLabels.css" rel='stylesheet' type='text/css'>
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript" src="js/modernizr.custom.js"></script>
<noscript>
<style>
.bx-loading {
	display: none;
}
</style>
</noscript>


</head><body class="bodybg">


<form id="form1" runat="server">
<cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" ScriptMode="Release" LoadScriptsBeforeUI="false" EnablePageMethods="true"> </cc1:ToolkitScriptManager>

<!-- Fixed navbar -->
<div class="navi_panel">
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <!--<a class="navbar-brand" href="#">Project name</a>--> 
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#">LOGIN</a></li>
          <li><a href="#">SIGN UP</a></li>
          <li><a href="#">CONTACT US <span class="sr-only">(current)</span></a></li>
        </ul>
      </div>
      <!--/.nav-collapse --> 
    </div>
  </nav>
</div>

<!-- slider panel -->
<div class="logo">
  <h1><a href="#"><img src="images/logo.png" alt=""></a></h1>
</div>
<div class="mainbodypanel">
        <div class="heading-bar">
          <h2>Customer Details</h2>
          <span class="h-line"></span> </div>
        
        <!-- middle panel start here -->
        <section class="middle_body">
        
          <div class="container-fluid">
            <div class="row"> 
              
              <!-- left panel -->
              <aside class="col-xs-12 col-sm-12 col-md-6 col-lg-6 leftpanelfrm">
                <h3><span><img src="../images/from.png" alt=""> </span>From</h3>
                <div class='FlowupLabels'> 
                  <!-- first name  -->
                 <%-- <div class="group formbody fl_wrap"> 
                    <!-- 	<input class='fl_input' type='text' />-->
                    <select class='fl_input'  name="">
                    </select>
                    <label class='fl_label' for='rf_name' type="text">Company Name</label>
                  </div>--%>
                  <div class="group formbody fl_wrap">
              `     <strong>Country Name</strong>
                    <asp:DropDownList ID="ddl_country_from"   runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_country_from_SelectedIndexChanged"  ></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" InitialValue="select" SetFocusOnError="true" ErrorMessage="Please select Country." Display="None" ValidationGroup="grp" ControlToValidate="ddl_country_from"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator4" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                <%--    <label class='fl_label' for='rf_name' type="text">Country Name</label>--%>
                  </div>
                  
                  <!-- company name  -->
                  <div class="group formbody fl_wrap">
                    <%--<input class='fl_input' type='text' />--%>
                    <asp:TextBox ID="txt_company_name_from" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Company Name" Display="None" ValidationGroup="grp" ControlToValidate="txt_company_name_from"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender8" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator8" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Company Name</label>
                  </div>
                  
                  <!-- Address -->
                  <div class="group formbody fl_wrap">
                    <%-- <input class='fl_input' type='text' />--%>
                    <asp:TextBox ID="txt_contact_person_name_from" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Contact Person Name" Display="None" ValidationGroup="grp" ControlToValidate="txt_contact_person_name_from"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender17" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator17" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Contact Person Name</label>
                  </div>
                  
                  <!-- Address2 -->
                  <div class="group formbody fl_wrap">
                    <asp:TextBox ID="txt_contact_number_from" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Contact Number" Display="None" ValidationGroup="grp" ControlToValidate="txt_contact_number_from"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender18" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator18" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Contact Number</label>
                  </div>
                  
                  <!-- Address --> 
                  <!-- <div class="group formbody fl_wrap">
 <select class='fl_input'><option> </option> <option>one</option></select>
  <label class='fl_label' for='rf_name' type="text">Country</label>                    
 </div>--> 
                  
                  <!-- Tin Number -->
                  <div class="group formbody fl_wrap">
                    <asp:TextBox ID="txt_address1_from" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Address 1" Display="None" ValidationGroup="grp" ControlToValidate="txt_address1_from"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender21" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator21" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Address 1 </label>
                  </div>
                  <div class="group formbody fl_wrap">
                    <asp:TextBox ID="txt_address2_from" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Address 2" Display="None" ValidationGroup="grp" ControlToValidate="txt_address2_from"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender22" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator22" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Address 2 </label>
                  </div>
                  <div class="group formbody fl_wrap">
                    <asp:TextBox ID="txt_postal_code_from" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Postal Code" Display="None" ValidationGroup="grp" ControlToValidate="txt_postal_code_from"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender23" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator23" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Postal Code </label>
                  </div>
                  <div class="group formbody fl_wrap">
                      <strong>

                          State
                      </strong>
                    <asp:DropDownList ID="ddl_state_from" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_state_from_SelectedIndexChanged"  >
                      <asp:ListItem Text="Select" Value="0" Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" InitialValue="select" SetFocusOnError="true" ErrorMessage="Please select Country." Display="None" ValidationGroup="grp" ControlToValidate="ddl_state_from"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender30" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator30" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                  <%--  <label class='fl_label' for='rf_name' type="text">State </label>--%>
                  </div>
                  <div class="group formbody fl_wrap">
                  <strong>
                  City
                  </strong>
                  <asp:DropDownList ID="ddl_city_from" runat="server"  >
                  <asp:ListItem Text="Select" Value="0" Selected="True"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" InitialValue="select" SetFocusOnError="true" ErrorMessage="Please select Country." Display="None" ValidationGroup="grp" ControlToValidate="ddl_city_from"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender33" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator33" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                  <%--  <label class='fl_label' for='rf_name' type="text">City </label>--%>
                  </div>
                  <div class="group formbody fl_wrap">
                    <asp:TextBox ID="txt_phone_no_from" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Phone Number" Display="None" ValidationGroup="grp" ControlToValidate="txt_phone_no_from"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender24" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator24" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Phone Number </label>
                  </div>
                  <div class="group formbody fl_wrap">
                    <asp:TextBox ID="txt_vat_cst_number_from" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" SetFocusOnError="true" ErrorMessage="Please enter vat/cst/tin number" Display="None" ValidationGroup="grp" ControlToValidate="txt_vat_cst_number_from"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender25" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator25" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">vat/cst/tin number </label>
                  </div>
                </div>
                <!-- Submit Button --> 
                
              </aside>
              
              <!-- right panel -->
              <aside class="col-xs-12 col-sm-12 col-md-6 col-lg-6 rightpanelfrm">
                <h3><span><img src="../images/from.png" alt=""></span> To</h3>
                <div class='FlowupLabels'> 
                  <!-- first name  -->
                  <div class="group formbody fl_wrap">
                <strong>
                    Country Name
                </strong>
                    <asp:DropDownList ID="ddl_country_to" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_country_to_SelectedIndexChanged"  >
                      <asp:ListItem Text="Select" Value="0" Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" InitialValue="select" SetFocusOnError="true" ErrorMessage="Please select Country Name." Display="None" ValidationGroup="grp" ControlToValidate="ddl_country_to"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator1" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                   <%-- <label class='fl_label' for='rf_name' type="text">Country Name</label>--%>
                  </div>
                  
                  <!-- company name  -->
                  <div class="group formbody fl_wrap">
                    <%--<input class='fl_input' type='text' />--%>
                    <asp:TextBox ID="txt_company_name_to" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Company Name" Display="None" ValidationGroup="grp" ControlToValidate="txt_company_name_to"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender9" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator9" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Company Name</label>
                  </div>
                  
                  <!-- Address -->
                  <div class="group formbody fl_wrap">
                    <%-- <input class='fl_input' type='text' />--%>
                    <asp:TextBox ID="txt_contact_person_name_to" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Contact Person Name" Display="None" ValidationGroup="grp" ControlToValidate="txt_contact_person_name_to"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender10" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator10" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Contact Person Name</label>
                  </div>
                  
                  <!-- Address2 -->
                  <div class="group formbody fl_wrap">
                    <asp:TextBox ID="txt_contact_number_to" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Contact Number" Display="None" ValidationGroup="grp" ControlToValidate="txt_contact_number_to"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender11" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator11" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Contact Number</label>
                  </div>
                  
                  <!-- Tin Number -->
                  <div class="group formbody fl_wrap">
                    <asp:TextBox ID="txt_address1_to" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Contact Number" Display="None" ValidationGroup="grp" ControlToValidate="txt_contact_number_to"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender26" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator11" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Address 1 </label>
                  </div>
                  <div class="group formbody fl_wrap">
                    <asp:TextBox ID="txt_address2_to" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Contact Number" Display="None" ValidationGroup="grp" ControlToValidate="txt_contact_number_to"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender27" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator11" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Address 2 </label>
                  </div>
                  <div class="group formbody fl_wrap">
                    <asp:TextBox ID="txt_postal_code_to" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Contact Number" Display="None" ValidationGroup="grp" ControlToValidate="txt_contact_number_to"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender28" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator11" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">Postal Code </label>
                  </div>
                  <div class="group formbody fl_wrap">
                       <strong>

                          State
                      </strong>
                    <asp:DropDownList ID="ddl_state_to" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_state_to_SelectedIndexChanged"  >
                      <asp:ListItem Text="Select" Value="0" Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" InitialValue="select" SetFocusOnError="true" ErrorMessage="Please select State." Display="None" ValidationGroup="grp" ControlToValidate="ddl_state_to"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender29" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator29" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                  <%--  <label class='fl_label' for='rf_name' type="text">State </label>--%>
                  </div>
                  <div class="group formbody fl_wrap">
                  <strong>
                  City
                  </strong>
                  <asp:DropDownList ID="ddl_city_to" runat="server"  >
                  <asp:ListItem Text="Select" Value="0" Selected="True"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" InitialValue="select" SetFocusOnError="true" ErrorMessage="Please select City." Display="None" ValidationGroup="grp" ControlToValidate="ddl_city_to"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender34" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator34" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                  <%--<label class='fl_label' for='rf_name' type="text">City </label>--%>
                  </div>
                  <div class="group formbody fl_wrap">
                  <asp:TextBox ID="txt_phone_no_to" runat="server" CssClass='fl_input'></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Phone Number" Display="None" ValidationGroup="grp" ControlToValidate="txt_phone_no_to"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender31" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator31" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                  <label class='fl_label' for='rf_name' type="text">Phone Number </label>
                  </div>
                  <div class="group formbody fl_wrap">
                    <asp:TextBox ID="txt_vat_cst_to" runat="server" CssClass='fl_input'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" SetFocusOnError="true" ErrorMessage="Please enter vat/cst/tin number" Display="None" ValidationGroup="grp" ControlToValidate="txt_vat_cst_to"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender32" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator32" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                    <label class='fl_label' for='rf_name' type="text">vat/cst/tin number </label>
                  </div>
                </div>
              </aside>
            </div>
          </div>
      
        <div class="heading-bar">
          <h2>PACKAGE AND SHIPMENT DETAILS</h2>
          <span class="h-line"></span> </div>
        
        <!-- middle panel start here -->
    
          
          <div class="row"> 
            
            <!-- left panel -->
            <aside class="col-xs-12 col-sm-12 col-md-6 col-lg-6  leftpanelfrm">
              <div class='FlowupLabels'> 
                <!-- first name  -->
                <div class="group formbody fl_wrap">
                  <asp:TextBox ID="txt_ship_date" runat="server" CssClass='fl_input'></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" SetFocusOnError="true" ErrorMessage="Please enter ship date" Display="None" ValidationGroup="grp" ControlToValidate="txt_ship_date"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender12" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator12" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                  <label class='fl_label' for='rf_name' type="text">ship date</label>
                </div>
                
                <!-- company name  -->
                <div class="group formbody fl_wrap">
                  <asp:TextBox ID="txt_no_of_package" runat="server" CssClass='fl_input'></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" SetFocusOnError="true" ErrorMessage="Please enter No Of Package" Display="None" ValidationGroup="grp" ControlToValidate="txt_no_of_package"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender13" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator13" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                  <label class='fl_label' for='rf_name' type="text">No Of Package</label>
                </div>
                
                <!-- Address -->
                <div class="group formbody fl_wrap">
                  <strong>    are they identical (if no of package is more than 2 ) </strong>
                  <asp:DropDownList ID="ddl_identical" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_identical_SelectedIndexChanged">
                    <asp:ListItem Text="Select" Value="0" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" InitialValue="select" SetFocusOnError="true" ErrorMessage="Please select are they identical" Display="None" ValidationGroup="grp" ControlToValidate="ddl_identical"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator2" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                 <%-- <label class='fl_label' for='rf_name' type="text">are they identical (if no of package is more than 2 )</label>--%>
                </div>
                <asp:GridView ID="grd_identical" runat="server" AutoGenerateColumns="false">
                  <Columns>
                  <asp:TemplateField>
                    <ItemTemplate>
                      <table>
                        <tr>
                          <td> Package </td>
                          <td><%#Eval("id") %></td>
                          <td> Length </td>
                          <td><asp:TextBox ID="txt_length" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Length" Display="None" ValidationGroup="grp" ControlToValidate="txt_length"></asp:RequiredFieldValidator>
                            <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender16" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator16" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender></td>
                          <td> Width </td>
                          <td><asp:TextBox ID="txt_width" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Width" Display="None" ValidationGroup="grp" ControlToValidate="txt_width"></asp:RequiredFieldValidator>
                            <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender19" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator19" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender></td>
                          <td> Height </td>
                          <td><asp:TextBox ID="txt_height" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" SetFocusOnError="true" ErrorMessage="Please enter Height" Display="None" ValidationGroup="grp" ControlToValidate="txt_height"></asp:RequiredFieldValidator>
                            <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender20" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator20" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender></td>
                        </tr>
                      </table>
                    </ItemTemplate>
                  </asp:TemplateField>
                  </Columns>
                </asp:GridView>
                
                <!-- Address2 -->
                <div class="group formbody fl_wrap">
                  <strong>    shipment purpose commercial or personal</strong>
                  <asp:DropDownList ID="ddl_purpose" runat="server">
                    <asp:ListItem Text="Select" Value="0" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="commercial" Value="commercial"></asp:ListItem>
                    <asp:ListItem Text="personal" Value="personal"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" InitialValue="select" SetFocusOnError="true" ErrorMessage="Please select shipment purpose" Display="None" ValidationGroup="grp" ControlToValidate="ddl_purpose"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator3" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                 <%-- <label class='fl_label' for='rf_name' type="text">shipment purpose commercial or personal</label>--%>
                </div>
                
                <!-- Address --> 
                <!-- <div class="group formbody fl_wrap">
 <select class='fl_input'><option> </option> <option>one</option></select>
  <label class='fl_label' for='rf_name' type="text">Country</label>                    
 </div>--> 
                
                <!-- Tin Number -->
                <div class="group formbody fl_wrap">
                  <asp:TextBox ID="txt_package_description" runat="server" CssClass='fl_input'></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" SetFocusOnError="true" ErrorMessage="Please enter package description" Display="None" ValidationGroup="grp" ControlToValidate="txt_package_description"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender15" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator14" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                  <label class='fl_label' for='rf_name' type="text">package description </label>
                </div>
                
                <!-- Tin Number -->
                <div class="group formbody fl_wrap">
                  <asp:TextBox ID="txt_package_packing" runat="server" CssClass='fl_input'></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" SetFocusOnError="true" ErrorMessage="Please enter package`s packing" Display="None" ValidationGroup="grp" ControlToValidate="txt_package_packing"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender35" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator15" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                  <label class='fl_label' for='rf_name' type="text">package`s packing </label>
                </div>
                <div class="group formbody fl_wrap">
                  <asp:TextBox ID="txt_total_invoice_value" runat="server" CssClass='fl_input'></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" SetFocusOnError="true" ErrorMessage="Please enter total invoice value" Display="None" ValidationGroup="grp" ControlToValidate="txt_total_invoice_value"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender16" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator16" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                  <label class='fl_label' for='rf_name' type="text">total invoice value </label>
                </div>
                <div class="group formbody fl_wrap">

              <strong>         freigh on value carrier risk or owner risk and carriage value</strong> 
                  <asp:DropDownList ID="ddl_risk" runat="server">
                    <asp:ListItem Text="Select" Value="0" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="carrier risk" Value="carrier risk"></asp:ListItem>
                    <asp:ListItem Text="owner risk" Value="owner risk"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" InitialValue="select" SetFocusOnError="true" ErrorMessage="Please select risk type." Display="None" ValidationGroup="grp" ControlToValidate="ddl_risk"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender36" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator5" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                 <%-- <label class='fl_label' for='rf_name' type="text">freigh on value carrier risk or owner risk and carriage value </label>--%>
                </div>
              </div>
            </aside>
          </div>
           
 
        <div class="heading-bar">
          <h2>SPECIAL SERVICES</h2>
          <span class="h-line"></span> </div>
        
        <!-- middle panel start here -->
 
          <div class="container-fluid">
          <div class="row"> 
            
            <!-- left panel -->
            <aside class="col-xs-12 col-sm-12 col-md-6 col-lg-6  leftpanelfrm">
              <div class='FlowupLabels'> 
                <!-- first name  -->
                <div class="group formbody fl_wrap">
                  <%--     <input class='fl_input' type='text' />--%>
                <%--  <label class='fl_label' for='rf_name' type="text">to pay or to be billed</label>--%>

                    <strong>
                        to pay or to be billed
                    </strong>
                  <asp:DropDownList ID="ddl_to_pay" runat="server">
                    <asp:ListItem Text="Select" Value="0" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="To Pay" Value="To Pay"></asp:ListItem>
                    <asp:ListItem Text="Billed" Value="Billed"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" InitialValue="select" SetFocusOnError="true" ErrorMessage="Please select to pay." Display="None" ValidationGroup="grp" ControlToValidate="ddl_to_pay"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender37" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator6" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                </div>
                
                <!-- company name  -->
                <div class="group formbody fl_wrap">
                    <strong>cod if required total COD amount</strong>
                  <%--    <input class='fl_input' type='text' />--%>
               <%--   <label class='fl_label' for='rf_name' type="text">cod if required total COD amount</label>--%>
                  <asp:DropDownList ID="ddl_cod_amount" runat="server">
                    <asp:ListItem Text="Select" Value="0" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" InitialValue="select" SetFocusOnError="true" ErrorMessage="Please select total COD amount" Display="None" ValidationGroup="grp" ControlToValidate="ddl_cod_amount"></asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender38" PopupPosition="BottomLeft" runat="server" TargetControlID="RequiredFieldValidator7" CssClass="customCalloutStyle" CloseImageUrl="~/images/a_close.png" WarningIconImageUrl="~/images/warningicon.png"></cc1:ValidatorCalloutExtender>
                </div>
              </div>
            </aside>
          </div>

        <div class="group formbody text-right">
          <%--  <button class="btn btn-primary"  type="submit"> Submit</button>--%>
          <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-primary" ValidationGroup="grp" OnClick="btn_submit_Click" />
        </div>
      </div>
      
        </section>
          </div>
<script src='js/jquery.min.js'></script> 
<script src='js/jquery.FlowupLabels.js'></script> 
<script src='js/main.js'></script>
</form>
</body>
</html>
