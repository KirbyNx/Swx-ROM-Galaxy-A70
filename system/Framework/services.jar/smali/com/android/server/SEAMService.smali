.class public Lcom/android/server/SEAMService;
.super Lcom/samsung/android/knox/seams/ISEAMS$Stub;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SEAMService$BrHandler;
    }
.end annotation


# static fields
.field private static final DDC_DIR:Ljava/lang/String; = "/data/seams/ddc/"

.field private static final DDC_SEANDROID_FILE:Ljava/lang/String; = "/data/seams/ddc/mac_permissions.xml"

.field private static final OLD_DDC_SEANDROID_FILE:Ljava/lang/String; = "/data/security/mycontainer/mac_permissions.xml"

.field public static SELF_PID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SEAMService"

.field private static mInstance:Lcom/android/server/SEAMSContainer;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/SEAMService$BrHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field final mLock:Ljava/lang/Object;

.field private final mSKHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/android/server/SEAMService;->SELF_PID:I

    .line 48
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const-string v0, "SEAMService occurs exception"

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;-><init>()V

    .line 49
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/SEAMService;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    .line 62
    new-instance v1, Lcom/android/server/SEAMSContainer;

    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/SEAMSContainer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/SEAMService;->mInstance:Lcom/android/server/SEAMSContainer;

    .line 63
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SEAMService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 64
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v1, Lcom/android/server/SEAMService$BrHandler;

    iget-object v3, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/SEAMService$BrHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/SEAMService;->mHandler:Lcom/android/server/SEAMService$BrHandler;

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "ddcFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 70
    .local v3, "oldDDCFile":Ljava/io/File;
    new-instance v4, Lcom/android/server/SEAMService$1;

    const-string v5, "Service Keeper Thread"

    invoke-direct {v4, p0, v5}, Lcom/android/server/SEAMService$1;-><init>(Lcom/android/server/SEAMService;Ljava/lang/String;)V

    .line 84
    .local v4, "skThread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 85
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    sput v5, Lcom/android/server/SEAMService;->SELF_PID:I

    .line 88
    :try_start_47
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/seams/ddc/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v5, "ddcDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/seams/ddc/mac_permissions.xml"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 90
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_85

    .line 91
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_7b

    .line 92
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not exist. Creating dir"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_7b
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 95
    invoke-virtual {v5, v7, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 96
    invoke-virtual {v5, v7, v7}, Ljava/io/File;->setWritable(ZZ)Z

    goto :goto_8e

    .line 98
    :cond_85
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 99
    invoke-static {v7}, Lcom/android/server/pm/SELinuxMMAC;->setDDCFlag(Z)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_8e} :catch_8f

    .line 104
    .end local v5    # "ddcDir":Ljava/io/File;
    :cond_8e
    :goto_8e
    goto :goto_a8

    .line 102
    :catch_8f
    move-exception v5

    .line 103
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_a8
    :try_start_a8
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/security/mycontainer/mac_permissions.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 109
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_d1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_d1

    .line 110
    invoke-direct {p0, v3, v1}, Lcom/android/server/SEAMService;->migrationSEAMS(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 111
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "The migration is completed"

    invoke-virtual {v5, v2, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    .line 113
    :cond_ca
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "The migration is failed"

    invoke-virtual {v5, v2, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_d1} :catch_d2

    .line 118
    :cond_d1
    :goto_d1
    goto :goto_eb

    .line 116
    :catch_d2
    move-exception v5

    .line 117
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_eb
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/SKLogger;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SEAMService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SEAMService;

    .line 44
    iget-object v0, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "scannedLine"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;
    .param p4, "scanner"    # Ljava/util/Scanner;
    .param p5, "fileContents"    # Ljava/lang/StringBuilder;

    .line 153
    return-void
.end method

.method private static getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    .registers 3
    .param p0, "Container_Type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSeinfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;

    .line 760
    const-string/jumbo v0, "getSeinfo"

    .line 762
    .local v0, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 763
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 764
    .local v2, "pid":I
    const/4 v3, 0x0

    .line 765
    .local v3, "seinfo":Ljava/lang/String;
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 767
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    const-string v6, "SEAMService"

    if-nez p1, :cond_25

    .line 768
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "get App Info: packageName is null"

    invoke-virtual {v7, v6, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    return-object v5

    .line 773
    :cond_25
    :try_start_25
    const-string v7, "SEAMS"

    const-string/jumbo v8, "getSeinfo"

    invoke-virtual {p0, v2, v1, v7, v8}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3a

    .line 774
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "get App Info: callingPkg don\'t has the permission."

    invoke-virtual {v7, v6, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_39} :catch_6a

    .line 775
    return-object v5

    .line 778
    :cond_3a
    const/4 v7, 0x0

    :try_start_3b
    invoke-interface {v4, p1, v7, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_45

    move-object v3, v5

    .line 782
    nop

    .line 786
    nop

    .line 787
    return-object v3

    .line 779
    :catch_45
    move-exception v7

    .line 780
    .local v7, "e":Ljava/lang/Exception;
    :try_start_46
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get App Info: failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_69} :catch_6a

    .line 781
    return-object v5

    .line 783
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_6a
    move-exception v7

    .line 784
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get App(pm) Info: failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-object v5
.end method

.method private migrationSEAMS(Ljava/io/File;Ljava/io/File;)Z
    .registers 11
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;

    .line 131
    const/4 v0, 0x1

    .line 134
    .local v0, "retValue":Z
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/security/mycontainer/mac_permissions.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "oldDDCFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/seams/ddc/mac_permissions.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "ddcFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/nio/file/CopyOption;

    const/4 v6, 0x0

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2a

    .line 143
    .end local v1    # "oldDDCFile":Ljava/io/File;
    .end local v2    # "ddcFile":Ljava/io/File;
    goto :goto_48

    .line 140
    :catch_2a
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 142
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The migration occurs exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SEAMService"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_48
    return v0
.end method

.method private processAVCLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .registers 6
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "fileContents"    # Ljava/lang/StringBuilder;
    .param p3, "scannedLine"    # Ljava/lang/String;
    .param p4, "lineSeparator"    # Ljava/lang/String;
    .param p5, "scanner"    # Ljava/util/Scanner;

    .line 158
    return-void
.end method

.method private processAllowedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "fileContents"    # Ljava/lang/StringBuilder;
    .param p3, "scannedLine"    # Ljava/lang/String;
    .param p4, "lineSeparator"    # Ljava/lang/String;

    .line 163
    return-void
.end method

.method private static processDeniedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .registers 5
    .param p0, "refContainerString"    # Ljava/lang/String;
    .param p1, "fileContents"    # Ljava/lang/StringBuilder;
    .param p2, "scannedLine"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;
    .param p4, "scanner"    # Ljava/util/Scanner;

    .line 168
    return-void
.end method

.method private setMdmPropertiesLocked(II)V
    .registers 3
    .param p1, "property"    # I
    .param p2, "value"    # I

    .line 171
    return-void
.end method


# virtual methods
.method public activateDomain(Z)I
    .registers 3
    .param p1, "isBundleActivation"    # Z

    .line 197
    const/4 v0, -0x1

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .line 243
    const/4 v0, -0x1

    return v0
.end method

.method public changeAppDomain(Ljava/lang/String;Z)I
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "removeFlag"    # Z

    .line 284
    move/from16 v1, p2

    const-string v2, "changeAppDomain"

    .line 286
    .local v2, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 287
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 288
    .local v4, "pid":I
    const/4 v5, 0x0

    .line 289
    .local v5, "ret":I
    const-string/jumbo v6, "trustonicpartner"

    .line 290
    .local v6, "seinfo":Ljava/lang/String;
    const/4 v0, 0x0

    .line 291
    .local v0, "currentSeInfo":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 292
    move-object v0, v6

    move-object v7, v0

    goto :goto_1b

    .line 294
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SEAMService;->getSeinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 296
    .end local v0    # "currentSeInfo":Ljava/lang/String;
    .local v7, "currentSeInfo":Ljava/lang/String;
    :goto_1b
    const-string v8, "SEAMService"

    const/4 v9, -0x1

    if-nez v7, :cond_28

    .line 297
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "App\' SeInfo is null"

    invoke-virtual {v0, v8, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return v9

    .line 301
    :cond_28
    const-string v0, "SEAMS"

    const-string v10, "changeAppDomain"

    move-object/from16 v11, p0

    invoke-virtual {v11, v4, v3, v0, v10}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 302
    .local v10, "callingPkg":I
    if-ne v10, v9, :cond_3c

    .line 303
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "Pkg doesn\'t has the permission."

    invoke-virtual {v0, v8, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return v9

    .line 307
    :cond_3c
    new-instance v0, Ljava/io/File;

    const-string v12, "/data/seams/ddc/"

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 308
    .local v12, "ddcDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_72

    .line 309
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_68

    .line 310
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Creating dir"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v8, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_68
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    .line 313
    const/4 v0, 0x1

    invoke-virtual {v12, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 314
    invoke-virtual {v12, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 318
    :cond_72
    if-nez v1, :cond_86

    .line 319
    :try_start_74
    const-string v0, "default"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    const-string/jumbo v0, "untrusted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 320
    return v9

    .line 323
    :cond_86
    sget-object v0, Lcom/android/server/SEAMService;->mInstance:Lcom/android/server/SEAMSContainer;

    if-eqz v0, :cond_95

    .line 324
    sget-object v0, Lcom/android/server/SEAMService;->mInstance:Lcom/android/server/SEAMSContainer;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8c} :catch_98

    move-object/from16 v13, p1

    :try_start_8e
    invoke-virtual {v0, v13, v6, v7, v1}, Lcom/android/server/SEAMSContainer;->changeAppDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_92} :catch_93

    .line 325
    .end local v5    # "ret":I
    .local v0, "ret":I
    return v0

    .line 327
    .end local v0    # "ret":I
    .restart local v5    # "ret":I
    :catch_93
    move-exception v0

    goto :goto_9b

    .line 329
    :cond_95
    move-object/from16 v13, p1

    goto :goto_b5

    .line 327
    :catch_98
    move-exception v0

    move-object/from16 v13, p1

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    :goto_9b
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Changing Domain occurs exception"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b5
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "Changing Domain returns POLICY_FAILED"

    invoke-virtual {v0, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v8, -0x1

    return v8
.end method

.method public createSEContainer()I
    .registers 2

    .line 364
    const/4 v0, -0x1

    return v0
.end method

.method public deActivateDomain()I
    .registers 2

    .line 389
    const/4 v0, -0x1

    return v0
.end method

.method public getAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 453
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 468
    const/4 v0, -0x1

    return v0
.end method

.method public getAMSMode(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 483
    const/4 v0, -0x1

    return v0
.end method

.method public getAVCLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 497
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivationStatus()I
    .registers 2

    .line 438
    const/4 v0, -0x1

    return v0
.end method

.method public getDataType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 583
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomain(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 601
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 4
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 512
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDs()[I
    .registers 2

    .line 662
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .line 546
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSELinuxMode(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method public getSepolicyVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 696
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFromCertificate([B)Ljava/lang/String;
    .registers 3
    .param p1, "certificate"    # [B

    .line 716
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 756
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 736
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasKnoxContainers()I
    .registers 2

    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public hasSEContainers()I
    .registers 2

    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "service"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .line 858
    sget v0, Lcom/android/server/SEAMService;->SELF_PID:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    .line 859
    return v1

    .line 861
    :cond_6
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v0

    .line 862
    .local v0, "sk":Lcom/android/server/ServiceKeeper;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 863
    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_1d

    .line 864
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "Returning 0 directly as tables are not ready in SK."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_1d
    return v1

    .line 868
    :cond_1e
    iget-object v1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public isSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public isSEPolicyAutoUpdateEnabled(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 565
    const/4 v0, -0x1

    return v0
.end method

.method public loadContainerSetting(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 890
    const/4 v0, -0x1

    return v0
.end method

.method public relabelAppDir(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 913
    const/4 v0, -0x1

    return v0
.end method

.method public relabelData(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 928
    const/4 v0, -0x1

    return v0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .line 968
    const/4 v0, -0x1

    return v0
.end method

.method public removeSEContainer(I)I
    .registers 3
    .param p1, "containerID"    # I

    .line 422
    const/4 v0, -0x1

    return v0
.end method

.method public setAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;I)I
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "FLAG"    # I

    .line 985
    const/4 v0, -0x1

    return v0
.end method

.method public setSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;Z)I
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "include"    # Z

    .line 998
    const/4 v0, -0x1

    return v0
.end method
