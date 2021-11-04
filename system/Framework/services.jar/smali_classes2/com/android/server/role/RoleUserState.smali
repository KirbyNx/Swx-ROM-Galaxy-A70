.class public Lcom/android/server/role/RoleUserState;
.super Ljava/lang/Object;
.source "RoleUserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/role/RoleUserState$Callback;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_PACKAGES_HASH:Ljava/lang/String; = "packagesHash"

.field private static final ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final ROLES_FILE_NAME:Ljava/lang/String; = "roles.xml"

.field private static final TAG_HOLDER:Ljava/lang/String; = "holder"

.field private static final TAG_ROLE:Ljava/lang/String; = "role"

.field private static final TAG_ROLES:Ljava/lang/String; = "roles"

.field public static final VERSION_UNDEFINED:I = -0x1

.field private static final WRITE_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mCallback:Lcom/android/server/role/RoleUserState$Callback;

.field private mDestroyed:Z

.field private final mLock:Ljava/lang/Object;

.field private mPackagesHash:Ljava/lang/String;

.field private final mPersistence:Lcom/android/role/persistence/RolesPersistence;

.field private mRoles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field private mVersion:I

.field private final mWriteHandler:Landroid/os/Handler;

.field private mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    const-class v0, Lcom/android/server/role/RoleUserState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/android/server/role/RoleUserState$Callback;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "callback"    # Lcom/android/server/role/RoleUserState$Callback;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcom/android/role/persistence/RolesPersistence;->createInstance()Lcom/android/role/persistence/RolesPersistence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mPersistence:Lcom/android/role/persistence/RolesPersistence;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    .line 109
    new-instance v0, Landroid/os/Handler;

    .line 110
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    .line 119
    iput p1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    .line 120
    iput-object p2, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    .line 122
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->readFile()V

    .line 123
    return-void
.end method

.method private static getFile(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 568
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "roles.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$e8W_Zaq_FyocW_DX1qcbN0ld0co(Lcom/android/server/role/RoleUserState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->writeFile()V

    return-void
.end method

.method private parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 463
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 467
    .local v0, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 468
    .local v1, "innerDepth":I
    :cond_b
    :goto_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_3b

    .line 469
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_1c

    const/4 v3, 0x3

    if-eq v4, v3, :cond_3b

    .line 470
    :cond_1c
    if-gt v5, v1, :cond_b

    const/4 v3, 0x2

    if-eq v4, v3, :cond_22

    .line 471
    goto :goto_b

    .line 474
    :cond_22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "holder"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 475
    const/4 v3, 0x0

    const-string/jumbo v6, "name"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, "roleHolder":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v3    # "roleHolder":Ljava/lang/String;
    goto :goto_b

    .line 480
    .end local v5    # "depth":I
    :cond_3b
    return-object v0
.end method

.method private parseRolesLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 439
    const/4 v0, 0x0

    const-string/jumbo v1, "version"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 440
    const-string/jumbo v1, "packagesHash"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 445
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 446
    .local v1, "innerDepth":I
    :cond_22
    :goto_22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_57

    .line 447
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_33

    const/4 v3, 0x3

    if-eq v4, v3, :cond_57

    .line 448
    :cond_33
    if-gt v5, v1, :cond_22

    const/4 v3, 0x2

    if-eq v4, v3, :cond_39

    .line 449
    goto :goto_22

    .line 452
    :cond_39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "role"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 453
    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "roleName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleUserState;->parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v6

    .line 455
    .local v6, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .end local v3    # "roleName":Ljava/lang/String;
    .end local v6    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_22

    .line 458
    .end local v5    # "depth":I
    :cond_57
    return-void
.end method

.method private parseXmlLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 422
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 423
    .local v0, "innerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_2e

    .line 424
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_17

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2e

    .line 425
    :cond_17
    if-gt v4, v0, :cond_6

    const/4 v2, 0x2

    if-eq v3, v2, :cond_1d

    .line 426
    goto :goto_6

    .line 429
    :cond_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "roles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 430
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleUserState;->parseRolesLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 431
    return-void

    .line 434
    .end local v4    # "depth":I
    :cond_2e
    sget-object v1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Missing <roles> in roles.xml"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void
.end method

.method private readFile()V
    .registers 8

    .line 375
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPersistence:Lcom/android/role/persistence/RolesPersistence;

    iget v2, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/role/persistence/RolesPersistence;->readForUser(Landroid/os/UserHandle;)Lcom/android/role/persistence/RolesState;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_f} :catch_12
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    .line 384
    .local v1, "roles":Lcom/android/role/persistence/RolesState;
    goto :goto_26

    .line 401
    .end local v1    # "roles":Lcom/android/role/persistence/RolesState;
    :catchall_10
    move-exception v1

    goto :goto_73

    .line 379
    :catch_12
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_13
    const-string v2, "Failed to read roles.xml. Initiate the file."

    invoke-static {v2}, Lcom/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 381
    iget v2, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    const-string/jumbo v3, "roles.xml"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerSamsungUtils;->getPermissionApexFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 382
    .local v2, "rolesFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 383
    const/4 v3, 0x0

    move-object v1, v3

    .line 386
    .end local v2    # "rolesFile":Ljava/io/File;
    .local v1, "roles":Lcom/android/role/persistence/RolesState;
    :goto_26
    if-nez v1, :cond_30

    .line 387
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->readLegacyFileLocked()V

    .line 388
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 389
    monitor-exit v0

    return-void

    .line 392
    :cond_30
    invoke-virtual {v1}, Lcom/android/role/persistence/RolesState;->getVersion()I

    move-result v2

    iput v2, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 393
    invoke-virtual {v1}, Lcom/android/role/persistence/RolesState;->getPackagesHash()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 395
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 396
    invoke-virtual {v1}, Lcom/android/role/persistence/RolesState;->getRoles()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 397
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 398
    .local v4, "roleName":Ljava/lang/String;
    new-instance v5, Landroid/util/ArraySet;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 399
    .local v5, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "roleName":Ljava/lang/String;
    .end local v5    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_4d

    .line 401
    .end local v1    # "roles":Lcom/android/role/persistence/RolesState;
    :cond_71
    monitor-exit v0

    .line 402
    return-void

    .line 401
    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_13 .. :try_end_74} :catchall_10

    throw v1
.end method

.method private readLegacyFileLocked()V
    .registers 6

    .line 405
    iget v0, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v0}, Lcom/android/server/role/RoleUserState;->getFile(I)Ljava/io/File;

    move-result-object v0

    .line 406
    .local v0, "file":Ljava/io/File;
    :try_start_6
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_f} :catch_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_f} :catch_33
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_33

    .line 407
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 408
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 409
    invoke-direct {p0, v2}, Lcom/android/server/role/RoleUserState;->parseXmlLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 410
    sget-object v3, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Read roles.xml successfully"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_27

    .line 411
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v1, :cond_54

    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_26} :catch_33
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_33

    goto :goto_54

    .line 406
    :catchall_27
    move-exception v2

    if-eqz v1, :cond_32

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v3

    :try_start_2f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/role/RoleUserState;
    :cond_32
    :goto_32
    throw v2
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_33} :catch_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_33} :catch_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_33

    .line 413
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/role/RoleUserState;
    :catch_33
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse roles.xml: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 411
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4b
    move-exception v1

    .line 412
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "roles.xml not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_54
    :goto_54
    nop

    .line 416
    return-void
.end method

.method private scheduleWriteFileLocked()V
    .registers 5

    .line 346
    iget-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 347
    return-void

    .line 350
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    if-nez v0, :cond_19

    .line 351
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/role/-$$Lambda$RoleUserState$e8W_Zaq_FyocW_DX1qcbN0ld0co;->INSTANCE:Lcom/android/server/role/-$$Lambda$RoleUserState$e8W_Zaq_FyocW_DX1qcbN0ld0co;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    .line 355
    :cond_19
    return-void
.end method

.method private snapshotRolesLocked()Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 540
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 541
    .local v0, "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v2

    .local v2, "size":I
    :goto_c
    if-ge v1, v2, :cond_2a

    .line 542
    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 543
    .local v3, "roleName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 545
    .local v4, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v4, v5

    .line 546
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .end local v3    # "roleName":Ljava/lang/String;
    .end local v4    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 548
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2a
    return-object v0
.end method

.method private writeFile()V
    .registers 6

    .line 360
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 362
    monitor-exit v0

    return-void

    .line 365
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    .line 367
    new-instance v1, Lcom/android/role/persistence/RolesState;

    iget v2, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 368
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/role/persistence/RolesState;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    .line 369
    .local v1, "roles":Lcom/android/role/persistence/RolesState;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_26

    .line 371
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mPersistence:Lcom/android/role/persistence/RolesPersistence;

    iget v2, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/role/persistence/RolesPersistence;->writeForUser(Lcom/android/role/persistence/RolesState;Landroid/os/UserHandle;)V

    .line 372
    return-void

    .line 369
    .end local v1    # "roles":Lcom/android/role/persistence/RolesState;
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method


# virtual methods
.method public addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 275
    .local v1, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_2e

    .line 276
    sget-object v2, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add role holder for unknown role, role: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 280
    :cond_2e
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 281
    .local v2, "changed":Z
    if-eqz v2, :cond_37

    .line 282
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 284
    .end local v1    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_44

    .line 286
    if-eqz v2, :cond_42

    .line 287
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v3, p2}, Lcom/android/server/role/RoleUserState$Callback;->onRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_42
    const/4 v0, 0x1

    return v0

    .line 284
    .end local v2    # "changed":Z
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public addRoleName(Ljava/lang/String;)Z
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 217
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added new role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 220
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 222
    :cond_31
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 224
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public destroy()V
    .registers 4

    .line 556
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    if-nez v1, :cond_1d

    .line 560
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 561
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPersistence:Lcom/android/role/persistence/RolesPersistence;

    iget v2, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/role/persistence/RolesPersistence;->deleteForUser(Landroid/os/UserHandle;)V

    .line 562
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    .line 563
    monitor-exit v0

    .line 564
    return-void

    .line 558
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This RoleUserState has already been destroyed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/role/RoleUserState;
    throw v1

    .line 563
    .restart local p0    # "this":Lcom/android/server/role/RoleUserState;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 23
    .param p1, "dumpOutputStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "fieldId"    # J

    .line 493
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 494
    :try_start_7
    iget v0, v1, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 495
    .local v0, "version":I
    iget-object v4, v1, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 496
    .local v4, "packagesHash":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v5

    .line 497
    .local v5, "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_96

    .line 499
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 500
    .local v6, "fieldToken":J
    const-wide v8, 0x10500000001L

    iget v3, v1, Lcom/android/server/role/RoleUserState;->mUserId:I

    const-string/jumbo v10, "user_id"

    invoke-virtual {v2, v10, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 501
    const-wide v8, 0x10500000002L

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3, v8, v9, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 502
    const-wide v8, 0x10900000003L

    const-string/jumbo v3, "packages_hash"

    invoke-virtual {v2, v3, v8, v9, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 504
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 505
    .local v3, "rolesSize":I
    const/4 v8, 0x0

    .local v8, "rolesIndex":I
    :goto_3c
    if-ge v8, v3, :cond_92

    .line 506
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 507
    .local v9, "roleName":Ljava/lang/String;
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 509
    .local v10, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide v11, 0x20b00000004L

    const-string/jumbo v13, "roles"

    invoke-virtual {v2, v13, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 510
    .local v11, "rolesToken":J
    const-wide v13, 0x10900000001L

    const-string/jumbo v15, "name"

    invoke-virtual {v2, v15, v13, v14, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 512
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 513
    .local v13, "roleHoldersSize":I
    const/4 v14, 0x0

    .local v14, "roleHoldersIndex":I
    :goto_66
    if-ge v14, v13, :cond_86

    .line 514
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 516
    .local v15, "roleHolder":Ljava/lang/String;
    move/from16 v16, v0

    .end local v0    # "version":I
    .local v16, "version":I
    const-wide v0, 0x20900000002L

    move/from16 v17, v3

    .end local v3    # "rolesSize":I
    .local v17, "rolesSize":I
    const-string/jumbo v3, "holders"

    invoke-virtual {v2, v3, v0, v1, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 513
    .end local v15    # "roleHolder":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move/from16 v0, v16

    move/from16 v3, v17

    goto :goto_66

    .end local v16    # "version":I
    .end local v17    # "rolesSize":I
    .restart local v0    # "version":I
    .restart local v3    # "rolesSize":I
    :cond_86
    move/from16 v16, v0

    move/from16 v17, v3

    .line 519
    .end local v0    # "version":I
    .end local v3    # "rolesSize":I
    .end local v14    # "roleHoldersIndex":I
    .restart local v16    # "version":I
    .restart local v17    # "rolesSize":I
    invoke-virtual {v2, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 505
    .end local v9    # "roleName":Ljava/lang/String;
    .end local v10    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "rolesToken":J
    .end local v13    # "roleHoldersSize":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    goto :goto_3c

    .line 522
    .end local v8    # "rolesIndex":I
    .end local v16    # "version":I
    .end local v17    # "rolesSize":I
    .restart local v0    # "version":I
    .restart local v3    # "rolesSize":I
    :cond_92
    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 523
    return-void

    .line 497
    .end local v0    # "version":I
    .end local v3    # "rolesSize":I
    .end local v4    # "packagesHash":Ljava/lang/String;
    .end local v5    # "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v6    # "fieldToken":J
    :catchall_96
    move-exception v0

    :try_start_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v0
.end method

.method public getHeldRoles(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v1, "roleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 332
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_2d

    .line 333
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 334
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 337
    .end local v3    # "i":I
    :cond_2d
    monitor-exit v0

    return-object v1

    .line 338
    .end local v1    # "roleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "size":I
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getPackagesHash()Ljava/lang/String;
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 158
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 5
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 200
    .local v1, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_10

    .line 201
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 203
    :cond_10
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit v0

    return-object v2

    .line 204
    .end local v1    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getRolesAndHolders()Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 534
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public getVersion()I
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    monitor-exit v0

    return v1

    .line 131
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isRoleAvailable(Ljava/lang/String;)Z
    .registers 4
    .param p1, "roleName"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 186
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public removeRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 306
    .local v1, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_2e

    .line 307
    sget-object v2, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove role holder for unknown role, role: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 312
    :cond_2e
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 313
    .local v2, "changed":Z
    if-eqz v2, :cond_37

    .line 314
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 316
    .end local v1    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_44

    .line 318
    if-eqz v2, :cond_42

    .line 319
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, p2, v3}, Lcom/android/server/role/RoleUserState$Callback;->onRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_42
    const/4 v0, 0x1

    return v0

    .line 316
    .end local v2    # "changed":Z
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public setPackagesHash(Ljava/lang/String;)V
    .registers 4
    .param p1, "packagesHash"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 169
    monitor-exit v0

    return-void

    .line 171
    :cond_d
    iput-object p1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public setRoleNames(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p1, "roleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    const/4 v1, 0x0

    .line 236
    .local v1, "changed":Z
    :try_start_4
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_51

    .line 237
    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 239
    .local v3, "roleName":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 240
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 241
    .local v4, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    .line 242
    sget-object v5, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Holders of a removed role should have been cleaned up, role: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", holders: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_48
    iget-object v5, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 246
    const/4 v1, 0x1

    .line 236
    .end local v3    # "roleName":Ljava/lang/String;
    .end local v4    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 250
    .end local v2    # "i":I
    :cond_51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 251
    .local v2, "roleNamesSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_56
    if-ge v3, v2, :cond_66

    .line 252
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/role/RoleUserState;->addRoleName(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 255
    .end local v3    # "i":I
    :cond_66
    if-eqz v1, :cond_6b

    .line 256
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 258
    .end local v1    # "changed":Z
    .end local v2    # "roleNamesSize":I
    :cond_6b
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_4 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public setVersion(I)V
    .registers 4
    .param p1, "version"    # I

    .line 140
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    if-ne v1, p1, :cond_9

    .line 142
    monitor-exit v0

    return-void

    .line 144
    :cond_9
    iput p1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 145
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method
