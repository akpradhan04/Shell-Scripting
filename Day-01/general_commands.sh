# Shebang
#!/bin/bash

<<comment 
Use bash editor:
1. vim general_commands.sh
	- 'I' to enter insert mode
	- 'Esc' to exit insert mode
	- :w to 'Write the file'
	= :wq to 'Write and Save the file'
	= :q! to 'Quit without Saving the changes'
2. nano general_commands.sh
comment

echo "=====BASH GENERAL COMMANDS====="

# 1. Navigation
echo "Current Directory"
pwd

echo "Listing files:"
ls

<<ls
ls arguments
-l Long format
-a Show all files (including hidden)
-h Human eradable size
ls




# 2. Create directory and files
echo "Creating directory 'demo_dir'"
mkdir demo_dir
cd demo_dir

<<mkdir
mkdir arguments
-p Create parent directory dir1/dir2/dir3
-v Verbose(shows what is being created)

Multiple directories create -> mkdir dir1 dir2 dir2
mkdir

echo "Creating files"
touch file1.txt file2.txt



# 3. Write to file
echo "Hello World" > file1.txt
echo "Appending text" >> file1.txt

# Save directory listing to a file
# dirlist.txt file is created, if not exists
ls -l > dirlist.txt


# 4. View content
echo "File content:"
cat file1.txt

# Show line numbers with cat
# cat -n file1.txt

echo "First lines:"
head file1.txt

echo "Last lines:"
tail file1.txt# Display entire file
echo "File content:"
cat file1.txt

# Display first few lines
echo "First 5 lines:"
head file1.txt

# Display first N lines
echo "First 3 lines:"
head -n 3 file1.txt

# Display last few lines
echo "Last 5 lines:"
tail file1.txt

# Display last N lines
echo "Last 3 lines:"
tail -n 3 file1.txt



# 5. Copy & Move(Rename)
cp file1.txt file3.txt
mv file2.txt renamed_file2.txt

# 6. Remove files
rm file.txt           # delete a single file
rm file1.txt file2.txt  # delete multiple files
rm -f file.txt        # force delete (no prompt)

# 7. Remove Directories
rmdir folder          # remove empty directory
rm -r folder          # remove directory and all contents
rm -rf folder         # force remove directory and contents


echo "===== SCRIPT END ====="
