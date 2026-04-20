#!/bin/bash
cd /Users/heewonchoi/Documents/Claude/Projects/레시피북

# lock 파일 자동 정리
rm -f .git/HEAD.lock .git/refs/heads/master.lock .git/index.lock

git add .
git commit -m "레시피 업데이트 $(date '+%Y-%m-%d %H:%M')"
git push origin master
echo ""
echo "✅ 완료! https://heewon-recipes.netlify.app 에 자동 배포됩니다."
