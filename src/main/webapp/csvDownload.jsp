<%@page import="java.awt.Font"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.TreeMap"%>
<%@page import="com.sola.model.QuotationItem"%>

<%@page import="org.apache.poi.sl.usermodel.VerticalAlignment"%>
<%@page import="org.apache.poi.ss.usermodel.Cell"%>
<%@page import="org.apache.poi.ss.usermodel.CellStyle"%>
<%@page import="org.apache.poi.ss.usermodel.CreationHelper"%>
<%@page import="org.apache.poi.ss.usermodel.FillPatternType"%>
<%@page import="org.apache.poi.ss.usermodel.HorizontalAlignment"%>
<%@page import="org.apache.poi.ss.usermodel.Row"%>
<%@page import="org.apache.poi.ss.usermodel.Workbook"%>
<%@page import="org.apache.poi.ss.util.CellRangeAddress"%>
<%@page import="org.apache.poi.xssf.usermodel.DefaultIndexedColorMap"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFCell"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFCellStyle"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFColor"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFFont"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFRow"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFSheet"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFWorkbook"%>

<% 
/* response.setContentType("application/json");
response.setCharacterEncoding("UTF-8"); */
String subject = request.getParameter("jsonData[subject]");
String companyName = request.getParameter("jsonData[companyName]"); 
String salesRepresentative = request.getParameter("jsonData[salesRepresentative]"); 
String quotationNumber = request.getParameter("jsonData[quotationNumber]"); 
String quotationDate = request.getParameter("jsonData[quotationDate]"); 

//List<String> prodlist = Arrays.asList(request.getParameterValues("product"));
String  quotationItemsTaxable = request.getParameter("jsonData[quotationItemsTaxable][0][item]"); 
String  quotationItemsNonTaxable = request.getParameter("jsonData[quotationItemsNonTaxable]");
System.out.print(quotationItemsTaxable);
System.out.print(quotationItemsNonTaxable);


%>

<%! 

public void createExcel(String subject, String companyName, String salesRepresentative, String quotationNumber, String quotationDate) throws FileNotFoundException, IOException {
XSSFWorkbook workbook = new XSSFWorkbook(); 

//Create a blank sheet
XSSFSheet sheet1 = workbook.createSheet("Quotation");
XSSFSheet sheet2 = workbook.createSheet("Purchase order");

//Merging cells
sheet1.addMergedRegion(new CellRangeAddress(1,3,0,8));
sheet1.addMergedRegion(new CellRangeAddress(13,13,7,8));
sheet1.addMergedRegion(new CellRangeAddress(63,63,0,8));
sheet1.addMergedRegion(new CellRangeAddress(64,64,0,8));

// Create a new font and alter it.
XSSFFont font = workbook.createFont();
font.setFontHeightInPoints((short)24);
font.setFontName("Arial Rounded MT Bold");
font.setBold(true);

XSSFFont font1 = workbook.createFont();
font1.setFontHeightInPoints((short)12);
font1.setFontName("Times New Roman");
font1.setBold(true);

XSSFFont font2 = workbook.createFont();
font2.setFontHeightInPoints((short)12);
font2.setFontName("Times New Roman");

// Fonts are set into a style so create a new one to use.
CellStyle style = workbook.createCellStyle();
style.setFont(font);
style.setAlignment(HorizontalAlignment.CENTER);
style.setWrapText(true);

CellStyle style1 = workbook.createCellStyle();
style1.setFont(font1);
style1.setWrapText(true);

CellStyle style2 = workbook.createCellStyle();
style2.setFont(font2);
style2.setWrapText(true);

CellStyle style3 = workbook.createCellStyle();
style3.setFont(font2);
style3.setAlignment(HorizontalAlignment.CENTER);
style3.setWrapText(true);

XSSFCellStyle styleColor = workbook.createCellStyle();
styleColor.setFillForegroundColor(new XSSFColor(new java.awt.Color(128, 0, 128), new DefaultIndexedColorMap()));
styleColor.setFillPattern(FillPatternType.SOLID_FOREGROUND);

Row row1 = sheet1.createRow(1);
Cell cell1 = row1.createCell(0);
cell1.setCellValue("Quotation");
cell1.setCellStyle(style);

Row row5 = sheet1.createRow(5);
Cell row5cell0 = row5.createCell(0);
row5cell0.setCellValue(companyName);

row5cell0.setCellStyle(style2);
Cell row5cell7 = row5.createCell(7);
row5cell7.setCellValue("Created date");
row5cell7.setCellStyle(style2);
Cell row5cell8 = row5.createCell(8);
row5cell8.setCellValue(quotationDate);
row5cell8.setCellStyle(style2);

Row row6 = sheet1.createRow(6);
Cell row6cell0 = row6.createCell(0);
row6cell0.setCellValue("Person in charge");
row6cell0.setCellStyle(style2);
Cell row6cell3 = row6.createCell(3);
row6cell3.setCellValue("123 1234 1234");
row6cell3.setCellStyle(style2);
Cell row6cell7 = row6.createCell(7);
row6cell7.setCellValue("Quotation number");
row6cell7.setCellStyle(style2);
Cell row6cell8 = row6.createCell(8);
row6cell8.setCellValue(quotationNumber);
row6cell8.setCellStyle(style2);

Row row7 = sheet1.createRow(7);
Cell row7cell0 = row7.createCell(0);
row7cell0.setCellValue("subject");
row7cell0.setCellStyle(style2);
Cell row7cell3 = row7.createCell(3);
row7cell3.setCellValue(subject);
row7cell3.setCellStyle(style2);

Row row9 = sheet1.createRow(9);
Cell row9cell0 = row9.createCell(0);
row9cell0.setCellValue("responsible person");
row9cell0.setCellStyle(style2);
Cell row9cell3 = row9.createCell(3);
row9cell3.setCellValue(salesRepresentative);
row9cell3.setCellStyle(style2);

Row row13 = sheet1.createRow(13);
Cell row13cell0 = row13.createCell(0);
row13cell0.setCellValue("item");
row13cell0.setCellStyle(style1);
Cell row13cell4 = row13.createCell(4);
row13cell4.setCellValue("unit price");
row13cell4.setCellStyle(style1);
Cell row13cell5 = row13.createCell(5);
row13cell5.setCellValue("quantity");
row13cell5.setCellStyle(style1);
Cell row13cell6 = row13.createCell(6);
row13cell6.setCellValue("Amount of money");
row13cell6.setCellStyle(style1);
Cell row13cell7 = row13.createCell(7);
row13cell7.setCellValue("remarks");
row13cell7.setCellStyle(style1);

Row row14 = sheet1.createRow(14);
Cell row14cell0 = row14.createCell(0);
row14cell0.setCellValue("Taxable");
row14cell0.setCellStyle(style1);

Row row35 = sheet1.createRow(35);
Cell row35cell3 = row35.createCell(3);
row35cell3.setCellValue("Taxable subtotal");
row35cell3.setCellStyle(style1);
Cell row35cell6 = row35.createCell(6);
row35cell6.setCellValue("26500");
row35cell6.setCellStyle(style1);

Row row37 = sheet1.createRow(37);
Cell row37cell0 = row37.createCell(0);
row37cell0.setCellValue("Tax exempt");
row37cell0.setCellStyle(style1);

Row row48 = sheet1.createRow(48);
Cell row48cell3 = row48.createCell(3);
row48cell3.setCellValue("Tax exempt subtotal");
row48cell3.setCellStyle(style1);
Cell row48cell6 = row48.createCell(6);
row48cell6.setCellValue("0");
row48cell6.setCellStyle(style1);

Row row53 = sheet1.createRow(53);
Cell row53cell3 = row53.createCell(3);
row53cell3.setCellValue("Total total");
row53cell3.setCellStyle(style1);
Cell row53cell6 = row53.createCell(6);
row53cell6.setCellValue("26500");
row53cell6.setCellStyle(style1);

Row row55 = sheet1.createRow(55);
Cell row55cell0 = row55.createCell(0);
row55cell0.setCellValue("A consumption tax of 10% will be levied on taxable items.");
row55cell0.setCellStyle(style2);

Row row60 = sheet1.createRow(60);
Cell row60cell0 = row60.createCell(0);
row60cell0.setCellValue("* Expiration date until the end of November 2021");
row60cell0.setCellStyle(style2);

Row row63 = sheet1.createRow(63);
Cell row63cell0 = row63.createCell(0);
row63cell0.setCellValue("freef");
row63cell0.setCellStyle(style3);

Row row64 = sheet1.createRow(64);
Cell row64cell0 = row64.createCell(0);
row64cell0.setCellValue("8-14-4 Nishikamata, Ota-ku, Tokyo High Town Nishikamata 507 TEL07044107318 FAX");
row64cell0.setCellStyle(style3);

workbook.write(new FileOutputStream("D:\\quotation.xlsx"));
System.out.println("quotation.xlsx written successfully on disk.");

workbook.close();

}
%>


<%  createExcel(subject, companyName, salesRepresentative, quotationNumber, quotationDate); %>