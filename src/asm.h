// Các hàm asm phải được khai báo bên trong từ khoá này. 
//    Dù vậy VSC editor sẽ không thể tham chiếu để mở file .S tương ứng
// Ngược lại, sẽ lỗi biên dịch "không tìm thấy các hàm"
extern "C" {
  /// @brief Hàm được định nghĩa trong asm.S
  void write_1_to_GPIO();
  void led_write_1();
  void led_write_0();
  void set_up_output_GPIO  ();
  void write_1_to_GPIO ();
  void confiure_input_GPIO_1();
  void read_status_of_GPIO_1();
  void confiure_output_GPIO_0();

  
}
