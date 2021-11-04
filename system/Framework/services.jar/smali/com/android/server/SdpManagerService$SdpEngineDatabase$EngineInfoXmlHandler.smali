.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineInfoXmlHandler"
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_ALIAS_IDX:I = 0x0

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_FLAGS_IDX:I = 0x4

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_ID_IDX:I = 0x2

.field private static final ATTR_IS_MIGRATING:Ljava/lang/String; = "isMigrating"

.field private static final ATTR_IS_MIGRATING_IDX:I = 0x6

.field private static final ATTR_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final ATTR_PKG_NAME_IDX:I = 0x1

.field private static final ATTR_USERID:Ljava/lang/String; = "userid"

.field private static final ATTR_USERID_IDX:I = 0x3

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VERSION_IDX:I = 0x5

.field private static final ENGINE_XML:Ljava/lang/String; = "SdpUser"

.field private static final TAG_USER:Ljava/lang/String; = "user"


# instance fields
.field final synthetic this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V
    .registers 2

    .line 2253
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p2, "x1"    # Lcom/android/server/SdpManagerService$1;

    .line 2253
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
    .param p1, "x1"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 2253
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->updateEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
    .param p1, "x1"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 2253
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
    .param p1, "x1"    # I

    .line 2253
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 32
    .param p1, "id"    # I

    .line 2346
    const/4 v0, 0x0

    .line 2347
    .local v0, "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    const/4 v1, 0x0

    .line 2348
    .local v1, "engineInfoFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 2350
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x3

    move-object/from16 v29, v1

    move-object v1, v0

    move v0, v3

    move-object v3, v2

    move-object/from16 v2, v29

    .line 2351
    .local v0, "retry":I
    .local v1, "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .local v2, "engineInfoFile":Landroid/util/AtomicFile;
    .local v3, "fis":Ljava/io/FileInputStream;
    :goto_b
    add-int/lit8 v4, v0, -0x1

    .end local v0    # "retry":I
    .local v4, "retry":I
    if-lez v0, :cond_1e9

    .line 2353
    const/4 v5, 0x0

    .line 2355
    .local v5, "noError":Z
    :try_start_10
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Landroid/util/AtomicFile;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_1b3
    .catchall {:try_start_10 .. :try_end_14} :catchall_1ae

    move-object v2, v0

    .line 2356
    :try_start_15
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v3, v0

    .line 2358
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v6, v0

    .line 2359
    .local v6, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    .line 2360
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v0, "UTF-8"

    invoke-interface {v7, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2362
    # getter for: Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2600()Ljava/lang/String;

    move-result-object v0

    .line 2363
    .local v0, "attrAlias":Ljava/lang/String;
    # getter for: Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2600()Ljava/lang/String;

    move-result-object v8

    .line 2364
    .local v8, "attrPkgName":Ljava/lang/String;
    const/4 v9, -0x1

    .line 2365
    .local v9, "attrId":I
    const/4 v10, -0x1

    .line 2366
    .local v10, "attrUserId":I
    const/4 v11, -0x1

    .line 2367
    .local v11, "attrFlags":I
    const/4 v12, -0x1

    .line 2368
    .local v12, "attrVersion":I
    const/4 v13, 0x0

    .line 2370
    .local v13, "attrIsMigrating":Z
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3a} :catch_1aa
    .catchall {:try_start_15 .. :try_end_3a} :catchall_1a3

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move-object v9, v8

    move v8, v5

    move-object v5, v1

    move-object v1, v0

    .line 2371
    .end local v0    # "attrAlias":Ljava/lang/String;
    .local v1, "attrAlias":Ljava/lang/String;
    .local v5, "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .local v8, "noError":Z
    .local v9, "attrPkgName":Ljava/lang/String;
    .local v10, "attrId":I
    .local v11, "attrUserId":I
    .local v12, "attrFlags":I
    .local v13, "attrVersion":I
    .local v14, "attrIsMigrating":Z
    .local v15, "eventType":I
    :goto_44
    const/4 v0, 0x1

    if-eq v15, v0, :cond_196

    .line 2372
    const/4 v0, 0x2

    if-eq v15, v0, :cond_50

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto/16 :goto_16c

    .line 2376
    :cond_50
    :try_start_50
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 2377
    .local v18, "tag":Ljava/lang/String;
    const-string/jumbo v0, "user"

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    .end local v18    # "tag":Ljava/lang/String;
    .local v1, "tag":Ljava/lang/String;
    .local v19, "attrAlias":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 2378
    const-string v0, "alias"
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_65} :catch_190
    .catchall {:try_start_50 .. :try_end_65} :catchall_187

    move-object/from16 v18, v1

    .end local v1    # "tag":Ljava/lang/String;
    .restart local v18    # "tag":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v20, v2

    .end local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    .local v20, "engineInfoFile":Landroid/util/AtomicFile;
    :try_start_6a
    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    const-string/jumbo v0, "pkgName"

    .line 2379
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    const-string/jumbo v0, "id"

    .line 2380
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    const-string/jumbo v0, "userid"

    .line 2381
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    const-string v0, "flags"

    .line 2382
    const/4 v2, 0x4

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    const-string/jumbo v0, "version"

    .line 2383
    const/4 v1, 0x5

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    const-string/jumbo v0, "isMigrating"

    .line 2384
    const/4 v2, 0x6

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 2386
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 2387
    .end local v19    # "attrAlias":Ljava/lang/String;
    .local v1, "attrAlias":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v9, v16

    .line 2388
    nop

    .line 2389
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2388
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v10, v0

    .line 2390
    nop

    .line 2391
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2390
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v11, v0

    .line 2392
    nop

    .line 2393
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v12, v0

    .line 2394
    nop

    .line 2395
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v13, v0

    .line 2396
    nop

    .line 2397
    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2396
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v14, v0

    .line 2398
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12d

    if-ltz v10, :cond_12d

    if-ltz v11, :cond_12d

    if-ltz v12, :cond_12d

    if-ltz v13, :cond_12d

    const/4 v0, 0x1

    goto :goto_12e

    :cond_12d
    const/4 v0, 0x0

    :goto_12e
    move v8, v0

    .end local v8    # "noError":Z
    .local v0, "noError":Z
    goto :goto_132

    .line 2402
    .end local v0    # "noError":Z
    .end local v1    # "attrAlias":Ljava/lang/String;
    .restart local v8    # "noError":Z
    .restart local v19    # "attrAlias":Ljava/lang/String;
    :cond_130
    move-object/from16 v1, v19

    .end local v19    # "attrAlias":Ljava/lang/String;
    .restart local v1    # "attrAlias":Ljava/lang/String;
    :goto_132
    if-eqz v8, :cond_160

    .line 2403
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/16 v25, 0x1

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-direct/range {v21 .. v28}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_149} :catch_181
    .catchall {:try_start_6a .. :try_end_149} :catchall_177

    move-object v2, v0

    .line 2407
    .end local v5    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .local v2, "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_start_14a
    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14d} :catch_159
    .catchall {:try_start_14a .. :try_end_14d} :catchall_14f

    move-object v5, v2

    goto :goto_16e

    .line 2428
    .end local v1    # "attrAlias":Ljava/lang/String;
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "attrPkgName":Ljava/lang/String;
    .end local v10    # "attrId":I
    .end local v11    # "attrUserId":I
    .end local v12    # "attrFlags":I
    .end local v13    # "attrVersion":I
    .end local v14    # "attrIsMigrating":Z
    .end local v15    # "eventType":I
    .end local v18    # "tag":Ljava/lang/String;
    :catchall_14f
    move-exception v0

    move-object/from16 v6, p0

    move-object v7, v0

    move-object v1, v2

    move v5, v8

    move-object/from16 v2, v20

    goto/16 :goto_1e0

    .line 2421
    :catch_159
    move-exception v0

    move-object v1, v2

    move v5, v8

    move-object/from16 v2, v20

    goto/16 :goto_1b4

    .line 2409
    .end local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v1    # "attrAlias":Ljava/lang/String;
    .restart local v5    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "attrPkgName":Ljava/lang/String;
    .restart local v10    # "attrId":I
    .restart local v11    # "attrUserId":I
    .restart local v12    # "attrFlags":I
    .restart local v13    # "attrVersion":I
    .restart local v14    # "attrIsMigrating":Z
    .restart local v15    # "eventType":I
    .restart local v18    # "tag":Ljava/lang/String;
    :cond_160
    :try_start_160
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Suspicious of damaged file..."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "retry":I
    .end local v5    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .end local v8    # "noError":Z
    .end local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
    .end local p1    # "id":I
    throw v0

    .line 2377
    .end local v18    # "tag":Ljava/lang/String;
    .local v1, "tag":Ljava/lang/String;
    .local v2, "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "retry":I
    .restart local v5    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v8    # "noError":Z
    .restart local v19    # "attrAlias":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
    .restart local p1    # "id":I
    :cond_168
    move-object/from16 v18, v1

    move-object/from16 v20, v2

    .line 2418
    .end local v19    # "attrAlias":Ljava/lang/String;
    .local v1, "attrAlias":Ljava/lang/String;
    :goto_16c
    move-object/from16 v1, v19

    .end local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    :goto_16e
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_172} :catch_181
    .catchall {:try_start_160 .. :try_end_172} :catchall_177

    move v15, v0

    move-object/from16 v2, v20

    goto/16 :goto_44

    .line 2428
    .end local v1    # "attrAlias":Ljava/lang/String;
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "attrPkgName":Ljava/lang/String;
    .end local v10    # "attrId":I
    .end local v11    # "attrUserId":I
    .end local v12    # "attrFlags":I
    .end local v13    # "attrVersion":I
    .end local v14    # "attrIsMigrating":Z
    .end local v15    # "eventType":I
    :catchall_177
    move-exception v0

    move-object/from16 v6, p0

    move-object v7, v0

    move-object v1, v5

    move v5, v8

    move-object/from16 v2, v20

    goto/16 :goto_1e0

    .line 2421
    :catch_181
    move-exception v0

    move-object v1, v5

    move v5, v8

    move-object/from16 v2, v20

    goto :goto_1b4

    .line 2428
    .end local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    :catchall_187
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v6, p0

    move-object v7, v0

    move-object v1, v5

    move v5, v8

    .end local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    goto :goto_1e0

    .line 2421
    .end local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    :catch_190
    move-exception v0

    move-object/from16 v20, v2

    move-object v1, v5

    move v5, v8

    .end local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    goto :goto_1b4

    .line 2420
    .end local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v1    # "attrAlias":Ljava/lang/String;
    .restart local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "attrPkgName":Ljava/lang/String;
    .restart local v10    # "attrId":I
    .restart local v11    # "attrUserId":I
    .restart local v12    # "attrFlags":I
    .restart local v13    # "attrVersion":I
    .restart local v14    # "attrIsMigrating":Z
    .restart local v15    # "eventType":I
    :cond_196
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 2428
    .end local v1    # "attrAlias":Ljava/lang/String;
    .end local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v19    # "attrAlias":Ljava/lang/String;
    .restart local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    if-eqz v3, :cond_1a2

    .line 2430
    :try_start_19c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_19f} :catch_1a0

    .line 2431
    :goto_19f
    goto :goto_1a2

    :catch_1a0
    move-exception v0

    goto :goto_19f

    .line 2420
    :cond_1a2
    :goto_1a2
    return-object v5

    .line 2428
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "noError":Z
    .end local v9    # "attrPkgName":Ljava/lang/String;
    .end local v10    # "attrId":I
    .end local v11    # "attrUserId":I
    .end local v12    # "attrFlags":I
    .end local v13    # "attrVersion":I
    .end local v14    # "attrIsMigrating":Z
    .end local v15    # "eventType":I
    .end local v19    # "attrAlias":Ljava/lang/String;
    .end local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    .local v1, "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    .local v5, "noError":Z
    :catchall_1a3
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v6, p0

    move-object v7, v0

    .end local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    goto :goto_1e0

    .line 2421
    .end local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    :catch_1aa
    move-exception v0

    move-object/from16 v20, v2

    .end local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    goto :goto_1b4

    .line 2428
    .end local v20    # "engineInfoFile":Landroid/util/AtomicFile;
    .restart local v2    # "engineInfoFile":Landroid/util/AtomicFile;
    :catchall_1ae
    move-exception v0

    move-object/from16 v6, p0

    :goto_1b1
    move-object v7, v0

    goto :goto_1e0

    .line 2421
    :catch_1b3
    move-exception v0

    .line 2422
    .local v0, "e":Ljava/lang/Exception;
    :goto_1b4
    move-object/from16 v6, p0

    :try_start_1b6
    iget-object v7, v6, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v7, v7, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string v8, "SdpManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EngineInfoXmlHandler :: Failed to get engine info... "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v7, v8, v0, v9}, Lcom/android/server/SdpManagerService;->access$2500(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1d0
    .catchall {:try_start_1b6 .. :try_end_1d0} :catchall_1de

    .line 2424
    if-eqz v2, :cond_1d3

    .line 2425
    const/4 v2, 0x0

    .line 2428
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d3
    if-eqz v3, :cond_1db

    .line 2430
    :try_start_1d5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1d8} :catch_1d9

    .line 2431
    :goto_1d8
    goto :goto_1db

    :catch_1d9
    move-exception v0

    goto :goto_1d8

    .line 2434
    .end local v5    # "noError":Z
    :cond_1db
    :goto_1db
    move v0, v4

    goto/16 :goto_b

    .line 2428
    .restart local v5    # "noError":Z
    :catchall_1de
    move-exception v0

    goto :goto_1b1

    :goto_1e0
    if-eqz v3, :cond_1e8

    .line 2430
    :try_start_1e2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_1e5} :catch_1e6

    .line 2431
    :goto_1e5
    goto :goto_1e8

    :catch_1e6
    move-exception v0

    goto :goto_1e5

    .line 2433
    :cond_1e8
    :goto_1e8
    throw v7

    .line 2435
    .end local v5    # "noError":Z
    :cond_1e9
    move-object/from16 v6, p0

    const/4 v0, 0x0

    return-object v0
.end method

.method private getEngineInfoXmlFile(I)Landroid/util/AtomicFile;
    .registers 8
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdpUser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2276
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2277
    .local v1, "baseDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_5e

    .line 2278
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t make directory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService"

    invoke-static {v3, v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2281
    :cond_5e
    :goto_5e
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2282
    .local v2, "targetFile":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 5
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 2440
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 2441
    .local v0, "engineInfoFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2445
    .end local v0    # "engineInfoFile":Landroid/util/AtomicFile;
    goto :goto_2a

    .line 2442
    :catch_c
    move-exception v0

    .line 2443
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t remove engine info file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2a
    return-void
.end method

.method private updateEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 13
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 2286
    const-string/jumbo v0, "user"

    const/4 v1, 0x0

    .line 2287
    .local v1, "engineInfoFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 2288
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 2289
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    .line 2292
    .local v4, "engineId":I
    const/16 v5, -0x63

    :try_start_c
    invoke-direct {p0, v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Landroid/util/AtomicFile;

    move-result-object v6
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_ce

    move-object v1, v6

    .line 2296
    nop

    .line 2298
    const/4 v6, 0x1

    .line 2300
    .local v6, "noError":Z
    :try_start_13
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    move-object v2, v7

    .line 2301
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v7

    .line 2303
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2304
    .local v7, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v8, "UTF-8"

    invoke-interface {v7, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2305
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2306
    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2310
    invoke-interface {v7, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2312
    const-string v8, "alias"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2313
    const-string/jumbo v8, "pkgName"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2314
    const-string/jumbo v8, "id"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2315
    const-string/jumbo v8, "userid"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2316
    const-string v8, "flags"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2317
    const-string/jumbo v8, "version"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2318
    const-string/jumbo v8, "isMigrating"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMigrating()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2322
    invoke-interface {v7, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2323
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2324
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_9b} :catch_a4
    .catchall {:try_start_13 .. :try_end_9b} :catchall_a2

    .line 2336
    .end local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    nop

    .line 2337
    :try_start_9c
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    .line 2339
    :cond_9f
    :goto_9f
    goto :goto_bf

    :catch_a0
    move-exception v0

    .line 2340
    goto :goto_bf

    .line 2335
    :catchall_a2
    move-exception v0

    goto :goto_c5

    .line 2325
    :catch_a4
    move-exception v0

    .line 2326
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a5
    iget-object v7, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v7, v7, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string v8, "SdpManagerService"

    const-string v9, "Failed to update engine info..."

    # invokes: Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v7, v8, v0, v9}, Lcom/android/server/SdpManagerService;->access$2500(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2328
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2330
    if-eqz v2, :cond_b8

    .line 2331
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_b8
    .catchall {:try_start_a5 .. :try_end_b8} :catchall_a2

    .line 2333
    :cond_b8
    const/4 v6, 0x0

    .line 2336
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_9f

    .line 2337
    :try_start_bb
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_a0

    goto :goto_9f

    .line 2341
    :goto_bf
    if-eqz v6, :cond_c3

    .line 2342
    const/4 v5, 0x0

    goto :goto_c4

    :cond_c3
    nop

    .line 2341
    :goto_c4
    return v5

    .line 2336
    :goto_c5
    if-eqz v3, :cond_cc

    .line 2337
    :try_start_c7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_cc

    .line 2339
    :catch_cb
    move-exception v5

    :cond_cc
    :goto_cc
    nop

    .line 2340
    throw v0

    .line 2293
    .end local v6    # "noError":Z
    :catch_ce
    move-exception v0

    .line 2294
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2295
    return v5
.end method
