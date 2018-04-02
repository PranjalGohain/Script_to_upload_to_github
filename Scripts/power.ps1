$filePath = "C:\Users\gohain\Desktop\SampleData\SampleData.xlsx"
$sheetName = "SalesOrders"
$objExcel = New-Object -ComObject Excel.Application
$objExcel.Visible = $false
$WorkBook = $objExcel.Workbooks.Open($filePath)
$WorkSheet = $WorkBook.sheets.item($sheetName)

$count = 3

While ($count -lt 351 )
{
    $workSheet.Range("C$count").Text + " " + $workSheet.Range("D$count").text + " " + $workSheet.Range("F$count").text
    $count++
}