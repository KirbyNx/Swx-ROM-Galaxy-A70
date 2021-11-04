.class Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemFontChanger"
.end annotation


# static fields
.field public static final KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"


# instance fields
.field mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

.field final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .registers 2

    .line 1343
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1345
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/general/MiscPolicy$1;

    .line 1343
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    return-void
.end method

.method private changeFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .line 1402
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1421
    .local v3, "ret":Z
    new-instance v0, Lcom/android/server/enterprise/general/FontWriter;

    invoke-direct {v0}, Lcom/android/server/enterprise/general/FontWriter;-><init>()V

    move-object v4, v0

    .line 1422
    .local v4, "fontWriter":Lcom/android/server/enterprise/general/FontWriter;
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1425
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 1426
    .local v0, "index":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v6

    .line 1428
    .local v6, "installedFontList":[Ljava/lang/String;
    const-string v7, "MiscPolicy"

    if-nez v6, :cond_24

    .line 1429
    const-string v8, "changeFont():Installed font list is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    return v3

    .line 1433
    :cond_24
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_25
    array-length v9, v6

    if-ge v8, v9, :cond_4a

    .line 1434
    aget-object v9, v6, v8

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_47

    .line 1435
    move v0, v8

    .line 1436
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "index"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    goto :goto_4b

    .line 1433
    :cond_47
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_4a
    move v8, v0

    .line 1441
    .end local v0    # "index":I
    .local v8, "index":I
    :goto_4b
    const-string v0, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v9, "sans.loc"

    const/4 v10, 0x1

    if-eqz v0, :cond_7c

    .line 1443
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v0

    const-string v11, "default#default"

    invoke-virtual {v4, v0, v9, v11}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    aget-object v0, v6, v8

    invoke-virtual {v1, v0, v8}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "default font is selected..."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    return v10

    .line 1450
    :cond_7c
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/general/TypefaceFinder;->findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;

    move-result-object v11

    .line 1451
    .local v11, "sansTypeface":Lcom/android/server/enterprise/general/Typeface;
    if-nez v11, :cond_8a

    .line 1452
    const-string v0, "change font failed"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    return v3

    .line 1456
    :cond_8a
    invoke-virtual {v11}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1457
    .end local p2    # "apkPath":Ljava/lang/String;
    .local v12, "apkPath":Ljava/lang/String;
    if-eqz v12, :cond_99

    const-string v0, "com.monotype.android.font."

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 1458
    return v3

    .line 1460
    :cond_99
    invoke-virtual {v11}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v13

    .line 1463
    .local v13, "selectedFont":Ljava/lang/String;
    const-string v0, ".xml"

    const-string v14, ""

    invoke-virtual {v13, v0, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1465
    .local v0, "fontdir":Ljava/lang/String;
    const-string v14, " "

    const-string v15, "-"

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1467
    .end local v0    # "fontdir":Ljava/lang/String;
    .local v14, "fontdir":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0, v14}, Lcom/android/server/enterprise/general/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 1468
    .local v15, "fontDir":Ljava/io/File;
    if-nez v15, :cond_c0

    .line 1469
    const-string v0, "create fontDir object is null "

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/4 v0, 0x0

    return v0

    .line 1475
    :cond_c0
    const/4 v0, 0x0

    .line 1476
    .local v0, "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    if-eqz v11, :cond_13d

    .line 1477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1478
    .local v16, "token":J
    const/16 v18, 0x0

    move/from16 v10, v18

    .local v10, "i":I
    :goto_cb
    move-object/from16 p2, v0

    .end local v0    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    .local p2, "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    iget-object v0, v11, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_138

    .line 1479
    iget-object v0, v11, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/enterprise/general/TypefaceFile;

    .line 1483
    .end local p2    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    .local v19, "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    :try_start_df
    invoke-virtual {v5, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1484
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    move-object/from16 p2, v20

    .line 1486
    .local p2, "assetManager":Landroid/content/res/AssetManager;
    move-object/from16 v20, v0

    .end local v0    # "res":Landroid/content/res/Resources;
    .local v20, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fonts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/general/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p2

    .end local p2    # "assetManager":Landroid/content/res/AssetManager;
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1487
    .local v0, "in":Ljava/io/InputStream;
    move-object/from16 p2, v2

    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .restart local p2    # "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/general/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v15, v0, v2}, Lcom/android/server/enterprise/general/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_10f} :catch_117

    .line 1494
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v20    # "res":Landroid/content/res/Resources;
    .end local p2    # "assetManager":Landroid/content/res/AssetManager;
    nop

    .line 1478
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v19

    goto :goto_cb

    .line 1488
    :catch_117
    move-exception v0

    .line 1489
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "changeFont():Exception"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1492
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1493
    return v3

    .line 1496
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v19    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    .local p2, "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    :cond_138
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p2

    .line 1499
    .end local v16    # "token":J
    .end local p2    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    .local v0, "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    :cond_13d
    iget-object v2, v1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v2, v9, v10}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v11}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    .line 1501
    const-string v2, "change font:Done"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const/4 v2, 0x1

    return v2
.end method

.method private getFontString()[Ljava/lang/String;
    .registers 5

    .line 1581
    const/4 v0, 0x0

    .line 1582
    .local v0, "retString":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontsVector()Ljava/util/Vector;

    move-result-object v1

    .line 1583
    .local v1, "fontNames":Ljava/util/Vector;
    if-nez v1, :cond_9

    .line 1584
    const/4 v2, 0x0

    return-object v2

    .line 1585
    :cond_9
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 1588
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 1589
    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 1588
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1591
    .end local v2    # "i":I
    :cond_21
    return-object v0
.end method

.method private getFontsVector()Ljava/util/Vector;
    .registers 15

    .line 1595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1596
    new-instance v0, Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-direct {v0}, Lcom/android/server/enterprise/general/TypefaceFinder;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1598
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1600
    .local v0, "fontPackageNames":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1602
    .local v1, "fontNames":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1603
    .local v2, "typefaceFiles":Ljava/util/Vector;
    const/4 v3, 0x0

    .line 1605
    .local v3, "fontAssetManager":Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 1606
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 1607
    .local v5, "installedApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1610
    .local v6, "token":J
    nop

    .line 1611
    const/16 v8, 0x80

    :try_start_2d
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 1613
    const/4 v9, 0x0

    .line 1614
    .local v9, "fontPackageName":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_34
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6d

    .line 1615
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v9, v11

    .line 1616
    const-string v11, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 1617
    goto :goto_6a

    .line 1618
    :cond_4c
    const-string v11, "com.monotype.android.font."

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6a

    .line 1619
    invoke-virtual {v4, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 1620
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v12, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1621
    invoke-virtual {v4, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .line 1622
    .local v12, "res":Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    move-object v3, v13

    .line 1623
    iget-object v13, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v13, v3, v9}, Lcom/android/server/enterprise/general/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 1614
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "res":Landroid/content/res/Resources;
    :cond_6a
    :goto_6a
    add-int/lit8 v10, v10, 0x1

    goto :goto_34

    .line 1626
    .end local v10    # "i":I
    :cond_6d
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v8, v4, v1, v2, v0}, Lcom/android/server/enterprise/general/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_72} :catch_75
    .catchall {:try_start_2d .. :try_end_72} :catchall_73

    .end local v9    # "fontPackageName":Ljava/lang/String;
    goto :goto_7a

    .line 1632
    :catchall_73
    move-exception v8

    goto :goto_7f

    .line 1628
    :catch_75
    move-exception v8

    .line 1629
    .local v8, "e":Ljava/lang/Exception;
    :try_start_76
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_73

    .line 1630
    const/4 v1, 0x0

    .line 1632
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_7a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1633
    nop

    .line 1634
    return-object v1

    .line 1632
    :goto_7f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1633
    throw v8
.end method


# virtual methods
.method public getActiveFontPosition()I
    .registers 10

    .line 1541
    const/4 v0, 0x0

    .line 1542
    .local v0, "map":Ljava/util/Map;
    const/4 v1, 0x0

    .line 1544
    .local v1, "str":Ljava/io/BufferedInputStream;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1546
    .local v2, "token":J
    :try_start_6
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.settings"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1548
    .local v4, "settingContext":Landroid/content/Context;
    const-string/jumbo v5, "prefs"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1550
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1551
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x4000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v6

    .line 1552
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v6
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_3f
    .catchall {:try_start_6 .. :try_end_31} :catchall_3d

    move-object v0, v6

    .line 1558
    .end local v4    # "settingContext":Landroid/content/Context;
    .end local v5    # "file":Ljava/io/File;
    :cond_32
    if-eqz v1, :cond_37

    .line 1559
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1561
    :cond_37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3a} :catch_3b

    .line 1564
    :goto_3a
    goto :goto_4c

    .line 1562
    :catch_3b
    move-exception v4

    .line 1565
    goto :goto_4c

    .line 1557
    :catchall_3d
    move-exception v4

    goto :goto_5f

    .line 1554
    :catch_3f
    move-exception v4

    .line 1555
    .local v4, "e":Ljava/lang/Exception;
    :try_start_40
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    .line 1558
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_48

    .line 1559
    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1561
    :cond_48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_3b

    goto :goto_3a

    .line 1567
    :goto_4c
    const/4 v4, 0x0

    if-eqz v0, :cond_5e

    .line 1568
    const-string v5, "SavedClickedItem"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1569
    .local v5, "v":Ljava/lang/Integer;
    if-eqz v5, :cond_5d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_5d
    return v4

    .line 1572
    .end local v5    # "v":Ljava/lang/Integer;
    :cond_5e
    return v4

    .line 1558
    :goto_5f
    if-eqz v1, :cond_64

    .line 1559
    :try_start_61
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1561
    :cond_64
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_67} :catch_68

    .line 1564
    goto :goto_69

    .line 1562
    :catch_68
    move-exception v5

    .line 1565
    :goto_69
    throw v4
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .registers 5

    .line 1506
    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "getSystemActiveFont():getting active system font:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getActiveFontPosition()I

    move-result v1

    .line 1508
    .local v1, "position":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getActiveFontPosition():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    .line 1510
    .local v0, "fonts":[Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 1511
    aget-object v2, v0, v1

    return-object v2

    .line 1513
    :cond_2a
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .registers 3

    .line 1576
    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "getSystemFonts():getting all system fonts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected savePreferences(Ljava/lang/String;I)V
    .registers 12
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 1638
    const/4 v0, 0x0

    .line 1639
    .local v0, "mode":I
    const/4 v1, 0x0

    .line 1641
    .local v1, "settingContext":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1643
    .local v2, "token":J
    :try_start_6
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.settings"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_15

    move-object v1, v4

    .line 1647
    goto :goto_19

    .line 1645
    :catch_15
    move-exception v4

    .line 1646
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1649
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_19
    if-nez v1, :cond_23

    .line 1650
    const-string v4, "MiscPolicy"

    const-string v5, "Setting Context is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return-void

    .line 1654
    :cond_23
    const-string/jumbo v4, "prefs"

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1657
    .local v4, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1658
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v6, 0x0

    const-string v7, "SelectDialogIsActive"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1659
    const-string v6, "SavedClickedItem"

    invoke-interface {v5, v6, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1662
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1663
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "flip_font_style"

    invoke-static {v6, v7, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1664
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1666
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_preferences"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1667
    .local v6, "prefName":Ljava/lang/String;
    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1668
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 1669
    .local v7, "editor1":Landroid/content/SharedPreferences$Editor;
    const-string v8, "MONOTYPE"

    invoke-interface {v7, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1670
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1671
    return-void
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .line 1348
    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "setSystemActiveFont():Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v1, 0x0

    .line 1351
    .local v1, "ret":Z
    if-nez p1, :cond_12

    .line 1352
    const-string/jumbo v2, "setSystemActiveFont():Invalid input"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    return v1

    .line 1356
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->changeFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1357
    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 1358
    return v2

    .line 1360
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1362
    .local v3, "token":J
    :try_start_1e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1363
    .local v5, "am":Landroid/app/IActivityManager;
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 1364
    .local v6, "config":Landroid/content/res/Configuration;
    const/4 v7, 0x0

    .line 1365
    .local v7, "min":I
    const/16 v8, 0x2710

    .line 1369
    .local v8, "max":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Landroid/content/res/Configuration;->FlipFont:I

    .line 1370
    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_38} :catch_77
    .catchall {:try_start_1e .. :try_end_38} :catchall_75

    .line 1377
    nop

    .end local v5    # "am":Landroid/app/IActivityManager;
    .end local v6    # "config":Landroid/content/res/Configuration;
    .end local v7    # "min":I
    .end local v8    # "max":I
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    nop

    .line 1381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1382
    .local v5, "identity":J
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v0

    .line 1383
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1384
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1386
    .local v2, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_71

    .line 1387
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1388
    .local v8, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1392
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 1395
    .end local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9    # "s":Ljava/lang/String;
    goto :goto_5b

    .line 1397
    :cond_71
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1398
    return v1

    .line 1377
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "identity":J
    :catchall_75
    move-exception v0

    goto :goto_83

    .line 1373
    :catch_77
    move-exception v5

    .line 1374
    .local v5, "e":Ljava/lang/Exception;
    :try_start_78
    const-string/jumbo v6, "setSystemActiveFont():Exception"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_75

    .line 1375
    nop

    .line 1377
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1375
    return v2

    .line 1377
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_83
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    throw v0
.end method
