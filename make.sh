#!/bin/bash
itemName="$2"
itemDate=`date +'%Y-%m-%d'`;
itemFile="_posts/$itemDate-$itemName.md";
case "$1" in
	sparkle)
	echo "---" > $itemFile;
	echo "layout : sparkle" >> $itemFile;
	echo "Enter sparkle title";
	read itemTitle
	echo "title : \"$itemTitle\"" >> $itemFile;
	echo "Enter sparkle summary : "
	read itemSummary
	if [ "$itemSummary" != "" ]; then
		echo "summary : \"$itemSummary\"" >> $itemFile;
	fi
	echo "Do you have a logo or thumbnail ? (y/n) : ";
	read hasImage;
	if [ "$hasImage" == "y" ]; then
		echo "thumbnail : \"$itemName.jpg\"" >> $itemFile;
	fi
	echo "Enter sparkle URL : ";
	read itemUrl;
	if [ "$itemUrl" != "" ]; then
		echo "visit : $itemUrl" >> $itemFile;
	fi
	echo "Enter sparkle tags : ";
	read itemTags;
	if [ "$itemTags" != "" ]; then
		echo "tags : [$itemTags]" >> $itemFile;
	fi
	echo "Enter sparkle category : ";
	read itemCategory;
	if [ "$itemCategory" != "" ]; then
		echo "category : \"$itemCategory\"" >> $itemFile;
	fi
	echo "---" >> $itemFile;
	;;

	help)
	echo "./make.sh sparkle sparkle";
	;;
esac