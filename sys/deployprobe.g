; deployprobe.g
; 调用以部署物理 Z 探针
;
; generated by RepRapFirmware Configuration Tool v3.3.10 on Sat Apr 16 2022 16:04:43 GMT+0800 (中国标准时间)
; 在此处插入用于部署 Z 探针的代码

if !global.Klicky
    while true
        if iterations = 5
            abort "部署 Klicky 尝试次数过多"
        G0 X190 Y15 F12000
        G0 X220 Y15 F12000
        G0 X220 Y-5 F6000
        G0 X220 Y15 F6000
        G4 P250
        if result != 0
            continue
        if !sensors.endstops[2].triggered
            G0 X190 Y15 F12000
            break
        G0 X220 Y-5 F6000
        G0 X190 Y-5 F6000
        G0 X190 Y15 F12000
        echo "重复部署 Klicky，因为 Klicky 为（" ^ !sensors.endstops[2].triggered ^ "）"
    ; 结束循环
    set global.Klicky = true
    echo "部署 Klicky 成功，因为 Klicky 为（" ^ !sensors.endstops[2].triggered ^ "）"
