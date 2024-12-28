mkdir lab_S3M11
git init
echo "Hello World" > README
git status
git add README
git status -s
echo "Hello World!" > README
git status -s
git diff
git add README
git status
git diff --staged
echo "Привет Мир!" > README
git add README
git diff --staged
git commit -m "Initial commit"
git log
echo "Hello World!" >> README
git add README
git commit -m "Change README"
echo "Hello World" > README
git add README
git commit --amend -m "change README with amend"
echo "Упарвление версиями" > README
git add README
git reset HEAD README
git checkout -- README
git log --pretty=format:"%h %an %s"
git log --pretty=format:"%t %ae %s"
git log --pretty=format:"%p %an %s"
touch 1.txt
touch 2.txt
git branch test1
git checkout test1
echo "Hello" > 2.txt
git add 2.txt
git commit -m "New branch"
git log
git checkout trunk
echo "Hello" > 1.txt
git commit -m "1.txt"
git log
git checkout test1
git branch test2
git checkout test2
echo "" >> 2.txt
git commit -m "2.txt"
git checkout test1
touch 3.txt
git add 3.txt
git commit -m "3.txt"
git checkout test2
echo "hey!" > 2.txt
git commit -m "2.txt update"
git checkout test1
git merge test2
git branch -d test2
git checkout trunk
git merge test1
git checkout 03b3b2e
git checkout -b test3 03b3b2e
git add *
git commit -m "new branch"
git log
echo -e '#include <iostream>\n\nint main() {\n    std::cout << "Hello, World!" << std::endl;\n    return 0;\n}' > main.cpp
git add main.cpp
git commit -m "Add main.cpp"
git branch test4
git checkout test4
echo -e "\n" >> main.cpp
git commit -m "Add new line"
git checkout trunk
git merge test4
git branch -d test4
git branch test5
git checkout test5
echo -e '#include <iostream>\n\nint main() {\n    std::cout << "Привет, Мир!" << std::endl;\n    return 0;\n}' > main.cpp
git add main.cpp
git commit -m "russian main.cpp"
git log
git checkout trunk
git merge test5
git log
git checkout test5
echo -e '#include <iostream>\n\nint main() {\n    std::cout << "Привет!" << std::endl;\n    return 0;\n}' > main.cpp
git add main.cpp
git commit -m "change main.cpp"
git checkout trunk
git merge test5
git log
git branch -d test5

git branch test6
echo -e '#include <iostream>\n\nint main() {\n    std::cout << "sfgrgsg!" << std::endl;\n    return 0;\n}' > main.cpp
git add main.cpp
git commit -m "change main.cpp"
git checkout test6
echo -e '#include <iostream>\n\nint main() {\n    std::cout << "dsddss!" << std::endl;\n    return 0;\n}' > main.cpp
git add main.cpp
git commit -m "change main.cpp"
git checkout trunk
git merge test6
git status
git branch test7
echo -e '#include <iostream>\n\nint main() {\n    std::cout << "gcfghn!" << std::endl;\n    return 0;\n}' >> main.cpp
git add main.cpp
git commit -m "change main.cpp"
git checkout test7
echo -e '#include <iostream>\n\nint main() {\n    std::cout << ".bvcxcvb!" << std::endl;\n    return 0;\n}' >> main.cpp
git add main.cpp
git commit -m "change main.cpp"
git checkout trunk
git mergetool
git status
git add main.cpp
git commit -m "change main.cpp"

git init
touch file
git add file
git commit -m "Initial empty file"
git checkout -b add_read_numbers
echo 'read -p "Enter first number: " num1' >> file
echo 'read -p "Enter second number: " num2' >> file
git add file
git commit -m "Add reading numbers"
git checkout trunk
git checkout -b add_calculation
echo 'sum=$((num1 + num2))' >> file
git add file
git commit -m "Add calculation logic"
git checkout trunk
git checkout -b add_output
echo 'echo "The sum is: $sum"' >> file
git add file
git commit -m "Add output logic"
git checkout trunk
git merge add_read_numbers -m "Merge: Add reading numbers"
git merge add_calculation -m "Merge: Add calculation logic"
git merge add_output -m "Merge: Add output logic"
read -p "Enter first number: " num1
read -p "Enter second number: " num2
sum=$((num1 + num2))
echo "The sum is: $sum"
chmod +x file
./file

echo "Initial file" > file1.txt
git add file1.txt
git commit -m "Initial commit for file1.txt"
git checkout -b feature-branch
echo "Feature branch changes" > file2.txt
git add file2.txt
git commit -m "Add file2.txt in feature-branch"
git checkout trunk
git log feature-branch
git cherry-pick 44d8aad
git log
git status

# Индивидуальное задание
git init
echo "Initial Codebase" > file.txt
git add file.txt
git commit -m "Initial Codebase"
git branch feature96
git branch feature89
git checkout feature96
echo "Set Up Initial Structure" >> file.txt
git add file.txt
git commit -m "Set Up Initial Structure"
git checkout feature89
echo "Optimize Resource Utilization" >> file.txt
git add file.txt
git commit -m "Optimize Resource Utilization"
echo "Improve System Logging" >> file.txt
git add file.txt
git commit -m "Improve System Logging"
echo "Refactor Deployment Scripts" >> file.txt
git add file.txt
git commit -m "Refactor Deployment Scripts"
git checkout trunk
git merge feature89 -m "Deployment Preparations"
git branch feature91
git checkout feature91
echo "Conduct Security Testing" >> file.txt
git add file.txt
git commit -m "Conduct Security Testing"
echo "Fix Critical Bugs" >> file.txt
git add file.txt
git commit -m "Fix Critical Bugs"
echo "Complete Code Review" >> file.txt
git add file.txt
git commit -m "Complete Code Review"
git branch feature90
git checkout feature90
git merge feature91 -m "Pre-release Adjustments"
git checkout trunk
git merge feature90 -m "Finalize Features"
git branch feature94
git checkout feature94
echo "Optimize CSS and HTML" >> file.txt
git add file.txt
git commit -m "Optimize CSS and HTML"
echo "Improve Browser Compatibility" >> file.txt
git add file.txt
git commit -m "Improve Browser Compatibility"
echo "Resolve Mobile Issues" >> file.txt
git add file.txt
git commit -m "Resolve Mobile Issues"
git branch feature93
git checkout feature93
git merge feature94 -m "Refactoring"
git branch feature95
git checkout feature95
echo "Implement Dark Mode" >> file.txt
git add file.txt
git commit -m "Implement Dark Mode"
echo "Add Accessibility Features" >> file.txt
git add file.txt
git commit -m "Add Accessibility Features"
git checkout trunk
git merge feature95 -m "New Feature Rollout"
git checkout feature96
echo "Final Deployment Preparations" >> file.txt
git add file.txt
git commit -m "Final Deployment Preparations"
git checkout trunk
git merge feature96 -m "Final Deployment"
