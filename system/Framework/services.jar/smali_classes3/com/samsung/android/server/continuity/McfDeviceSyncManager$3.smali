.class Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;
.super Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub;
.source "McfDeviceSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->requestDownload(Ljava/lang/String;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

.field final synthetic val$listener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 239
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    iput-object p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->val$listener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    invoke-direct {p0}, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->val$listener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/continuity/ISemContinuitySimpleListener;->onNotify(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 246
    goto :goto_21

    .line 244
    :catch_6
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotify - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method
