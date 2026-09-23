# Bài 1: Dockerize một script Python đơn giản

## Tình huống thực tế
Bạn vừa viết xong 1 script Python nhỏ, đồng nghiệp muốn chạy thử nhưng
máy họ không cài Python đúng version, thiếu thư viện... "Nó chạy trên máy tôi mà!"
Giải pháp: đóng gói vào Docker để chạy y hệt ở mọi máy.

## Yêu cầu
1. Tạo file `app.py` in ra dòng chữ chứa từ "Hello" (ví dụ: `Hello from Docker!`)
2. Viết `Dockerfile` để build image từ `app.py` đó
3. Image khi chạy (`docker run`) phải in ra đúng dòng chữ trên



## CI sẽ kiểm tra gì?
`verify.sh` sẽ tự build image và chạy container, kiểm tra output
có chứa chữ "Hello" hay không. Xem file `verify.sh` để biết chi tiết.
