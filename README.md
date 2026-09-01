<p align="center">
  <img src="assets/scribd.svg" alt="Scribd" width="200">
</p>

<h1 align="center">Scribd Downloader</h1>

<p align="center">
  <b>Tải tài liệu Scribd sang định dạng PDF hoàn toàn miễn phí - Nhanh chóng, tự động & nét căng!</b><br>
  <b>Download Scribd documents as PDF for free - Fast, automated, and high quality!</b>
</p>

<p align="center">
  <a href="https://www.python.org/downloads/">
    <img src="https://img.shields.io/badge/Python-3.10+-blue?style=for-the-badge&logo=python&logoColor=white" alt="Python 3.10+">
  </a>
  <a href="https://pypi.org/project/selenium/">
    <img src="https://img.shields.io/badge/Selenium-4.0+-green?style=for-the-badge&logo=selenium&logoColor=white" alt="Selenium 4.0+">
  </a>
  <a href="LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-orange?style=for-the-badge" alt="MIT License">
  </a>
  <a href="https://github.com/NONOSquare-hub/scribd-downloader/stargazers">
    <img src="https://img.shields.io/github/stars/NONOSquare-hub/scribd-downloader?style=for-the-badge&logo=github" alt="GitHub Stars">
  </a>
</p>

---

## 🌟 Features / Tính năng nổi bật

- ⚡ **Tải 1-Click đơn giản** - Chỉ cần dán đường dẫn (link) tài liệu Scribd là tự động tạo file PDF.
- 🚀 **Hỗ trợ mọi dạng link Scribd** - Tải tốt cả link dạng `/document/...` và dạng cũ `/doc/...`.
- 🌐 **Tương thích Cốc Cốc & Chrome** - Tự động phát hiện và chạy trên trình duyệt Cốc Cốc hoặc Google Chrome trên Windows.
- 🔗 **Chế độ Kết nối Trực tiếp (Port 9222)** - Kết nối thẳng vào trình duyệt bạn đang xem để vượt qua xác minh Cloudflare nhẹ nhàng.
- 🧹 **File PDF sạch sẽ & nét căng** - Tự động xóa bỏ các banner quảng cáo, thanh công cụ, giữ nguyên định dạng trang gốc.
- 📦 **Quản lý bộ nhớ thông minh** - Tải trang theo từng đợt (bounded batches) giúp không bị rác hay đơ máy kể cả với tài liệu hàng ngàn trang.
- 🏷️ **Tự động đặt tên file** - File PDF được lưu trùng tên tài liệu từ đường dẫn Scribd.
- 🔓 **Không cần tài khoản** - Hoạt động hoàn toàn miễn phí, không yêu cầu đăng nhập Scribd.

---

## 📖 Hướng Dẫn Cài Đặt Chi Tiết Cho Người Mới (Từ A - Z)

> 💡 *Dành cho người mới bắt đầu chưa từng cài đặt Python hay Git trên máy tính.*

### Bước 1: Cài đặt Python 3 (Bắt buộc)

1. Tải bản Python mới nhất tại trang chủ: **[python.org/downloads](https://www.python.org/downloads/)**
2. Mở file cài đặt vừa tải về (ví dụ: `python-3.12.x.exe`).
3. ⚠️ **CỰC KỲ QUAN TRỌNG**: Đánh dấu tích vào ô **`Add python.exe to PATH`** ở góc dưới màn hình trước khi nhấn **Install Now**.
4. Sau khi cài xong, bạn mở **Command Prompt (CMD)** và gõ kiểm tra:
   ```cmd
   python --version
   ```
   *Nếu màn hình hiện `Python 3.10.x` (hoặc cao hơn) là đã thành công!*

---

### Bước 2: Tải Bộ Mã Nguồn Về Máy

Bạn có thể chọn **1 trong 2 cách** sau:

#### Cách A: Sử dụng Git (Khuyên dùng)
1. Tải và cài đặt Git tại: **[git-scm.com](https://git-scm.com/downloads)**
2. Mở **Command Prompt (CMD)** và chạy các lệnh sau:
   ```cmd
   git clone https://github.com/NONOSquare-hub/scribd-downloader.git
   cd scribd-downloader
   ```

#### Cách B: Tải file ZIP (Nếu không dùng Git)
1. Truy cập repo GitHub: **[NONOSquare-hub/scribd-downloader](https://github.com/NONOSquare-hub/scribd-downloader)**
2. Bấm vào nút màu xanh **`Code`** -> Chọn **`Download ZIP`**.
3. Giải nén file ZIP ra thư mục bất kỳ trên máy tính của bạn.
4. Mở cửa sổ CMD tại thư mục vừa giải nén.

---

### Bước 3: Cài Đặt Thư Viện Phụ Thuộc

Tại cửa sổ CMD đang mở ở thư mục dự án `scribd-downloader`, chạy lệnh sau:

```cmd
pip install -r requirements.txt
```

*Lệnh này sẽ tự động cài đặt các thư viện cần thiết như `selenium`, `pypdf`,...*

---

## 🚀 Hướng Dẫn Sử Dụng

### Cách 1: Chạy Tự Động Thông Thường

1. Trong cửa sổ CMD tại thư mục ứng dụng, chạy lệnh:
   ```cmd
   python scribd-downloader.py
   ```
2. Khi màn hình hiện thông báo:
   ```text
   Input link Scribd: 
   ```
   Bạn dán đường dẫn tài liệu Scribd vào (Ví dụ: `https://www.scribd.com/document/123456789/Document-Title`) rồi nhấn **Enter**.
3. Chờ ứng dụng chạy và file PDF sẽ được tự động lưu ngay trong thư mục công cụ!

---

### Cách 2: Kết Nối Trình Duyệt Đang Mở (Vượt Cloudflare cực dễ)

Nếu chạy cách 1 bị gặp bảng xác minh Cloudflare (*Verify you are human*):

1. Đóng các trình duyệt hiện tại.
2. Nhấp đúp chuột vào file **`chay-chrome-debug.bat`** có sẵn trong thư mục. *(Trình duyệt Cốc Cốc hoặc Chrome sẽ mở lên ở chế độ hỗ trợ)*.
3. Mở đường dẫn Scribd trên trình duyệt này và tick xác minh Cloudflare nếu có.
4. Quay lại CMD và chạy lệnh:
   ```cmd
   python scribd-downloader.py
   ```
   Ứng dụng sẽ tự động kết nối trực tiếp vào cửa sổ trình duyệt bạn đang mở và xuất PDF 100% trơn tru!

---

## ❓ Sửa Lỗi Thường Gặp (Troubleshooting)

### 1. Lỗi: `'python' is not recognized as an internal or external command`
- **Nguyên nhân**: Lúc cài Python bạn quên không tick chọn **`Add python.exe to PATH`**.
- **Cách khắc phục**: Chạy lại file installer Python (`python-3.x.exe`), chọn **Modify** hoặc **Reinstall**, nhớ tick chọn **`Add python.exe to PATH`**.

### 2. Lỗi: `ModuleNotFoundError: No module named 'selenium'` (hoặc `pypdf`)
- **Cách khắc phục**: Mở CMD tại thư mục công cụ và chạy lại lệnh cài thư viện:
  ```cmd
  pip install -r requirements.txt
  ```

---

## 📄 License

Dự án phát hành theo giấy phép [MIT License](LICENSE).
