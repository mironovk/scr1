# Лабораторная работа 2. Симуляция SCR1

---------------

## Постановка задачи
Обработать исключение Breakpoint выводом строки "BP". Настроить ресет вектор и вектор обработки прерываний на 0x1000 и 0x840 соответственно. Проверить работу программы на примере isa/rv32mi/sbreak.S.

| № Варианта | Вид исключения | Тест | Reset Vector | Trap vector | Обработчик
|---- |---- |---- |---- |---- |----
|2|Breakpoint|isa/rv32mi/sbreak.S|0x1000|0x840|Вывод строки "BP"

## Настройка окружения

~~~bash
export VERILATOR_ROOT=~/verilator/
export PATH=$VERILATOR_ROOT/bin:$PATH
export PATH=~/riscv-tools/riscv-gcc/bin:$PATH
~~~

## Запуск моделирования
~~~bash
make clean
make TARGETS="riscv_isa"

sudo apt install gtkwave

make run_verilator_wf TARGETS="riscv_isa" TRACE=1

gtkwave ./build/verilator_wf_AHB_MAX_imc_IPIC_1_TCM_1_VIRQ_1_TRACE_1/simx.vcd
~~~