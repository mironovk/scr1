# Лабораторная работа 3.

---------------

## Постановка задачи
Познакомиться с архитектурой пайплайна SCR1. Доработать тестбенч для вывода информации об микроархитектурном состоянии и состоянии конвеера при выполении определенной команды.

| № Варианта | Исследуемая команда | Отладочная информация 
|---- |---- |----
| 2 | sub | Вывести регистры состояния

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