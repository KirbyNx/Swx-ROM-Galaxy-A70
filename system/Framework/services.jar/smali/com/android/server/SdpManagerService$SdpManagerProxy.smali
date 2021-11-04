.class Lcom/android/server/SdpManagerService$SdpManagerProxy;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpManagerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService;)V
    .registers 2

    .line 4989
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpManagerProxy;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/SdpManagerService;
    .param p2, "x1"    # Lcom/android/server/SdpManagerService$1;

    .line 4989
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpManagerProxy;-><init>(Lcom/android/server/SdpManagerService;)V

    return-void
.end method

.method static synthetic lambda$isSensitive$1(Ljava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/storage/StorageManager;

    .line 4996
    nop

    .line 4997
    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManager;->isSensitive(Ljava/lang/String;)Z

    move-result v0

    .line 4996
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setSensitive$0(ILjava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "engineId"    # I
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/storage/StorageManager;

    .line 4991
    nop

    .line 4992
    invoke-virtual {p2, p0, p1}, Landroid/os/storage/StorageManager;->setSensitive(ILjava/lang/String;)Z

    move-result v0

    .line 4991
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method isSensitive(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 4996
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpManagerProxy;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->getStorageManager()Ljava/util/Optional;
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$5400(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$TtzXkITElFQdTSVMTf33qIBhSP4;

    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$TtzXkITElFQdTSVMTf33qIBhSP4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 4997
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4996
    return v0
.end method

.method setSensitive(ILjava/lang/String;)Z
    .registers 5
    .param p1, "engineId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 4991
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpManagerProxy;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->getStorageManager()Ljava/util/Optional;
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$5400(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$uFIrGMuzDZwAWR7bIXEz4HzhoTQ;

    invoke-direct {v1, p1, p2}, Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$uFIrGMuzDZwAWR7bIXEz4HzhoTQ;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 4992
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4991
    return v0
.end method
