.class final Lcom/android/server/om/IdmapManager;
.super Ljava/lang/Object;
.source "IdmapManager.java"


# static fields
.field private static final VENDOR_IS_Q_OR_LATER:Z


# instance fields
.field private final mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

.field private final mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 59
    const-string/jumbo v0, "ro.vndk.version"

    const-string v1, "29"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "value":Ljava/lang/String;
    :try_start_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_15

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 66
    .local v1, "isQOrLater":Z
    :goto_14
    goto :goto_18

    .line 63
    .end local v1    # "isQOrLater":Z
    :catch_15
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    move v1, v2

    .line 68
    .local v1, "isQOrLater":Z
    :goto_18
    sput-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    .line 69
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "isQOrLater":Z
    return-void
.end method

.method constructor <init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/OverlayableInfoCallback;)V
    .registers 3
    .param p1, "idmapDaemon"    # Lcom/android/server/om/IdmapDaemon;
    .param p2, "verifyCallback"    # Lcom/android/server/om/OverlayableInfoCallback;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    .line 76
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 77
    return-void
.end method

.method private calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I
    .registers 9
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .line 240
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 241
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    .line 244
    .local v1, "fulfilledPolicies":I
    iget-object v2, p0, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p3}, Lcom/android/server/om/OverlayableInfoCallback;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 246
    or-int/lit8 v1, v1, 0x10

    .line 250
    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/IdmapManager;->matchesActorSignature(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 251
    or-int/lit16 v1, v1, 0x80

    .line 255
    :cond_19
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 256
    or-int/lit8 v2, v1, 0x4

    return v2

    .line 260
    :cond_22
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 261
    or-int/lit8 v2, v1, 0x8

    return v2

    .line 265
    :cond_2b
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOdm()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 266
    or-int/lit8 v2, v1, 0x20

    return v2

    .line 270
    :cond_34
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 271
    or-int/lit8 v2, v1, 0x40

    return v2

    .line 276
    :cond_3d
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_4b

    .line 280
    :cond_4a
    return v1

    .line 277
    :cond_4b
    :goto_4b
    or-int/lit8 v2, v1, 0x2

    return v2
.end method

.method private checkForResourceMapping(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .registers 7
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "targetPath"    # Ljava/lang/String;

    .line 307
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_46

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_46

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 309
    const-string/jumbo v1, "resource-map"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 311
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/overlays/remaps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v2, "/"

    const-string v3, "."

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 317
    :cond_43
    invoke-static {p1}, Lcom/android/server/om/ResourceMapParser;->parseResourceMap(Landroid/content/pm/PackageInfo;)V

    .line 319
    .end local v0    # "f":Ljava/io/File;
    :cond_46
    return-void
.end method

.method private enforceOverlayable(Landroid/content/pm/PackageInfo;)Z
    .registers 6
    .param p1, "overlayPackage"    # Landroid/content/pm/PackageInfo;

    .line 215
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 216
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x1

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_10

    invoke-static {p1}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 218
    return v2

    .line 221
    :cond_10
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 225
    sget-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    return v1

    .line 230
    :cond_19
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v1

    if-nez v1, :cond_30

    iget-boolean v1, p1, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-nez v1, :cond_30

    .line 232
    invoke-static {p1}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    .line 230
    :goto_31
    return v2
.end method

.method private matchesActorSignature(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    .registers 9
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .line 285
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 286
    .local v0, "targetOverlayableName":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 288
    :try_start_4
    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p3}, Lcom/android/server/om/OverlayableInfoCallback;->getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;

    move-result-object v1

    .line 290
    .local v1, "overlayableInfo":Landroid/content/om/OverlayableInfo;
    if-eqz v1, :cond_2e

    iget-object v2, v1, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 291
    iget-object v2, v1, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    .line 292
    invoke-interface {v3}, Lcom/android/server/om/OverlayableInfoCallback;->getNamedActors()Ljava/util/Map;

    move-result-object v3

    .line 291
    invoke-static {v2, v3}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 293
    .local v2, "actorPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2, v4, p3}, Lcom/android/server/om/OverlayableInfoCallback;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2a} :catch_2f

    if-eqz v3, :cond_2e

    .line 295
    const/4 v3, 0x1

    return v3

    .line 299
    .end local v1    # "overlayableInfo":Landroid/content/om/OverlayableInfo;
    .end local v2    # "actorPackageName":Ljava/lang/String;
    :cond_2e
    goto :goto_30

    .line 298
    :catch_2f
    move-exception v1

    .line 302
    :cond_30
    :goto_30
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    .registers 38
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .line 87
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v15, p3

    const-string v14, "@"

    const-string v13, "failed to get info for sibling package "

    const-string v11, ": "

    const-string v10, "failed to generate idmap for "

    const-string v12, ".map"

    const-string v9, "."

    const-string v6, "/"

    const-string v5, "/data/overlays/remaps/"

    const-string v4, "OverlayManager"

    const/16 v16, 0x0

    if-eqz v2, :cond_97d

    if-eqz v3, :cond_97d

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_97d

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_97d

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 90
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97b

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 91
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    move-object v5, v4

    goto/16 :goto_97e

    .line 99
    :cond_3b
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v8, " and "

    if-eqz v0, :cond_5f

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create idmap for "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_5f
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "targetPath":Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v11

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, "overlayPath":Ljava/lang/String;
    invoke-direct {v1, v2, v7}, Lcom/android/server/om/IdmapManager;->checkForResourceMapping(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 112
    const/16 v18, 0x1

    :try_start_72
    invoke-direct/range {p0 .. p3}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I

    move-result v0
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_76} :catch_5c7
    .catchall {:try_start_72 .. :try_end_76} :catchall_5aa

    move-object/from16 v19, v7

    .end local v7    # "targetPath":Ljava/lang/String;
    .local v19, "targetPath":Ljava/lang/String;
    move v7, v0

    .line 113
    .local v7, "policies":I
    :try_start_79
    invoke-direct {v1, v3}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Landroid/content/pm/PackageInfo;)Z

    move-result v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7d} :catch_59b
    .catchall {:try_start_79 .. :try_end_7d} :catchall_585

    move-object/from16 v20, v8

    move v8, v0

    .line 114
    .local v8, "enforce":Z
    :try_start_80
    iget-boolean v0, v3, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_82} :catch_578
    .catchall {:try_start_80 .. :try_end_82} :catchall_567

    if-nez v0, :cond_333

    .line 115
    :try_start_84
    invoke-static/range {p2 .. p2}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_2f5

    iget-object v0, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8c} :catch_31e
    .catchall {:try_start_84 .. :try_end_8c} :catchall_309

    .line 116
    move-object/from16 v21, v4

    move-object v4, v0

    move-object/from16 v22, v10

    move-object v10, v5

    move-object/from16 v5, v19

    move-object/from16 v23, v13

    move-object v13, v6

    move-object v6, v11

    move-object v3, v9

    move/from16 v9, p3

    :try_start_9b
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9f} :catch_2df
    .catchall {:try_start_9b .. :try_end_9f} :catchall_2c9

    if-eqz v0, :cond_2b0

    .line 117
    nop

    .line 128
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    .end local v19    # "targetPath":Ljava/lang/String;
    .local v6, "targetPath":Ljava/lang/String;
    invoke-virtual {v6, v13, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 135
    .end local v0    # "f":Ljava/io/File;
    :cond_c8
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a8

    .line 138
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 140
    .local v4, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 141
    .local v5, "siblingTargetPkg":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    invoke-interface {v9, v5, v15}, Lcom/android/server/om/OverlayableInfoCallback;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 143
    .local v9, "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_24e

    move-object/from16 v19, v0

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_116

    move-object/from16 v24, v4

    move-object/from16 v27, v6

    move/from16 v26, v8

    move-object/from16 v25, v9

    move-object v8, v10

    move-object v6, v11

    move-object v15, v12

    move-object v2, v13

    move-object/from16 v1, v17

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move-object v4, v3

    move-object/from16 v32, v22

    move/from16 v22, v7

    move-object/from16 v7, v32

    goto/16 :goto_269

    .line 147
    :cond_116
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 148
    move-object/from16 v24, v3

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "siblingBaseCodePath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 150
    .local v19, "idmapPath":Ljava/lang/String;
    invoke-direct {v1, v9, v3}, Lcom/android/server/om/IdmapManager;->checkForResourceMapping(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 152
    move-object/from16 v14, p2

    move-object/from16 v32, v24

    move-object/from16 v24, v4

    move-object/from16 v4, v32

    .end local v4    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_13b
    invoke-direct {v1, v9, v14, v15}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I

    move-result v0
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13f} :catch_1c9
    .catchall {:try_start_13b .. :try_end_13f} :catchall_1bb

    move-object v15, v12

    move v12, v0

    .line 153
    .local v12, "policies":I
    :try_start_141
    invoke-direct {v1, v14}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Landroid/content/pm/PackageInfo;)Z

    move-result v0
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_145} :catch_1b1
    .catchall {:try_start_141 .. :try_end_145} :catchall_1a5

    move-object v2, v13

    move v13, v0

    .line 154
    .local v13, "enforce":Z
    :try_start_147
    iget-object v0, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_149} :catch_19b
    .catchall {:try_start_147 .. :try_end_149} :catchall_18f

    move-object/from16 v25, v9

    .end local v9    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .local v25, "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    move-object v9, v0

    move/from16 v26, v8

    move-object v8, v10

    move-object/from16 v32, v22

    move/from16 v22, v7

    move-object/from16 v7, v32

    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    .local v22, "policies":I
    .local v26, "enforce":Z
    move-object v10, v3

    move-object/from16 v27, v6

    move-object v6, v11

    move-object/from16 v1, v17

    .end local v11    # "overlayPath":Ljava/lang/String;
    .local v6, "overlayPath":Ljava/lang/String;
    .local v27, "targetPath":Ljava/lang/String;
    move-object/from16 v11, v19

    move/from16 v14, p3

    :try_start_15f
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_163} :catch_18c
    .catchall {:try_start_15f .. :try_end_163} :catchall_228

    if-eqz v0, :cond_167

    move/from16 v16, v18

    .line 160
    :cond_167
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18b

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 154
    .end local v0    # "f":Ljava/io/File;
    :cond_18b
    return v16

    .line 155
    .end local v12    # "policies":I
    .end local v13    # "enforce":Z
    :catch_18c
    move-exception v0

    goto/16 :goto_1dc

    .line 160
    .end local v22    # "policies":I
    .end local v25    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v26    # "enforce":Z
    .end local v27    # "targetPath":Ljava/lang/String;
    .local v6, "targetPath":Ljava/lang/String;
    .restart local v7    # "policies":I
    .restart local v8    # "enforce":Z
    .restart local v9    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    :catchall_18f
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v22, v7

    move/from16 v26, v8

    move-object/from16 v25, v9

    move-object v8, v10

    move-object v6, v11

    goto :goto_1c8

    .line 155
    :catch_19b
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v8

    move-object/from16 v25, v9

    move-object v8, v10

    move-object v6, v11

    goto :goto_1d4

    .line 160
    :catchall_1a5
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v22, v7

    move/from16 v26, v8

    move-object/from16 v25, v9

    move-object v8, v10

    move-object v6, v11

    goto :goto_1c7

    .line 155
    :catch_1b1
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v8

    move-object/from16 v25, v9

    move-object v8, v10

    move-object v6, v11

    goto :goto_1d3

    .line 160
    :catchall_1bb
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v22, v7

    move/from16 v26, v8

    move-object/from16 v25, v9

    move-object v8, v10

    move-object v6, v11

    move-object v15, v12

    :goto_1c7
    move-object v2, v13

    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    .end local v9    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "overlayPath":Ljava/lang/String;
    .local v6, "overlayPath":Ljava/lang/String;
    .restart local v22    # "policies":I
    .restart local v25    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v26    # "enforce":Z
    .restart local v27    # "targetPath":Ljava/lang/String;
    :goto_1c8
    goto :goto_229

    .line 155
    .end local v22    # "policies":I
    .end local v25    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v26    # "enforce":Z
    .end local v27    # "targetPath":Ljava/lang/String;
    .local v6, "targetPath":Ljava/lang/String;
    .restart local v7    # "policies":I
    .restart local v8    # "enforce":Z
    .restart local v9    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    :catch_1c9
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v8

    move-object/from16 v25, v9

    move-object v8, v10

    move-object v6, v11

    move-object v15, v12

    :goto_1d3
    move-object v2, v13

    :goto_1d4
    move-object/from16 v1, v17

    move-object/from16 v32, v22

    move/from16 v22, v7

    move-object/from16 v7, v32

    .line 156
    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    .end local v9    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "overlayPath":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .local v6, "overlayPath":Ljava/lang/String;
    .restart local v22    # "policies":I
    .restart local v25    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v26    # "enforce":Z
    .restart local v27    # "targetPath":Ljava/lang/String;
    :goto_1dc
    :try_start_1dc
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    move-object/from16 v12, v21

    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_202
    .catchall {:try_start_1dc .. :try_end_202} :catchall_228

    .line 158
    nop

    .line 160
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_227

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    .end local v1    # "f":Ljava/io/File;
    :cond_227
    return v16

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_228
    move-exception v0

    :goto_229
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_24d

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 167
    .end local v1    # "f":Ljava/io/File;
    :cond_24d
    throw v0

    .line 143
    .end local v3    # "siblingBaseCodePath":Ljava/lang/String;
    .end local v19    # "idmapPath":Ljava/lang/String;
    .end local v22    # "policies":I
    .end local v24    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v26    # "enforce":Z
    .end local v27    # "targetPath":Ljava/lang/String;
    .restart local v4    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "targetPath":Ljava/lang/String;
    .restart local v7    # "policies":I
    .restart local v8    # "enforce":Z
    .restart local v9    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    :cond_24e
    move-object/from16 v19, v0

    move-object/from16 v24, v4

    move-object/from16 v27, v6

    move/from16 v26, v8

    move-object/from16 v25, v9

    move-object v8, v10

    move-object v6, v11

    move-object v15, v12

    move-object v2, v13

    move-object/from16 v1, v17

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move-object v4, v3

    move-object/from16 v32, v22

    move/from16 v22, v7

    move-object/from16 v7, v32

    .line 144
    .end local v4    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    .end local v9    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "overlayPath":Ljava/lang/String;
    .local v6, "overlayPath":Ljava/lang/String;
    .restart local v22    # "policies":I
    .restart local v24    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v26    # "enforce":Z
    .restart local v27    # "targetPath":Ljava/lang/String;
    :goto_269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object/from16 v17, v1

    move-object v3, v4

    move-object v11, v6

    move-object v10, v8

    move-object/from16 v21, v12

    move-object/from16 v20, v13

    move-object v12, v15

    move-object/from16 v0, v19

    move-object/from16 v4, v24

    move/from16 v8, v26

    move-object/from16 v6, v27

    move-object/from16 v1, p0

    move/from16 v15, p3

    move-object v13, v2

    move-object/from16 v2, p1

    move/from16 v32, v22

    move-object/from16 v22, v7

    move/from16 v7, v32

    goto/16 :goto_e1

    .line 140
    .end local v5    # "siblingTargetPkg":Ljava/lang/String;
    .end local v22    # "policies":I
    .end local v24    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v26    # "enforce":Z
    .end local v27    # "targetPath":Ljava/lang/String;
    .restart local v4    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "targetPath":Ljava/lang/String;
    .restart local v7    # "policies":I
    .restart local v8    # "enforce":Z
    .restart local v11    # "overlayPath":Ljava/lang/String;
    :cond_29e
    move-object/from16 v24, v4

    move-object/from16 v27, v6

    move/from16 v22, v7

    move/from16 v26, v8

    move-object v6, v11

    .end local v4    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    .end local v11    # "overlayPath":Ljava/lang/String;
    .local v6, "overlayPath":Ljava/lang/String;
    .restart local v22    # "policies":I
    .restart local v24    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "enforce":Z
    .restart local v27    # "targetPath":Ljava/lang/String;
    goto :goto_2af

    .line 136
    .end local v22    # "policies":I
    .end local v24    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "enforce":Z
    .end local v27    # "targetPath":Ljava/lang/String;
    .local v6, "targetPath":Ljava/lang/String;
    .restart local v7    # "policies":I
    .restart local v8    # "enforce":Z
    .restart local v11    # "overlayPath":Ljava/lang/String;
    :cond_2a8
    move-object/from16 v27, v6

    move/from16 v22, v7

    move/from16 v26, v8

    move-object v6, v11

    .line 117
    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    .end local v11    # "overlayPath":Ljava/lang/String;
    .local v6, "overlayPath":Ljava/lang/String;
    .restart local v22    # "policies":I
    .restart local v26    # "enforce":Z
    .restart local v27    # "targetPath":Ljava/lang/String;
    :goto_2af
    return v16

    .line 116
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v22    # "policies":I
    .end local v26    # "enforce":Z
    .end local v27    # "targetPath":Ljava/lang/String;
    .restart local v7    # "policies":I
    .restart local v8    # "enforce":Z
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .local v19, "targetPath":Ljava/lang/String;
    :cond_2b0
    move-object v4, v3

    move/from16 v26, v8

    move-object v8, v10

    move-object v6, v11

    move-object v15, v12

    move-object v2, v13

    move-object/from16 v1, v17

    move-object/from16 v27, v19

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move-object/from16 v3, v23

    move-object/from16 v32, v22

    move/from16 v22, v7

    move-object/from16 v7, v32

    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v22    # "policies":I
    .restart local v26    # "enforce":Z
    .restart local v27    # "targetPath":Ljava/lang/String;
    goto/16 :goto_345

    .line 127
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v22    # "policies":I
    .end local v26    # "enforce":Z
    .end local v27    # "targetPath":Ljava/lang/String;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    :catchall_2c9
    move-exception v0

    move-object v2, v13

    move-object v13, v3

    move-object v1, v10

    move-object v9, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v20

    move-object/from16 v6, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v32, v12

    move-object v12, v2

    move-object/from16 v2, v32

    goto/16 :goto_31c

    .line 121
    :catch_2df
    move-exception v0

    move-object v4, v3

    move-object v6, v11

    move-object v2, v13

    move-object v1, v2

    move-object v7, v10

    move-object v2, v12

    move-object v9, v14

    move-object/from16 v11, v17

    move-object/from16 v8, v19

    move-object/from16 v5, v20

    move-object/from16 v10, v21

    move-object/from16 v3, v22

    move-object/from16 v13, v23

    goto/16 :goto_331

    .line 115
    .restart local v7    # "policies":I
    .restart local v8    # "enforce":Z
    :cond_2f5
    move-object v2, v6

    move/from16 v22, v7

    move/from16 v26, v8

    move-object v7, v10

    move-object v6, v11

    move-object v15, v12

    move-object v3, v13

    move-object/from16 v1, v17

    move-object/from16 v27, v19

    move-object/from16 v13, v20

    move-object v12, v4

    move-object v8, v5

    move-object v4, v9

    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v22    # "policies":I
    .restart local v26    # "enforce":Z
    .restart local v27    # "targetPath":Ljava/lang/String;
    goto/16 :goto_345

    .line 127
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v22    # "policies":I
    .end local v26    # "enforce":Z
    .end local v27    # "targetPath":Ljava/lang/String;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    :catchall_309
    move-exception v0

    move-object v15, v12

    move-object v3, v13

    move-object v12, v4

    move-object v4, v3

    move-object v1, v5

    move-object v13, v9

    move-object v3, v10

    move-object v9, v14

    move-object v2, v15

    move-object/from16 v14, v17

    move-object/from16 v15, v20

    move-object/from16 v32, v12

    move-object v12, v6

    move-object/from16 v6, v32

    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v27    # "targetPath":Ljava/lang/String;
    :goto_31c
    goto/16 :goto_7f5

    .line 121
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v27    # "targetPath":Ljava/lang/String;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    :catch_31e
    move-exception v0

    move-object v2, v6

    move-object v6, v11

    move-object v15, v12

    move-object v3, v13

    move-object v12, v4

    move-object v4, v9

    move-object v1, v2

    move-object v7, v5

    move-object v3, v10

    move-object v10, v12

    move-object v9, v14

    move-object v2, v15

    move-object/from16 v11, v17

    move-object/from16 v8, v19

    move-object/from16 v5, v20

    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v27    # "targetPath":Ljava/lang/String;
    :goto_331
    goto/16 :goto_5d7

    .line 114
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v27    # "targetPath":Ljava/lang/String;
    .restart local v7    # "policies":I
    .restart local v8    # "enforce":Z
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    :cond_333
    move-object v2, v6

    move/from16 v22, v7

    move/from16 v26, v8

    move-object v7, v10

    move-object v6, v11

    move-object v15, v12

    move-object v3, v13

    move-object/from16 v1, v17

    move-object/from16 v27, v19

    move-object/from16 v13, v20

    move-object v12, v4

    move-object v8, v5

    move-object v4, v9

    .line 119
    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v22    # "policies":I
    .restart local v26    # "enforce":Z
    .restart local v27    # "targetPath":Ljava/lang/String;
    :goto_345
    move-object v5, v1

    move-object/from16 v1, p0

    :try_start_348
    iget-object v9, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_34a
    .catch Ljava/lang/Exception; {:try_start_348 .. :try_end_34a} :catch_559
    .catchall {:try_start_348 .. :try_end_34a} :catchall_542

    move-object/from16 v10, v27

    move-object v11, v6

    move-object/from16 v23, v3

    move-object v3, v7

    move-object/from16 v28, v12

    move/from16 v7, v22

    .end local v22    # "policies":I
    .restart local v7    # "policies":I
    move v12, v7

    move-object/from16 v17, v5

    move-object v7, v8

    move-object v5, v13

    move-object/from16 v29, v23

    move/from16 v8, v26

    .end local v7    # "policies":I
    .end local v26    # "enforce":Z
    .restart local v8    # "enforce":Z
    .restart local v22    # "policies":I
    move v13, v8

    move-object v8, v14

    .end local v8    # "enforce":Z
    .restart local v26    # "enforce":Z
    move/from16 v14, p3

    :try_start_361
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_365
    .catch Ljava/lang/Exception; {:try_start_361 .. :try_end_365} :catch_535
    .catchall {:try_start_361 .. :try_end_365} :catchall_523

    if-eqz v0, :cond_36a

    move/from16 v0, v18

    goto :goto_36c

    :cond_36a
    move/from16 v0, v16

    .line 128
    :goto_36c
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v27

    .end local v27    # "targetPath":Ljava/lang/String;
    .local v14, "targetPath":Ljava/lang/String;
    invoke-virtual {v14, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_392

    .line 131
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 135
    .end local v9    # "f":Ljava/io/File;
    :cond_392
    sget-object v9, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    move-object v11, v2

    move-object/from16 v2, p1

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 136
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_521

    .line 138
    sget-object v9, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Ljava/util/List;

    .line 140
    .local v19, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3af
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_51f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 141
    .local v10, "siblingTargetPkg":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    move-object v13, v15

    move/from16 v15, p3

    invoke-interface {v12, v10, v15}, Lcom/android/server/om/OverlayableInfoCallback;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 143
    .local v12, "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    if-eqz v12, :cond_4ee

    move-object/from16 v20, v9

    iget-object v9, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v9, :cond_3d9

    move-object v9, v8

    move-object v15, v10

    move-object v1, v11

    move-object/from16 v21, v12

    move-object v2, v13

    move-object v8, v14

    move-object/from16 v11, v17

    move-object/from16 v10, v28

    goto/16 :goto_4fb

    .line 147
    :cond_3d9
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 148
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v9

    .line 149
    .local v9, "siblingBaseCodePath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "idmapPath":Ljava/lang/String;
    invoke-direct {v1, v12, v9}, Lcom/android/server/om/IdmapManager;->checkForResourceMapping(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 152
    move-object/from16 v2, p2

    :try_start_3f6
    invoke-direct {v1, v12, v2, v15}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I

    move-result v0
    :try_end_3fa
    .catch Ljava/lang/Exception; {:try_start_3f6 .. :try_end_3fa} :catch_471
    .catchall {:try_start_3f6 .. :try_end_3fa} :catchall_467

    move-object/from16 v21, v12

    .end local v12    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .local v21, "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    move v12, v0

    .line 153
    .local v12, "policies":I
    :try_start_3fd
    invoke-direct {v1, v2}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Landroid/content/pm/PackageInfo;)Z

    move-result v0
    :try_end_401
    .catch Ljava/lang/Exception; {:try_start_3fd .. :try_end_401} :catch_45f
    .catchall {:try_start_3fd .. :try_end_401} :catchall_456

    move-object v2, v13

    move v13, v0

    .line 154
    .restart local v13    # "enforce":Z
    :try_start_403
    iget-object v0, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_405
    .catch Ljava/lang/Exception; {:try_start_403 .. :try_end_405} :catch_450
    .catchall {:try_start_403 .. :try_end_405} :catchall_44a

    move-object/from16 v20, v9

    .end local v9    # "siblingBaseCodePath":Ljava/lang/String;
    .local v20, "siblingBaseCodePath":Ljava/lang/String;
    move-object v9, v0

    move-object v15, v10

    .end local v10    # "siblingTargetPkg":Ljava/lang/String;
    .local v15, "siblingTargetPkg":Ljava/lang/String;
    move-object/from16 v10, v20

    move-object v1, v11

    move-object v11, v8

    move-object/from16 v23, v8

    move-object v8, v14

    .end local v14    # "targetPath":Ljava/lang/String;
    .local v8, "targetPath":Ljava/lang/String;
    .local v23, "idmapPath":Ljava/lang/String;
    move/from16 v14, p3

    :try_start_412
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_416
    .catch Ljava/lang/Exception; {:try_start_412 .. :try_end_416} :catch_446
    .catchall {:try_start_412 .. :try_end_416} :catchall_441

    if-eqz v0, :cond_41a

    move/from16 v16, v18

    .line 160
    :cond_41a
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    move-object/from16 v9, v20

    .end local v20    # "siblingBaseCodePath":Ljava/lang/String;
    .restart local v9    # "siblingBaseCodePath":Ljava/lang/String;
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_440

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 154
    .end local v0    # "f":Ljava/io/File;
    :cond_440
    return v16

    .line 160
    .end local v9    # "siblingBaseCodePath":Ljava/lang/String;
    .end local v12    # "policies":I
    .end local v13    # "enforce":Z
    .restart local v20    # "siblingBaseCodePath":Ljava/lang/String;
    :catchall_441
    move-exception v0

    move-object/from16 v9, v20

    .end local v20    # "siblingBaseCodePath":Ljava/lang/String;
    .restart local v9    # "siblingBaseCodePath":Ljava/lang/String;
    goto/16 :goto_4c8

    .line 155
    .end local v9    # "siblingBaseCodePath":Ljava/lang/String;
    .restart local v20    # "siblingBaseCodePath":Ljava/lang/String;
    :catch_446
    move-exception v0

    move-object/from16 v9, v20

    .end local v20    # "siblingBaseCodePath":Ljava/lang/String;
    .restart local v9    # "siblingBaseCodePath":Ljava/lang/String;
    goto :goto_47a

    .line 160
    .end local v15    # "siblingTargetPkg":Ljava/lang/String;
    .end local v23    # "idmapPath":Ljava/lang/String;
    .local v8, "idmapPath":Ljava/lang/String;
    .restart local v10    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v14    # "targetPath":Ljava/lang/String;
    :catchall_44a
    move-exception v0

    move-object/from16 v23, v8

    move-object v15, v10

    move-object v1, v11

    goto :goto_45c

    .line 155
    :catch_450
    move-exception v0

    move-object/from16 v23, v8

    move-object v15, v10

    move-object v1, v11

    goto :goto_465

    .line 160
    :catchall_456
    move-exception v0

    move-object/from16 v23, v8

    move-object v15, v10

    move-object v1, v11

    move-object v2, v13

    :goto_45c
    move-object v8, v14

    .end local v10    # "siblingTargetPkg":Ljava/lang/String;
    .end local v14    # "targetPath":Ljava/lang/String;
    .local v8, "targetPath":Ljava/lang/String;
    .restart local v15    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v23    # "idmapPath":Ljava/lang/String;
    goto/16 :goto_4c8

    .line 155
    .end local v15    # "siblingTargetPkg":Ljava/lang/String;
    .end local v23    # "idmapPath":Ljava/lang/String;
    .local v8, "idmapPath":Ljava/lang/String;
    .restart local v10    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v14    # "targetPath":Ljava/lang/String;
    :catch_45f
    move-exception v0

    move-object/from16 v23, v8

    move-object v15, v10

    move-object v1, v11

    move-object v2, v13

    :goto_465
    move-object v8, v14

    .end local v10    # "siblingTargetPkg":Ljava/lang/String;
    .end local v14    # "targetPath":Ljava/lang/String;
    .local v8, "targetPath":Ljava/lang/String;
    .restart local v15    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v23    # "idmapPath":Ljava/lang/String;
    goto :goto_47a

    .line 160
    .end local v15    # "siblingTargetPkg":Ljava/lang/String;
    .end local v21    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v23    # "idmapPath":Ljava/lang/String;
    .local v8, "idmapPath":Ljava/lang/String;
    .restart local v10    # "siblingTargetPkg":Ljava/lang/String;
    .local v12, "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "targetPath":Ljava/lang/String;
    :catchall_467
    move-exception v0

    move-object/from16 v23, v8

    move-object v15, v10

    move-object v1, v11

    move-object/from16 v21, v12

    move-object v2, v13

    move-object v8, v14

    .end local v10    # "siblingTargetPkg":Ljava/lang/String;
    .end local v12    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "targetPath":Ljava/lang/String;
    .local v8, "targetPath":Ljava/lang/String;
    .restart local v15    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v21    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v23    # "idmapPath":Ljava/lang/String;
    goto :goto_4c8

    .line 155
    .end local v15    # "siblingTargetPkg":Ljava/lang/String;
    .end local v21    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v23    # "idmapPath":Ljava/lang/String;
    .local v8, "idmapPath":Ljava/lang/String;
    .restart local v10    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v12    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "targetPath":Ljava/lang/String;
    :catch_471
    move-exception v0

    move-object/from16 v23, v8

    move-object v15, v10

    move-object v1, v11

    move-object/from16 v21, v12

    move-object v2, v13

    move-object v8, v14

    .line 156
    .end local v10    # "siblingTargetPkg":Ljava/lang/String;
    .end local v12    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "targetPath":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .local v8, "targetPath":Ljava/lang/String;
    .restart local v15    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v21    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v23    # "idmapPath":Ljava/lang/String;
    :goto_47a
    :try_start_47a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v17

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    move-object/from16 v10, v28

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a0
    .catchall {:try_start_47a .. :try_end_4a0} :catchall_4c7

    .line 158
    nop

    .line 160
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 164
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c6

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    .end local v1    # "f":Ljava/io/File;
    :cond_4c6
    return v16

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4c7
    move-exception v0

    :goto_4c8
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 164
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4ed

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 167
    .end local v1    # "f":Ljava/io/File;
    :cond_4ed
    throw v0

    .line 143
    .end local v8    # "targetPath":Ljava/lang/String;
    .end local v9    # "siblingBaseCodePath":Ljava/lang/String;
    .end local v15    # "siblingTargetPkg":Ljava/lang/String;
    .end local v21    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v23    # "idmapPath":Ljava/lang/String;
    .restart local v10    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v12    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "targetPath":Ljava/lang/String;
    :cond_4ee
    move-object/from16 v20, v9

    move-object v15, v10

    move-object v1, v11

    move-object/from16 v21, v12

    move-object v2, v13

    move-object/from16 v11, v17

    move-object/from16 v10, v28

    move-object v9, v8

    move-object v8, v14

    .line 144
    .end local v10    # "siblingTargetPkg":Ljava/lang/String;
    .end local v12    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "targetPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    .restart local v15    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v21    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    :goto_4fb
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v29

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object v15, v2

    move-object v14, v8

    move-object v8, v9

    move-object/from16 v28, v10

    move-object/from16 v17, v11

    move-object/from16 v9, v20

    move-object/from16 v2, p1

    move-object v11, v1

    move-object/from16 v1, p0

    goto/16 :goto_3af

    .line 140
    .end local v8    # "targetPath":Ljava/lang/String;
    .end local v15    # "siblingTargetPkg":Ljava/lang/String;
    .end local v21    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "targetPath":Ljava/lang/String;
    :cond_51f
    move-object v8, v14

    .end local v14    # "targetPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    goto :goto_522

    .line 136
    .end local v8    # "targetPath":Ljava/lang/String;
    .end local v19    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "targetPath":Ljava/lang/String;
    :cond_521
    move-object v8, v14

    .line 119
    .end local v14    # "targetPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    :goto_522
    return v0

    .line 127
    .end local v8    # "targetPath":Ljava/lang/String;
    .end local v22    # "policies":I
    .end local v26    # "enforce":Z
    .restart local v27    # "targetPath":Ljava/lang/String;
    :catchall_523
    move-exception v0

    move-object v1, v2

    move-object v9, v8

    move-object v2, v15

    move-object v12, v1

    move-object v13, v4

    move-object v15, v5

    move-object v11, v6

    move-object v1, v7

    move-object/from16 v14, v17

    move-object/from16 v19, v27

    move-object/from16 v6, v28

    move-object/from16 v4, v29

    goto :goto_557

    .line 121
    :catch_535
    move-exception v0

    move-object v1, v2

    move-object v9, v8

    move-object v2, v15

    move-object/from16 v11, v17

    move-object/from16 v8, v27

    move-object/from16 v10, v28

    move-object/from16 v13, v29

    goto :goto_565

    .line 127
    :catchall_542
    move-exception v0

    move-object v1, v2

    move-object v11, v5

    move-object v5, v13

    move-object v9, v14

    move-object v2, v15

    move-object v13, v3

    move-object v3, v7

    move-object v15, v5

    move-object v14, v11

    move-object/from16 v19, v27

    move-object v11, v6

    move-object v6, v12

    move-object v12, v1

    move-object v1, v8

    move-object/from16 v32, v13

    move-object v13, v4

    move-object/from16 v4, v32

    .end local v27    # "targetPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    :goto_557
    goto/16 :goto_7f5

    .line 121
    .end local v8    # "targetPath":Ljava/lang/String;
    .restart local v27    # "targetPath":Ljava/lang/String;
    :catch_559
    move-exception v0

    move-object v1, v2

    move-object v11, v5

    move-object v10, v12

    move-object v5, v13

    move-object v9, v14

    move-object v2, v15

    move-object v13, v3

    move-object v3, v7

    move-object v7, v8

    move-object/from16 v8, v27

    .end local v27    # "targetPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    :goto_565
    goto/16 :goto_5d7

    .line 127
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v8    # "targetPath":Ljava/lang/String;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .local v19, "targetPath":Ljava/lang/String;
    :catchall_567
    move-exception v0

    move-object v7, v5

    move-object v1, v6

    move-object v3, v10

    move-object v6, v11

    move-object v2, v12

    move-object v10, v4

    move-object v4, v9

    move-object v9, v14

    move-object v12, v1

    move-object v1, v7

    move-object v6, v10

    move-object/from16 v14, v17

    move-object/from16 v15, v20

    goto :goto_594

    .line 121
    :catch_578
    move-exception v0

    move-object v7, v5

    move-object v1, v6

    move-object v3, v10

    move-object v6, v11

    move-object v2, v12

    move-object/from16 v11, v17

    move-object/from16 v8, v19

    move-object/from16 v5, v20

    goto :goto_5a6

    .line 127
    :catchall_585
    move-exception v0

    move-object v7, v5

    move-object v1, v6

    move-object v3, v10

    move-object v6, v11

    move-object v2, v12

    move-object v10, v4

    move-object v4, v9

    move-object v9, v14

    move-object v12, v1

    move-object v1, v7

    move-object v15, v8

    move-object v6, v10

    move-object/from16 v14, v17

    :goto_594
    move-object/from16 v32, v13

    move-object v13, v4

    move-object/from16 v4, v32

    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    goto/16 :goto_7f5

    .line 121
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v8    # "targetPath":Ljava/lang/String;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    :catch_59b
    move-exception v0

    move-object v7, v5

    move-object v1, v6

    move-object v5, v8

    move-object v3, v10

    move-object v6, v11

    move-object v2, v12

    move-object/from16 v11, v17

    move-object/from16 v8, v19

    :goto_5a6
    move-object v10, v4

    move-object v4, v9

    move-object v9, v14

    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    goto :goto_5d7

    .line 127
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v8    # "targetPath":Ljava/lang/String;
    .local v7, "targetPath":Ljava/lang/String;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    :catchall_5aa
    move-exception v0

    move-object v1, v6

    move-object v3, v10

    move-object v6, v11

    move-object v2, v12

    move-object v10, v4

    move-object v4, v9

    move-object v9, v14

    move-object/from16 v32, v7

    move-object v7, v5

    move-object v5, v8

    move-object/from16 v8, v32

    move-object v12, v1

    move-object v15, v5

    move-object v1, v7

    move-object/from16 v19, v8

    move-object v6, v10

    move-object/from16 v14, v17

    move-object/from16 v32, v13

    move-object v13, v4

    move-object/from16 v4, v32

    .end local v7    # "targetPath":Ljava/lang/String;
    .end local v11    # "overlayPath":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    goto/16 :goto_7f5

    .line 121
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v8    # "targetPath":Ljava/lang/String;
    .restart local v7    # "targetPath":Ljava/lang/String;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    :catch_5c7
    move-exception v0

    move-object v1, v6

    move-object v3, v10

    move-object v6, v11

    move-object v2, v12

    move-object/from16 v11, v17

    move-object v10, v4

    move-object v4, v9

    move-object v9, v14

    move-object/from16 v32, v7

    move-object v7, v5

    move-object v5, v8

    move-object/from16 v8, v32

    .end local v7    # "targetPath":Ljava/lang/String;
    .end local v11    # "overlayPath":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    :goto_5d7
    move-object v12, v0

    .line 122
    .local v12, "e":Ljava/lang/Exception;
    :try_start_5d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5fa
    .catchall {:try_start_5d8 .. :try_end_5fa} :catchall_7e7

    .line 124
    nop

    .line 128
    new-instance v0, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_61f

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 135
    .end local v0    # "f":Ljava/io/File;
    :cond_61f
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v17, v1

    iget-object v1, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e1

    .line 138
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    iget-object v1, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 140
    .local v1, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_63e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7d9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v1

    .end local v1    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, v19

    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, "siblingTargetPkg":Ljava/lang/String;
    move-object/from16 v21, v0

    move-object/from16 v19, v11

    move-object/from16 v11, p0

    move-object/from16 v32, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v32

    .end local v12    # "e":Ljava/lang/Exception;
    .local v17, "e":Ljava/lang/Exception;
    iget-object v0, v11, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    move/from16 v14, p3

    move-object/from16 v29, v13

    invoke-interface {v0, v1, v14}, Lcom/android/server/om/OverlayableInfoCallback;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 143
    .local v13, "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    if-eqz v13, :cond_79a

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_679

    move-object/from16 v22, v1

    move-object v15, v5

    move-object v11, v6

    move-object v1, v7

    move-object v6, v10

    move-object/from16 v23, v13

    move-object/from16 v14, v19

    move-object v13, v4

    move-object/from16 v19, v8

    goto/16 :goto_7a7

    .line 147
    :cond_679
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 148
    move-object/from16 v28, v10

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, "siblingBaseCodePath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 150
    .local v21, "idmapPath":Ljava/lang/String;
    invoke-direct {v11, v13, v10}, Lcom/android/server/om/IdmapManager;->checkForResourceMapping(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 152
    :try_start_696
    invoke-direct {v11, v13, v15, v14}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I

    move-result v0
    :try_end_69a
    .catch Ljava/lang/Exception; {:try_start_696 .. :try_end_69a} :catch_71b
    .catchall {:try_start_696 .. :try_end_69a} :catchall_710

    move-object v9, v7

    move v7, v0

    .line 153
    .local v7, "policies":I
    :try_start_69c
    invoke-direct {v11, v15}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Landroid/content/pm/PackageInfo;)Z

    move-result v0
    :try_end_6a0
    .catch Ljava/lang/Exception; {:try_start_69c .. :try_end_6a0} :catch_709
    .catchall {:try_start_69c .. :try_end_6a0} :catchall_701

    move-object/from16 v22, v8

    .end local v8    # "targetPath":Ljava/lang/String;
    .local v22, "targetPath":Ljava/lang/String;
    move v8, v0

    .line 154
    .local v8, "enforce":Z
    :try_start_6a3
    iget-object v0, v11, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_6a5
    .catch Ljava/lang/Exception; {:try_start_6a3 .. :try_end_6a5} :catch_6f3
    .catchall {:try_start_6a3 .. :try_end_6a5} :catchall_6e7

    move-object/from16 v23, v13

    move-object v13, v4

    .end local v13    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .local v23, "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    move-object v4, v0

    move-object v15, v5

    move-object/from16 v14, v19

    move-object v5, v10

    move-object v11, v6

    move-object/from16 v19, v22

    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v22    # "targetPath":Ljava/lang/String;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    move-object/from16 v6, v21

    move-object/from16 v22, v1

    move-object v1, v9

    .end local v1    # "siblingTargetPkg":Ljava/lang/String;
    .local v22, "siblingTargetPkg":Ljava/lang/String;
    move/from16 v9, p3

    :try_start_6b7
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_6bb
    .catch Ljava/lang/Exception; {:try_start_6b7 .. :try_end_6bb} :catch_6e4
    .catchall {:try_start_6b7 .. :try_end_6bb} :catchall_773

    if-eqz v0, :cond_6bf

    move/from16 v16, v18

    .line 160
    :cond_6bf
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6e3

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 154
    .end local v0    # "f":Ljava/io/File;
    :cond_6e3
    return v16

    .line 155
    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    :catch_6e4
    move-exception v0

    goto/16 :goto_728

    .line 160
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .end local v23    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v1    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v13    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .local v22, "targetPath":Ljava/lang/String;
    :catchall_6e7
    move-exception v0

    move-object v11, v6

    move-object/from16 v23, v13

    move-object/from16 v19, v22

    move-object/from16 v22, v1

    move-object v13, v4

    move-object v1, v9

    .end local v1    # "siblingTargetPkg":Ljava/lang/String;
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v13    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    .local v22, "siblingTargetPkg":Ljava/lang/String;
    .restart local v23    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    goto/16 :goto_774

    .line 155
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .end local v23    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v1    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v13    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .local v22, "targetPath":Ljava/lang/String;
    :catch_6f3
    move-exception v0

    move-object v15, v5

    move-object v11, v6

    move-object/from16 v23, v13

    move-object/from16 v14, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v1

    move-object v13, v4

    move-object v1, v9

    .end local v1    # "siblingTargetPkg":Ljava/lang/String;
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v13    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    .local v22, "siblingTargetPkg":Ljava/lang/String;
    .restart local v23    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    goto :goto_728

    .line 160
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .end local v22    # "siblingTargetPkg":Ljava/lang/String;
    .end local v23    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v1    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .local v8, "targetPath":Ljava/lang/String;
    .restart local v13    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    :catchall_701
    move-exception v0

    move-object/from16 v22, v1

    move-object v11, v6

    move-object/from16 v19, v8

    move-object v1, v9

    goto :goto_717

    .line 155
    :catch_709
    move-exception v0

    move-object/from16 v22, v1

    move-object v15, v5

    move-object v11, v6

    move-object v1, v9

    goto :goto_721

    .line 160
    :catchall_710
    move-exception v0

    move-object/from16 v22, v1

    move-object v11, v6

    move-object v1, v7

    move-object/from16 v19, v8

    :goto_717
    move-object/from16 v23, v13

    move-object v13, v4

    .end local v1    # "siblingTargetPkg":Ljava/lang/String;
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v8    # "targetPath":Ljava/lang/String;
    .end local v13    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    .restart local v22    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v23    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    goto :goto_774

    .line 155
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .end local v22    # "siblingTargetPkg":Ljava/lang/String;
    .end local v23    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v1    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    .restart local v13    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    :catch_71b
    move-exception v0

    move-object/from16 v22, v1

    move-object v15, v5

    move-object v11, v6

    move-object v1, v7

    :goto_721
    move-object/from16 v23, v13

    move-object/from16 v14, v19

    move-object v13, v4

    move-object/from16 v19, v8

    .line 156
    .end local v1    # "siblingTargetPkg":Ljava/lang/String;
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v8    # "targetPath":Ljava/lang/String;
    .end local v13    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    .restart local v22    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v23    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    :goto_728
    :try_start_728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    move-object/from16 v6, v28

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74c
    .catchall {:try_start_728 .. :try_end_74c} :catchall_773

    .line 158
    nop

    .line 160
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 164
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_772

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    .end local v1    # "f":Ljava/io/File;
    :cond_772
    return v16

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_773
    move-exception v0

    :goto_774
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 164
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_799

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 167
    .end local v1    # "f":Ljava/io/File;
    :cond_799
    throw v0

    .line 143
    .end local v10    # "siblingBaseCodePath":Ljava/lang/String;
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .end local v21    # "idmapPath":Ljava/lang/String;
    .end local v22    # "siblingTargetPkg":Ljava/lang/String;
    .end local v23    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .local v1, "siblingTargetPkg":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    .restart local v13    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    :cond_79a
    move-object/from16 v22, v1

    move-object v15, v5

    move-object v11, v6

    move-object v1, v7

    move-object v6, v10

    move-object/from16 v23, v13

    move-object/from16 v14, v19

    move-object v13, v4

    move-object/from16 v19, v8

    .line 144
    .end local v1    # "siblingTargetPkg":Ljava/lang/String;
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v8    # "targetPath":Ljava/lang/String;
    .end local v13    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    .restart local v22    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v23    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    :goto_7a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    .end local v22    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v5    # "siblingTargetPkg":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object v7, v1

    move-object v10, v6

    move-object v6, v11

    move-object v11, v14

    move-object v5, v15

    move-object/from16 v8, v19

    move-object/from16 v1, v20

    move-object/from16 v0, v21

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v32, v13

    move-object v13, v4

    move-object/from16 v4, v32

    move-object/from16 v33, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v33

    goto/16 :goto_63e

    .line 140
    .end local v5    # "siblingTargetPkg":Ljava/lang/String;
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "targetPath":Ljava/lang/String;
    .end local v20    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .local v1, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    .restart local v12    # "e":Ljava/lang/Exception;
    :cond_7d9
    move-object/from16 v20, v1

    move-object v11, v6

    move-object/from16 v19, v8

    move-object/from16 v17, v12

    .end local v1    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v8    # "targetPath":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v17    # "e":Ljava/lang/Exception;
    .restart local v19    # "targetPath":Ljava/lang/String;
    .restart local v20    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_7e6

    .line 136
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "targetPath":Ljava/lang/String;
    .end local v20    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    .restart local v12    # "e":Ljava/lang/Exception;
    :cond_7e1
    move-object v11, v6

    move-object/from16 v19, v8

    move-object/from16 v17, v12

    .line 124
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v8    # "targetPath":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v17    # "e":Ljava/lang/Exception;
    .restart local v19    # "targetPath":Ljava/lang/String;
    :goto_7e6
    return v16

    .line 127
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "targetPath":Ljava/lang/String;
    .restart local v6    # "overlayPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    :catchall_7e7
    move-exception v0

    move-object v12, v1

    move-object v15, v5

    move-object v1, v7

    move-object/from16 v19, v8

    move-object v14, v11

    move-object v11, v6

    move-object v6, v10

    move-object/from16 v32, v13

    move-object v13, v4

    move-object/from16 v4, v32

    .line 128
    .end local v6    # "overlayPath":Ljava/lang/String;
    .end local v8    # "targetPath":Ljava/lang/String;
    .restart local v11    # "overlayPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    :goto_7f5
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v19

    .end local v19    # "targetPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_81b

    .line 131
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 135
    .end local v5    # "f":Ljava/io/File;
    :cond_81b
    sget-object v5, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    move-object/from16 v10, p1

    move/from16 v7, p3

    move-object/from16 v21, v6

    iget-object v6, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 136
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_978

    .line 138
    sget-object v5, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    iget-object v6, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Ljava/util/List;

    .line 140
    .local v17, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_83b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_975

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 141
    .local v6, "siblingTargetPkg":Ljava/lang/String;
    move-object/from16 v20, v5

    move-object/from16 v19, v8

    move-object/from16 v8, p0

    .end local v8    # "targetPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/server/om/IdmapManager;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    invoke-interface {v5, v6, v7}, Lcom/android/server/om/OverlayableInfoCallback;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 143
    .local v5, "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_94d

    move-object/from16 v22, v15

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v15, :cond_865

    move-object/from16 v30, v6

    move-object/from16 v10, v22

    move-object/from16 v22, v5

    move-object/from16 v5, v21

    goto/16 :goto_954

    .line 147
    :cond_865
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 148
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v15

    .line 149
    .local v15, "siblingBaseCodePath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 150
    .local v20, "idmapPath":Ljava/lang/String;
    invoke-direct {v8, v5, v15}, Lcom/android/server/om/IdmapManager;->checkForResourceMapping(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 152
    move-object/from16 v9, p2

    move-object/from16 v4, v22

    :try_start_884
    invoke-direct {v8, v5, v9, v7}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I

    move-result v0

    move v7, v0

    .line 153
    .restart local v7    # "policies":I
    invoke-direct {v8, v9}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    move-object v10, v8

    move v8, v0

    .line 154
    .local v8, "enforce":Z
    iget-object v0, v10, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_891
    .catch Ljava/lang/Exception; {:try_start_884 .. :try_end_891} :catch_8d3
    .catchall {:try_start_884 .. :try_end_891} :catchall_8cd

    move-object v10, v4

    move-object v4, v0

    move-object/from16 v22, v5

    .end local v5    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .local v22, "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    move-object v5, v15

    move-object/from16 v30, v6

    move-object/from16 v31, v21

    .end local v6    # "siblingTargetPkg":Ljava/lang/String;
    .local v30, "siblingTargetPkg":Ljava/lang/String;
    move-object/from16 v6, v20

    move/from16 v9, p3

    :try_start_89e
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_8a2
    .catch Ljava/lang/Exception; {:try_start_89e .. :try_end_8a2} :catch_8cb
    .catchall {:try_start_89e .. :try_end_8a2} :catchall_926

    if-eqz v0, :cond_8a6

    move/from16 v16, v18

    .line 160
    :cond_8a6
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v15, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8ca

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 154
    .end local v0    # "f":Ljava/io/File;
    :cond_8ca
    return v16

    .line 155
    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    :catch_8cb
    move-exception v0

    goto :goto_8db

    .line 160
    .end local v22    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v30    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v5    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "siblingTargetPkg":Ljava/lang/String;
    :catchall_8cd
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v30, v6

    .end local v5    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v22    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v30    # "siblingTargetPkg":Ljava/lang/String;
    goto :goto_927

    .line 155
    .end local v22    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v30    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v5    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "siblingTargetPkg":Ljava/lang/String;
    :catch_8d3
    move-exception v0

    move-object v10, v4

    move-object/from16 v22, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v21

    .line 156
    .end local v5    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "siblingTargetPkg":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v30    # "siblingTargetPkg":Ljava/lang/String;
    :goto_8db
    :try_start_8db
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    move-object/from16 v5, v31

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8ff
    .catchall {:try_start_8db .. :try_end_8ff} :catchall_926

    .line 158
    nop

    .line 160
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v15, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 164
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_925

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    .end local v1    # "f":Ljava/io/File;
    :cond_925
    return v16

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_926
    move-exception v0

    :goto_927
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v15, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 164
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_94c

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 167
    .end local v1    # "f":Ljava/io/File;
    :cond_94c
    throw v0

    .line 143
    .end local v15    # "siblingBaseCodePath":Ljava/lang/String;
    .end local v20    # "idmapPath":Ljava/lang/String;
    .end local v22    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v30    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v5    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "siblingTargetPkg":Ljava/lang/String;
    :cond_94d
    move-object/from16 v22, v5

    move-object/from16 v30, v6

    move-object v10, v15

    move-object/from16 v5, v21

    .line 144
    .end local v5    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v22    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .restart local v30    # "siblingTargetPkg":Ljava/lang/String;
    :goto_954
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v30

    .end local v30    # "siblingTargetPkg":Ljava/lang/String;
    .local v7, "siblingTargetPkg":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move/from16 v7, p3

    move-object/from16 v21, v5

    move-object v15, v10

    move-object/from16 v8, v19

    move-object/from16 v5, v20

    move-object/from16 v10, p1

    goto/16 :goto_83b

    .line 140
    .end local v7    # "siblingTargetPkg":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    .end local v22    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    .local v8, "targetPath":Ljava/lang/String;
    :cond_975
    move-object/from16 v19, v8

    .end local v8    # "targetPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    goto :goto_97a

    .line 136
    .end local v17    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "targetPath":Ljava/lang/String;
    .restart local v8    # "targetPath":Ljava/lang/String;
    :cond_978
    move-object/from16 v19, v8

    .line 170
    .end local v8    # "targetPath":Ljava/lang/String;
    .restart local v19    # "targetPath":Ljava/lang/String;
    :goto_97a
    throw v0

    .line 90
    .end local v11    # "overlayPath":Ljava/lang/String;
    .end local v19    # "targetPath":Ljava/lang/String;
    :cond_97b
    move-object v5, v4

    goto :goto_97e

    .line 87
    :cond_97d
    move-object v5, v4

    .line 92
    :goto_97e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create idmap for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ov="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v16
.end method

.method idmapExists(Landroid/content/om/OverlayInfo;)Z
    .registers 5
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 203
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/om/IdmapDaemon;->idmapExists(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method idmapExists(Landroid/content/pm/PackageInfo;I)Z
    .registers 5
    .param p1, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .line 207
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/om/IdmapDaemon;->idmapExists(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method removeIdmap(Landroid/content/om/OverlayInfo;I)Z
    .registers 15
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "userId"    # I

    .line 174
    const-string v0, "failed to remove idmap2 for "

    const-string v1, "@"

    const-string v2, ": "

    sget-boolean v3, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v4, "OverlayManager"

    if-eqz v3, :cond_23

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove idmap for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_23
    const/4 v3, 0x0

    :try_start_24
    iget-object v5, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v6, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v5, v6, p2}, Lcom/android/server/om/IdmapDaemon;->removeIdmap(Ljava/lang/String;I)Z

    move-result v5
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_91
    .catchall {:try_start_24 .. :try_end_2c} :catchall_8e

    .line 183
    sget-object v6, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 184
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 186
    sget-object v6, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 188
    .local v6, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_44
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 189
    .local v8, "siblingTargetPkg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, "idmapPath":Ljava/lang/String;
    :try_start_64
    iget-object v10, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v11, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v10, v11, p2}, Lcom/android/server/om/IdmapDaemon;->removeIdmap(Ljava/lang/String;I)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6b} :catch_6d

    .line 196
    nop

    .line 197
    .end local v8    # "siblingTargetPkg":Ljava/lang/String;
    .end local v9    # "idmapPath":Ljava/lang/String;
    goto :goto_44

    .line 192
    .restart local v8    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v9    # "idmapPath":Ljava/lang/String;
    :catch_6d
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v3

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "siblingTargetPkg":Ljava/lang/String;
    .end local v9    # "idmapPath":Ljava/lang/String;
    :cond_8d
    return v5

    .line 183
    :catchall_8e
    move-exception v5

    goto/16 :goto_115

    .line 179
    :catch_91
    move-exception v5

    .line 180
    .local v5, "e":Ljava/lang/Exception;
    :try_start_92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to remove idmap for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_92 .. :try_end_b2} :catchall_8e

    .line 181
    nop

    .line 183
    sget-object v6, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 184
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 186
    sget-object v6, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 188
    .restart local v6    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_cb
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_114

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 189
    .restart local v8    # "siblingTargetPkg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 191
    .restart local v9    # "idmapPath":Ljava/lang/String;
    :try_start_eb
    iget-object v10, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v11, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v10, v11, p2}, Lcom/android/server/om/IdmapDaemon;->removeIdmap(Ljava/lang/String;I)Z
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f2} :catch_f4

    .line 196
    nop

    .line 197
    .end local v8    # "siblingTargetPkg":Ljava/lang/String;
    .end local v9    # "idmapPath":Ljava/lang/String;
    goto :goto_cb

    .line 192
    .restart local v8    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v9    # "idmapPath":Ljava/lang/String;
    :catch_f4
    move-exception v1

    .line 193
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v3

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "siblingTargetPkg":Ljava/lang/String;
    .end local v9    # "idmapPath":Ljava/lang/String;
    :cond_114
    return v3

    .line 183
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_115
    sget-object v6, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 184
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_176

    .line 186
    sget-object v6, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 188
    .restart local v6    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_176

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 189
    .restart local v8    # "siblingTargetPkg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 191
    .restart local v9    # "idmapPath":Ljava/lang/String;
    :try_start_14d
    iget-object v10, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v11, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v10, v11, p2}, Lcom/android/server/om/IdmapDaemon;->removeIdmap(Ljava/lang/String;I)Z
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_154} :catch_156

    .line 196
    nop

    .line 197
    .end local v8    # "siblingTargetPkg":Ljava/lang/String;
    .end local v9    # "idmapPath":Ljava/lang/String;
    goto :goto_12d

    .line 192
    .restart local v8    # "siblingTargetPkg":Ljava/lang/String;
    .restart local v9    # "idmapPath":Ljava/lang/String;
    :catch_156
    move-exception v1

    .line 193
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v3

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "siblingTargetPkg":Ljava/lang/String;
    .end local v9    # "idmapPath":Ljava/lang/String;
    :cond_176
    throw v5
.end method
