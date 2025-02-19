-- 코드를 작성해주세요
SELECT I.ITEM_ID, I.ITEM_NAME, I.RARITY
FROM ITEM_INFO I
LEFT JOIN ITEM_TREE A ON I.ITEM_ID = A.ITEM_ID
LEFT JOIN ITEM_TREE B ON A.ITEM_ID = B.PARENT_ITEM_ID
WHERE B.ITEM_ID IS NULL
ORDER BY I.ITEM_ID DESC