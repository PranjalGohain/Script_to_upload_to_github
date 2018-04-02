import xlrd
book = xlrd.open_workbook("C:\Users\gohain\Desktop\SampleData\SampleData.xls")
sheets = book.sheets()
print (sheets[0].nrows)
print (sheets[0].ncols)