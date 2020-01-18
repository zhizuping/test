#!/bin/bash
#sync到项目分支
if [ $1 == "master" ]
  then   
  echo "push to master"
  git add .
  git commit -m $2
  git push -u origin $1
  hexo g
  hexo d  
  else
  echo "push to other branch"
  git branch $1
  git checkout $1
  git push -u origin $1
fi




