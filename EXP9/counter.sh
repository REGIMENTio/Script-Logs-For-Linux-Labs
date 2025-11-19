
#!/bin/bash
echo "Enter Directory Name"
read dir
count=$(find $dir -type f -name "*.sh" | wc -l)
echo "Number of .sh files in $dir $count"
