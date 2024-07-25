select Student.First_name
from Student
Join Class on Student.class_ID = Class.class_ID
where Class.grade= 8;
-- In tên học sinh khối 8: ON Student.class_ID = Class.class_ID: Đây là điều kiện kết hợp, nghĩa là chỉ những bản ghi từ bảng Student và Class có giá trị class_ID tương ứng mới được kết hợp.--

Select Student.First_name, Class.class_name
from Student
Join Class on Student.class_ID = Class.class_ID
Where Class.class_name = '6A'