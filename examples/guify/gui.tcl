package require Tk

ttk::label .x -text "X: "
ttk::entry .ex -textvar x
ttk::label .y -text "Y: "
ttk::entry .ey -textvar y

ttk::button .badd -text "Add"
ttk::button .bsubtract -text "Subtract"
ttk::label .res -text "Result: "

grid .x .ex .bsubtract -padx 5 -pady 2.5
grid .y .ey .badd -padx 5 -pady 2.5
grid .res -padx 5 -pady 2.5

focus .ex

.badd config -command {
        if {[catch {open [list "|./math" + $x $y] "r"} fd]} {
                puts "Couldn't open pipe."
                exit                
        }
        set z [gets $fd]
        close $fd         
        .res config -text "Result: $z"
}

.bsubtract config -command {
        if {[catch {open [list "|./math" - $x $y] "r"} fd]} {
                puts "Couldn't open pipe."
                exit                
        }
        set z [gets $fd]
        close $fd         
        .res config -text "Result: $z"
}