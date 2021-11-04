.class Lcom/android/server/NetworkManagementService$NetdTetherEventListener;
.super Lcom/android/internal/net/INetdTetherEventListener$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdTetherEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .line 3467
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdTetherEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Lcom/android/internal/net/INetdTetherEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .line 3467
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdTetherEventListener;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onTetherStart()V
    .registers 3

    .line 3470
    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "send intent to KVES to inform tether has started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdTetherEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->sendusbTetheringUpdate()V
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$2200(Lcom/android/server/NetworkManagementService;)V

    .line 3472
    return-void
.end method

.method public onTetherStop()V
    .registers 1

    .line 3475
    return-void
.end method
