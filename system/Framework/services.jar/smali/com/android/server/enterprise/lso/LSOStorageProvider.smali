.class public Lcom/android/server/enterprise/lso/LSOStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProvider;
.source "LSOStorageProvider.java"


# static fields
.field private static final INVALID_ROW_ID:I = -0x1

.field private static final LSO_FEATURE_OVERLAY:Ljava/lang/String; = "LOCKSCREEN_OVERLAY"

.field private static final LSO_FEATURE_WALLPAPER:Ljava/lang/String; = "LOCKSCREEN_WALLPAPER"

.field private static final LSO_ITEM_ATTRIBUTES:I = 0xf

.field private static final LSO_ITEM_BG_COLOR:I = 0x6

.field private static final LSO_ITEM_GRAVITY:I = 0x7

.field private static final LSO_ITEM_HEIGHT:I = 0x4

.field private static final LSO_ITEM_ID:I = 0x2

.field private static final LSO_ITEM_IMG_PATH:I = 0x9

.field private static final LSO_ITEM_IMG_URL:I = 0xc

.field private static final LSO_ITEM_LAYER:I = 0x10

.field private static final LSO_ITEM_ORIENTATION:I = 0xd

.field private static final LSO_ITEM_PACKAGE_NAME:I = 0xe

.field private static final LSO_ITEM_PARENT_ID:I = 0x11

.field private static final LSO_ITEM_POLLING_INTERVAL:I = 0x8

.field private static final LSO_ITEM_ROWID:I = 0x0

.field private static final LSO_ITEM_SCALE_TYPE:I = 0xa

.field private static final LSO_ITEM_TEXT:I = 0x9

.field private static final LSO_ITEM_TXT_COLOR:I = 0x8

.field private static final LSO_ITEM_TXT_SIZE:I = 0xb

.field private static final LSO_ITEM_TXT_STYLE:I = 0xa

.field private static final LSO_ITEM_TYPE:I = 0x1

.field private static final LSO_ITEM_WEIGHT:I = 0x5

.field private static final LSO_ITEM_WIDTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LSOStorageProvider"

.field private static final tblColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 63
    const-string v0, "Item_RowId"

    const-string v1, "Item_Type"

    const-string v2, "Item_Id"

    const-string v3, "Item_Width"

    const-string v4, "Item_Height"

    const-string v5, "Item_Weight"

    const-string v6, "Item_Bg_Color"

    const-string v7, "Item_Gravity"

    const-string v8, "Item_TxtColor_or_PollingInterval"

    const-string v9, "Item_Txt_or_ImgPath"

    const-string v10, "Item_TxtStyle_or_ScaleType"

    const-string v11, "Item_TxtSize"

    const-string v12, "Item_Url"

    const-string v13, "Item_Orientation"

    const-string v14, "Item_PackageName"

    const-string v15, "Item_Attributes"

    const-string v16, "Item_Layer"

    const-string v17, "Item_ParentId"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method private constructContentValues(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Landroid/content/ContentValues;
    .registers 21
    .param p1, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .param p2, "layer"    # I
    .param p3, "parentId"    # J

    .line 577
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 578
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v1

    .line 579
    .local v1, "lsoType":B
    const/4 v2, 0x0

    .line 581
    .local v2, "error":Z
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v5, 0x11

    aget-object v3, v3, v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 583
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 585
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getUpdatedFields()[I

    move-result-object v3

    .line 586
    .local v3, "lsoFields":[I
    if-eqz v3, :cond_1d3

    array-length v6, v3

    if-nez v6, :cond_3b

    goto/16 :goto_1d3

    .line 590
    :cond_3b
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3c
    array-length v7, v3

    if-ge v6, v7, :cond_1cf

    if-nez v2, :cond_1cf

    .line 591
    aget v7, v3, v6

    const/4 v8, 0x2

    if-eq v7, v5, :cond_1bd

    const/4 v9, 0x3

    if-eq v7, v8, :cond_1ad

    const/4 v10, 0x4

    if-eq v7, v10, :cond_19d

    const/4 v11, 0x5

    const/16 v12, 0x8

    if-eq v7, v12, :cond_18d

    if-eq v7, v4, :cond_17c

    const/16 v13, 0x20

    if-eq v7, v13, :cond_16b

    const/16 v13, 0x40

    if-eq v7, v13, :cond_159

    .line 621
    const/16 v7, 0xa

    const/16 v13, 0x200

    const/16 v14, 0x9

    const/16 v15, 0x100

    const/16 v4, 0x80

    if-eq v1, v8, :cond_109

    if-eq v1, v9, :cond_c1

    if-eq v1, v10, :cond_90

    if-eq v1, v11, :cond_78

    .line 683
    const/4 v2, 0x1

    .line 684
    const-string v4, "LSOStorageProvider"

    const-string/jumbo v7, "unknown LSOItem"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c9

    .line 674
    :cond_78
    move-object/from16 v7, p1

    check-cast v7, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    .line 675
    .local v7, "lsoWidget":Lcom/samsung/android/knox/lockscreen/LSOItemWidget;
    aget v8, v3, v6

    if-eq v8, v4, :cond_81

    goto :goto_8e

    .line 677
    :cond_81
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v8, 0xe

    aget-object v4, v4, v8

    invoke-virtual {v7}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->getWidget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :goto_8e
    goto/16 :goto_1c9

    .line 660
    .end local v7    # "lsoWidget":Lcom/samsung/android/knox/lockscreen/LSOItemWidget;
    :cond_90
    move-object/from16 v7, p1

    check-cast v7, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 661
    .local v7, "lsoContainer":Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
    aget v8, v3, v6

    if-eq v8, v4, :cond_a7

    if-eq v8, v15, :cond_9b

    goto :goto_bf

    .line 663
    :cond_9b
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v14

    .line 664
    invoke-virtual {v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v8

    .line 663
    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    goto :goto_bf

    .line 667
    :cond_a7
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v8, 0xd

    aget-object v4, v4, v8

    .line 668
    invoke-virtual {v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getOrientation()Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    if-ne v8, v9, :cond_b7

    const/4 v8, 0x0

    goto :goto_b8

    :cond_b7
    move v8, v5

    .line 667
    :goto_b8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    :goto_bf
    goto/16 :goto_1c9

    .line 642
    .end local v7    # "lsoContainer":Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
    :cond_c1
    move-object/from16 v8, p1

    check-cast v8, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    .line 643
    .local v8, "lsoImage":Lcom/samsung/android/knox/lockscreen/LSOItemImage;
    aget v9, v3, v6

    if-eq v9, v4, :cond_fb

    if-eq v9, v15, :cond_de

    if-eq v9, v13, :cond_ce

    goto :goto_107

    .line 648
    :cond_ce
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v7

    .line 649
    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getScaleTypeAsInteger()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 648
    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    goto :goto_107

    .line 652
    :cond_de
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v7, 0xc

    aget-object v4, v4, v7

    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v12

    .line 654
    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getPollingInterval()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 653
    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_107

    .line 645
    :cond_fb
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v14

    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    nop

    .line 657
    :goto_107
    goto/16 :goto_1c9

    .line 623
    .end local v8    # "lsoImage":Lcom/samsung/android/knox/lockscreen/LSOItemImage;
    :cond_109
    move-object/from16 v8, p1

    check-cast v8, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    .line 624
    .local v8, "lsoText":Lcom/samsung/android/knox/lockscreen/LSOItemText;
    aget v9, v3, v6

    if-eq v9, v4, :cond_14c

    if-eq v9, v15, :cond_13c

    if-eq v9, v13, :cond_12a

    const/16 v4, 0x400

    if-eq v9, v4, :cond_11a

    goto :goto_158

    .line 632
    :cond_11a
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextStyle()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    goto :goto_158

    .line 635
    :cond_12a
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v4, v4, v7

    .line 636
    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSizeAsFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 635
    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_158

    .line 629
    :cond_13c
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v12

    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextColor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    goto :goto_158

    .line 626
    :cond_14c
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v14

    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    nop

    .line 639
    :goto_158
    goto :goto_1c9

    .line 617
    .end local v8    # "lsoText":Lcom/samsung/android/knox/lockscreen/LSOItemText;
    :cond_159
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v4, v4, v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 618
    goto :goto_1c9

    .line 613
    :cond_16b
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v4, v4, v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getGravity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    goto :goto_1c9

    .line 609
    :cond_17c
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v4, v4, v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getBgColor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    goto :goto_1c9

    .line 605
    :cond_18d
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWeight()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 606
    goto :goto_1c9

    .line 601
    :cond_19d
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    goto :goto_1c9

    .line 597
    :cond_1ad
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    goto :goto_1c9

    .line 593
    :cond_1bd
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    nop

    .line 590
    :goto_1c9
    add-int/lit8 v6, v6, 0x1

    const/16 v4, 0x10

    goto/16 :goto_3c

    .line 691
    .end local v6    # "i":I
    :cond_1cf
    if-eqz v2, :cond_1d2

    .line 692
    const/4 v0, 0x0

    .line 695
    :cond_1d2
    return-object v0

    .line 587
    :cond_1d3
    :goto_1d3
    return-object v0
.end method

.method private deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 8
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 512
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Delete from "

    const-string v2, "LSOStorageProvider"

    if-eqz p2, :cond_24

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " where "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 515
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_36
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method private getAdminUid(Ljava/lang/String;)I
    .registers 5
    .param p1, "feature"    # Ljava/lang/String;

    .line 142
    const-string v0, "ADMIN_REF"

    const-string/jumbo v1, "policyName"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, "adminUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Configured admin UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LSOStorageProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v0
.end method

.method private insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 9
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSOStorageProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 497
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 498
    .local v2, "row_id":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_51

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Failed to insert record - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 502
    :cond_51
    return-wide v2
.end method

.method private loadContainerData(Lcom/samsung/android/knox/lockscreen/LSOItemContainer;Landroid/database/Cursor;)V
    .registers 12
    .param p1, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 437
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "img":Ljava/lang/String;
    const/16 v1, 0xd

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 440
    .local v1, "val":I
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    .line 441
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    .line 442
    :cond_17
    if-eqz v1, :cond_1e

    .line 443
    sget-object v2, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setOrientation(Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;)V

    .line 445
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadContainerData -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LSOStorageProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 447
    .local v2, "id":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .local v4, "selectionValues":Landroid/content/ContentValues;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Item_ParentId"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    sget-object v5, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v7, v5, v4, v6}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 451
    .local v5, "containerCursor":Landroid/database/Cursor;
    if-nez v5, :cond_57

    .line 452
    return-void

    .line 455
    :cond_57
    :try_start_57
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_5b
    .catch Landroid/database/SQLException; {:try_start_57 .. :try_end_5b} :catch_87
    .catchall {:try_start_57 .. :try_end_5b} :catchall_85

    if-nez v6, :cond_63

    .line 473
    if-eqz v5, :cond_62

    .line 474
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_62
    return-void

    .line 459
    :cond_63
    const/4 v6, 0x0

    .line 460
    .local v6, "type":B
    :goto_64
    :try_start_64
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 461
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-byte v6, v7

    .line 463
    invoke-static {v6}, Lcom/samsung/android/knox/lockscreen/LSOItemCreator;->createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v7

    .line 464
    .local v7, "lsoChildData":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    if-nez v7, :cond_77

    .line 465
    goto :goto_64

    .line 467
    :cond_77
    invoke-direct {p0, v7, v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V

    .line 468
    invoke-virtual {p1, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z
    :try_end_7d
    .catch Landroid/database/SQLException; {:try_start_64 .. :try_end_7d} :catch_87
    .catchall {:try_start_64 .. :try_end_7d} :catchall_85

    .line 469
    nop

    .end local v7    # "lsoChildData":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    goto :goto_64

    .line 473
    .end local v6    # "type":B
    :cond_7f
    if-eqz v5, :cond_a4

    .line 474
    :goto_81
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_a4

    .line 473
    :catchall_85
    move-exception v3

    goto :goto_a5

    .line 470
    :catch_87
    move-exception v6

    .line 471
    .local v6, "sqlEx":Landroid/database/SQLException;
    :try_start_88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occurred accessing Enterprise db "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_85

    .line 473
    nop

    .end local v6    # "sqlEx":Landroid/database/SQLException;
    if-eqz v5, :cond_a4

    .line 474
    goto :goto_81

    .line 477
    :cond_a4
    :goto_a4
    return-void

    .line 473
    :goto_a5
    if-eqz v5, :cond_aa

    .line 474
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_aa
    throw v3
.end method

.method private loadImageData(Lcom/samsung/android/knox/lockscreen/LSOItemImage;Landroid/database/Cursor;)V
    .registers 8
    .param p1, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemImage;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 418
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "img":Ljava/lang/String;
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_35

    .line 421
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    .line 423
    const/16 v1, 0xa

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 424
    .local v1, "val":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    .line 425
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setScaleType(I)V

    .line 427
    :cond_1d
    const/16 v2, 0x8

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 428
    .local v2, "pollingPeriod":I
    const/16 v3, 0xc

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_35

    .line 430
    int-to-long v3, v2

    invoke-virtual {p1, v0, v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setURL(Ljava/lang/String;J)V

    .line 433
    .end local v1    # "val":I
    .end local v2    # "pollingPeriod":I
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadImageData -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LSOStorageProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void
.end method

.method private loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V
    .registers 13
    .param p1, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 343
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "strVal":Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 345
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    .line 347
    :cond_a
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 348
    .local v3, "val":I
    const/16 v4, -0x63

    if-eq v3, v4, :cond_16

    .line 349
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    .line 351
    :cond_16
    const/4 v5, 0x4

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 352
    if-eq v3, v4, :cond_20

    .line 353
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    .line 355
    :cond_20
    const/4 v4, 0x5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    .line 356
    .local v6, "fVal":F
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_2d

    .line 357
    invoke-virtual {p1, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    .line 359
    :cond_2d
    const/4 v7, 0x6

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 360
    const/4 v7, -0x1

    if-eq v3, v7, :cond_38

    .line 361
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setBgColor(I)V

    .line 363
    :cond_38
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5a

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadItemData -- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LSOStorageProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void

    .line 368
    :cond_5a
    const/4 v8, 0x7

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 369
    if-eq v3, v7, :cond_64

    .line 370
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 372
    :cond_64
    const/16 v7, 0xf

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 373
    .local v7, "bytes":[B
    if-eqz v7, :cond_73

    .line 374
    invoke-static {v7}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->fromByteArray([B)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttrs(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    .line 377
    :cond_73
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v8

    if-eq v8, v0, :cond_95

    if-eq v8, v2, :cond_8e

    if-eq v8, v5, :cond_87

    if-eq v8, v4, :cond_80

    goto :goto_9c

    .line 391
    :cond_80
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadWidgetData(Lcom/samsung/android/knox/lockscreen/LSOItemWidget;Landroid/database/Cursor;)V

    goto :goto_9c

    .line 387
    :cond_87
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadContainerData(Lcom/samsung/android/knox/lockscreen/LSOItemContainer;Landroid/database/Cursor;)V

    .line 388
    goto :goto_9c

    .line 383
    :cond_8e
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadImageData(Lcom/samsung/android/knox/lockscreen/LSOItemImage;Landroid/database/Cursor;)V

    .line 384
    goto :goto_9c

    .line 379
    :cond_95
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadTextData(Lcom/samsung/android/knox/lockscreen/LSOItemText;Landroid/database/Cursor;)V

    .line 380
    nop

    .line 395
    :goto_9c
    return-void
.end method

.method private loadTextData(Lcom/samsung/android/knox/lockscreen/LSOItemText;Landroid/database/Cursor;)V
    .registers 8
    .param p1, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemText;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 398
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    .line 400
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setText(Ljava/lang/String;)V

    .line 402
    :cond_11
    const/16 v1, 0x8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 403
    .local v1, "val":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    .line 404
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextColor(I)V

    .line 406
    :cond_1d
    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 407
    if-eq v1, v2, :cond_28

    .line 408
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    .line 410
    :cond_28
    const/16 v2, 0xb

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    .line 411
    .local v2, "fVal":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_36

    .line 412
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(F)V

    .line 414
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadTextData -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LSOStorageProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method private loadWidgetData(Lcom/samsung/android/knox/lockscreen/LSOItemWidget;Landroid/database/Cursor;)V
    .registers 6
    .param p1, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemWidget;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 481
    const/16 v0, 0xe

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    .line 483
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    .line 486
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadWidgetData -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LSOStorageProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method private setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z
    .registers 15
    .param p1, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .param p2, "layer"    # I
    .param p3, "parentId"    # J

    .line 541
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 542
    return v0

    .line 545
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->constructContentValues(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Landroid/content/ContentValues;

    move-result-object v1

    .line 546
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "LSOStorageProvider"

    if-nez v1, :cond_12

    .line 547
    const-string v3, "Cannot construct content values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return v0

    .line 551
    :cond_12
    const-string v3, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 552
    .local v3, "row_id":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_1f

    .line 553
    return v0

    .line 556
    :cond_1f
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v0

    .line 557
    .local v0, "item_type":B
    const/4 v5, 0x4

    if-eq v0, v5, :cond_28

    .line 558
    const/4 v2, 0x1

    return v2

    .line 561
    :cond_28
    const/4 v1, 0x0

    .line 562
    const/4 v5, 0x1

    .line 563
    .local v5, "result":Z
    move-object v6, p1

    check-cast v6, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 564
    .local v6, "itemContainer":Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
    const/4 v7, 0x0

    .line 565
    .local v7, "i":I
    const/4 v7, 0x0

    :goto_2f
    invoke-virtual {v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v8

    if-ge v7, v8, :cond_42

    if-eqz v5, :cond_42

    .line 566
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v8

    invoke-direct {p0, v8, p2, v3, v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result v5

    .line 565
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 569
    :cond_42
    if-nez v5, :cond_60

    .line 570
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to store LSOItemData for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " with ParendId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_60
    return v5
.end method

.method private updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert/Update record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSOStorageProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 529
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 530
    .local v2, "rowsAffected":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of rows updated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    if-gtz v2, :cond_54

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Failed to insert record - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 537
    :cond_54
    return v2
.end method

.method private wipeLayerData(I)V
    .registers 7
    .param p1, "layer"    # I

    .line 208
    const-string v0, "LOCKSCREEN_OVERLAY"

    if-nez p1, :cond_8

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->remove(Ljava/lang/String;)Z

    goto :goto_1b

    .line 211
    :cond_8
    const-string v1, "Item_Layer"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "sColumns":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 215
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 217
    .local v2, "sValues":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 220
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wipeLayerData() - LOCKSCREEN_OVERLAY - cleaned : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSOStorageProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method


# virtual methods
.method public getAdminPref()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .registers 6

    .line 149
    const-string v0, "accountObject"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "resultColumns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "policyName"

    const-string v3, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "ADMIN_REF"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 157
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1d

    .line 158
    return-object v3

    .line 161
    :cond_1d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 162
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 163
    .local v3, "buffer":[B
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 165
    const/4 v4, 0x0

    .line 166
    .local v4, "pref":Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    if-eqz v3, :cond_2f

    .line 167
    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->fromByteArray([B)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v4

    .line 170
    :cond_2f
    return-object v4
.end method

.method public getCount(Ljava/lang/String;)I
    .registers 7
    .param p1, "tableName"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 119
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 120
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 121
    return v2

    .line 124
    :cond_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 125
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 127
    .local v2, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCount("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LSOStorageProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v2
.end method

.method public getOverlay(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 9
    .param p1, "layer"    # I

    .line 301
    const-string v0, "LSOStorageProvider"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 302
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Item_ParentId"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Item_Layer"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 309
    .local v3, "lsoData":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    :try_start_1c
    const-string v4, "LOCKSCREEN_OVERLAY"

    sget-object v5, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v1, v6}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_25
    .catch Landroid/database/SQLException; {:try_start_1c .. :try_end_25} :catch_76
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_6b
    .catchall {:try_start_1c .. :try_end_25} :catchall_69

    move-object v2, v4

    .line 311
    const-string v4, "No record found in LOCKSCREEN_OVERLAY"

    if-nez v2, :cond_34

    .line 312
    :try_start_2a
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/database/SQLException; {:try_start_2a .. :try_end_2d} :catch_76
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_6b
    .catchall {:try_start_2a .. :try_end_2d} :catchall_69

    .line 313
    nop

    .line 336
    if-eqz v2, :cond_33

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_33
    return-object v6

    .line 315
    :cond_34
    :try_start_34
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_44

    .line 316
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/database/SQLException; {:try_start_34 .. :try_end_3d} :catch_76
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_6b
    .catchall {:try_start_34 .. :try_end_3d} :catchall_69

    .line 317
    nop

    .line 336
    if-eqz v2, :cond_43

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_43
    return-object v6

    .line 320
    :cond_44
    :try_start_44
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 322
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-byte v4, v4

    .line 323
    .local v4, "type":B
    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemCreator;->createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v5

    move-object v3, v5

    .line 325
    if-nez v3, :cond_60

    .line 326
    const-string v5, "Invalid Item type"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Landroid/database/SQLException; {:try_start_44 .. :try_end_59} :catch_76
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_59} :catch_6b
    .catchall {:try_start_44 .. :try_end_59} :catchall_69

    .line 327
    nop

    .line 336
    if-eqz v2, :cond_5f

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_5f
    return-object v6

    .line 330
    :cond_60
    :try_start_60
    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V
    :try_end_63
    .catch Landroid/database/SQLException; {:try_start_60 .. :try_end_63} :catch_76
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_6b
    .catchall {:try_start_60 .. :try_end_63} :catchall_69

    .line 336
    .end local v4    # "type":B
    if-eqz v2, :cond_93

    .line 337
    :goto_65
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_93

    .line 336
    :catchall_69
    move-exception v0

    goto :goto_94

    .line 333
    :catch_6b
    move-exception v4

    .line 334
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6c
    const-string/jumbo v5, "getOverlay() falied "

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_93

    .line 337
    goto :goto_65

    .line 331
    :catch_76
    move-exception v4

    .line 332
    .local v4, "sqlEx":Landroid/database/SQLException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred accessing Enterprise db "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_6c .. :try_end_8f} :catchall_69

    .line 336
    nop

    .end local v4    # "sqlEx":Landroid/database/SQLException;
    if-eqz v2, :cond_93

    .line 337
    goto :goto_65

    .line 339
    :cond_93
    :goto_93
    return-object v3

    .line 336
    :goto_94
    if-eqz v2, :cond_99

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_99
    throw v0
.end method

.method public getOverlayAdminUid()I
    .registers 2

    .line 134
    const-string v0, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWallpaperAdminUid()I
    .registers 2

    .line 138
    const-string v0, "LOCKSCREEN_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 114
    const-string v0, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCount(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public resetOverlayData(I)V
    .registers 5
    .param p1, "layer"    # I

    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    .line 226
    const-string v0, "LOCKSCREEN_OVERLAY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 232
    const-string v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 236
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetOverlayData() LOCKSCREEN_OVERLAY - resetted layer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LSOStorageProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public resetWallpaperData()V
    .registers 4

    .line 240
    const-string v0, "LOCKSCREEN_WALLPAPER"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "whereArgs":[Ljava/lang/String;
    const-string v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 245
    const-string v1, "LSOStorageProvider"

    const-string/jumbo v2, "resetWallpaperData() LOCKSCREEN_WALLPAPER - resetted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public setOverlayData(JLcom/samsung/android/knox/lockscreen/LSOItemData;ILcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z
    .registers 14
    .param p1, "adminUID"    # J
    .param p3, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .param p4, "layer"    # I
    .param p5, "pref"    # Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 250
    if-eqz p3, :cond_56

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_56

    .line 254
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    .line 255
    .local v2, "overlayAdminUID":I
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    .line 257
    const-wide/16 v3, 0x0

    invoke-direct {p0, p3, p4, v3, v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result v3

    .line 258
    .local v3, "result":Z
    const/4 v4, 0x0

    if-nez v3, :cond_1c

    .line 259
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    goto :goto_55

    .line 261
    :cond_1c
    int-to-long v5, v2

    cmp-long v5, v5, p1

    if-eqz v5, :cond_55

    .line 262
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "policyName"

    const-string v7, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "adminUid"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    if-eqz p5, :cond_42

    .line 266
    invoke-virtual {p5}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v6

    const-string v7, "accountObject"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 269
    :cond_42
    const-string v6, "ADMIN_REF"

    invoke-direct {p0, v6, v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    move v0, v4

    :goto_4f
    move v3, v0

    .line 270
    if-nez v3, :cond_55

    .line 271
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 275
    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_55
    :goto_55
    return v3

    .line 251
    .end local v2    # "overlayAdminUID":I
    .end local v3    # "result":Z
    :cond_56
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWallpaperData(JLjava/lang/String;)Z
    .registers 10
    .param p1, "adminUID"    # J
    .param p3, "imageFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 280
    if-eqz p3, :cond_35

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_35

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 287
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "policyName"

    const-string v5, "LOCKSCREEN_WALLPAPER"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "adminUid"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    const-string v4, "ADMIN_REF"

    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 293
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_2f
    if-nez v0, :cond_34

    .line 294
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 297
    :cond_34
    return v0

    .line 281
    .end local v0    # "result":Z
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_35
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAdminPref(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z
    .registers 6
    .param p1, "pref"    # Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "accountObject"

    if-eqz p1, :cond_11

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_17

    .line 180
    :cond_11
    const/4 v2, 0x0

    check-cast v2, [B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 183
    :goto_17
    const-string/jumbo v1, "policyName=?"

    .line 184
    .local v1, "whereClause":Ljava/lang/String;
    const-string v2, "LOCKSCREEN_OVERLAY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v3, "ADMIN_REF"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    .line 192
    .local v3, "result":Z
    :goto_2b
    return v3
.end method
