1. Comment
- Sử dụng # để comments 1 dòng

# Toi la ky su cloud

- Sử dụng // để thay thế # , phím tắt "ctrl + /"

// Tôi vẫn là kỹ sư cloud

- Sử dụng /* code */ để comments nhiều dòng

Resource aws_instance "ec2"{
    ami = "abc"
    instance_type = "t2.micro"
}


2. Block : khối code chứa nội dung được xác định

data_type "data_lable" {
    Attributes1 = "value"
    Attributes2 = 2
}

Resource aws_instance "ec2"{
    ami = "abc"
    instance_type = "t2.micro"
}


3. Attributes : cặp giá trị key-value / agruments
    key = value

    ami = "abc"
    count = 3
    sg = ["sg-01", "sg-02"]


4. Data Types : các kiểu dữ liệu
- String : chuỗi ký tự
    ami = "abc"
- number : số học
    count = 3
    pi = 3.14
- bool : xác định bằng giá trị true hoặc false
    sensitive = true

- list : danh sách giá trị được xác định trong dấu [ "a","b"]
    security_groups = ["sg-01", "sg-02"]

- map : nhóm các giá trị được xác định bằng cặp key-value. ví dụ my_map = { name ="huan", gt = "nam"}

    tags = {
        Name = "EC2"
        Deparment = "Cloud BU"
        Owner = "Huan"
    }

- Set : tương tự như list như các giá trị trong set là duy nhất : thường sử dụng với hàm chuyển đổi

   ami_ids = toset([
     "ami-0b0dcb5067f052a63",
     "ami-08c40ec9ead489470",
   ])

   toset(["a", "b", "c"])


5. Conditionals : sử dụng toán tử 3 ngôi thay thế cho if else 
    condition ? true_value : false_value

    instance_type = var.Environment == "dev" ? "t2.micro" : "t2.small"

    instance_type = "${terraform.workspace == "prod" ? "t2.large" : terraform.workspace == "dev" ? "t2.small" : "t2.micro"}"


6. Functions : sử dụng hàm có sẵn
- string : format , join
- Numeric : min , max,
- Date and time : timestamp
- Type conversion : tostring, toset 


7. Resource Dependencies : thiết lập mối quan hệ giữa các Resource

resource "aws_key_pair" "dove-key" {
  key_name   = "dovekey"
  public_key = file("dovekey.pub")
}

resource "aws_instance" "dove-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = ["sg-060d0e0169c9e5310"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
 }