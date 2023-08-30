SELECT
  id,
  SUM(IIF (month = 'Jan', revenue, null)) AS Jan_Revenue,
  SUM(IIF (month = 'Feb', revenue, null)) AS Feb_Revenue,
  SUM(IIF (month = 'Mar', revenue, null)) AS Mar_Revenue,
  SUM(IIF (month = 'Apr', revenue, null)) AS Apr_Revenue,
  SUM(IIF (month = 'May', revenue, null)) AS May_Revenue,
  SUM(IIF (month = 'Jun', revenue, null)) AS Jun_Revenue,
  SUM(IIF (month = 'Jul', revenue, null)) AS Jul_Revenue,
  SUM(IIF (month = 'Aug', revenue, null)) AS Aug_Revenue,
  SUM(IIF (month = 'Sep', revenue, null)) AS Sep_Revenue,
  SUM(IIF (month = 'Oct', revenue, null)) AS Oct_Revenue,
  SUM(IIF (month = 'Nov', revenue, null)) AS Nov_Revenue,
  SUM(IIF (month = 'Dec', revenue, null)) AS Dec_Revenue
FROM
  Department
GROUP BY
  id;