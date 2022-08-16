<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Iterator"%>  
<%@page import="org.apache.poi.ss.usermodel.Cell"%>  
<%@page import="org.apache.poi.ss.usermodel.Row"%> 
<%@page import="org.apache.poi.xssf.usermodel.XSSFSheet"%> 
<%@page import="org.apache.poi.xssf.usermodel.XSSFWorkbook"%> 

<%!
public void readExcel(){
try  
{  
File file = new File("D:\\Mobios\\Blitz\\DAN\\customer.xlsx");   //creating a new file instance  
FileInputStream fis = new FileInputStream(file);   //obtaining bytes from the file  
//creating Workbook instance that refers to .xlsx file  
XSSFWorkbook wb = new XSSFWorkbook(fis);   
XSSFSheet sheet = wb.getSheetAt(0);     //creating a Sheet object to retrieve object  
Iterator<Row> itr = sheet.iterator();    //iterating over excel file  
int i =0;
while (itr.hasNext())                 
{ 
Row row = itr.next(); 
if(i!=0){
Iterator<Cell> cellIterator = row.cellIterator();   //iterating over each column  
while (cellIterator.hasNext())   
{  
Cell cell = cellIterator.next(); 
System.out.print(cell.getStringCellValue().trim() + "\t\t\t"); 
 
}  
}
i++;
System.out.println("");  
}  
}  
catch(Exception e)  
{  
e.printStackTrace();  
} 
}

%>

<% readExcel(); %>