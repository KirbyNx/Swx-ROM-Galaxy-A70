.class Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;
.super Landroid/database/ContentObserver;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/CertBlocklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlocklistObserver"
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mBlocklist:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mKey:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mTmpDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "cr"    # Landroid/content/ContentResolver;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 92
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mName:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    .line 96
    iput-object p4, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 78
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 78
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 78
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 78
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private writeBlocklist()V
    .registers 3

    .line 139
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;

    const-string v1, "BlocklistUpdater"

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->start()V

    .line 178
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isThisKeyBlocklisted(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    monitor-enter v0

    .line 101
    if-eqz p1, :cond_29

    :try_start_5
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 102
    const-string v1, "SAccessoryManager_CertBlocklister"

    const-string v2, "This key is in blocklist"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 105
    :cond_29
    monitor-exit v0

    .line 106
    const/4 v0, 0x0

    return v0

    .line 105
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .line 130
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 131
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->writeBlocklist()V

    .line 132
    return-void
.end method

.method public readFile()V
    .registers 3

    .line 110
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;

    const-string v1, "BlocklistReader"

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->start()V

    .line 126
    return-void
.end method
