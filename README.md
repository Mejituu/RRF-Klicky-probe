# RRF-Klicky-probe

使用 klicky 探针的 Voron 2.4 的 RepRap 配置文件

首先使用此 Klicky RRF宏命令需要在 config.g 里添加如下命令：
    ; 自定义设置
    global Klicky = false
    
然后根据自己的 Klicky 支架实际位置调节 deployprobe.g 和 retractprobe.g 里的 (X,Y) 参数，并直接替换掉 /sys/deployprobe.g 和 /sys/retractprobe.g 就能正常使用 Klicky探针了

最后祝大家 Klicky-probe 用的愉快！

支持以下功能：
    1.自动判断是否正确取放（例如接触不良）Klicky探针（重试次数5次）
    2.自动判断是否已经取了 Klicky探针 ，已经取了就不再取 Klicky探针（可使其不自定义 mesh.g 正常运行网格补偿，而不是运行网格补偿时频繁取放 Klicky探针）
