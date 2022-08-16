<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
    
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title id="pageTitleQuotationTemplateRegistration"> Quotation Template Registration</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet" />

    <link href="./dist-assets/css/themes/lite-purple.css" rel="stylesheet" />
    <link href="./dist-assets/css/plugins/perfect-scrollbar.css" rel="stylesheet" />
    <link rel="stylesheet" href="./dist-assets/css/plugins/fontawesome-5.css" />
    <link href="./dist-assets/css/plugins/metisMenu.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="./dist-assets/css/plugins/datatables.min.css" />
   
    <link href="./dist-assets/css/plugins/fontawesome/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./dist-assets/css/mobios-site.css" />

   <style>
    .no-border {
		  border-top-style: hidden;
		  border-right-style: hidden;
		  border-left-style: hidden;
		  border-bottom-style: groove;
		  border:none !important;
		  background-color: #f8f9fa00 !important;
		
		  
		}
		
		 .no-outline:focus {
		  outline: none !important;
		  background-color: #f8f9fa00 !important;
		}
		
		.last-td-color
		{
		  background-color:#578ebe;
		  color:white;
		  text-align: center;
		}
		
		.center-content
		{
		  text-align: center;
		  padding: auto;
		}
		
		.right-content
		{
		  text-align: right;
		}
		
		.amount-content-color
		{
		 background-color:#eee !important;
		 text-align: right;
		}
   </style>
</head>

<body class="text-left" >
 <%@ include file="common/CacheControl.jsp"%>
       <div id="sideBarDiv" class="app-admin-wrap layout-sidebar-vertical sidebar-full " >
       
        <!-- <div class="app-admin-wrap layout-sidebar-vertical sidebar-compact-onhover sidebar-closed sidebar-compact">        -->
        <div class="sidebar-panel bg-white">
            <div class="gull-brand pr-3 text-center mt-4 mb-2 d-flex justify-content-center align-items-center" ><img class="pl-3" src="./dist-assets/images/logo.png" alt="alt" />
                <!--  <span class=" item-name text-20 text-primary font-weight-700">GULL</span> -->
                <div class="sidebar-compact-switch ml-auto" ><span></span></div>
            </div>
            <!--  user -->
             <!-- ============ leftMenu start ============= -->
             <%@ include file="common/leftMenu.jsp"%>
            <!-- ============ leftMenu end ============= --> 
            <!--  side-nav-close -->
        </div>
        <div class="switch-overlay"></div>
        <div class="main-content-wrap mobile-menu-content bg-off-white m-0" style="z-index: 1;">
   
            <!-- ============ topMenu start ============= -->
             <%@ include file="common/topMenu.jsp"%>
            <!-- ============ topMenu end ============= --> 
   
            <!-- ============ Body content start ============= -->

            <div class="main-content pt-2"  style="z-index: 1;">
                <!-- <div class="row">
                    <div class="col-md-5">
                        <i class=" text-20 cursor-pointer" role="generic"></i> <h1 class="mr-2">  Staff List</h1>
                    </div>
                    <div class="col-md-7">
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Staff Registration</button> 
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Batch Registration</button> 
                        <button class="DefaultButton btn" role='button'><i class="i-Circular-Point mr-3 text-20 cursor-pointer" role="generic" ></i>Staff List CSV Output</button> 
                    </div>
                    
                </div> -->
                <!-- <div class="separator-breadcrumb border-top"></div>  -->

                <div class="row">
                    <div class="col-md-12">
                        <div id="bodyMainCard" class="card mb-4">
                            <div class="card-body p-0" >
                              <div class="row pt-4 mt-2 ml-2">
                                <div class="col-sm-12 TopActionButDiv mr-4 pr-4 ">   
                                  </div>
                                    <div class="col-md-8 " >
                                        <h1> <i class="fa fa-users text-30" role="generic" ></i><span id="pageSpanHeadingQuotationRegistration">  Quotation Template Registration </span></h1>
                                       
                                        <p class="pb-0 mb-0" id="pageSpanSubHeadingQuotationRegistration">You can register a quotation template. </p>
                                    </div>
                                    <div class="col-md-4  ">
                                        <div class="row pt-0  pr-2">
                                            <div class="col-sm-12 pr-4 TopButDiv">
                                         
                                            </div>
                                        </div>
                                        <div class="row pt-0 ">
                                            <div class="col-sm-12 pr-4  TopButDiv">
                                              <button class="DefaultButton btn btn-info TopButtonMinWidth mr-2" role='button' onclick="window.history.back();"><span id="buttonSpanReturn">Return</span></button>
                                            </div>
                                        </div>
                                    </div>
                              </div>

                              <div class="row">
                                  <div class="col-lg-12 col-xl-12 ">
                                    <div id="accordion" class="m-3 ">
                                       
                                        <div class="card SDAccordionCard mb-2">
                                            <div class="card-header  pt-2 pb-2" id="headingTwo">
                                              <h5 class="mb-0">
                                                <button class="btn btn-link2 collapsed SDAccordion"  data-target="#resumeInformation" aria-expanded="false" aria-controls="resumeInformation">
                                                  <div class="row" >
                                                    <div class="col-10" style="text-align: left;" id="accordionDivQuotationInformation"> Quotation Information</div>
                                                   
                                                  </div>
                                                </button>
                                              </h5>
                                            </div>
                                            <div id="resumeInformation" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordion">
                                              <div class="card-body SDAccordionCardBody">
                                              	 <div class="row pt-3 pb-3">
                                              	     <div class="col-sm-12 col-md-6 col-lg-12 pt-2 pl-3 pr-3" >
                                                 	   <div class="DetailsTitleText" ><span id="pageSpanQuotationTemplateInformation"> Quotation Template Information </span></div>
                                                   
                                                
                                                	</div>
                                              		   
                                              	  <div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3" >
                                                    <div class="DetailsTitleText" ><span id="pageSpanTemplateName"> Template Name </span><span class="RequiredStar">*</span></div>
                                                    <div><input type="text" id="quotationTemplateName" class="form-control">
                                                      
                                                    </div>
                                                  <div id="errorTemplateName" class="RequiredStar"></div>  
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-3 pr-3" >
                                                    <div class="DetailsTitleText" ><span id="pageSpanSortOrder"> Sort Order </span><span class="RequiredStar">*</span></div>
                                                    <div ><input type="text" id="quotationSortOrder" class="form-control" >
                                                      
                                                    </div>
                                                   <div id="errorSortOrder" class="RequiredStar"></div> 
                                                </div>
                                              	 
                                              	 
                                              	 
                                              	 </div>
                                              
                                              
                                                <div class="row pt-3 pb-3">
                                                
                                                
                                                
                                                    <div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3" >
                                                        <div class="DetailsTitleText"><span id="pageSpanQuotationDetails">Quotation Details </span></div>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-12 mt-3" >
                                                      <div class="table-responsive" >
                                                          <table class="display table table-striped table-bordered mb-0" id="QuotationDetails_table" style="width:100%">
                                                              <thead id="quotationDetailsTaxableTheadId">
                                                                  <tr>
                                                                     <th id="tableQuotationDetailsTHNo"> No</th>
                                                                     <th id="tableQuotationDetailsTHMajorItems" style="width:5%"> Major Items</th>
                                                                     <th id="tableQuotationDetailsTHItem"> Item</th>
                                                                     <th id="tableQuotationDetailsTHUnitPrice" style="width:10%"> Unit Price</th>
                                                                     <th id="tableQuotationDetailsTHQuantity" style="width:10%"> Quantity</th>
                                                                     <th id="tableQuotationDetailsTHAmountMoney" style="width:10%"> Amount of Money</th>
                                                                     <th id="tableQuotationDetailsTHRemarks"> Remarks</th>
                                                                     <th id="tableQuotationDetailsTHConsumptionTax">Consumption Tax</th>    
                                                                     <th ></th>                                                                  
                                                                  </tr>
                                                              </thead>
                                                              <tbody id="quotationDetailsTaxableTbodyId">
                                                             	 <tr id="quotationDetailsTaxableTrId">
														    		 <input type="hidden" name="quotationItemTaxableID[]">
																	<td  class="">1</td>
																	<td  class="center-content" >
																		<label class="container">
																		<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1" style="margin: auto;"> 
																		<span class="checkmark" style="margin: auto;"></span>
																	  </label>
																	</td>
																	<td ><input name="quotationItemTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>
																	<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)"  class="form-control no-border no-outline right-content"></td>
																	<td ><input type="text" name="quotationItemTaxableQuantity[]"   onfocusout="calTaxableQuantity(this)"  class="TaxableQuantity form-control no-border no-outline right-content"></td>
																	<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"></td>
																	<td ><input type="text" name="quotationItemTaxableRemarks[]"  class="form-control no-border no-outline"></td>
																	<td class="last-td-color">
																		<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>
																	</td>
																	<td>
																		<button class="btn btn-danger mr-1 mb-1" disal onclick="removeTaxableRow(this)"><i class="fa fa-trash"></i></button>
																		<button class="btn btn-danger mb-1" onclick="clearRowTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>
																		</td>
															      </tr>
															      <tr id="quotationDetailsTaxableTrId">
														    		 <input type="hidden" name="quotationItemTaxableID[]">
																	<td  class="">2</td>
																	<td  class="center-content">
																		<label class="container">
																		<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> 
																		<span class="checkmark"></span>
																	  </label>
																	</td>
																	<td ><input name="quotationItemTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>
																	<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)"  class="form-control no-border no-outline right-content"></td>
																	<td ><input type="text" name="quotationItemTaxableQuantity[]"   onfocusout="calTaxableQuantity(this)"  class="TaxableQuantity form-control no-border no-outline right-content"></td>
																	<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"></td>
																	<td ><input type="text" name="quotationItemTaxableRemarks[]"  class="form-control no-border no-outline"></td>
																	<td class="last-td-color">
																		<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>
																	</td>
																	<td>
																		<button class="btn btn-danger mr-1 mb-1" disal onclick="removeTaxableRow(this)"><i class="fa fa-trash"></i></button>
																		<button class="btn btn-danger mb-1" onclick="clearRowTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>
																		</td>
															      </tr>
															      <tr id="quotationDetailsTaxableTrId">
														    		 <input type="hidden" name="quotationItemTaxableID[]">
																	<td  class="">3</td>
																	<td  class="center-content">
																		<label class="container">
																		<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> 
																		<span class="checkmark"></span>
																	  </label>
																	</td>
																	<td ><input name="quotationItemTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>
																	<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)"  class="form-control no-border no-outline right-content"></td>
																	<td ><input type="text" name="quotationItemTaxableQuantity[]"   onfocusout="calTaxableQuantity(this)"  class="TaxableQuantity form-control no-border no-outline right-content"></td>
																	<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"></td>
																	<td ><input type="text" name="quotationItemTaxableRemarks[]"  class="form-control no-border no-outline"></td>
																	<td class="last-td-color">
																		<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>
																	</td>
																	<td>
																		<button class="btn btn-danger mr-1 mb-1" disal onclick="removeTaxableRow(this)"><i class="fa fa-trash"></i></button>
																		<button class="btn btn-danger mb-1" onclick="clearRowTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>
																		</td>
															      </tr>
															      <tr id="quotationDetailsTaxableTrId">
														    		 <input type="hidden" name="quotationItemTaxableID[]">
																	<td  class="">4</td>
																	<td  class="center-content">
																		<label class="container">
																		<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> 
																		<span class="checkmark"></span>
																	  </label>
																	</td>
																	<td ><input name="quotationItemTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>
																	<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)"  class="form-control no-border no-outline right-content"></td>
																	<td ><input type="text" name="quotationItemTaxableQuantity[]"   onfocusout="calTaxableQuantity(this)"  class="TaxableQuantity form-control no-border no-outline right-content"></td>
																	<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"></td>
																	<td ><input type="text" name="quotationItemTaxableRemarks[]"  class="form-control no-border no-outline"></td>
																	<td class="last-td-color">
																		<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>
																	</td>
																	<td>
																		<button class="btn btn-danger mr-1 mb-1" disal onclick="removeTaxableRow(this)"><i class="fa fa-trash"></i></button>
																		<button class="btn btn-danger mb-1" onclick="clearRowTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>
																		</td>
															      </tr>
															      <tr id="quotationDetailsTaxableTrId">
														    		 <input type="hidden" name="quotationItemTaxableID[]">
																	<td  class="">5</td>
																	<td  class="center-content">
																		<label class="container">
																		<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> 
																		<span class="checkmark"></span>
																	  </label>
																	</td>
																	<td ><input name="quotationItemTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>
																	<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)"  class="form-control no-border no-outline right-content"></td>
																	<td ><input type="text" name="quotationItemTaxableQuantity[]"   onfocusout="calTaxableQuantity(this)"  class="TaxableQuantity form-control no-border no-outline right-content"></td>
																	<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"></td>
																	<td ><input type="text" name="quotationItemTaxableRemarks[]"  class="form-control no-border no-outline"></td>
																	<td class="last-td-color">
																		<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>
																	</td>
																	<td>
																		<button class="btn btn-danger mr-1 mb-1" disal onclick="removeTaxableRow(this)"><i class="fa fa-trash"></i></button>
																		<button class="btn btn-danger mb-1" onclick="clearRowTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>
																		</td>
															      </tr>
	                                                               <tfoot id="quotationDetailsTaxableTfootId">
	                                                                <tr>
	                                                                       <th colspan="3" id="tableQuotationDetailsSubtotalTaxable" class="right-content"> subtotal:</th>
	                                                                     <th colspan="2"  style="border-right: none"> </th>
	                                                                     <th colspan="1"  class="amount-content-color" >¥  <span id="tableQuotationDetailsSubtotalTaxableVal"style="border-left: none;border-right: none;" >0</span></th> 
	                                                                     <th colspan="1"  style="border-right: none;border-left: none;"> </th>  
	                                                                     <th colspan="1"  class="center-content">  <button class="btn SuccessColor" onclick="addTaxableQuotationItemRow()" id="TaxableQuotationItemRowAdd">Add Row</button></th>                                                            
	                                                                </tr>
	                                                              </tfoot>
                                                          </table>
                                                          
                                                          
                                                          <table class="display table table-striped table-bordered mt-0" id="QuotationDetailsNonTaxable_table" style="width:100%">
                                                              <thead id="quotationDetailsNonTaxableTheadId">
                                                                  <tr>
                                                                     <th id="tableQuotationDetailsNonTaxableDetailsTHNo"> No</th>
                                                                     <th id="tableQuotationDetailsNonTaxableDetailsTHMajorItems" style="width:5%"> Major Items</th>
                                                                     <th id="tableQuotationDetailsNonTaxableDetailsTHItem"> Item</th>
                                                                     <th id="tableQuotationDetailsNonTaxableDetailsTHUnitPrice" style="width:10%"> Unit Price</th>
                                                                     <th id="tableQuotationDetailsNonTaxableDetailsTHQuantity" style="width:10%"> Quantity</th>
                                                                     <th id="tableQuotationDetailsNonTaxableDetailsTHAmountMoney" style="width:10%"> Amount of Money</th>
                                                                     <th id="tableQuotationDetailsNonTaxableDetailsTHRemarks"> Remarks</th>
                                                                     <th id="tableQuotationDetailsNonTaxableDetailsTHConsumptionTax">Consumption Tax</th>    
                                                                      <th ></th>                                                               
                                                                  </tr>
                                                              </thead>
                                                              <tbody id="quotationDetailsNonTaxableTbodyId">
										                            <tr id="quotationDetailsNonTaxableTrId">
															  		 <input type="hidden" name="quotationItemNonTaxableID[]">
																		<td  class="">1</td>
																		<td  class="center-content">
																			<label class="container">
																			<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> 
																			<span class="checkmark"></span>
																		  </label>
																		</td>
																		<td ><input name="quotationItemNonTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>
																		<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" class="form-control no-border no-outline right-content"></td>
																		<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																		<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> </td>
																		<td ><input type="text" name="quotationItemNonTaxableRemarks[]" class="form-control no-border no-outline"></td>
																		<td  class="last-td-color">
																			<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>
																		</td>
																		<td>
																		<button class="btn btn-danger mr-1 mb-1" onclick="removeNonTaxableRow(this)"><i class="fa fa-trash"></i></button>
																		<button class="btn btn-danger mb-1" onclick="clearRowNonTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>
																		</td>
																    </tr>
																    <tr id="quotationDetailsNonTaxableTrId">
															  		 <input type="hidden" name="quotationItemNonTaxableID[]">
																		<td  class="">2</td>
																		<td  class="center-content">
																			<label class="container">
																			<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> 
																			<span class="checkmark"></span>
																		  </label>
																		</td>
																		<td ><input name="quotationItemNonTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>
																		<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" class="form-control no-border no-outline right-content"></td>
																		<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																		<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> </td>
																		<td ><input type="text" name="quotationItemNonTaxableRemarks[]" class="form-control no-border no-outline"></td>
																		<td  class="last-td-color">
																			<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>
																		</td>
																		<td>
																		<button class="btn btn-danger mr-1 mb-1" onclick="removeNonTaxableRow(this)"><i class="fa fa-trash"></i></button>
																		<button class="btn btn-danger mb-1" onclick="clearRowNonTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>
																		</td>
																    </tr>
																    <tr id="quotationDetailsNonTaxableTrId">
															  		 <input type="hidden" name="quotationItemNonTaxableID[]">
																		<td  class="">3</td>
																		<td  class="center-content">
																			<label class="container">
																			<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> 
																			<span class="checkmark"></span>
																		  </label>
																		</td>
																		<td ><input name="quotationItemNonTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>
																		<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" class="form-control no-border no-outline right-content"></td>
																		<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																		<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> </td>
																		<td ><input type="text" name="quotationItemNonTaxableRemarks[]" class="form-control no-border no-outline"></td>
																		<td class="last-td-color">
																			<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>
																		</td>
																		<td>
																		<button class="btn btn-danger mr-1 mb-1" onclick="removeNonTaxableRow(this)"><i class="fa fa-trash"></i></button>
																		<button class="btn btn-danger mb-1" onclick="clearRowNonTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>
																		</td>
																    </tr>
																    <tr id="quotationDetailsNonTaxableTrId">
															  		 <input type="hidden" name="quotationItemNonTaxableID[]">
																		<td  class="">4</td>
																		<td  class="center-content">
																			<label class="container">
																			<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> 
																			<span class="checkmark"></span>
																		  </label>
																		</td>
																		<td ><input name="quotationItemNonTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>
																		<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" class="form-control no-border no-outline right-content"></td>
																		<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																		<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> </td>
																		<td ><input type="text" name="quotationItemNonTaxableRemarks[]" class="form-control no-border no-outline"></td>
																		<td class="last-td-color">
																			<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>
																		</td>
																		<td>
																		<button class="btn btn-danger mr-1 mb-1" onclick="removeNonTaxableRow(this)"><i class="fa fa-trash"></i></button>
																		<button class="btn btn-danger mb-1" onclick="clearRowNonTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>
																		</td>
																    </tr><tr id="quotationDetailsNonTaxableTrId">
															  		 <input type="hidden" name="quotationItemNonTaxableID[]">
																		<td  class="">5</td>
																		<td  class="center-content">
																			<label class="container">
																			<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> 
																			<span class="checkmark"></span>
																		  </label>
																		</td>
																		<td ><input name="quotationItemNonTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>
																		<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" class="form-control no-border no-outline right-content"></td>
																		<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>
																		<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> </td>
																		<td ><input type="text" name="quotationItemNonTaxableRemarks[]" class="form-control no-border no-outline"></td>
																		<td class="last-td-color">
																			<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>
																		</td>
																		<td>
																		<button class="btn btn-danger mr-1 mb-1" onclick="removeNonTaxableRow(this)"><i class="fa fa-trash"></i></button>
																		<button class="btn btn-danger mb-1" onclick="clearRowNonTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>
																		</td>
																    </tr>
																
                                                              </tbody>
                                                             <tfoot id="quotationDetailsTotalfootId">
                                                                <tr>
                                                                     <th colspan="3" id="tableQuotationDetailsSubtotal" class="right-content"> Total (taxable + tax exempt):</th>
                                                                     <th colspan="2"  style="border-right: none"> </th>
                                                                     <th colspan="1" class="amount-content-color" >¥ <span id="tableQuotationDetailsFullTotalVal"style="border-left: none;border-right: none;">0</span> </th> 
                                                                     <th colspan="1"  style="border-right: none;border-left: none;"> </th> 
                                                                     <th colspan="1"  class="center-content"> </th>                                                            
                                                                  </tr>
                                                              </tfoot>
                                                              <tfoot id="quotationDetailsNonTaxableTfootId">
                                                                <tr>
                                                                     <th colspan="3" id="tableQuotationDetailsSubtotalNonTaxable" class="right-content"> subtotal:</th>
                                                                     <th colspan="2"  style="border-right: none"> </th>
                                                                     <th colspan="1" class="amount-content-color"   >¥ <span id="tableQuotationDetailsSubtotalNonTaxableVal"style="border-left: none;border-right: none;">0</span></th> 
                                                                     <th colspan="1"  style="border-right: none;border-left: none;"> </th> 
                                                                     <th colspan="1"  class="center-content">  <button class="btn SuccessColor" onclick="addNonTaxableQuotationItemRow()" id="NonTaxableQuotationItemRowAdd">Add Row</button></th>                                                            
                                                                  </tr>
                                                              </tfoot>
                                                              
                                                          </table>

                                                       </div>
                                                    </div>
                                                  </div>

                                   
                                                    
                                                    
                                                    <div class="row pt-3 pb-3">
                                                        <div class="col-sm-12 col-md-3 col-lg-3 pl-3 pr-3" >
                                                            <div class="DetailsTitleText"><span id="pageSpanRemarks">Remarks </span></div>
                                                        </div>
                                                        <div class="col-sm-12 col-md-12 col-lg-12" >
                                                            <textarea class="form-control" id="quotationRemarks" placeholder=""></textarea>    
                                                        </div>
                                                        
                                                        
                                                    </div>
                                                    
                                                       <div class="col-sm-12 col-md-12 col-lg-12 pl-3 pr-0 ContentAlignRC" >
                                                            <button  class="btn btn-info" id="buttonRegisterQuoteDetails">Register Quotation Template</button>
                                                        </div> 
                                                   
                                                </div>
                                            </div>
                                        </div>
                                        
                  

                                       
                                    
                                      </div>                               
                                  </div>                             
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- end of main-content -->
            </div>
            <!-- <div class="sidebar-overlay open"></div> Footer Start-->
            <div class="flex-grow-1"></div>
            <!-- Footer Start -->
            
            <!-- ============ Footer start ============= -->
             <%@ include file="common/footer.jsp"%>
            <!-- ============ Footer end ============= --> 
            
            <!-- fotter end -->
        </div>
    </div><!-- ============ Search UI Start ============= -->
  
    <!-- ============ Search UI End ============= -->

    <span id="spanScriptID"></span>
    <script src="./dist-assets/js/language_main.js"></script>
   

    <script>
        const lan = getSiteLanguage();
        var pageLanguage = lan;
        loadSelectedLanguage(pageLanguage,"quotation-template");
    </script>
    
    <script src="./dist-assets/js/plugins/jquery-3.3.1.min.js"></script>   
    <script src="./dist-assets/js/plugins/bootstrap.bundle.min.js"></script>
    <script src="./dist-assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="./dist-assets/js/scripts/tooltip.script.min.js"></script>
    <script src="./dist-assets/js/scripts/script.min.js"></script>
    <script src="./dist-assets/js/scripts/script_2.min.js"></script>
    <script src="./dist-assets/js/scripts/sidebar.large.script.min.js"></script>
    <script src="./dist-assets/js/plugins/feather.min.js"></script>
    <script src="./dist-assets/js/plugins/metisMenu.min.js"></script>
    <script src="./dist-assets/js/scripts/layout-sidebar-vertical.min.js"></script>
    <script src="./dist-assets/js/plugins/echarts.min.js"></script>
    <script src="./dist-assets/js/scripts/echart.options.min.js"></script>
    <script src="./dist-assets/js/scripts/dashboard.v1.script.min.js"></script>
    <script src="./dist-assets/js/plugins/datatables.min.js"></script>
    <script src="./dist-assets/js/scripts/datatables.script.min.js"></script>


    <script src="./dist-assets/js/quotation-template-registration-validate.js"></script>
    <script>
        //const serverHTTP = "http://testapi.sola.ml/SOLA-API-TEST/";
        //const serverHTTP = "http://sola.ml/SOLA-API/";
        const serverHTTP = "<%=serverHTTP%>";
        const  GUID = localStorage.getItem("GUID");
        const  templateID = localStorage.getItem('templateID');   

        $(document).ready(function () {
      
        let dataSet = '{"quotationTemplate": {"id": '+templateID+'}}';
        
        $.ajax({
            beforeSend: function(request) {
               request.setRequestHeader("GUID", GUID);
            },
            url: serverHTTP +'Quotation/GetQuotationTempInfo',
            method: 'POST',
            contentType: 'application/json',
            data: dataSet,
            dataType: 'json',
             success: function(result, status, request){
             if(result.status==200)
            	 {
            	  //  getQuotationTempInfo(result);
            	 }else{
            		// showMessage("Sorry Data Loding Error");
            	 }
             },
             error: function(error) {
             console.log(JSON.stringify(error));
	          }
	         });
	          
         });
           
        
        window.onscroll = function() {myFunction()};
        
        var topNewBar = document.getElementById("topNewBar");
        var sticky = topNewBar.offsetTop;
        

        function myFunction()
         {
          if (window.pageYOffset >= sticky) {
            topNewBar.classList.add("sticky")
          } else {
            topNewBar.classList.remove("sticky");
          }
        }

 var table ;


 function setLanguageWithTables(selectedLanguage){
	 loadSelectedLanguage(selectedLanguage,"quotation-template");
     setLanguage(selectedLanguage);

 }
  

function  getQuotationTempInfo(result)
   {
    document.getElementById("quotationTemplateName").value = result.data.quotationTemplate.templateName;
    document.getElementById("quotationSortOrder").value = result.data.quotationTemplate.sortOrder;
   
    var taxableItemsCount    =  result.data.quotationTemplateItemsTaxable.length;
    var nonTaxableItemsCount =  result.data.quotationTemplateItemsNonTaxable.length;
    let subTotalTaxable    =  0 ;
    let subTotalNonTaxable =  0 ;
    let fullTotal          =  0 ;
    
    
   //////////////// taxable start ////////////////
    if(taxableItemsCount>0)
	{
		// $("#quotationDetailsTaxableTbodyId").empty();
	}
    
    for(i=0;i<taxableItemsCount;i++)
    {
    	var id = result.data.quotationTemplateItemsTaxable[i].id != null ? result.data.quotationTemplateItemsTaxable[i].id : "" ;
    	var itemName = result.data.quotationTemplateItemsTaxable[i].itemName != null ? result.data.quotationTemplateItemsTaxable[i].itemName : "" ;
    	//var unitPrice = result.data.quotationTemplateItemsTaxable[i].unitPrice != null ? result.data.quotationTemplateItemsTaxable[i].unitPrice : "" ;
    	//var quantity = result.data.quotationTemplateItemsTaxable[i].quantity != null ? result.data.quotationTemplateItemsTaxable[i].quantity : "" ;
    	var remarks = result.data.quotationTemplateItemsTaxable[i].remarks != null ? result.data.quotationTemplateItemsTaxable[i].remarks : "" ;
    	
    	unitPrice  =   parseFloat(result.data.quotationTemplateItemsTaxable[i].unitPrice);
    	quantity   =   parseFloat(result.data.quotationTemplateItemsTaxable[i].quantity);
    	itemAmount =   unitPrice*quantity;
    	subTotalTaxable = subTotalTaxable + itemAmount;
    	
    	
    	 let newRow = '<tr id="quotationDetailsTaxableTrId">'+
			    		 '<input type="hidden" name="quotationItemTaxableID[]" value="'+id+'">'+
			    		 '<td class="" name="itemTaxableCounter[]">'+(i+1)+'</td>'+
						'<td  class="center-content">'+
							'<label class="container">'+
							'<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> '+
							'<span class="checkmark"></span>'+
						  '</label>'+
						'</td>'+
						'<td ><input name="quotationItemTaxableItemName[]" value="'+itemName+'" type="text" class="form-control no-border no-outline item-non-major"></td>'+
						'<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)" value="'+unitPrice+'" class="form-control no-border no-outline right-content"></td>'+
						'<td ><input type="text" name="quotationItemTaxableQuantity[]"  onfocusout="calTaxableQuantity(this)"  value="'+quantity+'" class="TaxableQuantity form-control no-border no-outline right-content"></td>'+
						'<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"> '+itemAmount+' </td>'+
						'<td ><input type="text" name="quotationItemTaxableRemarks[]" value="'+remarks+'" class="form-control no-border no-outline"></td>'+
						'<td class="last-td-color">'+
						'<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>'+
						'</td>'+
						'<td>'+
						'<button class="btn btn-danger mr-1 mb-1" disal onclick="removeTaxableRow(this)"><i class="fa fa-trash"></i></button>'+
						'<button class="btn btn-danger mb-1" onclick="clearRowTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>'+
						'</td>'+
				      '</tr>';
				      
		// majorItemsTaxableNode = document.getElementsByName("majorItemsTaxable[]");
		// $(majorItemsTaxableNode[i]).prop('checked', result.data.quotationTemplateItemsTaxable[i].majorItem);		      
    	 $("#QuotationDetails_table tbody").append(newRow);
    }
    
    document.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML  = subTotalTaxable;
    		
    for(var i=taxableItemsCount;i<5;i++)
    {
           let newRow = '<tr id="quotationDetailsTaxableTrId">'+
			    		 '<input type="hidden" name="quotationItemTaxableID[]">'+
			    		 '<td class="" name="itemTaxableCounter[]">'+(i+1)+'</td>'+
						'<td  class="center-content">'+
							'<label class="container">'+
							'<input type="checkbox" id="majorItems" name="majorItemsTaxable[]" value="1"> '+
							'<span class="checkmark"></span>'+
						  '</label>'+
						'</td>'+
						'<td ><input name="quotationItemTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>'+
						'<td ><input type="text" name="quotationItemTaxableUnitPrice[]" onfocusout="calTaxableUnitPrice(this)"  class="form-control no-border no-outline right-content"></td>'+
						'<td ><input type="text" name="quotationItemTaxableQuantity[]"   onfocusout="calTaxableQuantity(this)"  class="TaxableQuantity form-control no-border no-outline right-content"></td>'+
						'<td class="amount-content-color" name="quotationItemTaxableAmountMoney[]"></td>'+
						'<td ><input type="text" name="quotationItemTaxableRemarks[]"  class="form-control no-border no-outline"></td>'+
						'<td class="last-td-color">'+
						'<span id="tableQuotationDetailsTaxation" name="tableQuotationDetailsTaxation">Taxation</span>'+
						'</td>'+
						'<td>'+
						'<button class="btn btn-danger mr-1 mb-1" disal onclick="removeTaxableRow(this)"><i class="fa fa-trash"></i></button>'+
						'<button class="btn btn-danger mb-1" onclick="clearRowTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>'+
						'</td>'+
				      '</tr>';
				      
    	 $("#QuotationDetails_table tbody").append(newRow);
    }
    
    //////////////// taxable end ////////////////
    
    
    //////////////// non-taxable start ////////////////
    
    if(nonTaxableItemsCount>0)
	 {
		// $("#quotationDetailsNonTaxableTbodyId").empty();
	 }
    
    for(i=0;i<nonTaxableItemsCount;i++)
    {
    	var id = result.data.quotationTemplateItemsTaxable[i].id != null ? result.data.quotationTemplateItemsTaxable[i].id : "" ; 
    	var itemName = result.data.quotationTemplateItemsNonTaxable[i].itemName != null ? result.data.quotationTemplateItemsNonTaxable[i].itemName : "" ;
    	//var unitPrice = result.data.quotationTemplateItemsNonTaxable[i].unitPrice != null ? result.data.quotationTemplateItemsNonTaxable[i].unitPrice : "" ;
    	//var quantity = result.data.quotationTemplateItemsNonTaxable[i].quantity != null ? result.data.quotationTemplateItemsNonTaxable[i].quantity : "" ;
    	var remarks = result.data.quotationTemplateItemsNonTaxable[i].remarks != null ? result.data.quotationTemplateItemsNonTaxable[i].remarks : "" ;
    	
    	unitPrice  =   parseFloat(result.data.quotationTemplateItemsNonTaxable[i].unitPrice);
    	quantity   =   parseFloat(result.data.quotationTemplateItemsNonTaxable[i].quantity);
    	itemAmount =   unitPrice*quantity;
    	subTotalNonTaxable = subTotalNonTaxable + itemAmount;
    	

    	 let newRow = '<tr id="quotationDetailsNonTaxableTrId">'+
			    		 '<input type="hidden" name="quotationItemNonTaxableID[]" value="'+id+'">'+
			    		 '<td class="" name="itemNonTaxableCounter[]">'+(i+1)+'</td>'+
						'<td  class="center-content">'+
							'<label class="container">'+
							'<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> '+
							'<span class="checkmark"></span>'+
						  '</label>'+
						'</td>'+
						'<td ><input name="quotationItemNonTaxableItemName[]" value="'+itemName+'" type="text" class="form-control no-border no-outline item-non-major"></td>'+
						'<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" value="'+unitPrice+'" class="form-control no-border no-outline right-content"></td>'+
						'<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)"  value="'+quantity+'" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>'+
						'<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> '+itemAmount+' </td>'+
						'<td ><input type="text" name="quotationItemNonTaxableRemarks[]" value="'+remarks+'" class="form-control no-border no-outline"></td>'+
						'<td class="last-td-color">'+
						'<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>'+
						'</td>'+
						'<td>'+
						'<button class="btn btn-danger mr-1 mb-1" onclick="removeNonTaxableRow(this)"><i class="fa fa-trash"></i></button>'+
						'<button class="btn btn-danger mb-1" onclick="clearRowNonTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>'+
						'</td>'+
				      '</tr>';
      			      
    	 $("#QuotationDetailsNonTaxable_table tbody").append(newRow);
    }
    
    document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML  = subTotalNonTaxable;

    for(var i=nonTaxableItemsCount;i<5;i++)
    {
           let newRow = '<tr id="quotationDetailsNonTaxableTrId">'+
					  		 '<input type="hidden" name="quotationItemNonTaxableID[]">'+
					  		'<td class="" name="itemNonTaxableCounter[]">'+(i+1)+'</td>'+
								'<td  class="center-content">'+
									'<label class="container">'+
									'<input type="checkbox" id="majorItemsNon" name="majorItemsNonTaxable[]" value="1"> '+
									'<span class="checkmark"></span>'+
								  '</label>'+
								'</td>'+
								'<td ><input name="quotationItemNonTaxableItemName[]"  type="text" class="form-control no-border no-outline item-non-major"></td>'+
								'<td ><input type="text" name="quotationItemNonTaxableUnitPrice[]" onfocusout="calNonTaxableUnitPrice(this)" class="form-control no-border no-outline right-content"></td>'+
								'<td ><input type="text" name="quotationItemNonTaxableQuantity[]"  onfocusout="calNonTaxableQuantity(this)" class="NonTaxableQuantity form-control no-border no-outline right-content"></td>'+
								'<td class="amount-content-color" name="quotationItemNonTaxableAmountMoney[]"> </td>'+
								'<td ><input type="text" name="quotationItemNonTaxableRemarks[]" class="form-control no-border no-outline"></td>'+
								'<td class="last-td-color">'+
								'<span id="tableQuotationDetailsTaxExempt" name="tableQuotationDetailsTaxExempt">Tax exempt</span>'+
								'</td>'+
								'<td>'+
								'<button class="btn btn-danger mr-1 mb-1" onclick="removeNonTaxableRow(this)"><i class="fa fa-trash"></i></button>'+
								'<button class="btn btn-danger mb-1" onclick="clearRowNonTaxable(this)" margin-left: 0.1rem;"><i class="fa fa-eraser"></i></button>'+
								'</td>'+
						    '</tr>';
				      
    	 $("#QuotationDetailsNonTaxable_table tbody").append(newRow);
    }  
    
    fullTotal = subTotalTaxable + subTotalNonTaxable ;
    document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML  = fullTotal;
    
    //////////////// non-taxable end ////////////////
 }
 

	function calTaxableUnitPrice(node)
 {
		trNode = node.closest("tr");
		checkUnitPrice(node); // For Validation
		
		TaxableUnitPrice =  parseFloat(node.value);
		TaxableQuantity  =  parseFloat($(trNode).find("td:eq(4) input[type='text']").val());
		itemAmount =  TaxableUnitPrice*TaxableQuantity;
		if(!isNaN(itemAmount) && !isNaN(node.value))
		{
			$(trNode).find("td:eq(5)").html(itemAmount);
			calculateTaxableSubtotal();
			calculateTotal();
		}else{
			$(trNode).find("td:eq(5)").html("");
			calculateTaxableSubtotal();
			calculateTotal();
		}
		
		
 }

	function calTaxableQuantity(node)
	 {
			trNode = node.closest("tr");
			checkQuantity(node); //For Validation........
			
			TaxableQuantity   =  parseFloat(node.value);
			TaxableUnitPrice  =  parseFloat($(trNode).find("td:eq(3) input[type='text']").val());
			itemAmount =  TaxableUnitPrice*TaxableQuantity;
			if(!isNaN(itemAmount) && !isNaN(node.value))
			{
				$(trNode).find("td:eq(5)").html(itemAmount);
				calculateTaxableSubtotal();
				calculateTotal();
			}else
			{
				$(trNode).find("td:eq(5)").html("");
				calculateTaxableSubtotal();
				calculateTotal();
			}
			
			
	 }

	
 function calNonTaxableUnitPrice(node)
 {
	    trNode = node.closest("tr");
	    checkUnitPrice(node); // For Validation
	    
		NonTaxableUnitPrice =  parseFloat(node.value);
		NonTaxableQuantity  =  parseFloat($(trNode).find("td:eq(4) input[type='text']").val());
		itemAmount =  NonTaxableUnitPrice*NonTaxableQuantity;
		if(!isNaN(itemAmount) && !isNaN(node.value))
		{	
			$(trNode).find("td:eq(5)").html(itemAmount);
			calculateNonTaxableSubtotal();
			calculateTotal()
		}else
		{
			$(trNode).find("td:eq(5)").html("");
			calculateNonTaxableSubtotal();
			calculateTotal();
		}
		
		
 }
 
 function calNonTaxableQuantity(node)
 {
	    trNode = node.closest("tr");
	    checkQuantity(node); //For Validation........
	    
	    NonTaxableQuantity  =  parseFloat(node.value);
		NonTaxableUnitPrice =  parseFloat($(trNode).find("td:eq(3) input[type='text']").val());
		itemAmount =  NonTaxableUnitPrice*NonTaxableQuantity;
		if(!isNaN(itemAmount) && !isNaN(node.value))
		{
			$(trNode).find("td:eq(5)").html(itemAmount);
			calculateNonTaxableSubtotal();
			calculateTotal()
		}else
		{
			$(trNode).find("td:eq(5)").html("");
			calculateNonTaxableSubtotal();
			calculateTotal();
		}
		
 }
 
 function calculateTaxableSubtotal()
 {
	 ItemTaxableAmount = document.getElementsByName("quotationItemTaxableAmountMoney[]");
	 var TaxableSubtotal = 0
	 for(i=0;i<ItemTaxableAmount.length;i++)
	   {
		 if(ItemTaxableAmount[i].innerHTML.trim() !="" )
		 {
			 TaxableSubtotal  =  TaxableSubtotal + parseFloat( ItemTaxableAmount[i].innerHTML.trim());
			  
		 }
	   }
	 
	 document.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML =  TaxableSubtotal;
 }
 
 function calculateNonTaxableSubtotal()
 {
	 ItemNonTaxableAmount = document.getElementsByName("quotationItemNonTaxableAmountMoney[]");
	 var NonTaxableSubtotal = 0
	 for(i=0;i<ItemNonTaxableAmount.length;i++)
	   {
		 if(ItemNonTaxableAmount[i].innerHTML.trim() !="" )
		 {
			 NonTaxableSubtotal  =  NonTaxableSubtotal + parseFloat( ItemNonTaxableAmount[i].innerHTML.trim());
			  
		 }
	   }
	 
	 document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML =  NonTaxableSubtotal; 
 }
 
 function calculateTotal()
 {
	 TaxableSubtotal = parseFloat(document.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML.trim());
	 NonTaxableSubtotal = parseFloat(document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML.trim());
	 
	 total =	TaxableSubtotal + NonTaxableSubtotal ;
	 
	 document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML = total ;
 }
 
 function editQuotationTempInfo(){
		// var quotationTemplateID = document.getElementsByName("");
		 var quotationTemplateName = document.getElementById("quotationTemplateName").value.trim();
	     var quotationTemplateSortOrder = document.getElementById("quotationSortOrder").value.trim();
	     var quotationTemplateRemarks = document.getElementById("quotationRemarks").value.trim();
	     var quotationTemplateSubTotalTaxable = parseFloat(document.getElementById("tableQuotationDetailsSubtotalTaxableVal").innerHTML);
	     var quotationTemplateSubTotalNonTaxable = parseFloat(document.getElementById("tableQuotationDetailsSubtotalNonTaxableVal").innerHTML);
	     var quotationTemplateTotal = parseFloat(document.getElementById("tableQuotationDetailsFullTotalVal").innerHTML);
	     
	     var quotationItemTaxableIDArray = document.getElementsByName("quotationItemTaxableID[]");
		 var quotationItemMajorItemsTaxableArray = document.getElementsByName("majorItemsTaxable[]");
	     var quotationItemTaxableItemNameArray = document.getElementsByName("quotationItemTaxableItemName[]");
	     var quotationItemTaxableUnitPriceArray = document.getElementsByName("quotationItemTaxableUnitPrice[]");
	     var quotationItemTaxableQuantityArray = document.getElementsByName("quotationItemTaxableQuantity[]");
	     var quotationItemTaxableAmountMoneyArray = document.getElementsByName("quotationItemTaxableAmountMoney[]");
	     var quotationItemTaxableRemarksArray = document.getElementsByName("quotationItemTaxableRemarks[]");
	     
	     var quotationItemNonTaxableIDArray = document.getElementsByName("quotationItemNonTaxableID[]");
		 var quotationItemMajorItemsNonTaxableArray = document.getElementsByName("majorItemsNonTaxable[]");
	     var quotationItemNonTaxableItemNameArray = document.getElementsByName("quotationItemNonTaxableItemName[]");
	     var quotationItemNonTaxableUnitPriceArray = document.getElementsByName("quotationItemNonTaxableUnitPrice[]");
	     var quotationItemNonTaxableQuantityArray = document.getElementsByName("quotationItemNonTaxableQuantity[]");
	     var quotationItemNonTaxableAmountMoneyArray = document.getElementsByName("quotationItemNonTaxableAmountMoney[]");
	     var quotationItemNonTaxableRemarksArray = document.getElementsByName("quotationItemNonTaxableRemarks[]");
	     
	     var dataNode = {};
	     var QutationTemp ={};
	     var dataArrayQutationTempTaxableItems = [];
	     var dataArrayQutationTempNonTaxableItems = [];
	     
	     var taxVar = 0;
	     
	     for(var i = 0; i < quotationItemTaxableIDArray.length; i++)
	     {
	    	 
	    	 if(quotationItemTaxableAmountMoneyArray[i].innerHTML.trim() != "")
	    		 {
	    		 taxVar++;
	    		     
			    	 var quotationItemTaxableID = quotationItemTaxableIDArray[i].value != "" ? quotationItemTaxableIDArray[i].value :null;
			    	 var quotationItemMajorItemsTaxable = 0 ;
			    	 if (quotationItemMajorItemsTaxableArray[i].checked == true){  
			    		 quotationItemMajorItemsTaxable = quotationItemMajorItemsTaxableArray[i].value;  
			    	  } 
			         var quotationItemTaxableItemName = quotationItemTaxableItemNameArray[i].value != ""? quotationItemTaxableItemNameArray[i].value :null;
			         var quotationItemTaxableUnitPrice = quotationItemTaxableUnitPriceArray[i].value != "" ? quotationItemTaxableUnitPriceArray[i].value.trim() :null;
			         var quotationItemTaxableQuantity = quotationItemTaxableQuantityArray[i].value != "" ? quotationItemTaxableQuantityArray[i].value.trim() :null;
			         var quotationItemTaxableAmountMoney = quotationItemTaxableAmountMoneyArray[i].innerHTML.trim() != "" ? quotationItemTaxableAmountMoneyArray[i].innerHTML.trim() :null;
			         var quotationItemTaxableRemarks = quotationItemTaxableRemarksArray[i].value.trim() != "" ? quotationItemTaxableRemarksArray[i].value.trim() :null;
			    	
			         var tempTaxable = { "id":quotationItemTaxableID,
						                 "itemName": quotationItemTaxableItemName,
						                 "majorItem": quotationItemMajorItemsTaxable,
						                 "unitPrice": quotationItemTaxableUnitPrice,
						                 "quantity": quotationItemTaxableQuantity,
						                 "amount": quotationItemTaxableAmountMoney,
						                 "remarks": quotationItemTaxableRemarks,
						                 "tax": 1 }
			         
			         dataArrayQutationTempTaxableItems.push(tempTaxable);
	    		 }
				                 
	     }
	     
	  
	     var NontaxVar = 0;
	     for(var i = 0; i < quotationItemNonTaxableIDArray.length; i++)
	     {
	    	 if(quotationItemNonTaxableAmountMoneyArray[i].innerHTML.trim() != "")
			 {
	    		 NontaxVar++;
	    		 
		    	 var quotationItemNonTaxableID = quotationItemNonTaxableIDArray[i].value !="" ? quotationItemNonTaxableIDArray[i].value :null;
		    	 var quotationItemMajorItemsNonTaxable = 0 ;
		    	 if (quotationItemMajorItemsNonTaxableArray[i].checked == true){  
		    		 quotationItemMajorItemsNonTaxable = quotationItemMajorItemsNonTaxableArray[i].value;  
		    	  } 
		         var quotationItemNonTaxableItemName = quotationItemNonTaxableItemNameArray[i].value != ""? quotationItemNonTaxableItemNameArray[i].value :null;
		         var quotationItemNonTaxableUnitPrice = quotationItemNonTaxableUnitPriceArray[i].value != "" ? quotationItemNonTaxableUnitPriceArray[i].value.trim() :null;
		         var quotationItemNonTaxableQuantity = quotationItemNonTaxableQuantityArray[i].value != "" ? quotationItemNonTaxableQuantityArray[i].value.trim() :null;
		         var quotationItemNonTaxableAmountMoney = quotationItemNonTaxableAmountMoneyArray[i].innerHTML.trim() != "" ? quotationItemNonTaxableAmountMoneyArray[i].innerHTML.trim() :null;
		         var quotationItemNonTaxableRemarks = quotationItemNonTaxableRemarksArray[i].value.trim() != "" ? quotationItemNonTaxableRemarksArray[i].value.trim() :null;
		    
		         var tempNonTaxable = { "id":quotationItemNonTaxableID,
						                 "itemName": quotationItemNonTaxableItemName,
						                 "majorItem": quotationItemMajorItemsNonTaxable,
						                 "unitPrice": quotationItemNonTaxableUnitPrice,
						                 "quantity": quotationItemNonTaxableQuantity,
						                 "amount": quotationItemNonTaxableAmountMoney,
						                 "remarks": quotationItemNonTaxableRemarks,
						                 "tax": 0 }
						                 
		         dataArrayQutationTempNonTaxableItems.push(tempNonTaxable);
			 }
	     }

	             QutationTemp ={//"id": templateID,
									"templateName": quotationTemplateName,
									"sortOrder": quotationTemplateSortOrder,
									"remarks": quotationTemplateRemarks,
									"subTotalTaxable": quotationTemplateSubTotalTaxable,
									"subTotalNonTaxable": quotationTemplateSubTotalNonTaxable,
									"total": quotationTemplateTotal };
	    	 				
	             
	            dataNode['quotationTemplate'] = QutationTemp; 
	          	dataNode['quotationTemplateItemsTaxable'] = dataArrayQutationTempTaxableItems;
	          	dataNode['quotationTemplateItemsNonTaxable'] = dataArrayQutationTempNonTaxableItems;
	          	passData = JSON.stringify(dataNode);
	          	
	          	$.ajax({
	    			beforeSend : function(request) {
	    				
	    				request.setRequestHeader("GUID", GUID);
	    			},
	    			url : serverHTTP + 'Quotation/PostQuotationTempInfo',
	    			method : 'POST',
	    			contentType : 'application/json',
	    			data : passData,
	    			dataType : 'json',
	    			success : function(result, status, request) {
	    				if (result.status == 202) {
	    					
	    					showMessage('success',"N1207");
	    				
	    				} else {
	    					
	    					console.log("Sorry Quotation Template not working");
	    					showMessage('error',"N1208");
	    				}
	    			},
	    			error : function(error) {
	    				
	    				console.log("Sorry Quotation Template not working");
	    				showMessage('error',"N1208");
	    				console.log(JSON.stringify(error));
	    			}
	    		});
	          	 
	 }
	
	function addTaxableQuotationItemRow()
	{
	    var $tr    = $("#quotationDetailsTaxableTrId").last('tr');
	    var rowCount = $('#QuotationDetails_table tr').length;
	    var $clone = $tr.clone();
	    $clone.find('input').val('');
	    $clone.find('input[name="majorItemsTaxable[]"]').val('1');
	    $clone.find('td[name="quotationItemTaxableAmountMoney[]"]').html('');
	    $clone.find('input[name="majorItemsTaxable[]"]').prop('checked', false);
	    $clone.find('td:eq(3)').removeClass( "errorVal" );
	    $clone.find('td:eq(4)').removeClass( "errorVal" );
	    $clone.find('td:eq(0)').html(rowCount-1);
	    $("#quotationDetailsTaxableTbodyId").append($clone);
	}
	
	function addNonTaxableQuotationItemRow()
	{
		 var $tr    = $("#quotationDetailsNonTaxableTrId").last('tr');
		    var rowCount = $('#QuotationDetailsNonTaxable_table tr').length;
		    var $clone = $tr.clone();
		    $clone.find('input').val('');
		    $clone.find('input[name="majorItemsNonTaxable[]"]').val('1');
		    $clone.find('td[name="quotationItemNonTaxableAmountMoney[]"]').html(''); 
		    $clone.find('input[name="majorItemsNonTaxable[]"]').prop('checked', false);
		    $clone.find('td:eq(3)').removeClass( "errorVal" );
		    $clone.find('td:eq(4)').removeClass( "errorVal" );
		    $clone.find('td:eq(0)').html(rowCount-2);
		    $("#quotationDetailsNonTaxableTbodyId").append($clone);
	}

	function addWorkRow()
	{
	    var $tr    =  $("#workTrId").first('tr');
	    var $clone =  $tr.clone();
	    $clone.find('input').val('');
	    $("#workTbodyId").append($clone);
	}
	
	function removeWorkRow(element)
	{
	    if($('#staff_work_table tr').length>2){
	    	 $(element).closest('tr').remove();
	    }else{
	    	showMessage('info',"N1206");
	    }
	}
	
	function removeTaxableRow(element)
	{
	if($('#QuotationDetails_table tr').length>7){
	$(element).closest('tr').remove();
	let counterNode = document.getElementsByName("itemTaxableCounter[]");
	for(var i = 0; i < counterNode.length; i++)
	{
	counterNode[i].innerHTML = i+1;
	}
	}else{
	showMessage('info',"E1101");
	}
	}

	function removeNonTaxableRow(element)
	{
	if($('#QuotationDetailsNonTaxable_table tr').length>8){
	$(element).closest('tr').remove();
	let counterNode = document.getElementsByName("itemNonTaxableCounter[]");
	for(var i = 0; i < counterNode.length; i++)
	{
	counterNode[i].innerHTML = i+1;
	}


	}else{
	showMessage('info',"E1101");
	}
	}

	function clearRowTaxable(element)
	{
	var $tr = $(element).closest('tr');
	$tr.find('input').val('');
	$tr.find("td:eq(5)").html("");
	$tr.find('input[name="majorItemsTaxable[]"]').prop('checked', false);
	$tr.find('td:eq(3)').removeClass( "errorVal" );
	$tr.find('td:eq(4)').removeClass( "errorVal" );
	}

	function clearRowNonTaxable(element)
	{
	var $tr = $(element).closest('tr');
	$tr.find('input').val('');
	$tr.find("td:eq(5)").html("");
	$tr.find('input[name="majorItemsNonTaxable[]"]').prop('checked', false);
	$tr.find('td:eq(3)').removeClass( "errorVal" );
	$tr.find('td:eq(4)').removeClass( "errorVal" );
	}
        </script>
</body>

</html>