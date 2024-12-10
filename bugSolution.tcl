proc read_file {filename} { 
  set fp [open $filename r]
  if {$fp == -1} { return -1 }
  set content [read $fp]
  close $fp
  return $content
}

set content [read_file non_existent_file.txt]
if {$content == -1} { puts "File not found" } else { puts $content }

proc read_file_improved {filename} { 
    set fp [open $filename r]
    if {$fp == -1} { 
        return -1 
    } 
    set content [read $fp]
    close $fp
    return $content
}

set content [read_file_improved non_existent_file.txt]
if {$content == -1} { puts "File not found" } else { puts $content }