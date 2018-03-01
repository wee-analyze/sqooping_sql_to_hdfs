USE [ehandel]
GO
-- Min 71774
-- SELECT * from SalesLT.SalesOrders;

INSERT INTO [dbo].[SalesOrders]
           ([SalesOrderID]
           ,[RevisionNumber]
           ,[OrderDate]
           ,[DueDate]
           ,[ShipDate]
           ,[Status]
           ,[OnlineOrderFlag]
           ,[PurchaseOrderNumber]
           ,[AccountNumber]
           ,[CustomerID]
           ,[ShipToAddressID]
           ,[BillToAddressID]
           ,[ShipMethod]
           ,[CreditCardApprovalCode]
           ,[SubTotal]
           ,[TaxAmt]
           ,[Freight]
           ,[Comment]
           ,[rowguid]
           ,[ModifiedDate])
SELECT
           [SalesOrderID]
           ,[RevisionNumber]
           ,[OrderDate]
           ,[DueDate]
           ,[ShipDate]
           ,[Status]
           ,[OnlineOrderFlag]
           ,[PurchaseOrderNumber]
           ,[AccountNumber]
           ,[CustomerID]
           ,[ShipToAddressID]
           ,[BillToAddressID]
           ,[ShipMethod]
           ,[CreditCardApprovalCode]
           ,[SubTotal]
           ,[TaxAmt]
           ,[Freight]
           ,[Comment]
           ,[rowguid]
           ,[ModifiedDate] FROM SalesLT.SalesOrderHeader
WHERE SalesOrderId IN  (71783, 71774, 71776, 71782, 71783)


