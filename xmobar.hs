-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

Config {
    font = "xft:Inconsolata\\-g:size=10:antialias=true",
    bgColor = "#002b36",
    fgColor = "#657b83",
    position = Top,
    lowerOnStart = True,
    commands = [
          Run Network "wlp4s0" ["-L","0","-H","32","--normal","green","--high","red"] 10
        , Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
        , Run Battery ["Bat0", "--normal","yellow","--low","red"] 600
        , Run Memory ["-t","Mem: <usedratio>%"] 10
        , Run Date "<fc=#93a1a1>%a %b %_d %Y %H:%M</fc>" "date" 10
        , Run DiskIO [("/", "IO: <total>"), ("/home", "<total>")] [] 10
        , Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %cpu% %memory% %wlp4s0% %diskio% %battery% %date%"
}
