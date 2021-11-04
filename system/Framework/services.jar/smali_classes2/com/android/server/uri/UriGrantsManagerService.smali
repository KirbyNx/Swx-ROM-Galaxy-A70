.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "UriGrantsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriGrantsManagerService$LocalService;,
        Lcom/android/server/uri/UriGrantsManagerService$H;,
        Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_TIME:Ljava/lang/String; = "createdTime"

.field private static final ATTR_MODE_FLAGS:Ljava/lang/String; = "modeFlags"

.field private static final ATTR_PREFIX:Ljava/lang/String; = "prefix"

.field private static final ATTR_SOURCE_PKG:Ljava/lang/String; = "sourcePkg"

.field private static final ATTR_SOURCE_USER_ID:Ljava/lang/String; = "sourceUserId"

.field private static final ATTR_TARGET_PKG:Ljava/lang/String; = "targetPkg"

.field private static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_USER_HANDLE:Ljava/lang/String; = "userHandle"

.field private static final DEBUG:Z = false

.field private static final ENABLE_DYNAMIC_PERMISSIONS:Z = false

.field private static final MAX_PERSISTED_URI_GRANTS:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UriGrantsManagerService"

.field private static final TAG_URI_GRANT:Ljava/lang/String; = "uri-grant"

.field private static final TAG_URI_GRANTS:Ljava/lang/String; = "uri-grants"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mGrantFile:Landroid/util/AtomicFile;

.field private final mGrantedUriPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/uri/GrantUri;",
            "Lcom/android/server/uri/UriPermission;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field private final mLock:Ljava/lang/Object;

.field mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 156
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/uri/UriGrantsManagerService$1;

    .line 117
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "systemDir"    # Ljava/io/File;

    .line 159
    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 151
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 160
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 161
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "urigrants.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "uri-grants"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 162
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .registers 8
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Intent;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "x6"    # I

    .line 117
    invoke-direct/range {p0 .. p6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "x2"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->readGrantedUriPermissionsLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/pm/ProviderInfo;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 117
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->start()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 117
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->writeGrantedUriPermissionsLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Lcom/android/server/uri/UriPermission;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/uri/GrantUri;
    .param p4, "x4"    # I

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Lcom/android/server/uri/GrantUri;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 7
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/Uri;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 117
    invoke-direct/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method private checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "userId"    # I
    .param p4, "checkUser"    # Z

    .line 513
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 514
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_2a

    .line 515
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_2a

    .line 516
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/GrantUri;

    .line 517
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    iget v4, v3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v4, p3, :cond_1e

    if-nez p4, :cond_27

    .line 518
    :cond_1e
    iget-object v4, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, v4, p2}, Lcom/android/server/uri/UriGrantsManagerService;->matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 519
    return v2

    .line 515
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 524
    .end local v1    # "i":I
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method private checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .registers 26
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "mode"    # I
    .param p5, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "targetUserId"    # I

    .line 586
    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v6, p5

    if-eqz v7, :cond_d1

    .line 590
    const/4 v0, 0x0

    if-nez p3, :cond_c

    .line 591
    return-object v0

    .line 593
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 594
    .local v9, "data":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    .line 595
    .local v10, "clip":Landroid/content/ClipData;
    if-nez v9, :cond_19

    if-nez v10, :cond_19

    .line 596
    return-object v0

    .line 599
    :cond_19
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    move-result v1

    .line 600
    .local v1, "contentUserHint":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_26

    .line 601
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    move v11, v1

    goto :goto_27

    .line 600
    :cond_26
    move v11, v1

    .line 604
    .end local v1    # "contentUserHint":I
    .local v11, "contentUserHint":I
    :goto_27
    if-eqz v6, :cond_31

    .line 605
    iget v0, v6, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move-object/from16 v12, p0

    move/from16 v13, p6

    move v14, v0

    .local v0, "targetUid":I
    goto :goto_41

    .line 607
    .end local v0    # "targetUid":I
    :cond_31
    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v2, 0x10000000

    move/from16 v13, p6

    invoke-virtual {v1, v7, v2, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v1

    .line 609
    .local v1, "targetUid":I
    if-gez v1, :cond_40

    .line 612
    return-object v0

    .line 609
    :cond_40
    move v14, v1

    .line 615
    .end local v1    # "targetUid":I
    .local v14, "targetUid":I
    :goto_41
    if-eqz v9, :cond_66

    .line 616
    invoke-static {v11, v9, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v15

    .line 617
    .local v15, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v15

    move/from16 v4, p4

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v14

    .line 619
    if-lez v14, :cond_66

    .line 620
    if-nez v6, :cond_5f

    .line 621
    new-instance v0, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v0, v7, v14, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v0, "needed":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_60

    .line 620
    .end local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_5f
    move-object v0, v6

    .line 623
    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :goto_60
    iget-object v1, v0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    .line 626
    .end local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v15    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v6, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_66
    if-eqz v10, :cond_d0

    .line 627
    const/4 v0, 0x0

    move-object v15, v6

    move/from16 v16, v14

    move v14, v0

    .end local v6    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v14, "i":I
    .local v15, "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v16, "targetUid":I
    :goto_6d
    invoke-virtual {v10}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v14, v0, :cond_cd

    .line 628
    invoke-virtual {v10, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 629
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_a5

    .line 630
    invoke-static {v11, v6, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v5

    .line 631
    .local v5, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v4, p4

    move-object/from16 p5, v6

    move-object v6, v5

    .end local v5    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v6, "grantUri":Lcom/android/server/uri/GrantUri;
    .local p5, "uri":Landroid/net/Uri;
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    .line 633
    .end local v16    # "targetUid":I
    .local v0, "targetUid":I
    if-lez v0, :cond_a2

    .line 634
    if-nez v15, :cond_9d

    .line 635
    new-instance v1, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v1, v7, v0, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    move-object v15, v1

    .line 637
    :cond_9d
    iget-object v1, v15, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 639
    .end local v6    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_a2
    move/from16 v16, v0

    goto :goto_ca

    .line 640
    .end local v0    # "targetUid":I
    .end local p5    # "uri":Landroid/net/Uri;
    .local v6, "uri":Landroid/net/Uri;
    .restart local v16    # "targetUid":I
    :cond_a5
    move-object/from16 p5, v6

    .end local v6    # "uri":Landroid/net/Uri;
    .restart local p5    # "uri":Landroid/net/Uri;
    invoke-virtual {v10, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 641
    .local v17, "clipIntent":Landroid/content/Intent;
    if-eqz v17, :cond_c8

    .line 642
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v4, p4

    move-object v5, v15

    move-object/from16 v18, p5

    .end local p5    # "uri":Landroid/net/Uri;
    .local v18, "uri":Landroid/net/Uri;
    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    .line 644
    .local v0, "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    if-eqz v0, :cond_ca

    .line 645
    move-object v15, v0

    goto :goto_ca

    .line 641
    .end local v0    # "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    .end local v18    # "uri":Landroid/net/Uri;
    .restart local p5    # "uri":Landroid/net/Uri;
    :cond_c8
    move-object/from16 v18, p5

    .line 627
    .end local v17    # "clipIntent":Landroid/content/Intent;
    .end local p5    # "uri":Landroid/net/Uri;
    :cond_ca
    :goto_ca
    add-int/lit8 v14, v14, 0x1

    goto :goto_6d

    :cond_cd
    move-object v6, v15

    move/from16 v14, v16

    .line 652
    .end local v15    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v16    # "targetUid":I
    .local v6, "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v14, "targetUid":I
    :cond_d0
    return-object v6

    .line 587
    .end local v6    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v9    # "data":Landroid/net/Uri;
    .end local v10    # "clip":Landroid/content/ClipData;
    .end local v11    # "contentUserHint":I
    .end local v14    # "targetUid":I
    .local p5, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_d1
    move-object/from16 v12, p0

    move/from16 v13, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I

    .line 1284
    new-instance v3, Lcom/android/server/uri/GrantUri;

    invoke-direct {v3, p5, p3, p4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    return v0
.end method

.method private checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .registers 32
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "lastTargetUid"    # I

    .line 1072
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {p4 .. p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_12

    .line 1073
    return v1

    .line 1076
    :cond_12
    nop

    .line 1081
    iget-object v0, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1083
    return v1

    .line 1088
    :cond_22
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 1090
    .local v12, "callingAppId":I
    iget-object v0, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    .line 1092
    .local v13, "authority":Ljava/lang/String;
    const/16 v0, 0x3e8

    if-eq v12, v0, :cond_32

    if-nez v12, :cond_a5

    .line 1093
    :cond_32
    iget-object v0, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.settings.files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1094
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.settings.module_licenses"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_a5

    .line 1101
    :cond_4f
    nop

    .line 1102
    const-string v0, "com.salab.issuetracker.fileprovider"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 1103
    const-string v0, "com.salab.act.fileprovider"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_a5

    .line 1106
    :cond_61
    nop

    .line 1107
    const-string v0, "com.samsung.android.sm.FileProvider"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    goto :goto_a5

    .line 1110
    :cond_6b
    nop

    .line 1111
    const-string v0, "com.sec.internal.ims.rcs.fileprovider"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    goto :goto_a5

    .line 1113
    :cond_75
    nop

    .line 1114
    const-string v0, "com.samsung.android.mdecservice.nms.fileprovider"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    goto :goto_a5

    .line 1116
    :cond_7f
    nop

    .line 1117
    const-string v0, "com.samsung.android.uds.fileprovider"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    goto :goto_a5

    .line 1120
    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; use startActivityAsCaller() instead"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UriGrantsManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return v1

    .line 1130
    :cond_a5
    :goto_a5
    iget v0, v10, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-direct {v7, v13, v0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v14

    .line 1132
    .local v14, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v14, :cond_cc

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No content provider found for permission check: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1134
    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    const-string v2, "UriGrantsManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    return v1

    .line 1138
    :cond_cc
    move/from16 v0, p5

    .line 1139
    .local v0, "targetUid":I
    if-gez v0, :cond_e1

    if-eqz v9, :cond_e1

    .line 1140
    iget-object v3, v7, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1141
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1140
    invoke-virtual {v3, v9, v2, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v0

    .line 1142
    if-gez v0, :cond_df

    .line 1144
    return v1

    .line 1142
    :cond_df
    move v15, v0

    goto :goto_e2

    .line 1148
    :cond_e1
    move v15, v0

    .end local v0    # "targetUid":I
    .local v15, "targetUid":I
    :goto_e2
    const/4 v0, 0x0

    .line 1149
    .local v0, "targetHoldsPermission":Z
    if-ltz v15, :cond_ed

    .line 1151
    invoke-direct {v7, v14, v10, v15, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    if-eqz v2, :cond_146

    .line 1155
    const/4 v0, 0x1

    goto :goto_146

    .line 1159
    :cond_ed
    iget-boolean v2, v14, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 1160
    .local v2, "allowed":Z
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_f8

    .line 1161
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v3, :cond_f8

    .line 1162
    const/4 v2, 0x0

    .line 1165
    :cond_f8
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_101

    .line 1166
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v3, :cond_101

    .line 1167
    const/4 v2, 0x0

    .line 1170
    :cond_101
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v3, :cond_143

    .line 1171
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v3, v3

    .line 1172
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_109
    if-ge v4, v3, :cond_143

    .line 1173
    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    if-eqz v5, :cond_140

    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    iget-object v6, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1174
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_140

    .line 1175
    and-int/lit8 v5, v11, 0x1

    if-eqz v5, :cond_130

    .line 1176
    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_130

    .line 1177
    const/4 v2, 0x0

    .line 1180
    :cond_130
    and-int/lit8 v5, v11, 0x2

    if-eqz v5, :cond_143

    .line 1181
    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_143

    .line 1182
    const/4 v2, 0x0

    goto :goto_143

    .line 1172
    :cond_140
    add-int/lit8 v4, v4, 0x1

    goto :goto_109

    .line 1189
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_143
    :goto_143
    if-eqz v2, :cond_146

    .line 1190
    const/4 v0, 0x1

    .line 1194
    .end local v2    # "allowed":Z
    :cond_146
    :goto_146
    iget-boolean v2, v14, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v2, :cond_14e

    .line 1198
    const/4 v0, 0x0

    move/from16 v16, v0

    goto :goto_150

    .line 1194
    :cond_14e
    move/from16 v16, v0

    .line 1201
    .end local v0    # "targetHoldsPermission":Z
    .local v16, "targetHoldsPermission":Z
    :goto_150
    and-int/lit16 v0, v11, 0xc0

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-nez v0, :cond_15b

    move/from16 v0, v18

    goto :goto_15d

    :cond_15b
    move/from16 v0, v17

    :goto_15d
    move/from16 v19, v0

    .line 1203
    .local v19, "basicGrant":Z
    if-eqz v19, :cond_17d

    if-eqz v16, :cond_17d

    .line 1208
    iget-object v0, v7, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1209
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    const/16 v22, 0x0

    .line 1210
    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v23

    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v25, 0x0

    .line 1208
    move-object/from16 v20, v0

    move/from16 v24, v2

    invoke-virtual/range {v20 .. v25}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1211
    return v1

    .line 1220
    :cond_17d
    if-ltz v15, :cond_19a

    .line 1221
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, v10, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_19a

    const/4 v6, 0x0

    .line 1222
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v0

    if-eqz v0, :cond_19a

    move/from16 v17, v18

    goto :goto_19b

    :cond_19a
    nop

    :goto_19b
    move/from16 v1, v17

    .line 1226
    .local v1, "specialCrossUserGrant":Z
    iget-boolean v0, v14, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 1227
    .local v0, "grantAllowed":Z
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cc

    .line 1228
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v2, v2

    .line 1229
    .local v2, "N":I
    const/4 v0, 0x0

    .line 1230
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1ac
    if-ge v3, v2, :cond_1ca

    .line 1231
    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1c7

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v4, v4, v3

    iget-object v5, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1232
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c7

    .line 1233
    const/4 v0, 0x1

    .line 1234
    move v2, v0

    goto :goto_1cd

    .line 1230
    :cond_1c7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ac

    :cond_1ca
    move v2, v0

    goto :goto_1cd

    .line 1227
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_1cc
    move v2, v0

    .line 1238
    .end local v0    # "grantAllowed":Z
    .local v2, "grantAllowed":Z
    :goto_1cd
    if-nez v2, :cond_234

    .line 1239
    if-eqz v1, :cond_204

    .line 1242
    if-eqz v19, :cond_1d4

    goto :goto_234

    .line 1243
    :cond_1d4
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not allow granting of advanced Uri permissions (uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1249
    :cond_204
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not allow granting of Uri permissions (uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_234
    :goto_234
    invoke-direct {v7, v14, v10, v8, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-nez v0, :cond_294

    .line 1260
    iget-object v3, v7, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1261
    :try_start_23d
    invoke-direct {v7, v10, v8, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    .line 1262
    .local v0, "res":Z
    monitor-exit v3
    :try_end_242
    .catchall {:try_start_23d .. :try_end_242} :catchall_291

    .line 1263
    if-nez v0, :cond_294

    .line 1264
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v4, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_272

    .line 1265
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1270
    :cond_272
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1262
    .end local v0    # "res":Z
    :catchall_291
    move-exception v0

    :try_start_292
    monitor-exit v3
    :try_end_293
    .catchall {:try_start_292 .. :try_end_293} :catchall_291

    throw v0

    .line 1276
    :cond_294
    return v15
.end method

.method private checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .registers 22
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "considerUidPermissions"    # Z

    .line 919
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b0

    .line 923
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x1

    if-ne v3, v2, :cond_16

    .line 924
    return v4

    .line 925
    :cond_16
    iget-boolean v3, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v5, 0x0

    if-nez v3, :cond_1c

    .line 926
    return v5

    .line 929
    :cond_1c
    and-int/lit8 v3, p4, 0x1

    if-nez v3, :cond_22

    move v3, v4

    goto :goto_23

    :cond_22
    move v3, v5

    .line 930
    .local v3, "readMet":Z
    :goto_23
    and-int/lit8 v6, p4, 0x2

    if-nez v6, :cond_29

    move v6, v4

    goto :goto_2a

    :cond_29
    move v6, v5

    .line 933
    .local v6, "writeMet":Z
    :goto_2a
    if-nez v3, :cond_3b

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v7, :cond_3b

    if-eqz p5, :cond_3b

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 934
    invoke-direct {v0, v7, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_3b

    .line 935
    const/4 v3, 0x1

    .line 937
    :cond_3b
    if-nez v6, :cond_4c

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v7, :cond_4c

    if-eqz p5, :cond_4c

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 938
    invoke-direct {v0, v7, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4c

    .line 939
    const/4 v6, 0x1

    .line 944
    :cond_4c
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v7, :cond_52

    move v7, v4

    goto :goto_53

    :cond_52
    move v7, v5

    .line 945
    .local v7, "allowDefaultRead":Z
    :goto_53
    iget-object v8, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v8, :cond_59

    move v8, v4

    goto :goto_5a

    :cond_59
    move v8, v5

    .line 948
    .local v8, "allowDefaultWrite":Z
    :goto_5a
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 949
    .local v9, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v9, :cond_9e

    .line 950
    move-object/from16 v10, p2

    iget-object v11, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 951
    .local v11, "path":Ljava/lang/String;
    array-length v12, v9

    .line 952
    .local v12, "i":I
    :goto_67
    if-lez v12, :cond_a0

    if-eqz v3, :cond_6d

    if-nez v6, :cond_a0

    .line 953
    :cond_6d
    add-int/lit8 v12, v12, -0x1

    .line 954
    aget-object v13, v9, v12

    .line 955
    .local v13, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v13, v11}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9d

    .line 956
    if-nez v3, :cond_8a

    .line 957
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v14

    .line 962
    .local v14, "pprperm":Ljava/lang/String;
    if-eqz v14, :cond_8a

    .line 963
    if-eqz p5, :cond_89

    invoke-direct {v0, v14, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_89

    .line 965
    const/4 v3, 0x1

    goto :goto_8a

    .line 967
    :cond_89
    const/4 v7, 0x0

    .line 971
    .end local v14    # "pprperm":Ljava/lang/String;
    :cond_8a
    :goto_8a
    if-nez v6, :cond_9d

    .line 972
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v14

    .line 977
    .local v14, "ppwperm":Ljava/lang/String;
    if-eqz v14, :cond_9d

    .line 978
    if-eqz p5, :cond_9c

    invoke-direct {v0, v14, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_9c

    .line 980
    const/4 v6, 0x1

    goto :goto_9d

    .line 982
    :cond_9c
    const/4 v8, 0x0

    .line 987
    .end local v13    # "pp":Landroid/content/pm/PathPermission;
    .end local v14    # "ppwperm":Ljava/lang/String;
    :cond_9d
    :goto_9d
    goto :goto_67

    .line 949
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "i":I
    :cond_9e
    move-object/from16 v10, p2

    .line 992
    :cond_a0
    if-eqz v7, :cond_a3

    const/4 v3, 0x1

    .line 993
    :cond_a3
    if-eqz v8, :cond_a6

    const/4 v6, 0x1

    .line 1010
    :cond_a6
    const/4 v11, 0x1

    .line 1013
    .local v11, "forceMet":Z
    if-eqz v3, :cond_ae

    if-eqz v6, :cond_ae

    if-eqz v11, :cond_ae

    goto :goto_af

    :cond_ae
    move v4, v5

    :goto_af
    return v4

    .line 920
    .end local v3    # "readMet":Z
    .end local v6    # "writeMet":Z
    .end local v7    # "allowDefaultRead":Z
    .end local v8    # "allowDefaultWrite":Z
    .end local v9    # "pps":[Landroid/content/pm/PathPermission;
    .end local v11    # "forceMet":Z
    :cond_b0
    move-object/from16 v10, p2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must never hold local mLock"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .registers 12
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 906
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_14

    .line 907
    const/4 v0, -0x1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v2, p3, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_14

    .line 909
    const/4 v0, 0x0

    return v0

    .line 912
    :cond_14
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v0

    return v0
.end method

.method private checkUidPermission(Ljava/lang/String;I)I
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 210
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 211
    :catch_9
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    .registers 15
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I

    .line 1290
    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1291
    .local v0, "persistable":Z
    :goto_9
    if-eqz v0, :cond_d

    const/4 v3, 0x3

    goto :goto_e

    .line 1292
    :cond_d
    move v3, v2

    :goto_e
    nop

    .line 1295
    .local v3, "minStrength":I
    if-nez p2, :cond_12

    .line 1296
    return v2

    .line 1299
    :cond_12
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1300
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v4, :cond_1d

    return v1

    .line 1303
    :cond_1d
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 1304
    .local v5, "exactPerm":Lcom/android/server/uri/UriPermission;
    if-eqz v5, :cond_2c

    invoke-virtual {v5, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v6

    if-lt v6, v3, :cond_2c

    .line 1305
    return v2

    .line 1309
    :cond_2c
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1310
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_31
    if-ge v7, v6, :cond_55

    .line 1311
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 1312
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v9, :cond_52

    iget-object v9, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v10, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v10, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 1313
    invoke-virtual {v8, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v9

    if-lt v9, v3, :cond_52

    .line 1314
    return v2

    .line 1310
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 1318
    .end local v7    # "i":I
    :cond_55
    return v1
.end method

.method static createForTest(Ljava/io/File;)Lcom/android/server/uri/UriGrantsManagerService;
    .registers 3
    .param p0, "systemDir"    # Ljava/io/File;

    .line 166
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    .line 167
    .local v0, "service":Lcom/android/server/uri/UriGrantsManagerService;
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 168
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 169
    return-object v0
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;

    .line 1051
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1054
    return-void

    .line 1052
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 8
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 732
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 733
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_13

    .line 734
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 735
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 738
    :cond_13
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 739
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-nez v1, :cond_24

    .line 740
    new-instance v2, Lcom/android/server/uri/UriPermission;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    move-object v1, v2

    .line 741
    invoke-virtual {v0, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :cond_24
    return-object v1
.end method

.method private findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 5
    .param p1, "targetUid"    # I
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 1036
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1037
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_11

    .line 1038
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    return-object v1

    .line 1040
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 6
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "pmFlags"    # I

    .line 1057
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    or-int/lit16 v1, p3, 0x800

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method private grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .registers 25
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "modeFlags"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I

    .line 230
    move-object/from16 v0, p4

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 231
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 230
    const/4 v13, 0x0

    const/4 v14, 0x2

    const-string/jumbo v15, "grantUriPermissionFromOwner"

    const/16 v16, 0x0

    move/from16 v12, p7

    invoke-virtual/range {v9 .. v16}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 234
    .end local p7    # "targetUserId":I
    .local v9, "targetUserId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v10

    .line 235
    .local v10, "owner":Lcom/android/server/uri/UriPermissionOwner;
    if-eqz v10, :cond_72

    .line 238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v11, p2

    if-eq v11, v1, :cond_3d

    .line 239
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_34

    goto :goto_3d

    .line 242
    :cond_34
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "nice try"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_3d
    :goto_3d
    if-eqz p3, :cond_65

    .line 248
    if-eqz v0, :cond_58

    .line 252
    new-instance v4, Lcom/android/server/uri/GrantUri;

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct {v4, v13, v0, v12}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move-object v6, v10

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    .line 254
    return-void

    .line 249
    :cond_58
    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null uri"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_65
    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null target"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_72
    move/from16 v11, p2

    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .registers 16
    .param p1, "targetUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 749
    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 750
    return-void

    .line 759
    :cond_7
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "authority":Ljava/lang/String;
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 762
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_32

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content provider found for grant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UriGrantsManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-void

    .line 768
    :cond_32
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 769
    :try_start_35
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v3

    .line 770
    .local v3, "perm":Lcom/android/server/uri/UriPermission;
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_53

    .line 771
    invoke-virtual {v3, p4, p5}, Lcom/android/server/uri/UriPermission;->grantModes(ILcom/android/server/uri/UriPermissionOwner;)Z

    .line 772
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v6, 0x0

    .line 773
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v9, 0x0

    .line 772
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 774
    return-void

    .line 770
    .end local v3    # "perm":Lcom/android/server/uri/UriPermission;
    :catchall_53
    move-exception v3

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v3
.end method

.method private grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 11
    .param p1, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 779
    if-nez p1, :cond_3

    .line 780
    return-void

    .line 782
    :cond_3
    iget-object v0, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 783
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_23

    .line 784
    iget v3, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget-object v4, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 785
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/uri/GrantUri;

    iget v6, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    .line 784
    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 783
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 787
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method private grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .registers 15
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;
    .param p6, "targetUserId"    # I

    .line 791
    if-eqz p2, :cond_21

    .line 794
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, p2, v1, p6}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v0

    .line 797
    .local v0, "targetUid":I
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    .line 799
    if-gez v0, :cond_17

    .line 800
    return-void

    .line 803
    :cond_17
    move-object v1, p0

    move v2, v0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 804
    return-void

    .line 792
    .end local v0    # "targetUid":I
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;

    .line 529
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "uriAuth":Ljava/lang/String;
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 531
    .local v1, "cpiAuth":Ljava/lang/String;
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 532
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 534
    :cond_14
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "cpiAuths":[Ljava/lang/String;
    array-length v3, v2

    .line 536
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_2b

    .line 537
    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    return v5

    .line 536
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 539
    .end local v4    # "i":I
    :cond_2b
    const/4 v4, 0x0

    return v4
.end method

.method private maybePrunePersistedUriGrantsLocked(I)Z
    .registers 9
    .param p1, "uid"    # I

    .line 550
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 551
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 552
    :cond_c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v3, 0x200

    if-ge v2, v3, :cond_15

    return v1

    .line 554
    :cond_15
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 555
    .local v2, "persisted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 556
    .local v5, "perm":Lcom/android/server/uri/UriPermission;
    iget v6, v5, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v6, :cond_34

    .line 557
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v5    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_34
    goto :goto_21

    .line 561
    :cond_35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 562
    .local v4, "trimCount":I
    if-gtz v4, :cond_3d

    return v1

    .line 564
    :cond_3d
    new-instance v1, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v1}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 565
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_46
    if-ge v1, v4, :cond_58

    .line 566
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 570
    .local v3, "perm":Lcom/android/server/uri/UriPermission;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 571
    invoke-direct {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 565
    .end local v3    # "perm":Lcom/android/server/uri/UriPermission;
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 574
    .end local v1    # "i":I
    :cond_58
    const/4 v1, 0x1

    return v1
.end method

.method private readGrantedUriPermissionsLocked()V
    .registers 32

    .line 659
    move-object/from16 v1, p0

    const-string v2, "Failed reading Uri grants"

    const-string v3, "UriGrantsManagerService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 661
    .local v4, "now":J
    const/4 v6, 0x0

    .line 663
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_b
    iget-object v0, v1, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v6, v0

    .line 664
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 665
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 668
    :goto_1f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_148

    .line 669
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 670
    .local v7, "tag":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v8, v9, :cond_13a

    .line 671
    const-string/jumbo v9, "uri-grant"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_133

    .line 674
    const-string/jumbo v9, "userHandle"

    const/16 v10, -0x2710

    invoke-static {v0, v9, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 676
    .local v9, "userHandle":I
    if-eq v9, v10, :cond_46

    .line 678
    move v10, v9

    .line 679
    .local v10, "sourceUserId":I
    move v11, v9

    move v15, v11

    .local v11, "targetUserId":I
    goto :goto_55

    .line 681
    .end local v10    # "sourceUserId":I
    .end local v11    # "targetUserId":I
    :cond_46
    const-string/jumbo v10, "sourceUserId"

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 682
    .restart local v10    # "sourceUserId":I
    const-string/jumbo v11, "targetUserId"

    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    move v15, v11

    .line 684
    .local v15, "targetUserId":I
    :goto_55
    const-string/jumbo v11, "sourcePkg"

    const/4 v12, 0x0

    invoke-interface {v0, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    .line 685
    .local v14, "sourcePkg":Ljava/lang/String;
    const-string/jumbo v11, "targetPkg"

    invoke-interface {v0, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    .line 686
    .local v13, "targetPkg":Ljava/lang/String;
    const-string/jumbo v11, "uri"

    invoke-interface {v0, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object v12, v11

    .line 687
    .local v12, "uri":Landroid/net/Uri;
    const-string/jumbo v11, "prefix"

    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    move/from16 v17, v11

    .line 688
    .local v17, "prefix":Z
    const-string/jumbo v11, "modeFlags"

    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    .line 689
    .local v11, "modeFlags":I
    move-object/from16 v18, v7

    .end local v7    # "tag":Ljava/lang/String;
    .local v18, "tag":Ljava/lang/String;
    const-string v7, "createdTime"

    invoke-static {v0, v7, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 694
    .local v21, "createdTime":J
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v0

    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v19, "in":Lorg/xmlpull/v1/XmlPullParser;
    const/high16 v0, 0xc0000

    invoke-direct {v1, v7, v10, v0}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 696
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_f9

    iget-object v7, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 697
    iget-object v7, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_a4
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_a4} :catch_166
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_a4} :catch_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_a4} :catch_151
    .catchall {:try_start_b .. :try_end_a4} :catchall_14d

    move-wide/from16 v23, v4

    .end local v4    # "now":J
    .local v23, "now":J
    const/16 v4, 0x2000

    :try_start_a8
    invoke-virtual {v7, v13, v4, v15}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v4

    .line 699
    .local v4, "targetUid":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_ed

    .line 700
    new-instance v5, Lcom/android/server/uri/GrantUri;

    .line 701
    if-eqz v17, :cond_b6

    const/16 v7, 0x80

    goto :goto_b7

    :cond_b6
    const/4 v7, 0x0

    :goto_b7
    invoke-direct {v5, v10, v12, v7}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 702
    .local v5, "grantUri":Lcom/android/server/uri/GrantUri;
    invoke-direct {v1, v14, v13, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v7

    .line 704
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    move-object/from16 v20, v13

    move-object/from16 v16, v14

    move-wide/from16 v13, v21

    .end local v14    # "sourcePkg":Ljava/lang/String;
    .end local v21    # "createdTime":J
    .local v13, "createdTime":J
    .local v16, "sourcePkg":Ljava/lang/String;
    .local v20, "targetPkg":Ljava/lang/String;
    invoke-virtual {v7, v11, v13, v14}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    .line 705
    move-object/from16 v21, v5

    .end local v5    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v21, "grantUri":Lcom/android/server/uri/GrantUri;
    iget-object v5, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/16 v22, 0x0

    .line 707
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v25

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v26, 0x0

    .line 705
    move/from16 v27, v11

    .end local v11    # "modeFlags":I
    .local v27, "modeFlags":I
    move-object v11, v5

    move-object v5, v12

    .end local v12    # "uri":Landroid/net/Uri;
    .local v5, "uri":Landroid/net/Uri;
    move v12, v15

    move-wide/from16 v28, v13

    .end local v13    # "createdTime":J
    .local v28, "createdTime":J
    move-object/from16 v13, v22

    move-object/from16 v30, v16

    .end local v16    # "sourcePkg":Ljava/lang/String;
    .local v30, "sourcePkg":Ljava/lang/String;
    move/from16 v14, v25

    move/from16 v22, v15

    .end local v15    # "targetUserId":I
    .local v22, "targetUserId":I
    move v15, v1

    move/from16 v16, v26

    invoke-virtual/range {v11 .. v16}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    goto :goto_f8

    .line 699
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    .end local v20    # "targetPkg":Ljava/lang/String;
    .end local v22    # "targetUserId":I
    .end local v27    # "modeFlags":I
    .end local v28    # "createdTime":J
    .end local v30    # "sourcePkg":Ljava/lang/String;
    .restart local v11    # "modeFlags":I
    .restart local v12    # "uri":Landroid/net/Uri;
    .local v13, "targetPkg":Ljava/lang/String;
    .restart local v14    # "sourcePkg":Ljava/lang/String;
    .restart local v15    # "targetUserId":I
    .local v21, "createdTime":J
    :cond_ed
    move/from16 v27, v11

    move-object v5, v12

    move-object/from16 v20, v13

    move-object/from16 v30, v14

    move-wide/from16 v28, v21

    move/from16 v22, v15

    .line 711
    .end local v4    # "targetUid":I
    .end local v11    # "modeFlags":I
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "targetPkg":Ljava/lang/String;
    .end local v14    # "sourcePkg":Ljava/lang/String;
    .end local v15    # "targetUserId":I
    .end local v21    # "createdTime":J
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v20    # "targetPkg":Ljava/lang/String;
    .restart local v22    # "targetUserId":I
    .restart local v27    # "modeFlags":I
    .restart local v28    # "createdTime":J
    .restart local v30    # "sourcePkg":Ljava/lang/String;
    :goto_f8
    goto :goto_140

    .line 696
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v20    # "targetPkg":Ljava/lang/String;
    .end local v22    # "targetUserId":I
    .end local v23    # "now":J
    .end local v27    # "modeFlags":I
    .end local v28    # "createdTime":J
    .end local v30    # "sourcePkg":Ljava/lang/String;
    .local v4, "now":J
    .restart local v11    # "modeFlags":I
    .restart local v12    # "uri":Landroid/net/Uri;
    .restart local v13    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "sourcePkg":Ljava/lang/String;
    .restart local v15    # "targetUserId":I
    .restart local v21    # "createdTime":J
    :cond_f9
    move-wide/from16 v23, v4

    move/from16 v27, v11

    move-object v5, v12

    move-object/from16 v20, v13

    move-object/from16 v30, v14

    move-wide/from16 v28, v21

    move/from16 v22, v15

    .line 712
    .end local v4    # "now":J
    .end local v11    # "modeFlags":I
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "targetPkg":Ljava/lang/String;
    .end local v14    # "sourcePkg":Ljava/lang/String;
    .end local v15    # "targetUserId":I
    .end local v21    # "createdTime":J
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v20    # "targetPkg":Ljava/lang/String;
    .restart local v22    # "targetUserId":I
    .restart local v23    # "now":J
    .restart local v27    # "modeFlags":I
    .restart local v28    # "createdTime":J
    .restart local v30    # "sourcePkg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persisted grant for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " had source "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v30

    .end local v30    # "sourcePkg":Ljava/lang/String;
    .local v4, "sourcePkg":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " but instead found "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_12c} :catch_131
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_12c} :catch_12f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a8 .. :try_end_12c} :catch_12d
    .catchall {:try_start_a8 .. :try_end_12c} :catchall_161

    goto :goto_140

    .line 722
    .end local v0    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "sourcePkg":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v8    # "type":I
    .end local v9    # "userHandle":I
    .end local v10    # "sourceUserId":I
    .end local v17    # "prefix":Z
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "targetPkg":Ljava/lang/String;
    .end local v22    # "targetUserId":I
    .end local v27    # "modeFlags":I
    .end local v28    # "createdTime":J
    :catch_12d
    move-exception v0

    goto :goto_154

    .line 720
    :catch_12f
    move-exception v0

    goto :goto_15c

    .line 718
    :catch_131
    move-exception v0

    goto :goto_169

    .line 671
    .end local v23    # "now":J
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v4, "now":J
    .local v7, "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_133
    move-object/from16 v19, v0

    move-wide/from16 v23, v4

    move-object/from16 v18, v7

    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "now":J
    .end local v7    # "tag":Ljava/lang/String;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "now":J
    goto :goto_140

    .line 670
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "now":J
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "now":J
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_13a
    move-object/from16 v19, v0

    move-wide/from16 v23, v4

    move-object/from16 v18, v7

    .line 717
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "now":J
    .end local v7    # "tag":Ljava/lang/String;
    .restart local v19    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "now":J
    :goto_140
    move-object/from16 v1, p0

    move-object/from16 v0, v19

    move-wide/from16 v4, v23

    goto/16 :goto_1f

    .line 668
    .end local v19    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "now":J
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "now":J
    :cond_148
    move-object/from16 v19, v0

    move-wide/from16 v23, v4

    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "now":J
    .end local v8    # "type":I
    .restart local v23    # "now":J
    goto :goto_169

    .line 725
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catchall_14d
    move-exception v0

    move-wide/from16 v23, v4

    .end local v4    # "now":J
    .restart local v23    # "now":J
    goto :goto_162

    .line 722
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_151
    move-exception v0

    move-wide/from16 v23, v4

    .line 723
    .end local v4    # "now":J
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v23    # "now":J
    :goto_154
    :try_start_154
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    nop

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_16a

    .line 720
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_159
    move-exception v0

    move-wide/from16 v23, v4

    .line 721
    .end local v4    # "now":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v23    # "now":J
    :goto_15c
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15f
    .catchall {:try_start_154 .. :try_end_15f} :catchall_161

    .line 725
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_16a

    :catchall_161
    move-exception v0

    :goto_162
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 726
    throw v0

    .line 718
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_166
    move-exception v0

    move-wide/from16 v23, v4

    .line 725
    .end local v4    # "now":J
    .restart local v23    # "now":J
    :goto_169
    nop

    :goto_16a
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 726
    nop

    .line 727
    return-void
.end method

.method private removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    .registers 5
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 1018
    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_5

    .line 1019
    return-void

    .line 1021
    :cond_5
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1023
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_12

    .line 1024
    return-void

    .line 1028
    :cond_12
    iget-object v1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1030
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1032
    :cond_24
    return-void
.end method

.method private removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "persistable"    # Z
    .param p4, "targetOnly"    # Z

    .line 459
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    if-eqz p1, :cond_6

    goto :goto_e

    .line 460
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must narrow by either package or user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_e
    :goto_e
    const/4 v1, 0x0

    .line 465
    .local v1, "persistChanged":Z
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 466
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_8e

    .line 467
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 468
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 471
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v6, 0x1

    if-eq p2, v0, :cond_2f

    .line 472
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_8c

    .line 473
    :cond_2f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 474
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 477
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_57

    if-nez p4, :cond_4f

    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_57

    :cond_4f
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 478
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 482
    :cond_57
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    if-nez p3, :cond_6a

    .line 483
    goto :goto_37

    .line 485
    :cond_6a
    if-eqz p3, :cond_6e

    .line 486
    move v9, v0

    goto :goto_70

    :cond_6e
    const/16 v9, -0x41

    .line 485
    :goto_70
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v1, v9

    .line 490
    iget v9, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v9, :cond_7c

    .line 491
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 494
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_7c
    goto :goto_37

    .line 496
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :cond_7d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 497
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 498
    add-int/lit8 v2, v2, -0x1

    .line 499
    add-int/lit8 v3, v3, -0x1

    .line 466
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_8c
    add-int/2addr v3, v6

    goto :goto_16

    .line 504
    .end local v3    # "i":I
    :cond_8e
    if-eqz v1, :cond_93

    .line 505
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 507
    :cond_93
    return-void
.end method

.method private revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 15
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I

    .line 810
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "authority":Ljava/lang/String;
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0xc0000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 813
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_2b

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content provider found for permission revoke: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 814
    const-string v3, "UriGrantsManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return-void

    .line 819
    :cond_2b
    invoke-direct {p0, v1, p3, p2, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    .line 821
    .local v2, "callerHoldsPermissions":Z
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 822
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move v9, v2

    :try_start_38
    invoke-direct/range {v4 .. v9}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V

    .line 824
    monitor-exit v3

    .line 825
    return-void

    .line 824
    :catchall_3d
    move-exception v4

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_3d

    throw v4
.end method

.method private revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V
    .registers 16
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "callerHoldsPermissions"    # Z

    .line 831
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p5, :cond_5d

    .line 834
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 835
    .local v2, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v2, :cond_5c

    .line 836
    const/4 v3, 0x0

    .line 837
    .local v3, "persistChanged":Z
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_14
    if-ltz v4, :cond_4c

    .line 838
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 839
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_27

    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 840
    goto :goto_49

    .line 842
    :cond_27
    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v5, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v6, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v5, v6, :cond_49

    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v6, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 843
    invoke-virtual {v5, v6}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 846
    or-int/lit8 v5, p4, 0x40

    invoke-virtual {v1, v5, v0}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v5

    or-int/2addr v3, v5

    .line 848
    iget v5, v1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v5, :cond_49

    .line 849
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 837
    .end local v1    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_49
    :goto_49
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 853
    .end local v4    # "i":I
    :cond_4c
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 854
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 856
    :cond_57
    if-eqz v3, :cond_5c

    .line 857
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 860
    .end local v3    # "persistChanged":Z
    :cond_5c
    return-void

    .line 863
    .end local v2    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_5d
    const/4 v2, 0x0

    .line 866
    .local v2, "persistChanged":Z
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_65
    if-ltz v3, :cond_c5

    .line 867
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 868
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 870
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "j":I
    :goto_7a
    if-ltz v6, :cond_b7

    .line 871
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 872
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_8d

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8d

    .line 873
    goto :goto_b4

    .line 875
    :cond_8d
    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v8, v8, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v9, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v8, v9, :cond_b4

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v8, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v9, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 876
    invoke-virtual {v8, v9}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 879
    or-int/lit8 v8, p4, 0x40

    if-nez p1, :cond_a7

    move v9, v1

    goto :goto_a8

    :cond_a7
    move v9, v0

    :goto_a8
    invoke-virtual {v7, v8, v9}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 882
    iget v8, v7, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v8, :cond_b4

    .line 883
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 870
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_b4
    :goto_b4
    add-int/lit8 v6, v6, -0x1

    goto :goto_7a

    .line 888
    .end local v6    # "j":I
    :cond_b7
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 889
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 866
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_c2
    add-int/lit8 v3, v3, -0x1

    goto :goto_65

    .line 893
    .end local v3    # "i":I
    :cond_c5
    if-eqz v2, :cond_ca

    .line 894
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 896
    :cond_ca
    return-void
.end method

.method private schedulePersistUriGrants()V
    .registers 5

    .line 1044
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1045
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1048
    :cond_14
    return-void
.end method

.method private start()V
    .registers 4

    .line 178
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method private writeGrantedUriPermissionsLocked()V
    .registers 12

    .line 1325
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1328
    .local v0, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1329
    .local v2, "persist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission$Snapshot;>;"
    monitor-enter p0

    .line 1330
    :try_start_9
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1331
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v3, :cond_3d

    .line 1332
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1333
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 1334
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_39

    .line 1335
    invoke-virtual {v7}, Lcom/android/server/uri/UriPermission;->snapshot()Lcom/android/server/uri/UriPermission$Snapshot;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_39
    goto :goto_22

    .line 1331
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1339
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_e2

    .line 1341
    const/4 v3, 0x0

    .line 1343
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_3f
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 1345
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1346
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1347
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1348
    const-string/jumbo v5, "uri-grants"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1349
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ca

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission$Snapshot;

    .line 1350
    .local v7, "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    const-string/jumbo v8, "uri-grant"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1351
    const-string/jumbo v8, "sourceUserId"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v9, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1352
    const-string/jumbo v8, "targetUserId"

    iget v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1353
    const-string/jumbo v8, "sourcePkg"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1354
    const-string/jumbo v8, "targetPkg"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1355
    const-string/jumbo v8, "uri"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1356
    const-string/jumbo v8, "prefix"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1357
    const-string/jumbo v8, "modeFlags"

    iget v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1358
    const-string v8, "createdTime"

    iget-wide v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    invoke-static {v4, v8, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1359
    const-string/jumbo v8, "uri-grant"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1360
    nop

    .end local v7    # "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    goto :goto_67

    .line 1361
    :cond_ca
    const-string/jumbo v5, "uri-grants"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1362
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1364
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_d8} :catch_d9

    .line 1369
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_e1

    .line 1365
    :catch_d9
    move-exception v4

    .line 1366
    .local v4, "e":Ljava/io/IOException;
    if-eqz v3, :cond_e1

    .line 1367
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1370
    .end local v4    # "e":Ljava/io/IOException;
    :cond_e1
    :goto_e1
    return-void

    .line 1339
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_e2
    move-exception v3

    :try_start_e3
    monitor-exit p0
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v3
.end method


# virtual methods
.method public clearGrantedUriPermissions(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 387
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    const/4 v1, 0x1

    :try_start_d
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    .line 391
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/GrantedUriPermission;>;"
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_11
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 315
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v2, :cond_4e

    .line 316
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 317
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_23
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 318
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 319
    .local v6, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_39

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    :cond_39
    iget v7, v6, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v7, p2, :cond_48

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_48

    .line 322
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->buildGrantedUriPermission()Landroid/app/GrantedUriPermission;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v6    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 315
    .end local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v5    # "j":I
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 326
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_11 .. :try_end_4f} :catchall_55

    .line 327
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 326
    :catchall_55
    move-exception v2

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v2
.end method

.method getLocalService()Lcom/android/server/uri/UriGrantsManagerInternal;
    .registers 3

    .line 174
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$1;)V

    return-object v0
.end method

.method public getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .param p3, "persistedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 259
    const-string/jumbo v0, "getUriPermissions"

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 260
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 263
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 264
    .local v1, "callingUserId":I
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 265
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    const/high16 v3, 0xc0000

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v3

    .line 267
    .local v3, "packageUid":I
    if-ne v3, v0, :cond_b7

    .line 272
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 273
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 274
    if-eqz p2, :cond_74

    .line 275
    :try_start_2d
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 277
    .local v6, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v6, :cond_4e

    .line 278
    const-string v7, "UriGrantsManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No permission grants found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 280
    :cond_4e
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4f
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_73

    .line 281
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 282
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_70

    if-eqz p3, :cond_69

    iget v9, v8, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v9, :cond_70

    .line 284
    :cond_69
    invoke-virtual {v8}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_70
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 288
    .end local v6    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v7    # "j":I
    :cond_73
    :goto_73
    goto :goto_ad

    .line 289
    :cond_74
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 290
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7b
    if-ge v7, v6, :cond_ad

    .line 291
    iget-object v8, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 292
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 293
    .local v8, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_86
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_aa

    .line 294
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/uri/UriPermission;

    .line 295
    .local v10, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v11, v10, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a7

    if-eqz p3, :cond_a0

    iget v11, v10, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v11, :cond_a7

    .line 297
    :cond_a0
    invoke-virtual {v10}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v10    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_a7
    add-int/lit8 v9, v9, 0x1

    goto :goto_86

    .line 290
    .end local v8    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v9    # "j":I
    :cond_aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b

    .line 302
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_ad
    :goto_ad
    monitor-exit v5
    :try_end_ae
    .catchall {:try_start_2d .. :try_end_ae} :catchall_b4

    .line 303
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v5

    .line 302
    :catchall_b4
    move-exception v6

    :try_start_b5
    monitor-exit v5
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v6

    .line 268
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    :cond_b7
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not belong to calling UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "modeFlags"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I

    .line 219
    invoke-direct/range {p0 .. p7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 221
    return-void
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 405
    const/4 v0, 0x0

    if-eqz p3, :cond_14

    .line 406
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v3, "releasePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p3, v0, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v1

    .local v1, "uid":I
    goto :goto_1e

    .line 410
    .end local v1    # "uid":I
    :cond_14
    const-string/jumbo v1, "releasePersistableUriPermission"

    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 414
    .restart local v1    # "uid":I
    :goto_1e
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 417
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    const/4 v3, 0x0

    .line 420
    .local v3, "persistChanged":Z
    :try_start_26
    new-instance v4, Lcom/android/server/uri/GrantUri;

    invoke-direct {v4, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v0

    .line 422
    .local v0, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/16 v5, 0x80

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v4

    .line 424
    .local v4, "prefixPerm":Lcom/android/server/uri/UriPermission;
    if-nez v0, :cond_64

    if-nez v4, :cond_64

    if-eqz p3, :cond_41

    goto :goto_64

    .line 425
    :cond_41
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No permission grants found for UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and Uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v5

    .line 429
    .restart local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :cond_64
    :goto_64
    if-eqz v0, :cond_6e

    .line 430
    invoke-virtual {v0, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 431
    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 433
    :cond_6e
    if-eqz v4, :cond_78

    .line 434
    invoke-virtual {v4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 435
    invoke-direct {p0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 438
    :cond_78
    if-eqz v3, :cond_7d

    .line 439
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 441
    .end local v0    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v3    # "persistChanged":Z
    .end local v4    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    :cond_7d
    monitor-exit v2

    .line 442
    return-void

    .line 441
    :catchall_7f
    move-exception v0

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_26 .. :try_end_81} :catchall_7f

    throw v0
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 340
    const/4 v0, 0x0

    if-eqz p3, :cond_14

    .line 341
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v3, "takePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p3, v0, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v1

    .local v1, "uid":I
    goto :goto_1e

    .line 345
    .end local v1    # "uid":I
    :cond_14
    const-string/jumbo v1, "takePersistableUriPermission"

    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 349
    .restart local v1    # "uid":I
    :goto_1e
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 352
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 353
    const/4 v3, 0x0

    .line 355
    .local v3, "persistChanged":Z
    :try_start_26
    new-instance v4, Lcom/android/server/uri/GrantUri;

    invoke-direct {v4, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v4

    .line 357
    .local v4, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v5, Lcom/android/server/uri/GrantUri;

    const/16 v6, 0x80

    invoke-direct {v5, p4, p1, v6}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v5

    .line 360
    .local v5, "prefixPerm":Lcom/android/server/uri/UriPermission;
    const/4 v6, 0x1

    if-eqz v4, :cond_44

    iget v7, v4, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v7, p2

    if-ne v7, p2, :cond_44

    move v7, v6

    goto :goto_45

    :cond_44
    move v7, v0

    .line 362
    .local v7, "exactValid":Z
    :goto_45
    if-eqz v5, :cond_4d

    iget v8, v5, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v8, p2

    if-ne v8, p2, :cond_4d

    move v0, v6

    .line 365
    .local v0, "prefixValid":Z
    :cond_4d
    if-nez v7, :cond_75

    if-eqz v0, :cond_52

    goto :goto_75

    .line 366
    :cond_52
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No persistable permission grants found for UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and Uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v6

    .line 370
    .restart local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :cond_75
    :goto_75
    if-eqz v7, :cond_7c

    .line 371
    invoke-virtual {v4, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v6

    or-int/2addr v3, v6

    .line 373
    :cond_7c
    if-eqz v0, :cond_83

    .line 374
    invoke-virtual {v5, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v6

    or-int/2addr v3, v6

    .line 377
    :cond_83
    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrantsLocked(I)Z

    move-result v6

    or-int/2addr v3, v6

    .line 379
    if-eqz v3, :cond_8d

    .line 380
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 382
    .end local v0    # "prefixValid":Z
    .end local v3    # "persistChanged":Z
    .end local v4    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v5    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    .end local v7    # "exactValid":Z
    :cond_8d
    monitor-exit v2

    .line 383
    return-void

    .line 382
    :catchall_8f
    move-exception v0

    monitor-exit v2
    :try_end_91
    .catchall {:try_start_26 .. :try_end_91} :catchall_8f

    throw v0
.end method
