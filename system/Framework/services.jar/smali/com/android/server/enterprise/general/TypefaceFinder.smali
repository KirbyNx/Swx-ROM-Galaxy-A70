.class public Lcom/android/server/enterprise/general/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# static fields
.field public static final DEFAULT_FONT_VALUE:Ljava/lang/String; = "default"

.field static final FONT_ASSET_DIR:Ljava/lang/String; = "xml"

.field private static final FONT_DIRECTORY:Ljava/lang/String; = "fonts/"

.field private static final FONT_EXTENSION:Ljava/lang/String; = ".ttf"

.field private static final FONT_SAMSUNGONE_DOWNLOAD:Ljava/lang/String; = "com.monotype.android.font.samsungoneuiregular"

.field private static final FONT_SAMSUNGONE_PRELOAD:Ljava/lang/String; = "com.monotype.android.font.samsungone"

.field private static final TAG:Ljava/lang/String; = "TypefaceFinder"


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/general/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    return-void
.end method

.method private deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v0, "sbf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 236
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1b

    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 239
    .end local v1    # "i":I
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;
    .registers 5
    .param p1, "typefaceFilename"    # Ljava/lang/String;

    .line 429
    const/4 v0, 0x0

    .line 434
    .local v0, "typeface":Lcom/android/server/enterprise/general/Typeface;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 438
    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    .line 440
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 442
    goto :goto_22

    .line 445
    :cond_1e
    const/4 v0, 0x0

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 450
    .end local v1    # "i":I
    :cond_22
    :goto_22
    return-object v0
.end method

.method public findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;
    .registers 7
    .param p1, "fontName"    # Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    .line 461
    .local v0, "typeface":Lcom/android/server/enterprise/general/Typeface;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findMatchingTypefaceByName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TypefaceFinder"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v3, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_50

    .line 468
    iget-object v3, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findMatchingTypeface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 472
    goto :goto_50

    .line 475
    :cond_4c
    const/4 v0, 0x0

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 480
    .end local v1    # "i":I
    :cond_50
    :goto_50
    return-object v0
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .registers 7
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "fontPackageName"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .line 123
    .local v0, "xmlfiles":[Ljava/lang/String;
    :try_start_1
    const-string/jumbo v1, "xml"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_32

    move-object v0, v1

    .line 131
    nop

    .line 137
    const/4 v1, 0x0

    .line 139
    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_30

    .line 143
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xml/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 145
    .local v2, "in":Ljava/io/InputStream;
    aget-object v3, v0, v1

    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/enterprise/general/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_2c

    .line 153
    .end local v2    # "in":Ljava/io/InputStream;
    goto :goto_2d

    .line 149
    :catch_2c
    move-exception v2

    .line 155
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 159
    :cond_30
    const/4 v2, 0x1

    return v2

    .line 127
    .end local v1    # "i":I
    :catch_32
    move-exception v1

    .line 129
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method public getMonospaceEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 6
    .param p1, "entries"    # Ljava/util/Vector;
    .param p2, "entryValues"    # Ljava/util/Vector;

    .line 387
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 397
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getMonospaceName()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 403
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v1    # "s":Ljava/lang/String;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 411
    .end local v0    # "i":I
    :cond_34
    return-void
.end method

.method public getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 27
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "entries"    # Ljava/util/Vector;
    .param p3, "entryValues"    # Ljava/util/Vector;
    .param p4, "fontPackageName"    # Ljava/util/Vector;

    .line 244
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, ".ttf"

    const-string v0, "default"

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v8, Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;

    invoke-direct {v8}, Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;-><init>()V

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 252
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_25
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1d4

    .line 255
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "s":Ljava/lang/String;
    if-eqz v9, :cond_1ca

    .line 261
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, "fontName":Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 263
    .local v11, "start_pos":I
    const/16 v0, 0x2e

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 265
    .local v0, "end_pos":I
    if-gez v0, :cond_5b

    .line 266
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    move v12, v0

    goto :goto_5c

    .line 265
    :cond_5b
    move v12, v0

    .line 269
    .end local v0    # "end_pos":I
    .local v12, "end_pos":I
    :goto_5c
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "loadTypeface":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 271
    .end local v0    # "loadTypeface":Ljava/lang/String;
    .local v13, "loadTypeface":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v14

    .line 274
    .local v14, "packageName":Ljava/lang/String;
    const/16 v0, 0x80

    :try_start_76
    invoke-virtual {v2, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 275
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 276
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v15

    .line 277
    .local v15, "res":Landroid/content/res/Resources;
    invoke-virtual {v15}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    move-object/from16 v17, v16

    .line 278
    .local v17, "fontAssetManager":Landroid/content/res/AssetManager;
    move-object/from16 v16, v0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v16, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fonts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    move-object/from16 v2, v17

    .end local v17    # "fontAssetManager":Landroid/content/res/AssetManager;
    .local v2, "fontAssetManager":Landroid/content/res/AssetManager;
    invoke-static {v2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 283
    .local v0, "newTypeface":Landroid/graphics/Typeface;
    move-object/from16 v17, v0

    .end local v0    # "newTypeface":Landroid/graphics/Typeface;
    .local v17, "newTypeface":Landroid/graphics/Typeface;
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_b2} :catch_1a9

    move-object/from16 v18, v2

    .end local v2    # "fontAssetManager":Landroid/content/res/AssetManager;
    .local v18, "fontAssetManager":Landroid/content/res/AssetManager;
    const-string v2, "com.monotype.android.font.samsungone"

    if-eqz v0, :cond_10e

    .line 284
    :try_start_b8
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c4} :catch_1a9

    move-object/from16 v19, v7

    :try_start_c6
    const-string v7, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 285
    goto/16 :goto_1cc

    .line 288
    :cond_d0
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.monotype.android.font.samsungoneuiregular"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "isExistSamsungOneFont":Z
    iget-object v7, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_eb
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_108

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/general/Typeface;

    .line 291
    .local v20, "typeFace":Lcom/android/server/enterprise/general/Typeface;
    move/from16 v21, v0

    .end local v0    # "isExistSamsungOneFont":Z
    .local v21, "isExistSamsungOneFont":Z
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 292
    const/4 v0, 0x1

    .line 293
    .end local v21    # "isExistSamsungOneFont":Z
    .restart local v0    # "isExistSamsungOneFont":Z
    goto :goto_10a

    .line 295
    .end local v0    # "isExistSamsungOneFont":Z
    .end local v20    # "typeFace":Lcom/android/server/enterprise/general/Typeface;
    .restart local v21    # "isExistSamsungOneFont":Z
    :cond_105
    move/from16 v0, v21

    goto :goto_eb

    .line 290
    .end local v21    # "isExistSamsungOneFont":Z
    .restart local v0    # "isExistSamsungOneFont":Z
    :cond_108
    move/from16 v21, v0

    .line 296
    :goto_10a
    if-eqz v0, :cond_110

    .line 297
    goto/16 :goto_1cc

    .line 283
    .end local v0    # "isExistSamsungOneFont":Z
    :cond_10e
    move-object/from16 v19, v7

    .line 301
    :cond_110
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.monotype.android.font.foundation"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_14c

    .line 302
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/general/TypefaceFinder;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 303
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 304
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 305
    goto/16 :goto_1cc

    .line 307
    :cond_14c
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 308
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/general/TypefaceFinder;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 309
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 310
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 311
    goto :goto_1cc

    .line 313
    :cond_184
    invoke-virtual {v3, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_1a5} :catch_1a7

    .line 321
    nop

    .end local v16    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "newTypeface":Landroid/graphics/Typeface;
    .end local v18    # "fontAssetManager":Landroid/content/res/AssetManager;
    goto :goto_1cc

    .line 316
    .end local v15    # "res":Landroid/content/res/Resources;
    :catch_1a7
    move-exception v0

    goto :goto_1ac

    :catch_1a9
    move-exception v0

    move-object/from16 v19, v7

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    :goto_1ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSansEntries - Typeface.createFromAsset caused an exception for - fonts/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "TypefaceFinder"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1cc

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "fontName":Ljava/lang/String;
    .end local v11    # "start_pos":I
    .end local v12    # "end_pos":I
    .end local v13    # "loadTypeface":Ljava/lang/String;
    .end local v14    # "packageName":Ljava/lang/String;
    :cond_1ca
    move-object/from16 v19, v7

    .line 252
    .end local v9    # "s":Ljava/lang/String;
    :goto_1cc
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    move-object/from16 v7, v19

    goto/16 :goto_25

    .line 327
    .end local v8    # "i":I
    :cond_1d4
    return-void
.end method

.method public getSerifEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 6
    .param p1, "entries"    # Ljava/util/Vector;
    .param p2, "entryValues"    # Ljava/util/Vector;

    .line 345
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 355
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getSerifName()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 361
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v1    # "s":Ljava/lang/String;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 369
    .end local v0    # "i":I
    :cond_34
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 10
    .param p1, "xmlFilename"    # Ljava/lang/String;
    .param p2, "inStream"    # Ljava/io/InputStream;
    .param p3, "fontPackageName"    # Ljava/lang/String;

    .line 177
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 178
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 179
    .local v1, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 180
    .local v2, "xr":Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/android/server/enterprise/general/TypefaceParser;

    invoke-direct {v3}, Lcom/android/server/enterprise/general/TypefaceParser;-><init>()V

    .line 181
    .local v3, "fontParser":Lcom/android/server/enterprise/general/TypefaceParser;
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 182
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 183
    invoke-virtual {v3}, Lcom/android/server/enterprise/general/TypefaceParser;->getParsedData()Lcom/android/server/enterprise/general/Typeface;

    move-result-object v4

    .line 184
    .local v4, "newTypeface":Lcom/android/server/enterprise/general/Typeface;
    const-string v5, "com.monotype.android.font.samsungone"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 185
    const-string v5, "SamsungOneUI-Regular.xml"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/general/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    goto :goto_31

    .line 187
    :cond_2e
    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/general/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    .line 189
    :goto_31
    invoke-virtual {v4, p3}, Lcom/android/server/enterprise/general/Typeface;->setFontPackageName(Ljava/lang/String;)V

    .line 190
    iget-object v5, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3b

    .line 198
    nop

    .end local v0    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v1    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v2    # "xr":Lorg/xml/sax/XMLReader;
    .end local v3    # "fontParser":Lcom/android/server/enterprise/general/TypefaceParser;
    .end local v4    # "newTypeface":Lcom/android/server/enterprise/general/Typeface;
    goto :goto_3c

    .line 194
    :catch_3b
    move-exception v0

    .line 202
    :goto_3c
    return-void
.end method
