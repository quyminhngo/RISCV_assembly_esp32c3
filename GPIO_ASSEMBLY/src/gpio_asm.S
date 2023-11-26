.globl confiure_output_GPIO_0
.globl write_1_to_GPIO 
.globl led_write_1
.globl led_write_0 
.globl confiure_input_GPIO_1
.globl read_status_of_GPIO_1
// pin 0 ON BOARD = GPIO0

confiure_output_GPIO_0: // GPIO0
    //li s1,0x60009000 // dia chi IOMUX_BASE
    li s0,0x60004000 // dia chi BASE_ADDRESS
    addi t0,x0,1       // bit dau tien la bit 1 cua thanh ghi GPIO
    sw t0,0x0024(s0)   // set up che do OUTPUT
    ret

confiure_input_GPIO_1:
    li s1, 0x60009000 // IO MUX BASE ADDRESS
    li s0,0x60004000 // base address of GPIO peripheral
    li t0,0x00000041 // cài đặt thanh ghi GPIO_FUNC_28_IN_SEL_CFG_REG
    sw t0,0x1C4(s0) // nạp vào địa chỉ 0x0154 + n*4 // chọn tín hiệu input là cpu_gpio_0 (hoặc không cần chọn đối với input thông thường)
   
    li t1, 0xA80
    sw t1,(0x8)(s1)
    ret

read_status_of_GPIO_1: // đọc status, và đưa ra GPIO 0
    li s0,0x60004000
    lw t4, (0x003C) (s0)
    andi t4,t4,0x2 // lấy bit 1 (giá trị GPIO 1)
    // ghi bit nay vào GPIO 0
    li t5, 0x2
    beq t4,t5, write_1
    nop
    li t3,1
    sw t3,0x000C(s0) // Ghi gia tri 1 vao thanh ghi GPIO 0
    j end
write_1:
    li t2,1
    sw t2,0x0008(s0) // Ghi gia tri 1 vao thanh ghi GPIO 0
end:
    ret

led_write_1:
    li s0,0x60004000
    li t2,1
    sw t2,0x0008(s0) // Ghi gia tri 1 vao thanh ghi GPIO 0
    ret
led_write_0:
    li s0,0x60004000
    li t3,1
    sw t3,0x000C(s0) // Ghi gia tri 1 vao thanh ghi GPIO
    ret
