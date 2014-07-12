#!/bin/bash

CommentedOutRegex1='^['$'\n''[:space:]]*\/\*';
CommentedOutRegex2='\*\/['$'\n''[:space:]]*$';

if [[ $POPCLIP_TEXT =~ $CommentedOutRegex1 ]]; then
  if [[ $POPCLIP_TEXT =~ $CommentedOutRegex2 ]]; then
    echo -n "$POPCLIP_TEXT" | perl -pe's/^([\s\n]*)\/\*|\*\/([\s\n]*)$/$1/sg';
    exit 0
  fi
fi

#echo "/*"$'\n'"$POPCLIP_TEXT$"'\n'"*/";
#echo -ne "/*\n$POPCLIP_TEXT\n*/";
echo -n "/*$POPCLIP_TEXT*/";
