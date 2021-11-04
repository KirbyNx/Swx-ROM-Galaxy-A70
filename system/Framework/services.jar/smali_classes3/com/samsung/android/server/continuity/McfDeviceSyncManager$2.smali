.class Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;
.super Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub;
.source "McfDeviceSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/McfDeviceSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 178
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-direct {p0}, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mRemoteCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$400(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    if-nez v0, :cond_10

    .line 182
    const-string v0, "onNotify - listener is empty"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 186
    :cond_10
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 188
    .local v2, "command":I
    const/16 v3, 0x2712

    const/16 v4, 0x2711

    if-eq v2, v4, :cond_33

    if-eq v2, v3, :cond_33

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotify - invalid command"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 194
    :cond_33
    const-string v5, "rclip_data"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 195
    .local v5, "clipBundle":Landroid/os/Bundle;
    if-nez v5, :cond_50

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotify - invalid param"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 199
    :cond_50
    invoke-static {v5}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->createFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;

    move-result-object v6

    .line 200
    .local v6, "remoteClip":Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;
    const-string v7, "onNotify - fail to create"

    if-nez v6, :cond_70

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : null remoteClip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 205
    :cond_70
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v8, "notifyBundle":Landroid/os/Bundle;
    const-string v9, "data"

    if-ne v2, v4, :cond_bf

    .line 207
    invoke-virtual {v6}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->getRemoteDir()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_97

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : null remoteDir"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 212
    :cond_97
    iget-object v3, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    new-instance v4, Lcom/samsung/android/continuity/ContinuityCopyData;

    .line 213
    invoke-virtual {v6}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->getId()Ljava/lang/String;

    move-result-object v7

    .line 214
    invoke-virtual {v6}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->getSemClipDataType()I

    move-result v10

    .line 215
    invoke-virtual {v6}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->getRemoteDir()Ljava/lang/String;

    move-result-object v11

    .line 216
    invoke-virtual {v6}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->isExceed()Z

    move-result v12

    invoke-direct {v4, v7, v10, v11, v12}, Lcom/samsung/android/continuity/ContinuityCopyData;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 212
    # setter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mLastestRemoteClip:Lcom/samsung/android/continuity/ContinuityCopyData;
    invoke-static {v3, v4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$502(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Lcom/samsung/android/continuity/ContinuityCopyData;)Lcom/samsung/android/continuity/ContinuityCopyData;

    .line 219
    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mLastestRemoteClip:Lcom/samsung/android/continuity/ContinuityCopyData;
    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$500(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/continuity/ContinuityCopyData;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_d4

    .line 222
    :cond_bf
    if-ne v2, v3, :cond_d4

    .line 223
    const/4 v3, 0x1

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mLastestRemoteClip:Lcom/samsung/android/continuity/ContinuityCopyData;
    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$500(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/continuity/ContinuityCopyData;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mLastestRemoteClip:Lcom/samsung/android/continuity/ContinuityCopyData;
    invoke-static {v0, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$502(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Lcom/samsung/android/continuity/ContinuityCopyData;)Lcom/samsung/android/continuity/ContinuityCopyData;

    .line 230
    :cond_d4
    :goto_d4
    :try_start_d4
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mRemoteCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$400(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/samsung/android/continuity/ISemContinuitySimpleListener;->onNotify(Landroid/os/Bundle;)V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_dd} :catch_de

    .line 233
    goto :goto_f7

    .line 231
    :catch_de
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotify - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f7
    return-void
.end method
