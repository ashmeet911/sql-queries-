select
convert (int, '123' ) as [String to Int CONVERT],
convert (date, '2025-08-20') as [String to Date CONVERT],
CreationTime,
convert (date, CreationTime) as [DateTime to Date CONVERT],
convert (varchar, CreationTime ,32) as [USA Std. Style:32],
convert (varchar, CreationTime ,34) as [USA Std. Style:34]
from Sales.Orders