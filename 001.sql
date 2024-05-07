SELECT p.productid, p.productname, p.unitprice, FORMAT(p.unitprice * .15,2) Increase, CONCAT(FORMAT(p.unitprice + p.unitprice * .15,2), " ", "$") "New price"
FROM products p JOIN suppliers s
  ON p.supplierid = s.supplierid
WHERE s.companyname = 'Exotic Liquids';